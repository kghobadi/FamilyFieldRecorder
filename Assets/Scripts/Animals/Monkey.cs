using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Monkey : Animal {


    public override void RandomizeSize()
    { //animal's original size
        Vector3 origScale = transform.localScale;

        //alter the scale
        float randomScale = Random.Range(randomScaleMin, randomScaleMax);

        //if we are 'shrinking' the monkey, increase it's pitch
        animalAudio.pitch += (0.5f - randomScale);

        //multiply scale AND volume by our random vals
        transform.localScale *= randomScale;
        animalAudio.volume *= randomScale;
        

    }

}

