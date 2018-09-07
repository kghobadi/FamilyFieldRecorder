using System.IO;

// for FileStream
using System;

// for BitConverter and Byte Type
using UnityEngine;
using UnityEngine.UI;

//Need ability to delete exported audio files within unity/ on recording device

public class SaveSound : MonoBehaviour
{
    private int bufferSize;
    private int numBuffers;
    private int outputRate = 44100;
    public String fileName = "recTest.wav";
    //this should be a pop-up which takes a typed name entry from player
    private int headerSize = 44;
    //default for uncompressed wav

    public bool recOutput, uploading;
    float uploadTimer, uploadTotal = 2.5f;
    public bool isWritingName = false;

    private FileStream fileStream;
    //we should allow player to view and listen to their songs as AudioClips in game

    public GameObject enterNameObj, spaceToStopObj, spaceToRecordObj, uploadingObj, recordingLight, stopLight;
    InputField enterName;

    public bool newRec = false;
    private AudioListener recListener, cameraListener;

    public string soundSavePath;
    public loadAudioClips loader;

    public bool popRec, popStop;

    void Awake()
    {
        AudioSettings.outputSampleRate = outputRate;
        recListener = GetComponent<AudioListener>();
        cameraListener = Camera.main.GetComponent<AudioListener>();
    }

    void Start()
    {
        AudioSettings.GetDSPBufferSize(out bufferSize, out numBuffers);

        enterName = enterNameObj.GetComponent<InputField>();

        if (GetComponent<AudioListener>() == null)
            print("put audiolistener on recorder!");

        uploadTimer = uploadTotal;
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space) && !isWritingName && !uploading)
        {

            if (recOutput == false)
            {
                //enternamehere
                popRec = true;
                spaceToRecordObj.SetActive(false);
                enterNameObj.SetActive(true);
                enterName.ActivateInputField();
                enterName.text = "Enter file name...";
                isWritingName = true;

                //enterName.placeholder = "name it";

            }
            else
            {
                popStop = true;
                recOutput = false;
                WriteHeader();
                print("rec stop");
                spaceToStopObj.SetActive(false);
                //StartCoroutine(loader.LoadNewSound());
                uploading = true;
                uploadingObj.SetActive(true);
                recordingLight.SetActive(false);
                stopLight.SetActive(true);
                recListener.enabled = false;
                cameraListener.enabled = true;
            }
        }

        if (isWritingName)
        {
            if (Input.GetKeyDown(KeyCode.Return))
            {
                cameraListener.enabled = false;
                recListener.enabled = true;
                fileName = enterName.text + ".wav";
                StartWriting(fileName);
                recOutput = true;
                recordingLight.SetActive(true);
                print("rec");
                enterNameObj.SetActive(false);
                spaceToStopObj.SetActive(true);
                isWritingName = false;
            }
        }

        if (uploading)
        {
            uploadTimer -= Time.deltaTime;

            if (uploadTimer < 0)
            {
                uploading = false;
                uploadingObj.SetActive(false);
                spaceToRecordObj.SetActive(true);
                stopLight.SetActive(false);
                uploadTimer = uploadTotal;
            }
        }

    }

    void StartWriting(String name)
    {
        soundSavePath = Application.dataPath + "/Resources/savedClips/" + name;
        fileStream = new FileStream(soundSavePath, FileMode.Create);
        byte emptyByte = new byte();

        for (int i = 0; i < headerSize; i++)
        { //preparing the header
            fileStream.WriteByte(emptyByte);
        }
    }

    void OnAudioFilterRead(float[] data, int channels)
    {
        if (recOutput)
        {
            ConvertAndWrite(data);//audio data is interlaced
                                  //            Debug.Log("on audio filter read");
        }
    }

    void ConvertAndWrite(float[] dataSource)
    {

        Int16[] intData = new Int16[dataSource.Length];
        //converting in 2 steps : float[] to Int16[], //then Int16[] to Byte[]

        Byte[] bytesData = new Byte[dataSource.Length * 2];
        //bytesData array is twice the size of
        //dataSource array because a float converted in Int16 is 2 bytes.

        int rescaleFactor = 32767; //to convert float to Int16

        for (int i = 0; i < dataSource.Length; i++)
        {
            intData[i] = (short)(dataSource[i] * rescaleFactor);
            Byte[] byteArr = new Byte[2];
            byteArr = BitConverter.GetBytes(intData[i]);
            byteArr.CopyTo(bytesData, i * 2);
        }

        //        Debug.Log(bytesData);
        fileStream.Write(bytesData, 0, bytesData.Length);
        //audioC.SetData(dataSource, outputRate);
    }

    void WriteHeader()
    {

        fileStream.Seek(0, SeekOrigin.Begin);

        Byte[] riff = System.Text.Encoding.UTF8.GetBytes("RIFF");
        fileStream.Write(riff, 0, 4);

        Byte[] chunkSize = BitConverter.GetBytes(fileStream.Length - 8);
        fileStream.Write(chunkSize, 0, 4);

        Byte[] wave = System.Text.Encoding.UTF8.GetBytes("WAVE");
        fileStream.Write(wave, 0, 4);

        Byte[] fmt = System.Text.Encoding.UTF8.GetBytes("fmt ");
        fileStream.Write(fmt, 0, 4);

        Byte[] subChunk1 = BitConverter.GetBytes(16);
        fileStream.Write(subChunk1, 0, 4);

        UInt16 two = 2;
        UInt16 one = 1;

        Byte[] audioFormat = BitConverter.GetBytes(one);
        fileStream.Write(audioFormat, 0, 2);

        Byte[] numChannels = BitConverter.GetBytes(two);
        fileStream.Write(numChannels, 0, 2);

        Byte[] sampleRate = BitConverter.GetBytes(outputRate);
        fileStream.Write(sampleRate, 0, 4);

        Byte[] byteRate = BitConverter.GetBytes(outputRate * 4);
        // sampleRate * bytesPerSample*number of channels, here 44100*2*2

        Debug.Log(byteRate);

        fileStream.Write(byteRate, 0, 4);

        UInt16 four = 4;
        Byte[] blockAlign = BitConverter.GetBytes(four);
        fileStream.Write(blockAlign, 0, 2);

        UInt16 sixteen = 16;
        Byte[] bitsPerSample = BitConverter.GetBytes(sixteen);
        fileStream.Write(bitsPerSample, 0, 2);

        Byte[] dataString = System.Text.Encoding.UTF8.GetBytes("data");
        fileStream.Write(dataString, 0, 4);

        Byte[] subChunk2 = BitConverter.GetBytes(fileStream.Length - headerSize);
        fileStream.Write(subChunk2, 0, 4);

        fileStream.Close();
    }
}

