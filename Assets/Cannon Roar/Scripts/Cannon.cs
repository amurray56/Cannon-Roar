using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using Liminal.SDK.VR;
using Liminal.SDK.VR.Input;
using Liminal.SDK.VR.Pointers;
using UnityEngine.XR;

public class Cannon : MonoBehaviour
{
    [SerializeField]
    private GameObject cannonBall;
    [SerializeField]
    private GameObject barrelEnd;
    private Rigidbody rb;
    private Vector3 worldPosition;
    private float timer;
    public float timeBetweenShots = 1.5f;
    private Vector3 mousePos;
    [SerializeField]
    private Transform cannon;
    [SerializeField]
    private Transform cBase;

    IVRPointer vRPointer;

    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {
        var primaryInput = VRDevice.Device.PrimaryInputDevice;

        timer += Time.deltaTime;
        if(Input.GetMouseButtonDown(0) && timer >= timeBetweenShots || primaryInput.GetButtonDown(VRButton.Trigger) && timer >= timeBetweenShots)
        {
            Instantiate(cannonBall, barrelEnd.transform.position, barrelEnd.transform.rotation);
            timer = 0f;
        }

        
        mousePos = Input.mousePosition;
        worldPosition = Camera.main.ScreenToWorldPoint(new Vector3(mousePos.x, mousePos.y, -1000));
        cBase.LookAt(new Vector3(worldPosition.x, 0, worldPosition.z));
        cannon.LookAt(worldPosition);

    }
}
