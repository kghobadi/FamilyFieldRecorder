using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class TerrainManager : MonoBehaviour {
    GameObject player;
    FirstPersonController fpc;
    WorldManager worldMan;

    public Light sun;

    public Color sunColor, skyColor, equatorColor, groundColor,
        tempSkyTint, tempSkyGround, skyBoxTint, skyboxGround;

    public Material skybox;

    public float lerpStartTime, lerpTimeTotal, lerpSpeed;
    
    public bool playerColliding, hasTransitioned;

    public AudioMixerSnapshot mySnapshot;

    public AudioClip[] playerFootsteps;

    public bool lerpingColors;

    //for map boundaires
    public float myxPosMin, myxPosMax, myzPosMin, myzPosMax;

    void Start () {
        player = GameObject.FindGameObjectWithTag("Player");
        fpc = player.GetComponent<FirstPersonController>();
        worldMan = GameObject.FindGameObjectWithTag("WorldManager").GetComponent<WorldManager>();
    }

    void Update()
    {
        if (lerpingColors)
        {
            //set timer each frame to be ingame time - start of lerp
            float lerpTimer = Time.time - lerpStartTime;

            //lerp color values of sun and ambient lighting
            sun.color = Color.Lerp(sun.color, sunColor, lerpTimer * Time.deltaTime);
            RenderSettings.ambientSkyColor = Color.Lerp(RenderSettings.ambientSkyColor, skyColor, lerpTimer * Time.deltaTime * lerpSpeed);
            RenderSettings.ambientEquatorColor = Color.Lerp(RenderSettings.ambientEquatorColor, equatorColor, lerpTimer * Time.deltaTime * lerpSpeed);
            RenderSettings.ambientGroundColor = Color.Lerp(RenderSettings.ambientGroundColor, groundColor, lerpTimer * Time.deltaTime * lerpSpeed);

            //lerp color values of skybox shader
            tempSkyTint = Color.Lerp(tempSkyTint, skyBoxTint, lerpTimer * Time.deltaTime * lerpSpeed);
            tempSkyGround = Color.Lerp(tempSkyGround, skyboxGround, lerpTimer * Time.deltaTime * lerpSpeed);

            //set skybox colors to lerped value
            skybox.SetColor("_SkyTint", tempSkyTint);
            skybox.SetColor("_GroundColor", tempSkyGround);

            //end lerp after lerpTimeTotal has passed
            if (lerpTimer > (lerpStartTime + lerpTimeTotal))
            {
                lerpingColors = false;
            }
        }
    }

    void OnTriggerStay(Collider col)
    {
        if (col.gameObject.tag == "Player" && !hasTransitioned)
        {
            //set map boundaries to this one
            if (worldMan == null)
            {
                worldMan = GameObject.FindGameObjectWithTag("WorldManager").GetComponent<WorldManager>();
            }
            worldMan.xPosMax = myxPosMax;
            worldMan.xPosMin = myxPosMin;
            worldMan.zPosMax = myzPosMax;
            worldMan.zPosMin = myzPosMin;
            
            //player ref if null
            if(fpc == null)
            {
                player = GameObject.FindGameObjectWithTag("Player");
                fpc = player.GetComponent<FirstPersonController>();
            }

            //change audio mixer and footstep sounds
            playerColliding = true;
            mySnapshot.TransitionTo(1f);
            fpc.currentFootsteps = playerFootsteps;
            
            //grab current skybox color vals
            tempSkyTint = skybox.GetColor("_SkyTint");
            tempSkyGround = skybox.GetColor("_GroundColor");

            //start color lerping
            lerpStartTime = Time.time;
            lerpingColors = true;
            hasTransitioned = true;

            //set skybox shader at start
            if(Time.time < 1)
            {
                skybox.SetColor("_SkyTint", skyBoxTint);
                skybox.SetColor("_GroundColor", skyboxGround);
            }
        }
    }

    void OnTriggerExit(Collider col)
    {
        if (col.gameObject.tag == "Player")
        {
            playerColliding = false;
            lerpingColors = false;
            hasTransitioned = false;
        }
    }
}
