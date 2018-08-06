using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Sequencer : MonoBehaviour
{
    public AudioClip[] basicBeats;

    public Image[] sequenceKeys;
    int sequencerIndex;

    bool playedAudio, showRhythm;
    public int timeScale;

    AudioSource beatSource;

    // Use this for initialization
    void Awake()
    {

        SimpleClock.ThirtySecond += OnThirtySecond;

    }
    void OnDestroy()
    {
        SimpleClock.ThirtySecond -= OnThirtySecond;
    }


    void OnThirtySecond(BeatArgs e)
    {
        if (e.TickMask[TickValue.Eighth])
        {
            // rhythm creation / beat visual
            showRhythm = true;


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

    // Update is called once per frame
    void Update()
    {
        AudioRhythm();

        if (showRhythm)
        {
            Debug.Log("eighth");

            if (sequencerIndex == 7)
                sequencerIndex = 0;
            else
                sequencerIndex++;

            for (int i = 0; i < sequenceKeys.Length; i++)
            {
                if (i == sequencerIndex)
                    sequenceKeys[i].color = Color.black;
                else
                    sequenceKeys[i].color = Color.white;
            }

            showRhythm = false;
        }
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

