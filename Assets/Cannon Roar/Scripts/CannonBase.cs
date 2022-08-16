using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Liminal.SDK.VR;
using Liminal.SDK.VR.Input;
using Liminal.SDK.VR.Pointers;

public class CannonBase : MonoBehaviour
{
    private Vector3 worldPosition;
    private Vector3 mousePos;
    private Rigidbody rb;
    private IVRPointer vRPointer;
    public GameObject avatar;

    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {
        if (vRPointer != null)
            mousePos = vRPointer.Transform.position;
        else
            mousePos = Input.mousePosition;

        worldPosition = Camera.main.ScreenToWorldPoint(new Vector3(mousePos.x, 0, -1000));
        Quaternion direction = Quaternion.Euler(0, mousePos.x / 10, 0);
        rb.MoveRotation(direction);
    }
}
