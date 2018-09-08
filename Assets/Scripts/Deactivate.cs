using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Deactivate : MonoBehaviour {
    GameObject _player;
    WorldManager wm;

    void Start () {
        _player = GameObject.FindGameObjectWithTag("Player");
        wm = GameObject.FindGameObjectWithTag("WorldManager").GetComponent<WorldManager>();
    }
	
	void Update () {
		if(Vector3.Distance(_player.transform.position, transform.position) > wm.activationDistance)
        {
            wm.allInactiveObjects.Add(gameObject);

            gameObject.SetActive(false);
        }
	}
}
