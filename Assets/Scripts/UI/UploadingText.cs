using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class UploadingText : MonoBehaviour {

    Text myText;
    public float dotTimer, dotTimerTotal = 0.25f;
    public int dotCount = 0;

    void Start()
    {
        myText = GetComponent<Text>();
    }

    void Update () {
        if (myText.enabled)
        {
            dotTimer -= Time.deltaTime;

            if(dotTimer < 0)
            {
                if (dotCount < 2)
                {
                    dotCount++;
                }
                else
                {
                    dotCount = 0;
                }
                SwitchDots();
            }
        }
	}

    void SwitchDots()
    {
        switch (dotCount)
        {
            case 0:
                myText.text = "Uploading.";
                break;
            case 1:
                myText.text = "Uploading..";
                break;
            case 2:
                myText.text = "Uploading...";
                break;
        }

        dotTimer = dotTimerTotal;
    }
}
