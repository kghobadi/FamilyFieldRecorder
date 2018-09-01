using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;

public class loadAudioClips : MonoBehaviour
{
    public List<AudioClip> clipFiles = new List<AudioClip>();
    public SaveSound saveSoundScript;
    int clipNumber;

    public List<AudioClip> sampleFiles = new List<AudioClip>();
    public Sampler sampler;
    int sampleNumber;

    LocalClipPlayer localClipPlayer;

    // Use this for initialization
    void Start()
    {

        InitClipLoad();
        InitSampleLoad();

        localClipPlayer = GetComponent<LocalClipPlayer>();
    }

    // Update is called once per frame
    void Update()
    {


    }

    public IEnumerator LoadNewClip()
    {
        WWW www = new WWW("file://" + saveSoundScript.soundSavePath);
        yield return www;

        AudioClip file = www.GetAudioClip();
        file.name = saveSoundScript.fileName.Remove(saveSoundScript.fileName.Length - 4);

        //AudioClip file = Resources.Load<AudioClip>("savedClips/" + saveSoundScript.fileName);
        //Debug.Log("savedClips/" + saveSoundScript.fileName);


        clipFiles.Add(file);

        //        print(recordedFiles.name);
        clipNumber++;
        //saveSoundScript.newRec = false;

    }

    public IEnumerator LoadNewSample()
    {
        Debug.Log(sampler.sampleSavePath);
        WWW www = new WWW("file://" + sampler.sampleSavePath);
        yield return www;



        AudioClip file = www.GetAudioClip();
        file.name = sampler.fileName.Remove(saveSoundScript.fileName.Length - 4);




        sampleFiles.Add(file);
        sampleNumber++;

        localClipPlayer.sampleIndex = sampleFiles.Count - 1;
        localClipPlayer.SampleButton();

    }

    void InitClipLoad()
    {
        clipFiles.Clear();
        Object[] files = Resources.LoadAll("savedClips", typeof(AudioClip));

        for (int i = 0; i < files.Length; i++)
        {
            clipFiles.Add((AudioClip)files[i]);
            clipNumber++;
            //Debug.Log("added clip" + files[i].name);
        }

    }
    void InitSampleLoad()
    {
        sampleFiles.Clear();
        Object[] files = Resources.LoadAll("savedSamples", typeof(AudioClip));

        for (int i = 0; i < files.Length; i++)
        {
            sampleFiles.Add((AudioClip)files[i]);
            sampleNumber++;
            //Debug.Log("added sample" + files[i].name);
        }
    }
}
