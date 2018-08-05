using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class loadAudioClips : MonoBehaviour {

    public AudioClip recordedFiles;
    SaveSound saveSoundScript;
    int clipNumber;

	// Use this for initialization
	void Start () {
        saveSoundScript = GetComponent<SaveSound>();
	}
	
	// Update is called once per frame
	void Update () {

        if (saveSoundScript.newRec)
        {
            StartCoroutine(load());
        }

    }

    IEnumerator load(){
        

        WWW www = new WWW("file://" + Application.dataPath + saveSoundScript.fileName);
        yield return www;

        recordedFiles = www.GetAudioClip();
        recordedFiles.name = saveSoundScript.fileName;
        //recordedFiles = www.GetAudioClip();
		
//        print(recordedFiles.name);
        clipNumber++;
		saveSoundScript.newRec = false;

    }
}
