using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bird : MonoBehaviour {
    public GameObject idle, singing;
    AudioSource birdAudio;

    public AudioClip[] birdSounds;
    GameObject player;

    public float singingDist;
    bool changed;

	void Start () {
        ChangeAnimationState(idle);

        player = GameObject.FindGameObjectWithTag("Player");
        birdAudio = GetComponent<AudioSource>();
	}
	
	// Update is called once per frame
	void Update () {

        //transform.LookAt(new Vector3(player.transform.position.x, transform.position.y, player.transform.position.z));
        //if near player, serenade
        if (Vector3.Distance(transform.position, player.transform.position) < singingDist)
        {
            if (!changed)
            {
                ChangeAnimationState(singing);
                changed = true;
            }

            if (!birdAudio.isPlaying)
            {
                Serenade();
            }

            
        }

        //set back to idle
        else if(Vector3.Distance(transform.position, player.transform.position) > singingDist + 5)
        {
            if (changed)
            {
                ChangeAnimationState(idle);
                changed = false;
            }
        }
	}

    void ChangeAnimationState(GameObject desiredAnim)
    {
        idle.SetActive(false);
        singing.SetActive(false);

        desiredAnim.SetActive(true);
    }

    void Serenade()
    {
        int randomCall = Random.Range(0, birdSounds.Length);
        birdAudio.PlayOneShot(birdSounds[randomCall]);
    }
}
