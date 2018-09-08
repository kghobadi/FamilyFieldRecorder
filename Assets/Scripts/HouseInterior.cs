using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class HouseInterior : MonoBehaviour {

    GameObject player;
    FirstPersonController fpc;

    public AudioMixerSnapshot mySnapshot;
    public AudioClip[] footsteps, outdoorSteps;

	void Start () {
        player = GameObject.FindGameObjectWithTag("Player");
        fpc = player.GetComponent<FirstPersonController>();
	}



    void OnTriggerEnter(Collider col)
    {
        if (col.gameObject.tag == "Player")
        {
            mySnapshot.TransitionTo(1f);
            fpc.currentFootsteps = footsteps;
            fpc.inHouse = true;
           
        }

    }


    void OnTriggerStay(Collider col)
    {
        if (col.gameObject.tag == "Player")
        {
            fpc.currentFootsteps = footsteps;
            fpc.inHouse = true;

        }

    }

    void OnTriggerExit(Collider col)
    {
        if (col.gameObject.tag == "Player")
        {
            fpc.inHouse = false;
            fpc.currentFootsteps = outdoorSteps;
           
        }

    }


}
