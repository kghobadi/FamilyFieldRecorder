using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class Deer : MonoBehaviour {
    GameObject player;
    AudioSource deerAudio;
    Animator deerAnimator;

    public AudioClip[] deerWalking, deerEating, deerRunning;

    Vector3 targetPosition, origPosition;
    public float movementRadius = 25f, walkSpeed, runSpeed = 10f;
    float moveTimer= 5, moveTimerTotal = 5f;

    public bool moving, running;
    public float soundTimer = 0.25f, soundTimerTotal = 0.25f,walkTimerTotal = 0.5f, runTimerTotal=0.15f;
    public float  spookDistance;
    NavMeshAgent myNavMesh;

	void Start () {
        player = GameObject.FindGameObjectWithTag("Player");
        deerAudio = GetComponent<AudioSource>();
        origPosition = transform.position;
        deerAnimator = GetComponent<Animator>();
        myNavMesh = GetComponent<NavMeshAgent>();
        deerAnimator.speed = 1f;
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
                PlaySound(deerEating);
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
                    PlaySound(deerRunning);
                }
                else
                {
                    PlaySound(deerWalking);
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
                deerAnimator.SetBool("running", false);
                deerAnimator.SetBool("walking", false);
                deerAnimator.SetBool("idle", true);
            }
        }

        //getting spooked check
        if(Vector3.Distance(transform.position, player.transform.position) < 15 && !running)
        {
            running = true;
            soundTimerTotal = runTimerTotal;
            myNavMesh.speed = runSpeed;
            deerAnimator.SetBool("walking", false);
            deerAnimator.SetBool("running", true);
            deerAnimator.SetBool("idle", false);
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

            deerAnimator.SetBool("idle", false);

            if (!running)
            {
                deerAnimator.SetBool("walking", true);
            }
        }
       
    }

    public void PlaySound(AudioClip[] deerSounds)
    {
        int randomSound = Random.Range(0, deerSounds.Length);
        deerAudio.PlayOneShot(deerSounds[randomSound]);
    }
}
