using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OceanMath : MonoBehaviour {
    Mesh myMesh;

    public float waveHeight;
    public float waveSpeed;

    public Vector3[] myVerts;
    public Vector3[] newVerts;

	void Start () {
        myMesh = GetComponent<MeshFilter>().mesh;
        myVerts = myMesh.vertices;
        newVerts = new Vector3[myVerts.Length];
	}
	
	void Update () {
		for(int i = 0; i < myVerts.Length; i++)
        {

           newVerts[i] = new Vector3(myVerts[i].x, (Mathf.Sin(myVerts[i].z * Time.time * waveSpeed) * waveHeight), myVerts[i].z);
            

            //myMesh.vertices[i].Set(myMesh.vertices[i].x , myMesh.vertices[i].y + Mathf.Sin(waveHeight * Time.time * i), myMesh.vertices[i].z); 
        }

        myMesh.vertices = newVerts;
	}
}
