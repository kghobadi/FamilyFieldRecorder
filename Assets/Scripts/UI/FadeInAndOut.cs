using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class FadeInAndOut : MonoBehaviour {
    public bool isImage, fadingColor;

    //store image/text + color
    Image thisImage;
    Text thisText;
    
    public Color alphaVal;

    public float fadeValMin, fadeValMax, fadeSpeed;

    void Start () {
        thisImage = GetComponent<Image>();
        thisText = GetComponent<Text>();

        if (thisImage != null)
            isImage = true;

        //differet syntax for image and text
        if (isImage)
        {
            alphaVal = thisImage.color;
            alphaVal.a = 0;
            thisImage.color = alphaVal;
        }
        else
        {
            alphaVal = thisText.color;
            alphaVal.a = 0;
            thisText.color = alphaVal;
        }

        fadingColor = true;
    }

    void Update()
    {
        //lerp to lerp alpha
        if (fadingColor)
        {
            if(alphaVal.a < fadeValMax -0.01f)
            {
                alphaVal.a = Mathf.Lerp(alphaVal.a, fadeValMax, Time.deltaTime * fadeSpeed);
                if (isImage)
                    thisImage.color = alphaVal;
                else
                    thisText.color = alphaVal;
            }
            else
            {
                fadingColor = false;
            }
        }
        //lerp back to original alpha
        else
        {
            if (alphaVal.a > fadeValMin + 0.01f)
            {
                alphaVal.a = Mathf.Lerp(alphaVal.a, fadeValMin, Time.deltaTime * fadeSpeed);
                if (isImage)
                    thisImage.color = alphaVal;
                else
                    thisText.color = alphaVal;
            }
            else
            {
                fadingColor = true;
            }
        }
    }
    
}
