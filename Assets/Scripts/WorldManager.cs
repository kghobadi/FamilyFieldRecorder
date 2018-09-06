﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

//this script holds all deactivated game objects until player is near them
//what objects will activate when also depends on the season

public class WorldManager : MonoBehaviour
{   //inactive object list for storing stuff we turn off
    public List<GameObject> allInactiveObjects = new List<GameObject>();
    public float activationDistance = 75f;

    //player variables
    GameObject _player;
    FirstPersonController fpc;

    //all the individual areas as GameObjects grouped under their terrains
    public List<GameObject> theRegions = new List<GameObject>();
    public int regionCounter;

    //timers for changing season while the player is in the house
    public float changeSeasonTimer, changeSeasonTimerTotal = 5;
    public bool seasonChanged, countsUp;
    public Door doorScript;

    void Start()
    {
        //player refs
        _player = GameObject.FindGameObjectWithTag("Player");
        fpc = _player.GetComponent<FirstPersonController>();

        //set timers
        changeSeasonTimer = changeSeasonTimerTotal;

        //set all regions false
        for(int i = 0; i < theRegions.Count; i++)
        {
            theRegions[i].SetActive(false);
        }

        //start with a random region
        regionCounter = Random.Range(0, theRegions.Count);
        theRegions[regionCounter].SetActive(true);

        //do we cycle up or down through the regions list
        float randomCount = Random.Range(0f, 100f);
        if(randomCount < 50)
        {
            countsUp = false;
        }
        else
        {
            countsUp = true;
        }
    }

    void Update()
    {
        //if player moves, we call the deactivation functions
        if (fpc.moving)
        {
            StoreDeactiveObjects();
        }

        //if we are in the house and the season has not changed yet, we start the countdown
        if (fpc.inHouse)
        {
            if (!seasonChanged && !doorScript.open)
            {
                changeSeasonTimer -= Time.deltaTime;

                if(changeSeasonTimer < 0)
                {
                    ChangeRegion();
                }
            }   
        }

        //if the player has left the house and the season has changed, we set seasonChanged back
        if(!fpc.inHouse && seasonChanged)
        {
            seasonChanged = false;
        }
        
    }

    void ChangeRegion()
    {
        if (countsUp)
        {
            theRegions[regionCounter].SetActive(false);

            //correctly count up and cycle through list
            if (regionCounter < (theRegions.Count - 1))
                regionCounter++;
            else
                regionCounter = 0;

            theRegions[regionCounter].SetActive(true);
        }
        else
        {
            theRegions[regionCounter].SetActive(false);

            //correctly count down and cycle through list
            if (regionCounter > 0)
                regionCounter--;
            else
                regionCounter = theRegions.Count - 1;

            theRegions[regionCounter].SetActive(true);
        }

        //season has changed so we reset timer for next house entrance
        // Rebake navmesh data
        //NavMeshBuilder.BuildNavMesh();
        theRegions[regionCounter].GetComponent<TerrainManager>().hasTransitioned = false;
        seasonChanged = true;
        changeSeasonTimer = changeSeasonTimerTotal;
    }

    void StoreDeactiveObjects()
    {
        //loop through all objects and check distances from player
        for (int i = 0; i < allInactiveObjects.Count; i++)
        {
            if (allInactiveObjects[i] != null)
            {
                float distanceFromPlayer = Vector3.Distance(allInactiveObjects[i].transform.position, _player.transform.position);

                if (distanceFromPlayer < (activationDistance + 5))
                {
                    //set object active
                    allInactiveObjects[i].SetActive(true);
                    //remove from list
                    allInactiveObjects.Remove(allInactiveObjects[i]);
                    //move i back once to account for change in list index
                    i--;
                }
            }
            //obj is destroyed
            else
            {
                //remove from list
                allInactiveObjects.Remove(allInactiveObjects[i]);
                //move i back once to account for change in list index
                i--;
            }

        }
    }
}
