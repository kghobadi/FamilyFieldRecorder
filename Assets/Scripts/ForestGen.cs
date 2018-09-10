using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ForestGen : MonoBehaviour {

    public Transform terrain, jungleGrid, treeParent, birdParent;
    public int gridSizeX, gridSizeY;
    GameObject[] grid;
    public GameObject gridSpot;

    public List<GameObject> trees = new List<GameObject>();
    public GameObject[] treeTypes;

    public List<GameObject> birds = new List<GameObject>();
    public GameObject[] birdTypes;

    //set to adjust grid to terrain world pos
    public Vector3 gridOffset;

	void Awake () {

        GenerateForestGrid();
    }

    void GenerateForestGrid()
    {
        //jump to corner of terrain

        grid = new GameObject[(gridSizeX + 1) * (gridSizeY + 1)];

        for (int i = 0, y = 0; y <= gridSizeY; y++)
        {
            for (int x = 0; x <= gridSizeX; x++, i++)
            {
                grid[i] = Instantiate(gridSpot, new Vector3(x * gridSpot.transform.localScale.x,
                    terrain.position.y, y * gridSpot.transform.localScale.x), Quaternion.identity, jungleGrid);
            }


        }

        jungleGrid.transform.localPosition = gridOffset;
        GenerateTrees();
    }

    void GenerateTrees()
    {
        for (int i = 0; i < grid.Length; i++)
        {
            //check if player or house is in this gridSpot
            bool canGenerate = true;

            Collider[] hitColliders = Physics.OverlapSphere(grid[i].transform.position, 15);

            for (int h = 0; h < hitColliders.Length; h++)
            {
                if (hitColliders[h].gameObject.tag == "House" || hitColliders[h].gameObject.tag == "Player")
                {
                    canGenerate = false;
                }
            }

            //if no player/house, generate tree
            if (canGenerate)
            {
                //generate random tree type
                int randomTree = Random.Range(0, treeTypes.Length);
                GameObject treeClone = Instantiate(treeTypes[randomTree], grid[i].transform.position, Quaternion.identity, treeParent);
                trees.Add(treeClone);

                //alter the scale
                float randomScaleX = Random.Range(0.5f, 2f);
                float randomScaleY = Random.Range(0.5f, 2f);
                float randomScaleZ = Random.Range(0.5f, 2f);
                treeClone.transform.localScale = new Vector3(treeClone.transform.localScale.x * randomScaleX,
                    treeClone.transform.localScale.y * randomScaleY, treeClone.transform.localScale.z * randomScaleZ);

                //alter the position
                float randomX = Random.Range(0f, 5f);
                float randomZ = Random.Range(0f, 5f);
                float yOffset = -treeClone.transform.localScale.y / 2;

                treeClone.transform.Translate(randomX, yOffset, randomZ);
            }
        }

        GenerateBirds();
    }


    //Basically will want to decide which type of bird to generate based on which tree type
    void GenerateBirds()
    {
        for (int i = 0; i < trees.Count; i++)
        {
            TreeAudio treeScript;
            //get Tree component
            if (trees[i].GetComponent<TreeAudio>() != null)
            {
                treeScript = trees[i].GetComponent<TreeAudio>();

                //generate birds in painted trees
                if (treeScript.treeSpecie == TreeAudio.TreeType.PAINTEDTREE)
                {
                    for (int j = 2; j < trees[i].transform.childCount; j++)
                    {
                        float randomChance = Random.Range(0, 100);
                        if (randomChance < 10)
                        {
                            Vector3 posInTree = trees[i].transform.GetChild(j).position;

                            //generate red bird
                            birds.Add(Instantiate(birdTypes[1], posInTree, Quaternion.identity, birdParent));
                        }
                    }
                }

                //generate birds in purple trees
                if (treeScript.treeSpecie == TreeAudio.TreeType.PURPLETREE)
                {
                    for (int j = 1; j < trees[i].transform.childCount; j++)
                    {
                        float randomChance = Random.Range(0, 100);
                        if (randomChance < 10)
                        {
                            Vector3 posInTree = trees[i].transform.GetChild(j).position;

                            //generate blue bird
                            birds.Add(Instantiate(birdTypes[0], posInTree, Quaternion.identity, birdParent));
                        }
                    }
                }
            } 
        }
    }
}
