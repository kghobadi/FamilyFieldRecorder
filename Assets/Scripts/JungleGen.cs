using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class JungleGen : MonoBehaviour {

    public Transform terrain, jungleGrid, treeParent, birdParent;
    public int gridSizeX, gridSizeY;
    GameObject[] grid;
    public GameObject gridSpot;

    GameObject[] trees;
    public GameObject[] treeTypes;

    public List<GameObject> birds = new List<GameObject>();
    public GameObject[] birdTypes;

	void Awake () {

        GenerateJungleGrid();
        GenerateTrees();
        GenerateBirds();
	}

    void GenerateJungleGrid()
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
    }

    void GenerateTrees()
    {
        trees = new GameObject[grid.Length];

        for (int i = 0; i < trees.Length; i++)
        {
            //generate random tree type
            int randomTree = Random.Range(0, treeTypes.Length);
            trees[i] = Instantiate(treeTypes[randomTree], grid[i].transform.position, Quaternion.identity, treeParent);

            //alter the scale
            float randomScaleX = Random.Range(0.5f, 2f);
            float randomScaleY = Random.Range(0.5f, 2f);
            float randomScaleZ = Random.Range(0.5f, 2f);
            trees[i].transform.localScale = new Vector3(trees[i].transform.localScale.x * randomScaleX,
                trees[i].transform.localScale.y * randomScaleY, trees[i].transform.localScale.z * randomScaleZ);

            //alter the position
            float randomX = Random.Range(0f, 5f);
            float randomZ = Random.Range(0f, 5f);
            float yOffset = -trees[i].transform.localScale.y / 2;

            trees[i].transform.Translate(randomX, yOffset, randomZ);
        }
    }

    void GenerateBirds()
    {
        for (int i = 0; i < trees.Length; i++)
        {
            for(int j = 2; j < trees[i].transform.childCount; j++)
            {
                float randomChance = Random.Range(0, 100);
                if (randomChance < 10)
                {
                    Debug.Log(trees[i].transform.GetChild(j));
                    Vector3 posInTree = trees[i].transform.GetChild(j).position;

                    //generate random bird type
                    int randomBird = Random.Range(0, birdTypes.Length);
                    birds.Add(Instantiate(birdTypes[randomBird], posInTree, Quaternion.identity));
                }
            }
            
        }
    }
}
