using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;

public class loadAudioClips : MonoBehaviour
{
    public List<AudioClip> recordedFiles = new List<AudioClip>();
    //public AudioClip recordedFiles;
    public SaveSound saveSoundScript;
    int clipNumber;



    // Use this for initialization
    void Start()
    {

        InitLoad();
    }

    // Update is called once per frame
    void Update()
    {


    }

    public IEnumerator LoadNewSound()
    {
        WWW www = new WWW("file://" + saveSoundScript.soundSavePath);
        yield return www;

        AudioClip file = www.GetAudioClip();
        file.name = saveSoundScript.fileName.Remove(saveSoundScript.fileName.Length - 4);

        //AudioClip file = Resources.Load<AudioClip>("savedSounds/" + saveSoundScript.fileName);
        //Debug.Log("savedSounds/" + saveSoundScript.fileName);


        recordedFiles.Add(file);

        //        print(recordedFiles.name);
        clipNumber++;
        //saveSoundScript.newRec = false;




    }

    void InitLoad()
    {
        recordedFiles.Clear();
        Object[] files = Resources.LoadAll("savedSounds", typeof(AudioClip));

        for (int i = 0; i < files.Length; i++)
        {
            recordedFiles.Add((AudioClip)files[i]);
            clipNumber++;
            //Debug.Log("added" + files[i].name);
        }

    }
}
