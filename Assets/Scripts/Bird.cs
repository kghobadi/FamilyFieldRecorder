using System.Collections;
using System.Collections.Generic;
using UnityEngine;

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

            if (!birdAudio.isPlaying && singTimer < 0)
            {
                Serenade();
                singTimer = Random.Range(1, 5);
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

    void Serenade()
    {
        int randomCall = Random.Range(0, birdSounds.Length);
        birdAudio.PlayOneShot(birdSounds[randomCall]);
    }
}
