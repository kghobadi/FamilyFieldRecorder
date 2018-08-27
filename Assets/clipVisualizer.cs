using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class clipVisualizer : MonoBehaviour
{

    public LineRenderer lineR;
    float xPos, yPos;

    AudioSpectrum spectrum;

    // Use this for initialization
    void Start()
    {
        spectrum = GetComponent<AudioSpectrum>();
        lineR.positionCount = spectrum.Levels.Length;
    }

    // Update is called once per frame
    void Update()
    {


        //float[] spectrum = new float[64];

        //AudioListener.GetSpectrumData(spectrum, 0, FFTWindow.Rectangular);

        for (int i = 0; i < spectrum.Levels.Length; i++)
        {

            xPos = Mathf.Sin(Mathf.Deg2Rad * (360 / spectrum.Levels.Length) * i) * ((spectrum.MeanLevels[i] * 500) + 0.01f);
            xPos = Mathf.Clamp(xPos, -1, 1);
            yPos = Mathf.Cos(Mathf.Deg2Rad * (360 / spectrum.Levels.Length) * i) * ((spectrum.MeanLevels[i] * 500) + 0.01f);
            yPos = Mathf.Clamp(yPos, -1, 1);

            lineR.SetPosition(i, new Vector3(xPos, yPos, 0));

        }


        //Debug.Log(spectrum[i]);
        //Debug.DrawLine(new Vector3(i - 1, spectrum[i] + 10, 0), new Vector3(i, spectrum[i + 1] + 10, 0), Color.red);
        //Debug.DrawLine(new Vector3(i - 1, Mathf.Log(spectrum[i - 1]) + 10, 2), new Vector3(i, Mathf.Log(spectrum[i]) + 10, 2), Color.cyan);
        //Debug.DrawLine(new Vector3(Mathf.Log(i - 1), spectrum[i - 1] - 10, 1), new Vector3(Mathf.Log(i), spectrum[i] - 10, 1), Color.green);
        //Debug.DrawLine(new Vector3(Mathf.Log(i - 1), Mathf.Log(spectrum[i - 1]), 3), new Vector3(Mathf.Log(i), Mathf.Log(spectrum[i]), 3), Color.blue);
    }

}

