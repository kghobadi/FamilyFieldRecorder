using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.UI;

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
    camMouseLook mouseLook;
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

    public bool recOut = true, recMoving, inHouse,
        hasStarted, bypassStart, canStart, lerpingCam,
        paused;

    public float recAwayTimer, recAwayTimeTotal;

    public Vector3 recOutPos, recAwayPos , recMenuPos, targetPos;

    public Transform recorder;

    SaveSound recordScript;

    public Transform console;

    public GameObject[] titleTextObjs;
    public GameObject spaceToStartPlayingObj;
    public AudioClip[] titleTextSounds;
    public AudioClip spaceToStartSound;

    public AudioMixer generalMixer;

    void Start()
    {
        player = GetComponent<CharacterController>();
        playerAudSource = GetComponent<AudioSource>();
        mouseLook = Camera.main.GetComponent<camMouseLook>();

        //for rec pos
        recOutPos = recorder.localPosition + new Vector3(0, 2, 0);
        recAwayPos = recorder.localPosition;
        recMenuPos = new Vector3(0, -0.07f, 0.44f);
        recAwayTimer = recAwayTimeTotal;
        recordScript = recorder.GetComponent<SaveSound>();
        
        //allows us to bypass start menu from inspector
        if (bypassStart)
        {
            StartCoroutine(StartGame());
        }
        else
        {
            StartCoroutine(TypeTitleText());
        }
    }

    void Update()
    {
        if (hasStarted)
        {
            if (!paused)
            {
                //when hold mouse 1, you begin to move in that direction
                if (Input.GetMouseButton(0))
                {
                    moving = true;
                    ResetNearbyAudioSources();
                    movement = new Vector3(0, 0, currentSpeed);


                    footStepTimer -= Time.deltaTime;
                    if (footStepTimer < 0)
                    {
                        PlayFootStepAudio();
                        footStepTimer = footStepTimerTotal;
                    }

                    SprintSpeed();
                }
                //move backwards
                else if (Input.GetMouseButton(1))
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

                    SprintSpeed();
                }
                //WASD controls
                else if (Input.GetKey(KeyCode.W) || Input.GetKey(KeyCode.A) ||
                    Input.GetKey(KeyCode.S) || Input.GetKey(KeyCode.D))
                {
                    moving = true;
                    float moveForwardBackward = Input.GetAxis("Vertical") * currentSpeed;
                    float moveLeftRight = Input.GetAxis("Horizontal") * currentSpeed;
                    //float moveUpDown = Input.GetAxis("Mouse ScrollWheel") * scrollSpeed;
                    if ((moveForwardBackward != 0 || moveLeftRight != 0) && !playerAudSource.isPlaying)
                    {
                        PlayFootStepAudio();
                    }

                    movement = new Vector3(moveLeftRight, 0, moveForwardBackward);

                    SprintSpeed();
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
            }

            //moves the recorder obj
            if (recMoving)
            {
                recorder.localPosition = Vector3.MoveTowards(recorder.localPosition, targetPos, 3 * Time.deltaTime);

                if (Vector3.Distance(recorder.localPosition, targetPos) < 0.1f)
                {
                    recMoving = false;

                    if (targetPos == recAwayPos || targetPos == recMenuPos)
                    {
                        recOut = false;
                    }
                    else
                    {
                        recOut = true;
                    }
                }
            }

            //move away recorder if near sequencer
            if (Vector3.Distance(transform.position, console.position) < 10 && !recordScript.doingRecordingThingFull)
            {
                MoveRec(recAwayPos);
            }
            //keep it out
            else if(Vector3.Distance(transform.position, console.position) > 10 && !paused)
            {
                MoveRec(recOutPos);
            }

            //Take out recorder
            if (Input.GetKeyDown(KeyCode.Space) && !recOut)
            {
                recAwayTimer = recAwayTimeTotal;

                MoveRec(recOutPos);
            }

            //lerps camera fov right after start
            if (lerpingCam)
            {
                Camera.main.fieldOfView = Mathf.Lerp(Camera.main.fieldOfView, 60, 5 * Time.deltaTime);
                if(Camera.main.fieldOfView <= 60.1f)
                {
                    lerpingCam = false;
                }
            }

            //for enabling pause menu -- checks that recorder is not recording
            if (Input.GetKeyDown(KeyCode.Escape) && !recordScript.doingRecordingThingFull  && recOut)
            {
                EnablePauseMenu();
                Debug.Log("enable pause menu kas suks");
            }
        }

        else
        {
            //while start menu is enabled pressing space begins game
            if (Input.GetKeyDown(KeyCode.Space) && canStart)
            {
                StartCoroutine(StartGame());
            }
        }
    }

    //called when player presses Escape
    public void EnablePauseMenu()
    {
        recorder.transform.localEulerAngles = new Vector3(0, 0, 0);
        mouseLook.enabled = false;
        MoveRec(recMenuPos);
        paused = true;
        recordScript.PauseMenu();
    }

    //called by recorder script
    public void DisablePauseMenu()
    {
        MoveRec(recOutPos);
        mouseLook.enabled = true;
        recorder.transform.localEulerAngles = new Vector3(0, 30, 0);
        paused = false;
        recordScript.paused = false;

        Debug.Log("disable pause kas suks");
    }

    public IEnumerator TypeTitleText()
    {
        Camera.main.fieldOfView = 90;
        generalMixer.SetFloat("masterVol", -20);

        for(int i = 0; i < titleTextObjs.Length; i++)
        {
            titleTextObjs[i].SetActive(true);
            int randomSound = Random.Range(0, titleTextSounds.Length);
            playerAudSource.PlayOneShot(titleTextSounds[randomSound], 10f);
            yield return new WaitForSeconds(titleTextSounds[randomSound].length);
        }

        //title screen stuff
        spaceToStartPlayingObj.SetActive(true);
        playerAudSource.PlayOneShot(spaceToStartSound, 25f);
        canStart = true;
    }

    public IEnumerator StartGame()
    {
        yield return new WaitForSeconds(0.25f);
        lerpingCam = true;
        for(int i = 0; i < titleTextObjs.Length; i++)
        {
            titleTextObjs[i].GetComponent<FadeUI>().fadingOut = true;
        }
        spaceToStartPlayingObj.GetComponent<FadeUI>().fadingOut = true;
        generalMixer.SetFloat("masterVol", 0);
        hasStarted = true;
        MoveRec(recOutPos);
    }

    //increases move speed while player is moving over time
    public void SprintSpeed()
    {
        sprintTimer += Time.deltaTime;
        //while speed is less than sprint, autoAdd
        if (sprintTimer > sprintTimerMax && currentSpeed < sprintSpeed)
        {
            currentSpeed += Time.deltaTime;
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
        }
    }

}
