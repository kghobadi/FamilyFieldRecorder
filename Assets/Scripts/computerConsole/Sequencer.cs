using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[System.Serializable]
public struct sequenceKey
{
    [HideInInspector]
    public Transform keyNum;
    [HideInInspector]
    public AudioSource[] slots;
    [HideInInspector]
    public Image keyImage;
    [HideInInspector]
    public Button[] slotsImage;

    public MeshRenderer keyLightMesh;
    public MeshRenderer[] slotMesh;
}

public class Sequencer : MonoBehaviour
{
    public AudioClip[] basicBeats;

    public bool sequencerPlaying;

    int sequencerIndex;

    bool playedAudio, showRhythm;
    public int timeScale;

    AudioSource beatSource;

    float clockReplacementTimer;
    public float clockReplacementSpeed;
    bool sequenceAtZero;


    public Transform canvasSequencer;
    public sequenceKey[] sequenceKeys;

    public Button[] sequencerButts;

    public AudioSource clipPlayerSource;

    LocalClipPlayer clipPlayerScript;
    public loadAudioClips l;

    public ButtonPressFeedback buttonPressFeedback;

    public Color whiteSlot, blueSlot;

    public MeshRenderer seqOnLight;

    // Use this for initialization
    void Awake()
    {

        SimpleClock.ThirtySecond += OnThirtySecond;

    }

    void Start()
    {
        //sequenceKeys = new sequenceKey[transform.childCount];

        for (int i = 0; i < sequenceKeys.Length; i++)
        {


            sequenceKeys[i].keyNum = transform.GetChild(i);
            sequenceKeys[i].keyImage = canvasSequencer.GetChild(i).GetComponent<Image>();
            sequenceKeys[i].slots = new AudioSource[sequenceKeys[i].keyNum.childCount];
            sequenceKeys[i].slotsImage = new Button[sequenceKeys[i].keyNum.childCount];


            for (int ii = 0; ii < sequenceKeys[i].keyNum.childCount; ii++)
            {
                sequenceKeys[i].slots[ii] = sequenceKeys[i].keyNum.GetChild(ii).GetComponent<AudioSource>();
            }
            for (int ii = 0; ii < sequenceKeys[i].keyImage.transform.childCount - 1; ii++)
            {
                sequenceKeys[i].slotsImage[ii] = sequenceKeys[i].keyImage.transform.GetChild(ii + 1).GetComponent<Button>();
            }

        }

        SequenceChange();



        //idk why this is necessary but i couldnt get it to work any other way!

        sequencerButts[0].onClick.AddListener(delegate { LoadSampleToSlots(0); });
        sequencerButts[1].onClick.AddListener(delegate { LoadSampleToSlots(1); });
        sequencerButts[2].onClick.AddListener(delegate { LoadSampleToSlots(2); });
        sequencerButts[3].onClick.AddListener(delegate { LoadSampleToSlots(3); });
        sequencerButts[4].onClick.AddListener(delegate { LoadSampleToSlots(4); });
        sequencerButts[5].onClick.AddListener(delegate { LoadSampleToSlots(5); });
        sequencerButts[6].onClick.AddListener(delegate { LoadSampleToSlots(6); });
        sequencerButts[7].onClick.AddListener(delegate { LoadSampleToSlots(7); });

        clipPlayerScript = clipPlayerSource.GetComponent<LocalClipPlayer>();
       // l = clipPlayerSource.GetComponent<loadAudioClips>();



        sequenceKeys[0].slotsImage[0].onClick.AddListener(delegate { RemoveSampleFromSlot(0, 0); });
        sequenceKeys[0].slotsImage[1].onClick.AddListener(delegate { RemoveSampleFromSlot(0, 1); });

        sequenceKeys[1].slotsImage[0].onClick.AddListener(delegate { RemoveSampleFromSlot(1, 0); });
        sequenceKeys[1].slotsImage[1].onClick.AddListener(delegate { RemoveSampleFromSlot(1, 1); });

        sequenceKeys[2].slotsImage[0].onClick.AddListener(delegate { RemoveSampleFromSlot(2, 0); });
        sequenceKeys[2].slotsImage[1].onClick.AddListener(delegate { RemoveSampleFromSlot(2, 1); });

        sequenceKeys[3].slotsImage[0].onClick.AddListener(delegate { RemoveSampleFromSlot(3, 0); });
        sequenceKeys[3].slotsImage[1].onClick.AddListener(delegate { RemoveSampleFromSlot(3, 1); });

        sequenceKeys[4].slotsImage[0].onClick.AddListener(delegate { RemoveSampleFromSlot(4, 0); });
        sequenceKeys[4].slotsImage[1].onClick.AddListener(delegate { RemoveSampleFromSlot(4, 1); });

        sequenceKeys[5].slotsImage[0].onClick.AddListener(delegate { RemoveSampleFromSlot(5, 0); });
        sequenceKeys[5].slotsImage[1].onClick.AddListener(delegate { RemoveSampleFromSlot(5, 1); });

        sequenceKeys[6].slotsImage[0].onClick.AddListener(delegate { RemoveSampleFromSlot(6, 0); });
        sequenceKeys[6].slotsImage[1].onClick.AddListener(delegate { RemoveSampleFromSlot(6, 1); });

        sequenceKeys[7].slotsImage[0].onClick.AddListener(delegate { RemoveSampleFromSlot(7, 0); });
        sequenceKeys[7].slotsImage[1].onClick.AddListener(delegate { RemoveSampleFromSlot(7, 1); });

    }

