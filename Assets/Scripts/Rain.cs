using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Rain: MonoBehaviour {
    public ParticleSystem rainEffect;

    AudioSource rainSource;
    public AudioClip slightShower, downPour, heavyRain;

    WorldManager worldMan;

    void Start () {

        worldMan = GameObject.FindGameObjectWithTag("WorldManager").GetComponent<WorldManager>();

        rainSource = GetComponent<AudioSource>();
        
        rainEffect = GetComponent<ParticleSystem>();

        rainEffect.Stop();
        rainSource.Stop();
    }
	
	// Update is called once per frame
	void Update () {
       
        if (!worldMan.isRaining)
        {
            //stop rain
            rainEffect.Stop();
            rainSource.Stop();
        }
	}

    public void RainType()
    {
        ParticleSystem.MainModule rainModule = rainEffect.main;
        ParticleSystem.EmissionModule rainEmitter = rainEffect.emission;
        switch (worldMan.rainType)
        {
            case 1:
                Debug.Log("light rain");
                rainSource.clip = slightShower;
                rainEmitter.rateOverTime = 15;
                rainModule.simulationSpeed = 2;
                break;
            case 2:
                Debug.Log("downpour");
                rainSource.clip = downPour;
                rainEmitter.rateOverTime = 50;
                rainModule.simulationSpeed = 3;
                break;
            case 3:
                Debug.Log("heavy rain");
                rainSource.clip = heavyRain;
                rainEmitter.rateOverTime = 15;
                rainModule.simulationSpeed = 100;
                break;
        }
        rainEffect.Play();
        rainSource.Play();
    }
    
}
