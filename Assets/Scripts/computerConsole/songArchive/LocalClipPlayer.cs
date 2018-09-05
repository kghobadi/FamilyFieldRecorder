using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Audio;

public class LocalClipPlayer : MonoBehaviour
{
    public Transform player;



    loadAudioClips l;

    [HideInInspector]
    public int clipIndex, sampleIndex, sequenceIndex;

    public Text songNamesText;

    public Button rButt, lButt, playButt, seqOnButt, clipButt, sampButt, seqButt, delButt;

    public Slider clipScroller;
    public Transform scrollerMesh;

    public bool scrollBarValueIsChanging;

    AudioSource audioSource;
    public Sequencer sequencer;


    public List<AudioClip> sampleList = new List<AudioClip>();


    public enum FileType
    {
        clip,
        sample,
        sequence//actually make a different machine for the whole online archiveinteraction 
        //-> maybe this can play only the ones you choose to download to sample yourself? or they just get added to the clips/samples folders?
    };

    public FileType fileType;

    public AudioMixerGroup effectMixer, normalMixer;

    public ButtonPressFeedback buttonPressFeedback;
    bool startFrame = true;

    // Use this for initialization
    void Start()
    {
        l = GetComponent<loadAudioClips>();
        audioSource = GetComponent<AudioSource>();

        ClipButton();


        rButt.onClick.AddListener(RightButton);
        lButt.onClick.AddListener(LeftButton);
        playButt.onClick.AddListener(PlayButton);
        seqOnButt.onClick.AddListener(SequencerOnButton);
        clipButt.onClick.AddListener(ClipButton);
        sampButt.onClick.AddListener(SampleButton);
        seqButt.onClick.AddListener(SequenceButton);
        delButt.onClick.AddListener(DeleteButton);
    }


    // Update is called once per frame
    void Update()
    {
        buttonPressFeedback.SliderFeedback(scrollerMesh, clipScroller, 2.4f, 0.9f);

        switch (fileType)
        {
            case FileType.clip:

                if (l.clipFiles.Count > 0)
                {
                    songNamesText.text = l.clipFiles[clipIndex].name;
                    playButt.interactable = true;
                }
                else
                {
                    songNamesText.text = "no clips";
                    playButt.interactable = false;
                }

                audioSource.loop = true;
                audioSource.outputAudioMixerGroup = effectMixer;

                break;
            case FileType.sample:

                if (l.sampleFiles.Count > 0)
                {
                    songNamesText.text = l.sampleFiles[sampleIndex].name;
                    playButt.interactable = true;
                }
                else
                {
                    songNamesText.text = "no samples";
                    playButt.interactable = false;
                }

                audioSource.loop = false;
                audioSource.outputAudioMixerGroup = normalMixer;

                break;
            case FileType.sequence:

                if (l.sequenceFiles.Count > 0)
                {
                    songNamesText.text = l.sequenceFiles[sequenceIndex].name;
                    playButt.interactable = true;
                }
                else
                {
                    songNamesText.text = "no sequences";
                    playButt.interactable = false;
                }

                audioSource.outputAudioMixerGroup = effectMixer;
                audioSource.loop = false;
                break;

        }



        //scrollbar functionality
        if (audioSource.clip != null)
        {
            if (scrollBarValueIsChanging)
            {
                audioSource.Pause();
                audioSource.time = clipScroller.value * audioSource.clip.length;
            }
            else
            {
                clipScroller.value = audioSource.time / audioSource.clip.length;
            }
        }


    }

    public void RightButton()
    {
        switch (fileType)
        {
            case FileType.clip:

                if (clipIndex == l.clipFiles.Count - 1)
                    clipIndex = 0;
                else
                    clipIndex++;


                break;
            case FileType.sample:

                if (sampleIndex == l.sampleFiles.Count - 1)
                    sampleIndex = 0;
                else
                    sampleIndex++;

                break;
            case FileType.sequence:

                if (sequenceIndex == l.sequenceFiles.Count - 1)
                    sequenceIndex = 0;
                else
                    sequenceIndex++;

                break;

        }

        audioSource.Stop();
        audioSource.time = 0;
        StartCoroutine(buttonPressFeedback.NormalPress(buttonPressFeedback.rButtObj));
        //ADD A TEXT FLASH FOR A FRAME TO SHOW THE CHANGE (JUST AN IMAGE ON TOP)
    }
    void LeftButton()
    {
        switch (fileType)
        {
            case FileType.clip:

                if (clipIndex == 0)
                    clipIndex = l.clipFiles.Count - 1;
                else
                    clipIndex--;
                break;
            case FileType.sample:

                if (sampleIndex == 0)
                    sampleIndex = l.sampleFiles.Count - 1;
                else
                    sampleIndex--;

                break;
            case FileType.sequence:

                if (sequenceIndex == 0)
                    sequenceIndex = l.sequenceFiles.Count - 1;
                else
                    sequenceIndex--;

                break;

        }

        audioSource.Stop();
        audioSource.time = 0;
        StartCoroutine(buttonPressFeedback.NormalPress(buttonPressFeedback.lButtObj));
    }