    void OnDestroy()
    {
        SimpleClock.ThirtySecond -= OnThirtySecond;
    }




    // Update is called once per frame
    void Update()
    {
        if (sequencerPlaying)
        {
            ActualSequencer();
            seqOnLight.material.color = new Color(seqOnLight.material.color.r,
                                            seqOnLight.material.color.g,
                                            seqOnLight.material.color.b,
                                            0.9f);
        }
        else
        {
            seqOnLight.material.color = new Color(seqOnLight.material.color.r,
                                            seqOnLight.material.color.g,
                                            seqOnLight.material.color.b,
                                            0.1f);
        }

    }

    void LoadSampleToSlots(int index)//(trimmed sample)
    {
        //        Debug.Log(index);
        if (clipPlayerScript.fileType == LocalClipPlayer.FileType.sample)
        {
            if (sequenceKeys[index].slots[0].clip == null)
            {
                sequenceKeys[index].slots[0].clip = l.sampleFiles[clipPlayerScript.sampleIndex];
                if (!sequencerPlaying)
                {
                    clipPlayerSource.Pause();
                    sequenceKeys[index].slots[0].Play();
                }
            }
            else if (sequenceKeys[index].slots[1].clip == null)
            {
                sequenceKeys[index].slots[1].clip = l.sampleFiles[clipPlayerScript.sampleIndex];
                if (!sequencerPlaying)
                {
                    clipPlayerSource.Pause();
                    sequenceKeys[index].slots[1].Play();
                }
            }
            else
            {
                Debug.Log("no empty slots!");
            }
        }
        SequenceChange();
        StartCoroutine(buttonPressFeedback.NormalPress(buttonPressFeedback.seqButtonsObj[index]));
    }

    void RemoveSampleFromSlot(int index, int slot)
    {
        //        Debug.Log("index = " + index + " || slot = " + slot);
        sequenceKeys[index].slots[slot].clip = null;
        SequenceChange();
        StartCoroutine(buttonPressFeedback.NormalPress(buttonPressFeedback.slotButtObj[index + slot + index]));
    }


    void ActualSequencer()
    {

        //until i get the clock working!
        if (clockReplacementTimer > clockReplacementSpeed * Time.deltaTime)
        {
            showRhythm = true;

            clockReplacementTimer = 0;

        }
        else
        {
            clockReplacementTimer += Time.deltaTime;

        }

        //for (int i = 0; i < sequenceKeysSprite.Length; i++)
        //{
        //    if (sequenceKeysSprite[i].color != Color.white)
        //        sequenceKeysSprite[i].color = Color.white;
        //}

        if (showRhythm)
        {


            if (sequencerIndex == 7)
            {
                sequencerIndex = 0;
                sequenceAtZero = true;
            }
            else
            {
                sequencerIndex++;
                sequenceAtZero = false;
            }

            for (int i = 0; i < sequenceKeys.Length; i++)
            {
                if (i == sequencerIndex)
                {//play stuff here
                    //sequenceKeys[i].keyImage.color = Color.black;
                    sequenceKeys[i].keyLightMesh.material.color = new Color(sequenceKeys[i].keyLightMesh.material.color.r,
                                                                            sequenceKeys[i].keyLightMesh.material.color.g,
                                                                            sequenceKeys[i].keyLightMesh.material.color.b,
                                                                            0.9f);
                    //                    Debug.Log(sequencerIndex);
                    for (int slotNum = 0; slotNum < sequenceKeys[i].slots.Length; slotNum++)
                    {
                        if (sequenceKeys[i].slots[slotNum].clip != null)
                            sequenceKeys[i].slots[slotNum].Play();
                    }
                }
                else
                {
                    //if (sequenceKeys[i].keyImage.color != Color.white)
                    sequenceKeys[i].keyLightMesh.material.color = new Color(sequenceKeys[i].keyLightMesh.material.color.r,
                                                                        sequenceKeys[i].keyLightMesh.material.color.g,
                                                                        sequenceKeys[i].keyLightMesh.material.color.b,
                                                                        0.1f);
                }
            }

            showRhythm = false;
        }

    }

