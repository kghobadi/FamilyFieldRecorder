using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class clipVisualizer : MonoBehaviour
{

    public LineRenderer lineR;
    float xPos, yPos;

    AudioSpectrum spectrum;

    float multiplier = 1;
    public float constant = 30;

    AudioSource clipPlayerSource;
    public Sequencer seq;

    // Use this for initialization
    void Start()
    {
        spectrum = GetComponent<AudioSpectrum>();
        lineR.positionCount = spectrum.Levels.Length;

        clipPlayerSource = GetComponent<AudioSource>();
    }

    // Update is called once per frame
    void Update()
    {


        if (clipPlayerSource.isPlaying || seq.sequencerPlaying)
        {
            multiplier = 1;//this is in to adjust for the spectrum returning smaller numbers for higher frequencies

            for (int i = 0; i < spectrum.Levels.Length; i++)
            {

                xPos = Mathf.Sin(Mathf.Deg2Rad * (360 / spectrum.Levels.Length) * i) * ((spectrum.MeanLevels[i] * constant * multiplier) + 0.01f);
                xPos = Mathf.Clamp(xPos, -1, 1);
                yPos = Mathf.Cos(Mathf.Deg2Rad * (360 / spectrum.Levels.Length) * i) * ((spectrum.MeanLevels[i] * constant * multiplier) + 0.01f);
                yPos = Mathf.Clamp(yPos, -1, 1);

                lineR.SetPosition(i, new Vector3(xPos, yPos, 0));

                multiplier *= 1.1f;
            }
        }
        else
        {
            for (int i = 0; i < spectrum.Levels.Length; i++)
            {

                lineR.SetPosition(i, Vector3.Lerp(lineR.GetPosition(i), new Vector3(Random.Range(-0.1f, 0.1f), Random.Range(-0.1f, 0.1f), 0), 0.4f));

            }
        }


    }

}

