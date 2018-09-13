using System.IO;

// for FileStream
using System;

// for BitConverter and Byte Type
using UnityEngine;
using UnityEngine.UI;

//Need ability to delete exported audio files within unity/ on recording device

public class SaveSound : MonoBehaviour
{
    GameObject player;
    FirstPersonController fpc;
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

    public GameObject enterNameObj, spaceToStopObj, spaceToRecordObj, 
        uploadingObj, uploadingBar, recordingLight, stopLight;
    InputField enterName;

    public bool newRec = false;
    private AudioListener recListener, cameraListener;

   
    public loadAudioClips loader;

    public bool popRec, popStop;

    //timers for recOutput and length limiting
    public float recordingTimer, recordingLimit = 30;
    public GameObject recordingText;
    public Text recordingTextTimer;

    public GameObject pressEnterObj;

    public string clipSavePath;

    void Awake()
    {
        player = GameObject.FindGameObjectWithTag("Player");
        fpc = player.GetComponent<FirstPersonController>();
        AudioSettings.outputSampleRate = outputRate;
        recListener = GetComponent<AudioListener>();
        cameraListener = Camera.main.GetComponent<AudioListener>();
        recordingText.SetActive(false);
    }

    void Start()
    {
        AudioSettings.GetDSPBufferSize(out bufferSize, out numBuffers);

        enterName = enterNameObj.GetComponent<InputField>();

        if (GetComponent<AudioListener>() == null)
            print("put audiolistener on recorder!");

        uploadTimer = uploadTotal;
    }

    void RecordingFunction()
    {
        if (!isWritingName)
        {
            //first press
            if (!recOutput)
            {
                spaceToRecordObj.SetActive(false);
                cameraListener.enabled = false;
                recListener.enabled = true;
                StartWriting();
                recOutput = true;
                recordingLight.SetActive(true);
                print("rec");
                enterNameObj.SetActive(false);
                recordingText.SetActive(true);
                pressEnterObj.SetActive(false);
            }
            else//end recording, start typing name
            {
                recOutput = false;
                WriteHeader();
                //                    print("recording sample stop");
                recListener.enabled = false;
                cameraListener.enabled = true;
                RenameClip();
                spaceToStopObj.SetActive(false);
                recordingLight.SetActive(false);
                stopLight.SetActive(true);
                recordingTimer = 0;
                recordingText.SetActive(false);
            }
        }
    }

    void RenameClip()
    {
        isWritingName = true;

        popRec = true;
        spaceToRecordObj.SetActive(false);
        enterNameObj.SetActive(true);
        enterName.ActivateInputField();
        enterName.text = "Enter file name...";
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))// && !isWritingName && !uploading && fpc.recOut)
        {
            RecordingFunction();
        }

        //called after you have finished recording
        if (isWritingName)
        {
            if (Input.GetKeyDown(KeyCode.Return))
            {
                fileName = enterName.text + ".wav";
                enterNameObj.SetActive(false);
                clipSavePath = Application.dataPath + "/Resources/savedClips/" + fileName;

                System.IO.File.Move(Application.dataPath + "/Resources/savedClips/test.wav", clipSavePath);//make it add copy if it already exists!


                StartCoroutine(loader.LoadNewClip());

                //clipRecordProgress.rectTransform.sizeDelta = new Vector2(0, 10);

                recordingTimer = 0;
                isWritingName = false;

                popStop = true;
                
                uploading = true;
                pressEnterObj.SetActive(false);
                uploadingObj.SetActive(true);
                uploadingBar.SetActive(true);

                if (!fpc.hasRecorded)
                    fpc.hasRecorded = true;
            }
        }

        //called while we are recording
        if (recOutput)
        {
            recordingTimer += Time.deltaTime;
            recordingTextTimer.text = recordingTimer.ToString("n1") + "s";

            if(recordingTimer >= 3)
            {
                spaceToStopObj.SetActive(true);
            }

            if(recordingTimer >= recordingLimit)
            {
                RecordingFunction();
            }
        }

        //called when sound is being sent to console/sequencer
        if (uploading)
        {
            uploadTimer -= Time.deltaTime;
            uploadingBar.GetComponent<Image>().fillAmount += Time.deltaTime / 2.8f;

            if (uploadTimer < 0)
            {
                uploading = false;
                uploadingObj.SetActive(false);
                uploadingBar.GetComponent<Image>().fillAmount = 0;
                uploadingBar.SetActive(false);
                spaceToRecordObj.SetActive(true);
                stopLight.SetActive(false);
                uploadTimer = uploadTotal;
            }
        }

    }


    void StartWriting()
    {

        fileStream = new FileStream(Application.dataPath + "/Resources/savedClips/test.wav", FileMode.Create);
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

