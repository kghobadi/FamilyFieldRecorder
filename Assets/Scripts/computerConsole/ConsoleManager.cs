using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class ConsoleManager : MonoBehaviour
{

    public GameObject console, topCanvas;
    public Transform player;
    public camMouseLook mouseLook;
    public FirstPersonController firstPersonController;
    public Transform playerConsolePosition;

    //can use these to transition audio in turnOff and turnOn
    public AudioMixer exploration, sequencer;

    bool exitting;

    // Use this for initialization
    void Start()
    {
        TurnOff();
    }

    // Update is called once per frame
    void Update()
    {
        if (Vector3.Distance(player.position, transform.position) < 5 && player.position != playerConsolePosition.position && !exitting)
        {
            LerpToPos();

        }
        else if (Vector3.Distance(player.position, transform.position) > 5)
        {
            exitting = false;
        }

        if (Input.GetKeyDown(KeyCode.Escape))
        {
            exitting = true;
            TurnOff();
        }
    }

    void TurnOn()
    {
        console.SetActive(true);
        topCanvas.SetActive(true);
        //put away recorder
        firstPersonController.MoveRec(firstPersonController.recAwayPos);
        //turn volume of exploration mixer down 
        Cursor.lockState = CursorLockMode.None;
    }

    void TurnOff()
    {
        console.SetActive(false);
        mouseLook.isActive = true;
        firstPersonController.enabled = true;
        topCanvas.SetActive(false);
    }

    void LerpToPos()
    {
        if (Vector3.Distance(player.position, playerConsolePosition.position) > 0.1f)
        {
            firstPersonController.enabled = false;
            mouseLook.isActive = false;
            player.position = Vector3.Lerp(player.position, playerConsolePosition.position, 0.2f);

        }
        else
        {
            player.position = playerConsolePosition.position;
            Camera.main.transform.localEulerAngles = Vector3.zero;
            player.eulerAngles = Vector3.zero;
            TurnOn();
        }


    }
}
