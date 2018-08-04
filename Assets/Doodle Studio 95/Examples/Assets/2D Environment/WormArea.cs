using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace DoodleStudio95Examples {
[RequireComponent(typeof(BoxCollider))]
public class WormArea : MonoBehaviour {

	public GameObject wormPrefab;

	public float spawnFrequency = 1;

	void Start() {
		StartCoroutine(SpawnSequence());
	}

	IEnumerator SpawnSequence() {
		// Have this loop running constantly
		while(true) {
			// Pick a random time to wait
			float waitTime = Random.Range(5, 10) / Mathf.Max(spawnFrequency, 0.001f);
			float t = Time.time;
			// Wait
			while(Time.time - t < waitTime)
				yield return 0;
			// Spawn the worm
			SpawnWorm();	
		}
	}

	void SpawnWorm() {
		var bc = GetComponent<BoxCollider>();
		// Pick a random point inside our boundaries
		var localPoint = new Vector3(
			Random.Range(-1f,1f) * bc.size.x * .5f,
			Random.Range(-1f,1f) * bc.size.y * .5f,
			Random.Range(-1f,1f) * bc.size.z * .5f
		);
		// Instantiate the worm object
		Instantiate(wormPrefab, transform.TransformPoint(localPoint), Quaternion.identity);
	}
}
}