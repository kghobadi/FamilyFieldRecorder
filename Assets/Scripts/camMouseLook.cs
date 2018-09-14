using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class camMouseLook : MonoBehaviour
{
    GameObject character;
    Transform player;
    FirstPersonController fpc;
    Vector2 mouseLook;
    Vector2 smoothV;
    public float sensitivityX;
    public float sensitivityY;
    public float smoothing = 2.0f;

    public bool isActive;

    WorldManager worldMan;
    public Camera renderCamera;
    public float rayDistance;

    public LayerMask renderMask;
    public GameObject renderPlane;

    void Start()
    {
        character = transform.parent.gameObject;
        isActive = false;
        player = transform.parent;
        fpc = player.GetComponent<FirstPersonController>();
        worldMan = GameObject.FindGameObjectWithTag("WorldManager").GetComponent<WorldManager>();
    }

    void Update()
    {
        //only set active once start menu disappears
        if(fpc.hasStarted && !isActive)
        {
            isActive = true;
        }

        if (isActive)
        {
            Cursor.lockState = CursorLockMode.Locked;

            var newRotate = new Vector2(Input.GetAxisRaw("Mouse X"), Input.GetAxisRaw("Mouse Y"));

            newRotate = Vector2.Scale(newRotate, new Vector2(sensitivityX * smoothing, sensitivityY * smoothing));
            smoothV.x = Mathf.Lerp(smoothV.x, newRotate.x, 1f / smoothing);
            smoothV.y = Mathf.Lerp(smoothV.y, newRotate.y, 1f / smoothing);
            mouseLook += smoothV;

            mouseLook.y = Mathf.Clamp(mouseLook.y, -90f, 90f);

            transform.localRotation = Quaternion.AngleAxis(-mouseLook.y, Vector3.right);
            character.transform.localRotation = Quaternion.AngleAxis(mouseLook.x, character.transform.up);

            //SetRenderCamera();
        }
    }

    //this function moves the render cameras in relation to the players position near the map's boundaries
    void SetRenderCamera()
    {
        RaycastHit hit;

        if (Physics.Raycast(transform.position, transform.TransformDirection(Vector3.forward), out hit, rayDistance, renderMask))
        {
            Debug.Log(hit.transform.gameObject);
            if (hit.transform.gameObject.tag == "RenderWall")
            {
                Debug.Log(hit.point);

                RenderWall rw = hit.transform.gameObject.GetComponent<RenderWall>();

                renderPlane.transform.position = new Vector3(hit.point.x, transform.position.y, hit.point.z);

                if (rw.renderWallType == RenderWall.WallType.N)
                {
                    renderCamera.transform.position = new Vector3(hit.point.x, transform.position.y, -hit.point.z);
                    renderCamera.transform.localEulerAngles = new Vector3(0,0,0);

                    renderPlane.transform.localEulerAngles = new Vector3(90, 0, 180);
                }
                else if(rw.renderWallType == RenderWall.WallType.E)
                {
                    renderCamera.transform.position = new Vector3(-hit.point.x, transform.position.y, hit.point.z);
                    renderCamera.transform.localEulerAngles = new Vector3(0, 90, 0);

                    renderPlane.transform.localEulerAngles = new Vector3(90, 0, 90);
                }
                else if (rw.renderWallType == RenderWall.WallType.S)
                {
                    renderCamera.transform.position = new Vector3(hit.point.x, transform.position.y, -hit.point.z);
                    renderCamera.transform.localEulerAngles = new Vector3(0, 180, 0);

                    renderPlane.transform.localEulerAngles = new Vector3(90, 0, 0);
                }
                else if (rw.renderWallType == RenderWall.WallType.W)
                {
                    renderCamera.transform.position = new Vector3(-hit.point.x, transform.position.y, hit.point.z);
                    renderCamera.transform.localEulerAngles = new Vector3(0, -90, 0);

                    renderPlane.transform.localEulerAngles = new Vector3(90, 0, -90);
                }

                else if (rw.renderWallType == RenderWall.WallType.NW)
                {
                    renderCamera.transform.position = new Vector3(-hit.point.x, transform.position.y, -hit.point.z);
                    renderCamera.transform.localEulerAngles = new Vector3(0, -45, 0);

                    renderPlane.transform.localEulerAngles = new Vector3(90, 0, 215);
                }
                else if (rw.renderWallType == RenderWall.WallType.NE)
                {
                    renderCamera.transform.position = new Vector3(-hit.point.x, transform.position.y, -hit.point.z);
                    renderCamera.transform.localEulerAngles = new Vector3(0, 45, 0);

                    renderPlane.transform.localEulerAngles = new Vector3(90, 0, 135);
                }
                else if (rw.renderWallType == RenderWall.WallType.SW)
                {
                    renderCamera.transform.position = new Vector3(-hit.point.x, transform.position.y, -hit.point.z);
                    renderCamera.transform.localEulerAngles = new Vector3(0, 215, 0);

                    renderPlane.transform.localEulerAngles = new Vector3(90, 0, -45);
                }
                else if (rw.renderWallType == RenderWall.WallType.SE)
                {
                    renderCamera.transform.position = new Vector3(-hit.point.x, transform.position.y, -hit.point.z);
                    renderCamera.transform.localEulerAngles = new Vector3(0, 135, 0);

                    renderPlane.transform.localEulerAngles = new Vector3(90, 0, 45);
                }
            }
        }
    }

}
