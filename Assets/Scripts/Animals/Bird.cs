﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//For now birds are not connected to animal script because their movement is different and their audio
//This might become an abstract type if we want various bird types

public class Bird : MonoBehaviour {
    public GameObject idle, singing;
    AudioSource birdAudio;

    public AudioClip[] birdSounds;
    GameObject player;

    public float singingDist, singTimer;
    bool changed;

	void Start () {
        ChangeAnimationState(idle);

        player = GameObject.FindGameObjectWithTag("Player");
        birdAudio = GetComponent<AudioSource>();

        idle = transform.GetChild(0).gameObject;
        singing = transform.GetChild(1).gameObject;

        singTimer = Random.Range(1, 5);
	}
	
	// Update is called once per frame
	void Update () {

        //transform.LookAt(new Vector3(player.transform.position.x, transform.position.y, player.transform.position.z));
        //if near player, serenade
        if (Vector3.Distance(transform.position, player.transform.position) < singingDist)
        {
            singTimer -= Time.deltaTime;
            transform.LookAt(player.transform.position);

            if (!birdAudio.isPlaying && singTimer < 0)
            {
                Serenade();
                singTimer = Random.Range(3, 10);
            }
        }

        if (birdAudio.isPlaying)
        {
            singing.SetActive(true);
            idle.SetActive(false);
        }
        else
        {
            singing.SetActive(false);
            idle.SetActive(true);
        }
    }

    void ChangeAnimationState(GameObject desiredAnim)
    {
        idle.SetActive(false);
        singing.SetActive(false);

        desiredAnim.SetActive(true);
    }

    //bird sings a new call out
    void Serenade()
    {
        int randomCall = Random.Range(0, birdSounds.Length);
        if(birdAudio.clip != birdSounds[randomCall])
        {
            birdAudio.PlayOneShot(birdSounds[randomCall]);
            birdAudio.clip = birdSounds[randomCall];
        }
        else
        {
            Serenade();
        }
    }
}
