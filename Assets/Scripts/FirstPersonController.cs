using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class FirstPersonController : MonoBehaviour
{
    //timers and values for speed
    public float currentSpeed, walkSpeed, sprintSpeed;
    public float scrollSpeed = 2.0f;
    float sprintTimer = 0;
    public float sprintTimerMax = 1;

    float footStepTimer = 0;
    public float footStepTimerTotal = 0.5f;

    CharacterController player;

    Vector3 movement;

    //for footstep sounds
    public AudioClip[] currentFootsteps/*, indoorFootsteps, gardenFootsteps, pathFootsteps*/;
    AudioSource playerAudSource;

    //dictionary to sort nearby audio sources by distance 
    public Dictionary<AudioSource, float> soundCreators = new Dictionary<AudioSource, float>();
    //listener range
    public float listeningRadius;

    Vector3 lastPosition;

    void Start()
    {
        player = GetComponent<CharacterController>();
        playerAudSource = GetComponent<AudioSource>();
    }

    void Update()
    {
        if(transform.position != lastPosition)
        {
            ResetNearbyAudioSources();
        }
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

            footStepTimer -= Time.deltaTime;
            if (footStepTimer < 0)
            {
                PlayFootStepAudio();
                footStepTimer = footStepTimerTotal;
            }
        }
            else if(Input.GetMouseButton(1))
        {
            movement = new Vector3(0, 0, -currentSpeed);
            footStepTimer -= Time.deltaTime;
            if (footStepTimer < 0)
            {   
                PlayFootStepAudio();
                footStepTimer = footStepTimerTotal;
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

        lastPosition = transform.position;
    }

    private void PlayFootStepAudio()
    {
        int n = Random.Range(1, currentFootsteps.Length);
        playerAudSource.clip = currentFootsteps[n];
        playerAudSource.PlayOneShot(playerAudSource.clip, 1f);
        // move picked sound to index 0 so it's not picked next time
        currentFootsteps[n] = currentFootsteps[0];
        currentFootsteps[0] = playerAudSource.clip;
    }

    //this function shifts all audio source priorities dynamically
    void ResetNearbyAudioSources()
    {
        //empty dictionary
        soundCreators.Clear();
        //overlap sphere to find nearby sound creators
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, listeningRadius);
        int i = 0;
        while (i < hitColliders.Length)
        {
            //check to see if obj is plant or rock
            if (hitColliders[i].gameObject.tag == "Plant" || hitColliders[i].gameObject.tag == "Animal")
            {
                //check distance and add to list
                float distanceAway = Vector3.Distance(hitColliders[i].transform.position, transform.position);
                //add to audiosource and distance to dictionary
                soundCreators.Add(hitColliders[i].gameObject.GetComponent<AudioSource>(), distanceAway);


            }
            i++;
        }

        int priority = 0;
        //sort the dictionary by order of ascending distance away
        foreach (KeyValuePair<AudioSource, float> item in soundCreators.OrderBy(key => key.Value))
        {
            // do something with item.Key and item.Value
            item.Key.priority = priority;
            priority++;
        }
    }

}
