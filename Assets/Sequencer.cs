using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


struct sequenceKey
{
    public Transform keyNum;
    public AudioSource[] slots;
}

public class Sequencer : MonoBehaviour
{
    public AudioClip[] basicBeats;

    public Image[] sequenceKeysSprite;
    int sequencerIndex;

    bool playedAudio, showRhythm;
    public int timeScale;

    AudioSource beatSource;

    float clockReplacementTimer;
    public float clockReplacementSpeed;
    bool sequenceAtZero;


    sequenceKey[] sequenceKeys;

    // Use this for initialization
    void Awake()
    {

        SimpleClock.ThirtySecond += OnThirtySecond;

    }

    void Start()
    {
        sequenceKeys = new sequenceKey[transform.childCount];

        for (int i = 0; i < sequenceKeys.Length; i++)
        {


            sequenceKeys[i].keyNum = transform.GetChild(i);
            sequenceKeys[i].slots = new AudioSource[sequenceKeys[i].keyNum.childCount];


            for (int ii = 0; ii < sequenceKeys[i].keyNum.childCount; ii++)
            {
                sequenceKeys[i].slots[ii] = sequenceKeys[i].keyNum.GetChild(ii).GetComponent<AudioSource>();
            }

        }

        //gameObject.SetActive(false);
    }

    void OnDestroy()
    {
        SimpleClock.ThirtySecond -= OnThirtySecond;
    }




    // Update is called once per frame
    void Update()
    {
        ActualSequencer();



    }

    void LoadSampleToSlots()//(trimmed sample)
    {

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

            for (int i = 0; i < sequenceKeysSprite.Length; i++)
            {
                if (i == sequencerIndex)
                {//play stuff here
                    sequenceKeysSprite[i].color = Color.black;
                    //                    Debug.Log(sequencerIndex);
                    for (int slotNum = 0; slotNum < sequenceKeys[i].slots.Length; slotNum++)
                    {
                        if (sequenceKeys[i].slots[slotNum].clip != null)
                            sequenceKeys[i].slots[slotNum].Play();
                    }
                }
                else
                {
                    if (sequenceKeysSprite[i].color != Color.white)
                        sequenceKeysSprite[i].color = Color.white;
                }
            }

            showRhythm = false;
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

