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

    public List<AudioClip> sequenceFiles = new List<AudioClip>();
    public SequenceRecorder seqRecorder;
    int sequenceNumber;

    public LocalClipPlayer localClipPlayer;



    // Use this for initialization
    void Start()
    {

        InitClipLoad();
        InitSampleLoad();
        InitSequenceLoad();

        
    }

    // Update is called once per frame
    void Update()
    {


    }

    public IEnumerator LoadNewClip(string path)
    {
        bool normalPath = false;
        if (path == "")
        {
            path = saveSoundScript.clipSavePath;
            normalPath = true;
        }

        WWW www = new WWW("file://" + path);
        yield return www;

        AudioClip file = www.GetAudioClip();
        if (normalPath)
            file.name = saveSoundScript.fileName.Remove(saveSoundScript.fileName.Length - 4);
        else
        {
            string s = Application.dataPath + "/../savedClips/";
            int charCount = s.Length;

            file.name = path.Remove(path.Length - 4);
            file.name = file.name.Remove(0, charCount);
        }


        clipFiles.Add(file);
        clipNumber++;
    }

    public IEnumerator LoadNewSample(string path)
    {
        bool normalPath = false;
        if (path == "")
        {
            path = sampler.sampleSavePath;
            normalPath = true;
        }

        //Debug.Log(sampler.sampleSavePath);
        WWW www = new WWW("file://" + path);
        yield return www;

        AudioClip file = www.GetAudioClip();
        if (normalPath)
            file.name = sampler.fileName.Remove(sampler.fileName.Length - 4);
        else
        {
            string s = Application.dataPath + "/../savedSamples/";
            int charCount = s.Length;

            file.name = path.Remove(path.Length - 4);
            file.name = file.name.Remove(0, charCount);
        }
       

        sampleFiles.Add(file);
        sampleNumber++;


        if (normalPath)
        {
            localClipPlayer.sampleIndex = sampleFiles.Count - 1;
            localClipPlayer.SampleButton();
        }

    }

    public IEnumerator LoadNewSequence(string path)
    {
        bool normalPath = false;
        if (path == "")
        {
            path = seqRecorder.sequenceSavePath;
            normalPath = true;
        }

        WWW www = new WWW("file://" + path);
        yield return www;

        AudioClip file = www.GetAudioClip();

        if (normalPath)
            file.name = seqRecorder.fileName.Remove(seqRecorder.fileName.Length - 4);
        else
        {
            string s = Application.dataPath + "/../savedSequences/";
            int charCount = s.Length;

            file.name = path.Remove(path.Length - 4);
            file.name = file.name.Remove(0, charCount);
        }
        

        sequenceFiles.Add(file);
        sequenceNumber++;

        if (normalPath)
        {
            localClipPlayer.sequenceIndex = sequenceFiles.Count - 1;
            localClipPlayer.SequenceButton();
        }

    }

    void InitClipLoad()
    {
        List<string> filesInDir = new List<string>();

        foreach (string file in Directory.GetFiles(Application.dataPath + "/../savedClips"))
        {
            filesInDir.Add(file);
        }

        clipFiles.Clear();
       

        for (int i = 0; i < filesInDir.Count; i++)
        {
            StartCoroutine(LoadNewClip(filesInDir[i]));
        }

    }
    void InitSampleLoad()
    {
        List<string> filesInDir = new List<string>();

        foreach (string file in Directory.GetFiles(Application.dataPath + "/../savedSamples"))
        {
            filesInDir.Add(file);
        }

        sampleFiles.Clear();

        for (int i = 0; i < filesInDir.Count; i++)
        {
            StartCoroutine(LoadNewSample(filesInDir[i]));
        }

    }
    void InitSequenceLoad()
    {
        List<string> filesInDir = new List<string>();

        foreach (string file in Directory.GetFiles(Application.dataPath + "/../savedSequences"))
        {
            filesInDir.Add(file);
        }

        sequenceFiles.Clear();

        for (int i = 0; i < filesInDir.Count; i++)
        {
            StartCoroutine(LoadNewSequence(filesInDir[i]));
        }

    }
}
