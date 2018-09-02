using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.UI;

public class EffectsManager : MonoBehaviour
{

    public AudioMixer mixer;
    AudioReverbFilter reverb;
    public Text effectText, effectOnText;
    public Slider effectSlider;//if slider at 0 effect is off
    public Button next;

    bool pitchOn, lowPassOn, highPassOn, flangeOn, echoOn, reverbFilterOn;

    public LineRenderer line, echoLine;
    float echoLineTimer;

    clipVisualizer clipV;

    LocalClipPlayer l;

    enum EffectType
    {
        pitch,
        lowPass,
        highPass,
        flange,
        echo,
        reverbFilter
    };

    EffectType effectType;


    //ADD MASTER VOLUME CONTROLLER FOR THE ENTIRE CONSOLE (AND PUT SEQUENCER IN THE MIXER SO IT ALSO GETS AFFECTED)

    // Use this for initialization
    void Start()
    {
        reverb = GetComponent<AudioReverbFilter>();

        next.onClick.AddListener(NextEffect);

        effectType = EffectType.reverbFilter;
        NextEffect();

        clipV = GetComponent<clipVisualizer>();

        l = GetComponent<LocalClipPlayer>();
    }

    // Update is called once per frame
    void Update()
    {
        //Debug.Log(line.colorGradient.alphaKeys.Length);

        switch (effectType)
        {
            case EffectType.pitch:

                if (effectSlider.value < 0.02f)
                {
                    pitchOn = false;
                    effectOnText.text = "off";
                    mixer.SetFloat("pitch", 1);

                }
                else
                {
                    pitchOn = true;
                    effectOnText.text = "on";


                    float remappedPitch = effectSlider.value * 2;
                    mixer.SetFloat("pitch", remappedPitch);

                }
                break;
            case EffectType.lowPass:

                if (effectSlider.value < 0.02f)
                {
                    lowPassOn = false;
                    effectOnText.text = "off";
                    mixer.SetFloat("lowpass", 22000);

                }
                else
                {
                    lowPassOn = true;
                    effectOnText.text = "on";

                    float remappedLowPass = remapRange(1 - effectSlider.value, 0f, 1f, 10f, 22000f);
                    mixer.SetFloat("lowpass", remappedLowPass);

                }


                break;
            case EffectType.highPass:
                if (effectSlider.value < 0.02f)
                {
                    highPassOn = false;
                    effectOnText.text = "off";
                    mixer.SetFloat("highpass", 10);

                }
                else
                {
                    highPassOn = true;
                    effectOnText.text = "on";

                    float remappedHighPass = remapRange(effectSlider.value, 0f, 1f, 10f, 22000f);
                    mixer.SetFloat("highpass", remappedHighPass);

                }

                break;
            case EffectType.flange:
                if (effectSlider.value < 0.02f)
                {
                    flangeOn = false;
                    effectOnText.text = "off";
                    mixer.SetFloat("flange", 0);

                }
                else
                {
                    flangeOn = true;
                    effectOnText.text = "on";

                    float remappedHighPass = remapRange(effectSlider.value, 0f, 1f, 0f, 20f);
                    mixer.SetFloat("flange", remappedHighPass);

                    //visual effects here!
                }

                break;
            case EffectType.echo:
                if (effectSlider.value < 0.02f)
                {
                    echoOn = false;
                    effectOnText.text = "off";
                    mixer.SetFloat("echo1", 0);
                    mixer.SetFloat("echo2", 0);

                }
                else
                {
                    echoOn = true;
                    effectOnText.text = "on";
                    mixer.SetFloat("echo2", 1);

                    float remappedHighPass = remapRange(effectSlider.value, 0f, 1f, 0f, 2000f);
                    mixer.SetFloat("echo1", remappedHighPass);


                }
                break;
            case EffectType.reverbFilter:
                if (effectSlider.value < 0.02f)
                {
                    reverbFilterOn = false;
                    effectOnText.text = "off";
                    reverb.reverbPreset = AudioReverbPreset.Off;

                }
                else
                {
                    reverbFilterOn = true;
                    effectOnText.text = "on";

                    if (effectSlider.value < 0.2f)
                        reverb.reverbPreset = AudioReverbPreset.Cave;
                    else if (effectSlider.value < 0.4f)
                        reverb.reverbPreset = AudioReverbPreset.Psychotic;
                    else if (effectSlider.value < 0.6f)
                        reverb.reverbPreset = AudioReverbPreset.Underwater;
                    else if (effectSlider.value < 0.8f)
                        reverb.reverbPreset = AudioReverbPreset.Drugged;
                    else
                        reverb.reverbPreset = AudioReverbPreset.SewerPipe;



                    //visual effects here!
                }
                break;
        }

        //Visual stuff:


        if (!l.sequencer.sequencerPlaying)
        {
            if (l.fileType != LocalClipPlayer.FileType.sample)
            {
                if (pitchOn)
                {
                    float currentPitch;
                    mixer.GetFloat("pitch", out currentPitch);
                    currentPitch /= 2;

                    if (currentPitch >= 0.5f)
                    {

                        //line.widthMultiplier = 0.02f - (((currentPitch - 0.5f) / 100) * 2);
                        line.widthMultiplier = remapRange(currentPitch, 0.5f, 1f, 0.02f, 0.005f);

                    }
                    else
                    {

                        line.widthMultiplier = remapRange(currentPitch, 0, 0.5f, 0.08f, 0.02f);
                    }


                }
                else
                {
                    line.widthMultiplier = 0.02f;
                }

                if (lowPassOn)
                {
                    float currentLowPass;
                    mixer.GetFloat("lowpass", out currentLowPass);
                    line.endColor = new Color(line.endColor.r, line.endColor.g, line.endColor.b, remapRange(currentLowPass, 10f, 22000f, 0f, 1f) * 0.3f);

                }
                else
                {
                    line.endColor = new Color(line.endColor.r, line.endColor.g, line.endColor.b, 1);
                }

                if (highPassOn)
                {
                    float currentHighPass;
                    mixer.GetFloat("highpass", out currentHighPass);
                    line.startColor = new Color(line.endColor.r, line.endColor.g, line.endColor.b, 1 - remapRange(currentHighPass, 10f, 22000f, 0f, 1f) * 3f);
                }
                else
                {
                    line.startColor = new Color(line.endColor.r, line.endColor.g, line.endColor.b, 1);
                }

                if (flangeOn)//need a good one for this!!!
                {
                    float currentFlange;
                    mixer.GetFloat("flange", out currentFlange);

                    line.transform.localScale = Vector3.one * ((Mathf.Sin(Time.time * (remapRange(currentFlange, 0f, 20f, 1f, 10f))) * 0.5f) + 0.5f);
                }
                else
                {

                    if (!reverbFilterOn)
                        line.transform.localScale = new Vector3(0.5f, 0.5f, 1);
                }


                if (echoOn)
                {
                    echoLine.gameObject.SetActive(true);

                    float currentEcho;
                    mixer.GetFloat("echo1", out currentEcho);

                    if (echoLineTimer < currentEcho / 1000)
                        echoLineTimer += Time.deltaTime;
                    else
                    {
                        echoLine.startColor = line.startColor - new Color(0, 0, 0.2f, 0.5f);
                        echoLine.endColor = line.endColor - new Color(0, 0, 0.2f, 0.5f);
                        echoLine.widthMultiplier = line.widthMultiplier;

                        echoLine.transform.localEulerAngles = line.transform.localEulerAngles;
                        echoLine.transform.localScale = line.transform.localScale;

                        //echoLine.positionCount = line.positionCount;
                        Vector3[] linePositions = new Vector3[line.positionCount];
                        line.GetPositions(linePositions);
                        echoLine.SetPositions(linePositions);
                        echoLineTimer = 0;
                    }


                }
                else
                {

                    echoLine.gameObject.SetActive(false);

                }

                if (reverbFilterOn)//rethink this effect!
                {
                    if (reverb.reverbPreset == AudioReverbPreset.Cave)
                    {
                        line.transform.localScale = new Vector3(0.3f, 0.3f, 1);
                        line.transform.localEulerAngles += new Vector3(0, 0, Time.deltaTime * 20);
                    }
                    if (reverb.reverbPreset == AudioReverbPreset.Psychotic)
                    {
                        line.transform.localScale = new Vector3(0.3f, 0.3f, 1);
                        line.transform.localEulerAngles += new Vector3(0, 0, Time.deltaTime * -30);
                    }
                    if (reverb.reverbPreset == AudioReverbPreset.Underwater)
                    {
                        line.transform.localScale = new Vector3(0.3f, 0.3f, 1);
                        line.transform.localEulerAngles += new Vector3(0, 0, Time.deltaTime * 40);
                    }
                    if (reverb.reverbPreset == AudioReverbPreset.Drugged)
                    {
                        line.transform.localScale = new Vector3(0.3f, 0.3f, 1);
                        line.transform.localEulerAngles += new Vector3(0, 0, Time.deltaTime * -50);
                    }
                    if (reverb.reverbPreset == AudioReverbPreset.SewerPipe)
                    {
                        line.transform.localScale = new Vector3(0.3f, 0.3f, 1);
                        line.transform.localEulerAngles += new Vector3(0, 0, Time.deltaTime * 60);

                    }
                }
                else
                {
                    if (!flangeOn)
                        line.transform.localScale = new Vector3(0.5f, 0.5f, 1);
                    line.transform.localEulerAngles = new Vector3(line.transform.localEulerAngles.x, line.transform.localEulerAngles.y, 0);
                }
            }
            else
            {
                //all of the resets values!

                line.widthMultiplier = 0.02f;
                line.endColor = new Color(line.endColor.r, line.endColor.g, line.endColor.b, 1);
                line.startColor = new Color(line.endColor.r, line.endColor.g, line.endColor.b, 1);
                line.transform.localScale = new Vector3(0.5f, 0.5f, 1);
                echoLine.gameObject.SetActive(false);
                line.transform.localScale = new Vector3(0.5f, 0.5f, 1);
                line.transform.localEulerAngles = new Vector3(line.transform.localEulerAngles.x, line.transform.localEulerAngles.y, 0);
            }
        }
        else
        {
            //make new animations for the sequencer! for now: all of the resets values

            line.widthMultiplier = 0.02f;
            line.endColor = new Color(line.endColor.r, line.endColor.g, line.endColor.b, 1);
            line.startColor = new Color(line.endColor.r, line.endColor.g, line.endColor.b, 1);
            line.transform.localScale = new Vector3(0.5f, 0.5f, 1);
            echoLine.gameObject.SetActive(false);
            line.transform.localScale = new Vector3(0.5f, 0.5f, 1);
            line.transform.localEulerAngles = new Vector3(line.transform.localEulerAngles.x, line.transform.localEulerAngles.y, 0);
        }


        //better show the player that effects are off if seq on/ listening to samples!
    }

