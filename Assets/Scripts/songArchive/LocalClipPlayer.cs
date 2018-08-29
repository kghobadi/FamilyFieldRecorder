using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class LocalClipPlayer : MonoBehaviour
{
    public Transform player;
    public camMouseLook mouseLook;


    loadAudioClips l;

    int songIndex;

    public Text songNamesText;

    public Button rButt, lButt, playButt, seqButt;
    public Slider clipScroller;
    public bool scrollBarValueIsChanging;

    AudioSource audioSource;
    public GameObject sequencer;


    public List<AudioClip> sampleList = new List<AudioClip>();


    // Use this for initialization
    void Start()
    {
        l = GetComponent<loadAudioClips>();
        audioSource = GetComponent<AudioSource>();


        rButt.onClick.AddListener(RightButton);
        lButt.onClick.AddListener(LeftButton);
        playButt.onClick.AddListener(PlayButton);
        seqButt.onClick.AddListener(SequencerButton);
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

        if (l.recordedFiles.Count > 0)
            songNamesText.text = l.recordedFiles[songIndex].name;

        if (audioSource.clip != null)
        {
            if (scrollBarValueIsChanging)
            {
                audioSource.time = clipScroller.value * audioSource.clip.length;
            }
            else
                clipScroller.value = audioSource.time / audioSource.clip.length;
        }


    }

    public void RightButton()
    {

        if (songIndex == l.recordedFiles.Count - 1)
            songIndex = 0;
        else
            songIndex++;

        audioSource.Stop();
    }
    void LeftButton()
    {
        if (songIndex == 0)
            songIndex = l.recordedFiles.Count - 1;
        else
            songIndex--;

        audioSource.Stop();
    }

    void PlayButton()
    {
        if (audioSource.isPlaying)
        {
            audioSource.Pause();
        }
        else
        {
            audioSource.clip = l.recordedFiles[songIndex];
            audioSource.Play();
        }
    }

    void SequencerButton()
    {
        if (sequencer.activeSelf)
        {
            seqButt.GetComponentInChildren<Text>().text = "off";
            sequencer.SetActive(false);
        }
        else
        {
            seqButt.GetComponentInChildren<Text>().text = "on";
            sequencer.SetActive(true);
        }
    }


}
