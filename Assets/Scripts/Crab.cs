using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class Crab : MonoBehaviour {
    GameObject player;
    AudioSource crabAudio;
    Animator crabAnimator;

    public AudioClip[] crabWalking, crabIdle, crabRunning;

    Vector3 targetPosition, origPosition;
    public float movementRadius = 25f, walkSpeed, runSpeed = 10f;
    float moveTimer= 5, moveTimerTotal = 5f;

    public bool moving, running;
    public float soundTimer = 0.25f, soundTimerTotal = 0.25f,walkTimerTotal = 0.5f, runTimerTotal=0.15f;
    public float  spookDistance;
    NavMeshAgent myNavMesh;

	void Start () {
        player = GameObject.FindGameObjectWithTag("Player");
        crabAudio = GetComponent<AudioSource>();
        origPosition = transform.position;
        crabAnimator = GetComponent<Animator>();
        myNavMesh = GetComponent<NavMeshAgent>();
        crabAnimator.speed = 1f;
        myNavMesh.speed = walkSpeed;
    }
	
	// Update is called once per frame
	void Update () {
        if (!moving)
        {
            //deerAnimator.SetBool("idle", true);
            moveTimer -= Time.deltaTime;

            if (moveTimer < 0)
            {
                SetDestination();
                moveTimer = moveTimerTotal;
            }

            soundTimer -= Time.deltaTime;

            if (soundTimer < 0)
            {
                PlaySound(crabIdle);
                soundTimer = soundTimerTotal;
            }
        }

        else
        {
            transform.LookAt(targetPosition);

            soundTimer -= Time.deltaTime;

            if(soundTimer < 0)
            {
                if (running)
                {
                    PlaySound(crabRunning);
                }
                else
                {
                    PlaySound(crabWalking);
                }
                soundTimer = soundTimerTotal;
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

    public void PlaySound(AudioClip[] deerSounds)
    {
        int randomSound = Random.Range(0, deerSounds.Length);
        crabAudio.PlayOneShot(deerSounds[randomSound]);
    }
}
