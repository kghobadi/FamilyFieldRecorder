using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaterSound : MonoBehaviour {

    AudioSource waterSource;
    public AudioClip[] waterSounds;

	void Start () {
        waterSource = GetComponent<AudioSource>();
	}

    void Update()
    {
        if (!waterSource.isPlaying)
        {
            PlaySound();
            Debug.Log("wave ");
        }
    }

    void PlaySound()
    {
        int randomSound = Random.Range(0, waterSounds.Length);
        waterSource.PlayOneShot(waterSounds[randomSound]);
    }
}
