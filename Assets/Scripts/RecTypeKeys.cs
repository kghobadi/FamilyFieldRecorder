using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RecTypeKeys : MonoBehaviour {
    public SaveSound recorderScript;
    public string[] keys;

    //pops button scale 
    bool scalePop;
    public float scaleMultiplier = 1.1f;
    Vector3 origScale;
    float scalePopTimer;
    public float scalePopTotal = 0.1f;

    public AudioSource recAudio;
    public AudioClip[] buttonSounds;

    public bool isRec, isStop;

	void Start () {
        origScale = transform.localScale;
	}
	
	void Update () {
        //for typing
        if (recorderScript.isWritingName && !isRec && !isStop)
        {
            //while user is writing, checks for key inputs from array
            for(int i = 0; i < keys.Length; i++)
            {
                if (Input.GetKeyDown(keys[i]))
                {
                    scalePop = true;
                    scalePopTimer = scalePopTotal;
                    recAudio.PlayOneShot(buttonSounds[i]);
                }
            }
        }

        //for rec button
        else if(!recorderScript.recOutput && isRec)
        {
            if (Input.GetKeyDown(KeyCode.Space))
            {
                scalePop = true;
                scalePopTimer = scalePopTotal;
                recAudio.PlayOneShot(buttonSounds[0]);
            }
        }

        //for stop button
        else if (recorderScript.recOutput && isStop)
        {
            if (Input.GetKeyDown(KeyCode.Space))
            {
                scalePop = true;
                scalePopTimer = scalePopTotal;
                recAudio.PlayOneShot(buttonSounds[0]);
            }
        }

        //enlarges scale for a moment
        if (scalePop)
        {
            transform.localScale = origScale * scaleMultiplier;

            scalePopTimer -= Time.deltaTime;

            if (scalePopTimer < 0)
            {
                transform.localScale = origScale;
                scalePop = false;
            }
        }
	}
}
