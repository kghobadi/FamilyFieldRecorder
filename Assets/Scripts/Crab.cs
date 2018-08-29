using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

//Eventually turn this into Generic Animal script
//from which all animals will inherit base movement and audio controls

public class Crab : MonoBehaviour {
    GameObject player;

    //privately referenced usable components of this game object
    AudioSource crabAudio;
    Animator crabAnimator;

    //audio clip arrays for different audio stages
    //these get pulled from to play out sounds based on frequency
    public AudioClip[] crabWalking, crabIdle, crabRunning;

    //for targeting new positions with the nav mesh
    Vector3 targetPosition, origPosition;

    //radius within which crab can move, and movement speeds
    public float movementRadius = 25f, walkSpeed, runSpeed = 10f;

    //use this to set how often they change positions
    float moveTimer = 5; 
    public float moveTimerTotal = 5f;

    //is it moving or running???
    public bool moving, running;

    //frequency timers for all the various sounds to play out
    public float nextNoteIn = 0.25f, soundTimerTotal = 0.25f,walkTimerTotal = 0.5f, runTimerTotal=0.15f;

    //are you close enough to spook' em???
    public float  spookDistance;
    NavMeshAgent myNavMesh;

	void Start () {
        //find our player!
        player = GameObject.FindGameObjectWithTag("Player");

        //get our various components
        crabAudio = GetComponent<AudioSource>();
        crabAnimator = GetComponent<Animator>();
        myNavMesh = GetComponent<NavMeshAgent>();

        //set position and speed for navmesh movement!
        origPosition = transform.position;
        crabAnimator.speed = 1f;
        myNavMesh.speed = walkSpeed;
    }
	
	void Update () {
        if (!moving)
        {
            crabAnimator.SetBool("idle", true);
            moveTimer -= Time.deltaTime;

            if (moveTimer < 0)
            {
                SetDestination();
                moveTimer = moveTimerTotal /*+ crabAudio.clip.length*/;
            }

            nextNoteIn -= Time.deltaTime;

            if (nextNoteIn < 0)
            {
                PlaySound(crabIdle);
                nextNoteIn = soundTimerTotal /*+ crabAudio.clip.length*/;
            }
        }

        else
        {
            transform.LookAt(targetPosition);

            nextNoteIn -= Time.deltaTime;

            if(nextNoteIn < 0)
            {
                if (running)
                {
                    PlaySound(crabRunning);
                }
                else
                {
                    PlaySound(crabWalking);
                }
                nextNoteIn = soundTimerTotal /*+ crabAudio.clip.length*/;
            }

            if(Vector3.Distance(transform.position, targetPosition) < 5)
            {
                moving = false;
                myNavMesh.speed = walkSpeed;
                myNavMesh.isStopped = true;
                running = false;
                soundTimerTotal = walkTimerTotal;
                crabAnimator.SetBool("running", false);
                crabAnimator.SetBool("walking", false);
                crabAnimator.SetBool("idle", true);
            }
        }

        //getting spooked check
        if(Vector3.Distance(transform.position, player.transform.position) < 15 && !running)
        {
            running = true;
            soundTimerTotal = runTimerTotal;
            myNavMesh.speed = runSpeed;
            crabAnimator.SetBool("walking", false);
            crabAnimator.SetBool("running", true);
            crabAnimator.SetBool("idle", false);
            SetDestination();
        }
	}

    //this function sets a random point as the nav mesh destination
    //checks if the animal can walk there before setting it
    //sets animator correctly
    void SetDestination()
    {
        Vector2 xz = Random.insideUnitCircle * movementRadius;
        
        targetPosition = new Vector3(xz.x + origPosition.x, transform.position.y, xz.y + origPosition.z);

        Collider[] collisions = Physics.OverlapSphere(targetPosition, 7);

        int colCounter = 0;

        for(int i = 0; i < collisions.Length; i++)
        {
            if(collisions[i].gameObject.tag == "Plant")
            {
                colCounter++;
            }
        }
        //call function again
        if(colCounter > 0)
        {
            SetDestination();
        }
        else
        {
            myNavMesh.SetDestination(targetPosition);

            moving = true;

            myNavMesh.isStopped = false;

            crabAnimator.SetBool("idle", false);

            if (!running)
            {
                crabAnimator.SetBool("walking", true);
            }
        }
       
    }

    //Actually plays the animal's audio with random sound selection
    public void PlaySound(AudioClip[] deerSounds)
    {
        int randomSound = Random.Range(0, deerSounds.Length);
        crabAudio.PlayOneShot(deerSounds[randomSound]);
    }
}
