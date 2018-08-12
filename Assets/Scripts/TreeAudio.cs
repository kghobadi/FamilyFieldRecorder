using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class TreeAudio : MonoBehaviour {
    GameObject player;
    AudioSource treeAudio;
    public AudioClip[] treeSounds;
    public AudioMixerGroup treeMixerGroup;

	void Start () {
        player = GameObject.FindGameObjectWithTag("Player");
        treeAudio = GetComponent<AudioSource>();
        int randomSound = Random.Range(0, treeSounds.Length);
        treeAudio.clip = treeSounds[randomSound];
        treeAudio.outputAudioMixerGroup = treeMixerGroup;
	}
	
	void Update () {
		if(Vector3.Distance(transform.position, player.transform.position) < (treeAudio.maxDistance))
        {
            if(!treeAudio.isPlaying)
                treeAudio.Play();
        }
        else
        {
            if (treeAudio.isPlaying)
                treeAudio.Stop();
        }
	}
}
