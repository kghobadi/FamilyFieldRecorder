using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[System.Serializable]
public struct ButtonObject
{
    public Transform buttonObject;
    [HideInInspector]
    public Vector3 originalPosition;

}

public class ButtonPressFeedback : MonoBehaviour
{

    public ButtonObject rButtObj, lButtObj, playButtObj, seqOnButtObj, clipButtObj, sampButtObj, seqButtObj, delButtObj, effectNextButtObj;
    public ButtonObject sampleRecButtObj, seqRecButtObj;

    public ButtonObject[] seqButtonsObj;
    public ButtonObject[] slotButtObj;//key1slot1 =0, key1slot2 = 1, key2slot1 = 3, etc.




    public Transform clipScrollerObj;
    public AudioClip buttonClick;
    AudioSource audioSource;

    // Use this for initialization
    void Awake()
    {
        audioSource = GetComponent<AudioSource>();

        rButtObj.originalPosition = rButtObj.buttonObject.position;
        lButtObj.originalPosition = lButtObj.buttonObject.position;
        playButtObj.originalPosition = playButtObj.buttonObject.position;
        seqOnButtObj.originalPosition = seqOnButtObj.buttonObject.position;
        clipButtObj.originalPosition = clipButtObj.buttonObject.position;
        sampButtObj.originalPosition = sampButtObj.buttonObject.position;
        seqButtObj.originalPosition = seqButtObj.buttonObject.position;
        delButtObj.originalPosition = delButtObj.buttonObject.position;
        effectNextButtObj.originalPosition = effectNextButtObj.buttonObject.position;
        sampleRecButtObj.originalPosition = sampleRecButtObj.buttonObject.position;
        seqRecButtObj.originalPosition = seqRecButtObj.buttonObject.position;

        for (int i = 0; i < seqButtonsObj.Length; i++)
        {
            seqButtonsObj[i].originalPosition = seqButtonsObj[i].buttonObject.position;
        }
        for (int i = 0; i < slotButtObj.Length; i++)
        {
            slotButtObj[i].originalPosition = slotButtObj[i].buttonObject.position;
        }
    }

    // Update is called once per frame
    void Update()
    {
        //if (Input.GetKeyDown(KeyCode.Space))
        //StartCoroutine(NormalPress(rButtObj));
    }

    public IEnumerator NormalPress(ButtonObject button)
    {
        audioSource.PlayOneShot(buttonClick);

        float t = 0;
        Vector3 originalPos = button.originalPosition;
        Vector3 targetPos = originalPos - (button.buttonObject.up * 0.08f);

        //click spring animation + sound
        while (t < 1)
        {
            t += Time.deltaTime * 8;
            button.buttonObject.position = Vector3.Lerp(originalPos, targetPos, t);
            yield return null;
        }

        while (t > 0)
        {
            t -= Time.deltaTime * 3;
            button.buttonObject.position = Vector3.Lerp(originalPos, targetPos, t);
            yield return null;
        }
    }

    public IEnumerator PressAndStick(ButtonObject button, bool stick)
    {
        audioSource.PlayOneShot(buttonClick);


        Vector3 originalPos = button.originalPosition;
        Vector3 targetPos = originalPos - (button.buttonObject.up * 0.1f);


        if (stick)
        {
            float t = 0;
            while (t < 1)
            {
                t += Time.deltaTime * 8;
                button.buttonObject.position = Vector3.Lerp(originalPos, targetPos, t);
                yield return null;
            }

            while (t > 0.8f)
            {
                t -= Time.deltaTime * 3;
                button.buttonObject.position = Vector3.Lerp(originalPos, targetPos, t);
                yield return null;
            }
        }
        else
        {
            if (Vector3.Distance(button.buttonObject.position, button.originalPosition) > 0.05f)
            {
                float t = 0.8f;

                while (t < 1)
                {
                    t += Time.deltaTime * 8;
                    button.buttonObject.position = Vector3.Lerp(originalPos, targetPos, t);
                    yield return null;
                }

                while (t > 0f)
                {
                    t -= Time.deltaTime * 3;
                    button.buttonObject.position = Vector3.Lerp(originalPos, targetPos, t);
                    yield return null;
                }
            }
        }
    }


    public void SliderFeedback(Transform sliderMesh, Slider slider, float minLocalPos, float maxLocalPos)
    {

        sliderMesh.localPosition = new Vector3(Mathf.Lerp(sliderMesh.localPosition.x, remapRange(slider.value, 0, 1, minLocalPos, maxLocalPos), 0.5f),
                                               sliderMesh.localPosition.y, sliderMesh.localPosition.z);

    }

    float remapRange(float oldValue, float oldMin, float oldMax, float newMin, float newMax)
    {
        float newValue = 0;
        float oldRange = (oldMax - oldMin);
        float newRange = (newMax - newMin);
        newValue = (((oldValue - oldMin) * newRange) / oldRange) + newMin;
        return newValue;
    }
}
