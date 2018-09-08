using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioGeneration : MonoBehaviour {

    public GameObject audioSourcePrefab, treeAudioParent;

    public List<GameObject> treeAudioSources = new List<GameObject>();

    public Terrain terrain;

    // Use this for initialization
    void Start() {

        terrain = transform.parent.GetComponent<Terrain>();

        for (int i = 0; i < terrain.terrainData.treeInstances.Length; i++)
        {
            Vector3 genPos = new Vector3(terrain.terrainData.treeInstances[i].position.x * terrain.terrainData.size.x + terrain.transform.position.x,
                terrain.terrainData.treeInstances[i].position.y * terrain.terrainData.size.y + terrain.transform.position.y,
                terrain.terrainData.treeInstances[i].position.z * terrain.terrainData.size.z + terrain.transform.position.z);

            treeAudioSources.Add(Instantiate(audioSourcePrefab, genPos, Quaternion.identity, treeAudioParent.transform));
        }
       
    }

}
