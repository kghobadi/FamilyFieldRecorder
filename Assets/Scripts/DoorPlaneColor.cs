using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DoorPlaneColor : MonoBehaviour {
    WorldManager worldMan;

    MeshRenderer myMR;
    public Material[] theFourMats;
    public int planeNumber;

    void Start()
    {
        worldMan = GameObject.FindGameObjectWithTag("WorldManager").GetComponent<WorldManager>();
        myMR = GetComponent<MeshRenderer>();
    }

    void Update () {
        switch (worldMan.regionCounter)
        {
            //bird forest
            case 0:
                if (planeNumber == 0)
                    myMR.material = theFourMats[0];
                else if (planeNumber == 1)
                    myMR.material = theFourMats[1];
                else if (planeNumber == 2)
                    myMR.material = theFourMats[2];
                else if (planeNumber == 3)
                    myMR.material = theFourMats[3];
                break;
            //pine forest
            case 1:
                if (planeNumber == 0)
                    myMR.material = theFourMats[3];
                else if (planeNumber == 1)
                    myMR.material = theFourMats[0];
                else if (planeNumber == 2)
                    myMR.material = theFourMats[1];
                else if (planeNumber == 3)
                    myMR.material = theFourMats[2];
                break;
            //beach
            case 2:
                if (planeNumber == 0)
                    myMR.material = theFourMats[2];
                else if (planeNumber == 1)
                    myMR.material = theFourMats[3];
                else if (planeNumber == 2)
                    myMR.material = theFourMats[0];
                else if (planeNumber == 3)
                    myMR.material = theFourMats[1];
                break;
            //monkey jungle
            case 3:
                if (planeNumber == 0)
                    myMR.material = theFourMats[1];
                else if (planeNumber == 1)
                    myMR.material = theFourMats[2];
                else if (planeNumber == 2)
                    myMR.material = theFourMats[3];
                else if (planeNumber == 3)
                    myMR.material = theFourMats[0];
                break;
        }
	}
}
