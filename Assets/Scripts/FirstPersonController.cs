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
    [SerializeField]
    public Dictionary<AudioSource, float> soundCreators = new Dictionary<AudioSource, float>();
    //to shorten if statement
    public List<GameObject> audioObjects = new List<GameObject>();
    //listener range
    public float listeningRadius;
    //to shorten if statement
    public List<string> audioTags = new List<string>();

    public bool moving;

    Vector3 lastPosition;

    public bool recOut = true, recMoving, inHouse;

    public float recAwayTimer, recAwayTimeTotal;

    public Vector3 recOutPos, recAwayPos , targetPos;

    public Transform recorder;

    SaveSound recordScript;

    void Start()
    {
        player = GetComponent<CharacterController>();
        playerAudSource = GetComponent<AudioSource>();

        //for rec pos
        recOutPos = recorder.localPosition;
        recAwayPos = recorder.localPosition - new Vector3(0, 2, 0);
        recAwayTimer = recAwayTimeTotal;

        recordScript = recorder.GetComponent<SaveSound>();
    }

    void Update()
    {
        //when hold mouse 1, you begin to move in that direction
            if (Input.GetMouseButton(0))
            {
            moving = true;
            ResetNearbyAudioSources();
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
            moving = true;
            ResetNearbyAudioSources();
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
            moving = false;
                movement = Vector3.zero;
            currentSpeed = walkSpeed;
            }
        


        movement = transform.rotation * movement;
        player.Move(movement * Time.deltaTime);

        player.Move(new Vector3(0, -0.5f, 0));

        //moves the recorder obj
        if (recMoving)
        {
            recorder.localPosition = Vector3.MoveTowards(recorder.localPosition, targetPos, 3 * Time.deltaTime);

            if (Vector3.Distance(recorder.localPosition, targetPos) < 0.1f)
            {
                recMoving = false;

                if(targetPos == recAwayPos)
                {
                    recOut = false;
                }
                else
                {
                    recOut = true;
                }
            }
        }

        //count fown while player has recorder out to auto put it away
        if (recOut)
        {
            if(!recordScript.isWritingName && !recordScript.uploading && !recordScript.recOutput)
                recAwayTimer -= Time.deltaTime;

            if(recAwayTimer < 0)
            {
                MoveRec(recAwayPos);
            }
        }

        //Take out recorder
        if (Input.GetKeyDown(KeyCode.Space) && !recOut)
        {
            recAwayTimer = recAwayTimeTotal;

            MoveRec(recOutPos);
        }
        
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

    public void MoveRec(Vector3 position)
    {
        targetPos = position;
        recMoving = true;
    }

    //this function shifts all audio source priorities dynamically
    void ResetNearbyAudioSources()
    {
        //empty dictionary and audioObjects
        soundCreators.Clear();
        audioObjects.Clear();
        //overlap sphere to find nearby sound creators
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, listeningRadius);
        int i = 0;
        while (i < hitColliders.Length)
        {
            GameObject audioObj = hitColliders[i].gameObject;

            //check to see if obj has desired tag
            //that the object is both active and not already part of our audioObjects list
            //and that the object has an audio source
            if (audioTags.Contains(audioObj.tag) &&
                audioObj.activeSelf && !audioObjects.Contains(audioObj) &&
                audioObj.GetComponent<AudioSource>() != null)
            {
                    //check distance and add to list
                    float distanceAway = Vector3.Distance(hitColliders[i].transform.position, transform.position);
                    //add to audiosource and distance to dictionary
                    soundCreators.Add(audioObj.GetComponent<AudioSource>(), distanceAway);
                    //add to list of objects
                    audioObjects.Add(audioObj);
                
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

            Debug.Log("reseting");
        }
    }

}
