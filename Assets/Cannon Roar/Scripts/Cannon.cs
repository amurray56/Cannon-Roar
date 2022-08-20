using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using Liminal.SDK.VR;
using Liminal.SDK.VR.Input;
using Liminal.SDK.VR.Avatars.Controllers;

public class Cannon : MonoBehaviour, IPointerClickHandler, IEventSystemHandler
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

    public GameObject reticle;
    private bool grabHandle;
    private IVRControllerVisual vRControllerVisual;

    // Start is called before the first frame update
    void Start()
    {
        grabHandle = false;
        rb = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {
        IVRInputDevice primaryInput = VRDevice.Device.PrimaryInputDevice;

        timer += Time.deltaTime;
        if(Input.GetMouseButtonDown(0) && timer >= timeBetweenShots && grabHandle || primaryInput.GetButtonDown(VRButton.Trigger) && timer >= timeBetweenShots && grabHandle)
        {
            Instantiate(cannonBall, barrelEnd.transform.position, barrelEnd.transform.rotation);
            timer = 0f;
        }

        
        if (grabHandle)
        {
            //vRControllerVisual = GameObject.Find("VRAvatar").GetComponentInChildren<IVRControllerVisual>();
            mousePos = reticle.transform.position; //vRControllerVisual.transform.TransformDirection(vRControllerVisual.transform.position);
            worldPosition = Camera.main.ScreenToWorldPoint(new Vector3(mousePos.x, mousePos.y, -1000));
            cBase.LookAt(new Vector3(worldPosition.x, 0, worldPosition.z));
            cannon.LookAt(worldPosition);
        }
        
    }

    

    public void OnPointerClick(PointerEventData eventData)
    {
        if(eventData.button == 0 && eventData.pointerEnter.name == "handle")
        {
            grabHandle = !grabHandle;
        }
    }
}
