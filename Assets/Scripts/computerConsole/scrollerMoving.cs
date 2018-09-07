using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;

public class scrollerMoving : MonoBehaviour, IPointerDownHandler, IPointerUpHandler
{

    public LocalClipPlayer l;

    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }

    public void OnPointerDown(PointerEventData eventData)
    {
        l.scrollBarValueIsChanging = true;
    }

    public void OnPointerUp(PointerEventData eventData)
    {
        l.scrollBarValueIsChanging = false;
    }
}
