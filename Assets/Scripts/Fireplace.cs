using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Fireplace : MonoBehaviour {
    GameObject player;
    FirstPersonController fpc;
    AudioSource fireAudio;
    public AudioClip cracklin;

	void Start () {
        player = GameObject.FindGameObjectWithTag("Player");
        fpc = player.GetComponent<FirstPersonController>();
        fireAudio = GetComponent<AudioSource>();
        fireAudio.clip = cracklin;
	}
	
	void Update () {
        if (fpc.inHouse && !fireAudio.isPlaying)
        {
            fireAudio.Play();
        }

        if (!fpc.inHouse && fireAudio.isPlaying)
        {
            fireAudio.Stop();
        }
	}
}