    public void PlayButton()
    {
        if (audioSource.isPlaying)
        {
            audioSource.Pause();
        }
        else
        {
            if (sequencer.sequencerPlaying)
                SequencerOnButton();

            switch (fileType)
            {
                case FileType.clip:

                    audioSource.clip = l.clipFiles[clipIndex];

                    break;
                case FileType.sample:

                    audioSource.clip = l.sampleFiles[sampleIndex];

                    break;
                case FileType.sequence:

                    audioSource.clip = l.sequenceFiles[sequenceIndex];


                    break;

            }

            audioSource.Play();
        }
        StartCoroutine(buttonPressFeedback.NormalPress(buttonPressFeedback.playButtObj));
    }

    void ClipButton()
    {
        fileType = FileType.clip;

        clipButt.interactable = false;
        sampButt.interactable = true;
        seqButt.interactable = true;

        if (!startFrame)
        {
            StartCoroutine(buttonPressFeedback.PressAndStick(buttonPressFeedback.clipButtObj, true));
            StartCoroutine(buttonPressFeedback.PressAndStick(buttonPressFeedback.sampButtObj, false));
            StartCoroutine(buttonPressFeedback.PressAndStick(buttonPressFeedback.seqButtObj, false));
        }
        else
        {
            //this is so clips button starts pressed
            Vector3 originalPos = buttonPressFeedback.clipButtObj.originalPosition;
            Vector3 targetPos = originalPos - (buttonPressFeedback.clipButtObj.buttonObject.up * 0.1f);
            buttonPressFeedback.clipButtObj.buttonObject.position = Vector3.Lerp(originalPos, targetPos, 0.8f);
        }
        startFrame = false;

        audioSource.Stop();
        audioSource.time = 0;
    }
    public void SampleButton()
    {
        fileType = FileType.sample;

        clipButt.interactable = true;
        sampButt.interactable = false;
        seqButt.interactable = true;

        StartCoroutine(buttonPressFeedback.PressAndStick(buttonPressFeedback.clipButtObj, false));
        StartCoroutine(buttonPressFeedback.PressAndStick(buttonPressFeedback.sampButtObj, true));
        StartCoroutine(buttonPressFeedback.PressAndStick(buttonPressFeedback.seqButtObj, false));

        audioSource.Stop();
        audioSource.time = 0;
    }
    public void SequenceButton()
    {
        fileType = FileType.sequence;

        clipButt.interactable = true;
        sampButt.interactable = true;
        seqButt.interactable = false;

        StartCoroutine(buttonPressFeedback.PressAndStick(buttonPressFeedback.clipButtObj, false));
        StartCoroutine(buttonPressFeedback.PressAndStick(buttonPressFeedback.sampButtObj, false));
        StartCoroutine(buttonPressFeedback.PressAndStick(buttonPressFeedback.seqButtObj, true));

        audioSource.Stop();
        audioSource.time = 0;
    }

    public void SequencerOnButton()
    {
        if (sequencer.sequencerPlaying)
        {
            seqOnButt.GetComponentInChildren<Text>().text = "off";
            sequencer.sequencerPlaying = false;
            sequencer.StopSequencer();
        }
        else
        {
            if (audioSource.isPlaying)
            {
                audioSource.Pause();
            }

            seqOnButt.GetComponentInChildren<Text>().text = "on";
            sequencer.sequencerPlaying = true;
        }
        StartCoroutine(buttonPressFeedback.NormalPress(buttonPressFeedback.seqOnButtObj));
    }

    void DeleteButton()// add an "are you sure you want to delete?
    {
        switch (fileType)
        {
            case FileType.clip:

                System.IO.File.Delete(Application.dataPath + "/Resources/savedClips/" + l.clipFiles[clipIndex].name + ".wav");
                l.clipFiles.RemoveAt(clipIndex);
                if (clipIndex > l.clipFiles.Count - 1)
                    clipIndex--;

                break;
            case FileType.sample:

                System.IO.File.Delete(Application.dataPath + "/Resources/savedSamples/" + l.sampleFiles[sampleIndex].name + ".wav");
                l.sampleFiles.RemoveAt(sampleIndex);
                if (sampleIndex > l.sampleFiles.Count - 1)
                    sampleIndex--;

                break;
            case FileType.sequence:

                System.IO.File.Delete(Application.dataPath + "/Resources/savedSequences/" + l.sequenceFiles[sequenceIndex].name + ".wav");
                l.sampleFiles.RemoveAt(sampleIndex);
                if (sequenceIndex > l.sequenceFiles.Count - 1)
                    sequenceIndex--;

                break;
        }
        StartCoroutine(buttonPressFeedback.NormalPress(buttonPressFeedback.delButtObj));
        //delete file & remove from list
    }

}