    void NextEffect()
    {
        if (effectType != EffectType.reverbFilter)
            effectType++;
        else
            effectType = EffectType.pitch;

        switch (effectType)
        {
            case EffectType.pitch:
                effectText.text = "pitch";//replace this with crazy weird images

                if (pitchOn)
                {
                    float currentPitch;
                    mixer.GetFloat("pitch", out currentPitch);
                    effectSlider.value = currentPitch / 2;
                    effectOnText.text = "on";
                }
                else
                {
                    effectOnText.text = "off";
                    effectSlider.value = 0;
                }

                break;
            case EffectType.lowPass:
                effectText.text = "lowPass";

                if (lowPassOn)
                {
                    float currentLowPass;
                    mixer.GetFloat("lowpass", out currentLowPass);
                    effectSlider.value = 1 - remapRange(currentLowPass, 10f, 22000f, 0f, 1f);//1- to reverse it on the slider!
                    effectOnText.text = "on";
                }
                else
                {
                    effectOnText.text = "off";
                    effectSlider.value = 0;
                }

                break;
            case EffectType.highPass:
                effectText.text = "highPass";

                if (highPassOn)
                {
                    float currentHighPass;
                    mixer.GetFloat("highpass", out currentHighPass);
                    effectSlider.value = remapRange(currentHighPass, 10f, 22000f, 0f, 1f);
                    effectOnText.text = "on";
                }
                else
                {
                    effectOnText.text = "off";
                    effectSlider.value = 0;
                }

                break;
            case EffectType.flange:
                effectText.text = "flange";

                if (flangeOn)
                {
                    float currentFlange;
                    mixer.GetFloat("flange", out currentFlange);
                    effectSlider.value = remapRange(currentFlange, 0f, 20f, 0f, 1f);
                    effectOnText.text = "on";
                }
                else
                {
                    effectOnText.text = "off";
                    effectSlider.value = 0;
                }

                break;
            case EffectType.echo:
                effectText.text = "echo";

                if (echoOn)
                {
                    float currentEcho;
                    mixer.GetFloat("echo1", out currentEcho);
                    effectSlider.value = remapRange(currentEcho, 0f, 2000f, 0f, 1f);
                    effectOnText.text = "on";
                }
                else
                {
                    effectOnText.text = "off";
                    effectSlider.value = 0;
                }

                break;
            case EffectType.reverbFilter:
                effectText.text = "reverbFilt";

                if (reverbFilterOn)
                {
                    float currentReverb = 0;
                    if (reverb.reverbPreset == AudioReverbPreset.Cave)
                        currentReverb = 0.1f;
                    if (reverb.reverbPreset == AudioReverbPreset.Psychotic)
                        currentReverb = 0.3f;
                    if (reverb.reverbPreset == AudioReverbPreset.Underwater)
                        currentReverb = 0.5f;
                    if (reverb.reverbPreset == AudioReverbPreset.Drugged)
                        currentReverb = 0.7f;
                    if (reverb.reverbPreset == AudioReverbPreset.SewerPipe)
                        currentReverb = 0.9f;

                    effectSlider.value = currentReverb;
                    effectOnText.text = "on";
                }
                else
                {
                    effectOnText.text = "off";
                    effectSlider.value = 0;
                }

                break;

        }
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
