using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FirstPersonController : MonoBehaviour
{
    //timers and values for speed
    public float currentSpeed, walkSpeed, sprintSpeed;
    public float scrollSpeed = 2.0f;
    float sprintTimer = 0;
    public float sprintTimerMax = 1;

    CharacterController player;

    Vector3 movement;

    //for footstep sounds
    public AudioClip[] currentFootsteps, indoorFootsteps, gardenFootsteps, pathFootsteps;
    AudioSource playerAudSource;

    void Start()
    {
        player = GetComponent<CharacterController>();
        playerAudSource = GetComponent<AudioSource>();
    }

    void Update()
    {
        //when hold mouse 1, you begin to move in that direction
            if (Input.GetMouseButton(0))
            {
            movement = new Vector3(0, 0, currentSpeed);
            sprintTimer += Time.deltaTime;
            //while speed is less than sprint, autoAdd
            if(sprintTimer > sprintTimerMax && currentSpeed < sprintSpeed)
            {
                currentSpeed += Time.deltaTime;
            }
                
                if (!playerAudSource.isPlaying)
                {
                    PlayFootStepAudio();
                }
            }
            else if(Input.GetMouseButton(1))
        {
            movement = new Vector3(0, 0, -currentSpeed);
            if (!playerAudSource.isPlaying)
            {
                PlayFootStepAudio();
            }
        }
            //when not moving
            else
            {
                movement = Vector3.zero;
            currentSpeed = walkSpeed;
            }
        


        movement = transform.rotation * movement;
        player.Move(movement * Time.deltaTime);

        player.Move(new Vector3(0, -0.5f, 0));
    }

    private void PlayFootStepAudio()
    {
        int n = Random.Range(1, currentFootsteps.Length);
        playerAudSource.clip = currentFootsteps[n];
        playerAudSource.PlayOneShot(playerAudSource.clip, 0.1f);
        // move picked sound to index 0 so it's not picked next time
        currentFootsteps[n] = currentFootsteps[0];
        currentFootsteps[0] = playerAudSource.clip;
    }

}
