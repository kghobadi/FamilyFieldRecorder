using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class TerrainManager : MonoBehaviour {
    GameObject player;
    FirstPersonController fpc;
    public GameObject mySun;

    public bool playerColliding;

    public AudioMixerSnapshot mySnapshot;

    public AudioClip[] playerFootsteps;

    void Start () {
        player = GameObject.FindGameObjectWithTag("Player");
        fpc = player.GetComponent<FirstPersonController>();

    }


    void OnTriggerEnter(Collider col)
    {
        if (col.gameObject.tag == "Player")
        {
            playerColliding = true;
            mySun.SetActive(true);
            mySnapshot.TransitionTo(1f);
            fpc.currentFootsteps = playerFootsteps;
            Debug.Log("hit player");
        }
    }

    void OnTriggerStay(Collider col)
    {
        if (col.gameObject.tag == "Player")
        {
            
            fpc.currentFootsteps = playerFootsteps;
            Debug.Log("hitting player");
        }
    }

    void OnTriggerExit(Collider col)
    {
        if (col.gameObject.tag == "Player")
        {
            mySun.SetActive(false);
            playerColliding = false;
            Debug.Log("player left");

        }
    }
}
