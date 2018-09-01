using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Audio;

public class LocalClipPlayer : MonoBehaviour
{
    public Transform player;
    public camMouseLook mouseLook;


    loadAudioClips l;

    [HideInInspector]
    public int clipIndex, sampleIndex, sequenceIndex;

    public Text songNamesText;

    public Button rButt, lButt, playButt, seqButt, clipButt, sampButt, delButt;
    public Slider clipScroller;
    public bool scrollBarValueIsChanging;

    AudioSource audioSource;
    public Sequencer sequencer;


    public List<AudioClip> sampleList = new List<AudioClip>();


    public enum FileType
    {
        clip,
        sample,
        sequences//actually make a different machine for the whole online archiveinteraction 
        //-> maybe this can play only the ones you choose to download to sample yourself? or they just get added to the clips/samples folders?
    };

    public FileType fileType;

    public AudioMixerGroup effectMixer, normalMixer;

    // Use this for initialization
    void Start()
    {
        l = GetComponent<loadAudioClips>();
        audioSource = GetComponent<AudioSource>();

        ClipButton();


        rButt.onClick.AddListener(RightButton);
        lButt.onClick.AddListener(LeftButton);
        playButt.onClick.AddListener(PlayButton);
        seqButt.onClick.AddListener(SequencerButton);
        clipButt.onClick.AddListener(ClipButton);
        sampButt.onClick.AddListener(SampleButton);
        delButt.onClick.AddListener(DeleteButton);
    }

    // Update is called once per frame
    void Update()
    {
        if (Vector3.Distance(player.position, transform.position) < 5)
        {
            mouseLook.isActive = false;
            songNamesText.gameObject.SetActive(true);

            Cursor.lockState = CursorLockMode.Confined;
        }
        else
        {
            mouseLook.isActive = true;
            songNamesText.gameObject.SetActive(false);

        }

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
            case FileType.sequences:

                audioSource.outputAudioMixerGroup = effectMixer;
                audioSource.loop = true;
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
            case FileType.sequences:
                break;

        }

        audioSource.Stop();
        audioSource.time = 0;
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
            case FileType.sequences:
                break;

        }

        audioSource.Stop();
        audioSource.time = 0;
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
                SequencerButton();

            switch (fileType)
            {
                case FileType.clip:

                    audioSource.clip = l.clipFiles[clipIndex];
                    audioSource.Play();

                    break;
                case FileType.sample:

                    audioSource.clip = l.sampleFiles[sampleIndex];
                    audioSource.Play();

                    break;
                case FileType.sequences:
                    break;

            }
        }
    }

    void ClipButton()
    {
        fileType = FileType.clip;

        clipButt.interactable = false;
        sampButt.interactable = true;

        audioSource.Stop();
        audioSource.time = 0;
    }
    public void SampleButton()
    {
        fileType = FileType.sample;

        clipButt.interactable = true;
        sampButt.interactable = false;

        audioSource.Stop();
        audioSource.time = 0;
    }

    void SequencerButton()
    {
        if (sequencer.sequencerPlaying)
        {
            seqButt.GetComponentInChildren<Text>().text = "off";
            sequencer.sequencerPlaying = false;
            sequencer.StopSequencer();
        }
        else
        {
            if (audioSource.isPlaying)
            {
                audioSource.Pause();
            }

            seqButt.GetComponentInChildren<Text>().text = "on";
            sequencer.sequencerPlaying = true;
        }
    }

    void DeleteButton()
    {
        switch (fileType)
        {
            case FileType.clip:

                System.IO.File.Delete(Application.dataPath + "/Resources/savedClips/" + l.clipFiles[clipIndex].name + ".wav");
                l.clipFiles.RemoveAt(clipIndex);

                break;
            case FileType.sample:

                System.IO.File.Delete(Application.dataPath + "/Resources/savedSamples/" + l.sampleFiles[sampleIndex].name + ".wav");
                l.sampleFiles.RemoveAt(sampleIndex);

                break;
            case FileType.sequences:
                break;

        }



        //delete file & remove from list
    }

}
