using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DoodleStudio95;

namespace DoodleStudio95Examples {
[RequireComponent(typeof(DoodleAnimator)), 
	RequireComponent(typeof(SpriteRenderer)),
	RequireComponent(typeof(CircleCollider2D)),
]
public class BirdCharacter : MonoBehaviour {

	public float movementSpeedX = 4;
	public float movementSpeedY = 4;

	public DoodleAnimationFile animationIdle;
	public DoodleAnimationFile animationWalking;

	public DoodleAnimationFile animEatIn;
	public DoodleAnimationFile animEatMid;
	public DoodleAnimationFile animEatOut;

	public string eatButton = "Jump";

	[Tooltip("If enabled, the character will move across the Z axis. Use this to make 2.5D games.")]
	public bool paperMarioMode = true;

	DoodleAnimator animator;
	Rigidbody rigidBody;
	SpriteRenderer spriteRenderer;
	int lastDirection = 1;

	Coroutine currentEatingSequence;

	void Start () {
		animator = GetComponent<DoodleAnimator>();
		rigidBody = GetComponent<Rigidbody>();
		spriteRenderer = GetComponent<SpriteRenderer>();

		animator.ChangeAnimation(animationIdle);
	}
	
	void Update () {
		// Get input
		float axisX = Input.GetAxis("Horizontal");
		float axisY = Input.GetAxis("Vertical");
		
		int directionX = axisX > 0 ? 1 : (axisX < 0 ? -1 : 0);
		int directionY = axisY > 0 ? 1 : (axisY < 0 ? -1 : 0);

		// Set animation
		if (currentEatingSequence == null) {
			if (Input.GetButtonDown(eatButton)) {
				currentEatingSequence = StartCoroutine(EatingSequence());
			} else {
				var anim = (directionX == 0 && directionY == 0) ? animationIdle : animationWalking;
				if (animator.File != anim) {
					animator.ChangeAnimation(anim);
				}
			}
		} else {
			directionX = directionY = 0;
		}
		
		// Move
		float d = Mathf.Min(1f/60f, Time.deltaTime); // Avoid moving a lot when there's a framerate drop
		float velocityX = movementSpeedX * directionX * d;
		float velocityY = movementSpeedY * directionY * d;
		Vector3 velocity = new Vector3(
			velocityX,
			paperMarioMode ? 0 : velocityY,
			paperMarioMode ? velocityY : 0
		);
		if (rigidBody != null) {
			const float extraVelocity = 20;
			var v = rigidBody.velocity;
			v.x = velocity.x * extraVelocity;
			if (paperMarioMode)
				v.z = velocity.z * extraVelocity;
			else
				v.y = velocity.y * extraVelocity;
			rigidBody.velocity = v;
		} else {
			transform.Translate(velocity, Space.World);
		}

		// Flip to look right or left
		if (directionX != 0)
			lastDirection = directionX;
		spriteRenderer.flipX = lastDirection < 0;
	}

	IEnumerator EatingSequence() {
		Worm worm = GetPossibleWorm();
		// Play the In animation and wait
		animator.ChangeAnimation(animEatIn);
		yield return animator.PlayAndPauseAt();
		if (worm) {
			// Hide the worm
			worm.GetEaten();
			// Play the Mid animation
			animator.ChangeAnimation(animEatMid);
			animator.SetFrame(0);
			animator.Play();
			float t = Time.time;
			// Wait
			while(Input.GetButton(eatButton) && Time.time - t < 1)  // while we hold the button
				yield return null;
			// Wait until the middle animation ends before playing the next (prince of persia style)
			while(animator.CurrentFrame != 0)
				yield return null;
		}
		animator.SetFrame(0);
		// Play the Out animation
		animator.ChangeAnimation(animEatOut);
		yield return animator.PlayAndPauseAt();
		// Go back to Idle
		animator.ChangeAnimation(animationIdle);
		currentEatingSequence = null;
	}

	Worm GetPossibleWorm() {
		Worm worm = null;
		var peakCollider = GetComponent<CircleCollider2D>();
		// From all worms in the scene...
		foreach(Worm w in FindObjectsOfType<Worm>()) {
			// Find the one that's inside our collider
			if (peakCollider.bounds.Contains(w.transform.position)) {
				worm = w;
				break;
			}
		}
		return worm;
	}
}
}