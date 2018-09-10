using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class TreeAudio : MonoBehaviour {
    GameObject player;
    AudioSource treeAudio;
    public AudioClip[] treeSounds;
    public AudioMixerGroup treeMixerGroup;

    public float treeNoteTimer, treeNoteTimerTotal, randomTimeMin, randomTimeMax;

    public TreeType treeSpecie;

    public enum TreeType
    {
        EVERGREENE, PAINTEDTREE, PURPLETREE,
    }

	void Start () {
        player = GameObject.FindGameObjectWithTag("Player");
        treeAudio = GetComponent<AudioSource>();
        int randomSound = Random.Range(0, treeSounds.Length);
        treeAudio.clip = treeSounds[randomSound];
        treeAudio.outputAudioMixerGroup = treeMixerGroup;
        treeNoteTimer = Random.Range(0.5f, randomTimeMax);
	}
	
	void Update () {
		if(Vector3.Distance(transform.position, player.transform.position) < (treeAudio.maxDistance))
        {
            treeNoteTimer -= Time.deltaTime;

            if (treeNoteTimer < 0 && !treeAudio.isPlaying)
            {
                int randomNote = Random.Range(0, treeSounds.Length);
                treeAudio.PlayOneShot(treeSounds[randomNote]);

                treeNoteTimer = treeNoteTimerTotal + Random.Range(randomTimeMin, randomTimeMax);
            }
        }
        else
        {
            if (treeAudio.isPlaying)
                treeAudio.Stop();
        }
	}
}
