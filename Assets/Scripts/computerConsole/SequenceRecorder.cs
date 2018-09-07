using System.IO;

// for FileStream
using System;

// for BitConverter and Byte Type
using UnityEngine;
using UnityEngine.UI;

//Need ability to delete exported audio files within unity/ on recording device

public class SequenceRecorder : MonoBehaviour
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

    public InputField enterSequenceName;
    public Text seqRecInstructions;

    //public bool newRec = false;
    private AudioListener recListener, cameraListener;

    public string sequenceSavePath;
    public loadAudioClips loader;
    LocalClipPlayer localClipPlayer;

    public Button startRecordingButt;
    public Image sequenceRecordProgress;

    float recordingTimer;

    float sequenceMaxLength = 60;

    public ButtonPressFeedback buttonPressFeedback;

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

        localClipPlayer = loader.GetComponent<LocalClipPlayer>();

        startRecordingButt.onClick.AddListener(RecordingFunction);
    }

    void RecordingFunction()
    {
        //if (localClipPlayer.fileType == LocalClipPlayer.FileType.sequence)
        //{
        if (!isWritingName)
        {
            if (!recOutput)
            {
                cameraListener.enabled = false;
                recListener.enabled = true;
                StartWriting();
                recOutput = true;
                //  print("recording sample start");
                seqRecInstructions.text = "touch to stop recording sequence";

                if (!localClipPlayer.sequencer.sequencerPlaying)
                    localClipPlayer.SequencerOnButton();

                StartCoroutine(buttonPressFeedback.PressAndStick(buttonPressFeedback.seqRecButtObj, true));
            }
            else
            {
                recOutput = false;
                WriteHeader();
                //                    print("recording sample stop");
                recListener.enabled = false;
                cameraListener.enabled = true;
                RenameSequence();
                localClipPlayer.SequencerOnButton();

                StartCoroutine(buttonPressFeedback.PressAndStick(buttonPressFeedback.sampleRecButtObj, false));
            }
        }
        //}
    }

    void RenameSequence()
    {
        isWritingName = true;
        seqRecInstructions.text = "name sequence:";
        enterSequenceName.gameObject.SetActive(true);
        enterSequenceName.text = "";
        enterSequenceName.ActivateInputField();
    }

    void Update()
    {
        if (recOutput)
        {
            if (recordingTimer < sequenceMaxLength)
            {
                recordingTimer += Time.deltaTime;
                sequenceRecordProgress.rectTransform.sizeDelta = new Vector2(recordingTimer * (100 / sequenceMaxLength), 10);
            }
            else
            {
                recordingTimer = 0;
                RecordingFunction();
            }

        }




        if (isWritingName)
        {

            if (Input.GetKeyDown(KeyCode.Return))
            {
                fileName = enterSequenceName.text + ".wav";
                enterSequenceName.gameObject.SetActive(false);
                sequenceSavePath = Application.dataPath + "/Resources/savedSequences/" + fileName;

                System.IO.File.Move(Application.dataPath + "/Resources/savedSequences/test.wav", sequenceSavePath);//make it add copy if it already exists!


                StartCoroutine(loader.LoadNewSequence());

                sequenceRecordProgress.rectTransform.sizeDelta = new Vector2(0, 10);

                seqRecInstructions.text = "touch to record sequence";

                recordingTimer = 0;
                isWritingName = false;
            }
        }
    }

    void StartWriting()
    {

        fileStream = new FileStream(Application.dataPath + "/Resources/savedSequences/test.wav", FileMode.Create);
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

