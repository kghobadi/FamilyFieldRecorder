using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DoodleStudio95;

namespace DoodleStudio95Examples {
[RequireComponent(typeof(DoodleAnimator))]
public class Worm : MonoBehaviour {

	public DoodleAnimationFile animationEnter;
	public DoodleAnimationFile animationIdle;
	
	DoodleAnimator animator;

	void Awake() {
		animator = GetComponent<DoodleAnimator>();
		animator.Hide();
	}
	void Start () {
		StartCoroutine(ShowSequence());
	}
	
	IEnumerator ShowSequence() {
		// Play the enter animation
		animator.ChangeAnimation(animationEnter);
		animator.SetFrame(0);
		// Wait until it's finished
		yield return animator.PlayAndPauseAt();
		// Play the idle animation
		animator.ChangeAnimation(animationIdle);
		animator.SetFrame(0);
		animator.Play();
		float t = Time.time;
		// Choose a random time to wait
		float waitTime = Random.Range(3,4);
		while(Time.time - t < waitTime) {
			yield return 0;
		}
		// Set the enter animation
		animator.ChangeAnimation(animationEnter);
		// Play the enter animation backwards (from last frame to first)
		yield return animator.PlayAndPauseAt(-1,0);
		// Hide the sprite
		animator.Hide();
		// Die
		Destroy(gameObject);
	}

	IEnumerator GetEatenSequence() {
		// Set the animation to enter, unless it's already playing
		if (animator.File != animationEnter) {
			animator.ChangeAnimation(animationEnter);
			animator.SetFrame(animator.File.Length - 1);
		}
		// Speed it up
		animator.speed = 1.5f;
		// Play backwards until it's finished
		yield return animator.PlayAndPauseAt(animator.CurrentFrame, 0);
		// Die
		Destroy(gameObject);
	}

	public void GetEaten() {
		StopAllCoroutines();
		StartCoroutine(GetEatenSequence());
	}

}
}