    public void StopSequencer()
    {

        for (int i = 0; i < sequenceKeys.Length; i++)
        {

            for (int slotNum = 0; slotNum < sequenceKeys[i].slots.Length; slotNum++)
            {
                sequenceKeys[i].slots[slotNum].Stop();
            }
        }


    }

    void SequenceChange()
    {
        for (int i = 0; i < sequenceKeys.Length; i++)
        {
            for (int ii = 0; ii < sequenceKeys[i].slotsImage.Length; ii++)
            {
                if (sequenceKeys[i].slots[ii].clip == null)
                {
                    //sequenceKeys[i].slotsImage[ii].GetComponent<Image>().color = Color.white;
                    sequenceKeys[i].slotMesh[ii].material.color = whiteSlot;
                    sequenceKeys[i].slotsImage[ii].interactable = false;
                }
                else
                {
                    //sequenceKeys[i].slotsImage[ii].GetComponent<Image>().color = Color.blue;
                    sequenceKeys[i].slotMesh[ii].material.color = blueSlot;
                    sequenceKeys[i].slotsImage[ii].interactable = true;
                }

            }
        }



    }


    void OnThirtySecond(BeatArgs e)
    {
        if (e.TickMask[TickValue.Eighth])
        {
            // rhythm creation / beat visual


            //showRhythm = true;//TURN THIS ON WHEN CLOCK IS WORKING


        }
        //switch (timeScale)
        //{
        //    case 0:
        //        if (e.TickMask[TickValue.Measure])
        //        {
        //            // rhythm creation / beat visual
        //            showRhythm = true;
        //        }
        //        break;
        //    case 1:
        //        if (e.TickMask[TickValue.Quarter])
        //        {
        //            // rhythm creation / beat visual
        //            showRhythm = true;
        //        }
        //        break;
        //    case 2:
        //        if (e.TickMask[TickValue.Eighth])
        //        {
        //            // rhythm creation / beat visual
        //            showRhythm = true;
        //        }
        //        break;
        //    case 3:
        //        if (e.TickMask[TickValue.Sixteenth])
        //        {
        //            // rhythm creation / beat visual
        //            showRhythm = true;
        //        }
        //        break;
        //    case 4:
        //        if (e.TickMask[TickValue.ThirtySecond])
        //        {
        //            // rhythm creation / beat visual
        //            showRhythm = true;
        //        }
        //        break;
        //}

    }













    void AudioRhythm()
    {
        //if (!playedAudio)
        //{
        SwitchTimeScale();
        //    playedAudio = true;
        //}
        //else
        //{
        //    if (!beatSource.isPlaying)
        //    {
        //        SwitchTimeScale();
        //        playedAudio = false;

        //    }
        //}
    }

    void SwitchTimeScale()
    {

        //beatSource.PlayScheduled(SimpleClock.AtNextEighth());







        //switch (timeScale)
        //{
        //    case 0:
        //        beatSource.PlayScheduled(SimpleClock.AtNextMeasure());

        //        break;
        //    case 1:
        //        beatSource.PlayScheduled(SimpleClock.AtNextQuarter());
        //        break;
        //    case 2:
        //        beatSource.PlayScheduled(SimpleClock.AtNextEighth());
        //        break;
        //    case 3:
        //        beatSource.PlayScheduled(SimpleClock.AtNextSixteenth());
        //        break;
        //    case 4:
        //        beatSource.PlayScheduled(SimpleClock.AtNextThirtySecond());
        //        break;
        //}
    }
}

