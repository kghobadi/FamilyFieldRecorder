using System.IO;

// for FileStream
using System;

// for BitConverter and Byte Type
using UnityEngine;
using UnityEngine.UI;

//Need ability to delete exported audio files within unity/ on recording device

public class Sampler : MonoBehaviour
{
    private int bufferSize;
    private int numBuffers;
    private int outputRate = 44100;
    public String fileName = "recTest.wav";
    //this should be a pop-up which takes a typed name entry from player
    private int headerSize = 44;
    //default for uncompressed wav

    private bool recOutput;
    bool isWritingName = false;

    private FileStream fileStream;

    public InputField enterSampleName;


    //public bool newRec = false;
    private AudioListener recListener, cameraListener;

    public string sampleSavePath;
    public loadAudioClips loader;
    public LocalClipPlayer localClipPlayer;

    public Button startRecordingButt;
    public Image sampleRecordProgress;

    float recordingTimer;

    public AudioSource audioSource;

    float sampleMaxLength = 3;

    public ButtonPressFeedback buttonPressFeedback;

    public GameObject blockImage1, blockImage2;

    void Awake()
    {
        AudioSettings.outputSampleRate = outputRate;
        recListener = GetComponent<AudioListener>();
        cameraListener = Camera.main.GetComponent<AudioListener>();
    }

    void Start()
    {
        AudioSettings.GetDSPBufferSize(out bufferSize, out numBuffers);


        //if (GetComponent<AudioListener>() == null)
        //print("put audiolistener on recorder!");

        //localClipPlayer = loader.GetComponent<LocalClipPlayer>();

        startRecordingButt.onClick.AddListener(RecordingFunction);
    }

    void RecordingFunction()
    {
        if (localClipPlayer.fileType != LocalClipPlayer.FileType.sample)
        {
            if (!isWritingName)
            {
                if (!recOutput)
                {
                    cameraListener.enabled = false;
                    recListener.enabled = true;
                    StartWriting(fileName);
                    recOutput = true;
                    //  print("recording sample start");

                    enterSampleName.placeholder.GetComponent<Text>().text = "press to stop sampling";

                    if (!audioSource.isPlaying)
                        localClipPlayer.PlayButton();

                    StartCoroutine(buttonPressFeedback.PressAndStick(buttonPressFeedback.sampleRecButtObj, true));
                }
                else
                {
                    recOutput = false;
                    WriteHeader();
                    //                    print("recording sample stop");
                    recListener.enabled = false;
                    cameraListener.enabled = true;
                    RenameSample();
                    audioSource.Pause();

                    StartCoroutine(buttonPressFeedback.PressAndStick(buttonPressFeedback.sampleRecButtObj, false));
                }
            }
        }
    }

    void RenameSample()
    {
        isWritingName = true;

        enterSampleName.placeholder.GetComponent<Text>().text = "name it";
        //enterSampleName.gameObject.SetActive(true);
        enterSampleName.text = "";
        enterSampleName.ActivateInputField();
    }

    void Update()
    {
        if (recOutput)
        {

            if (recordingTimer < sampleMaxLength)
            {
                recordingTimer += Time.deltaTime;
                sampleRecordProgress.rectTransform.sizeDelta = new Vector2(recordingTimer * (100 / sampleMaxLength), 25);//should reach 100
            }
            else
            {
                recordingTimer = 0;
                RecordingFunction();
            }

        }




        if (isWritingName)
        {
            blockImage1.SetActive(true);
            blockImage2.SetActive(true);

            if (!enterSampleName.isFocused)
                enterSampleName.ActivateInputField();

            if (Input.GetKeyDown(KeyCode.Return))
            {
                sampleSavePath = Application.dataPath + "/../savedSamples/" + enterSampleName.text + ".wav";
                fileName = enterSampleName.text + ".wav";
                while (File.Exists(sampleSavePath))
                {
                    sampleSavePath = sampleSavePath.Remove(sampleSavePath.Length - 4);
                    sampleSavePath = sampleSavePath + "_.wav";
                    fileName = fileName.Remove(fileName.Length - 4);
                    fileName = fileName + "_.wav";
                }

                //fileName = enterSampleName.text + ".wav";
                //enterSampleName.gameObject.SetActive(false);
                //sampleSavePath = Application.dataPath + "/../savedSamples/" + fileName;

                System.IO.File.Move(Application.dataPath + "/../savedSamples/test.wav", sampleSavePath);//make it add copy if it already exists!


                StartCoroutine(loader.LoadNewSample(""));

                sampleRecordProgress.rectTransform.sizeDelta = new Vector2(0, 25);


                enterSampleName.text = "";
                enterSampleName.placeholder.GetComponent<Text>().text = "press to sample";



                recordingTimer = 0;
                isWritingName = false;

                blockImage1.SetActive(false);
                blockImage2.SetActive(false);
            }
        }

        //I have to rewrite this section so it names it after recording! 
        //if (Input.GetKeyDown(KeyCode.R) && !isWritingName)
        //{

        //    if (recOutput == false)
        //    {
        //        //enternamehere

        //        enterNameObj.SetActive(true);
        //        enterSampleName.ActivateInputField();
        //        isWritingName = true;

        //        //enterName.placeholder = "name it";

        //    }
        //    else
        //    {
        //        recOutput = false;
        //        WriteHeader();
        //        print("rec stop");
        //        spaceToStopObj.SetActive(false);
        //        StartCoroutine(loader.LoadNewClip());
        //        oneNewRecObj.SetActive(true);
        //        recListener.enabled = false;
        //        cameraListener.enabled = true;
        //    }
        //}

        //if (isWritingName)
        //{
        //    if (Input.GetKeyDown(KeyCode.Return))
        //    {
        //        cameraListener.enabled = false;
        //        recListener.enabled = true;
        //        fileName = enterSampleName.text + ".wav";
        //        StartWriting(fileName);
        //        recOutput = true;
        //        print("recording sample");
        //        enterNameObj.SetActive(false);
        //        spaceToStopObj.SetActive(true);
        //        isWritingName = false;
        //    }
        //}



    }

    void StartWriting(String name)
    {
        //sampleSavePath = Application.dataPath + "/Resources/savedSamples/test.wav";
        fileStream = new FileStream(Application.dataPath + "/../savedSamples/test.wav", FileMode.Create);
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

        //        Debug.Log(byteRate);

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

