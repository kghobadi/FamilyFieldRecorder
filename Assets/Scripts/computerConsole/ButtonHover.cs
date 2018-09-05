using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class ButtonHover : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler
{
    public Texture2D normal, hover;


    public void OnPointerEnter(PointerEventData eventData)
    {
        Cursor.SetCursor(hover, Vector2.one * 6, CursorMode.Auto);
        // Debug.Log("hover on");
    }
    public void OnPointerExit(PointerEventData eventData)
    {
        Cursor.SetCursor(normal, Vector2.one * 6, CursorMode.Auto);
        //Debug.Log("hover off");
    }

}
