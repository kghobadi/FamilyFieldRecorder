using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DisplayTransform : MonoBehaviour {
    Transform player;
    Text transformReader;

	void Start () {
        player = GameObject.FindGameObjectWithTag("Player").transform;
        transformReader = GetComponent<Text>();
	}
	
	// Update is called once per frame
	void Update () {
        transformReader.text = (int)player.position.x + " X, " + (int)player.position.y + " Y, " + (int)player.position.z + " Z";
	}
}
