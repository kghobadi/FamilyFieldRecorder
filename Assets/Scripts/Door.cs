using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Door : MonoBehaviour
{
    GameObject player;
    FirstPersonController fpc;

    public float currentDistance, openDistance, openDistanceOut, openDistanceIn;

    public bool open;

    Animator doorAnimator;

    AudioSource doorAudio;
    public AudioClip doorOpen, doorClose;

    void Start()
    {
        player = GameObject.FindGameObjectWithTag("Player");
        fpc = player.GetComponent<FirstPersonController>();
        doorAnimator = GetComponent<Animator>();
        doorAudio = GetComponent<AudioSource>();
    }

    void Update()
    {
        currentDistance = Vector3.Distance(player.transform.position, transform.position);

        //checks whether player is inside or outside the door using z pos
        if(player.transform.position.z < transform.position.z)
        {
            openDistance = openDistanceOut; 
        }
        else
        {
            openDistance = openDistanceIn;
        }

        //if player is near, set door to open and play a sound
        if (currentDistance < openDistance)
        {
            doorAnimator.SetBool("open", true);
            if (!open)
            {
                open = true;
                PlaySound(doorOpen);
            }
        }
        //if player has walked away, set door to close and play a sound
        else if (currentDistance > (openDistance + 1))
        {
            doorAnimator.SetBool("open", false);
            if (open)
            {
                open = false;
                PlaySound(doorClose);
            }
        }
    }

    void PlaySound(AudioClip sound)
    {
        doorAudio.PlayOneShot(sound);
    }
}
