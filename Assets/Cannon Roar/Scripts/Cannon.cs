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
    private Vector3 worldPosition;
    private float timer;
    public float timeBetweenShots = 1.5f;
    [SerializeField]
    private Transform cannon;
    [SerializeField]
    private Transform cBase;

    private new ParticleSystem particleSystem;
    private new AudioSource audio;

    private bool grabHandle;
    private bool grabHandleComplete;

    public GameObject handle;
    public GameObject hand;
    private Transform primaryHand;
    private Transform grabPosition;

    // Start is called before the first frame update
    void Start()
    {
        grabHandleComplete = false;
        grabHandle = false;
        particleSystem = GetComponentInChildren<ParticleSystem>();
        audio = GetComponent<AudioSource>();
        primaryHand = GameObject.Find("PrimaryHand").transform;
    }

    // Update is called once per frame
    void Update()
    {
        IVRInputDevice primaryInput = VRDevice.Device.PrimaryInputDevice;
        IVRInputDevice secondaryInput = VRDevice.Device.SecondaryInputDevice;
        timer += Time.deltaTime;
        if (Input.GetMouseButtonDown(0) && timer >= timeBetweenShots && grabHandle || primaryInput.GetButtonDown(VRButton.Trigger) && timer >= timeBetweenShots && grabHandle)
        {
            Instantiate(cannonBall, barrelEnd.transform.position, barrelEnd.transform.rotation);
            particleSystem.Play();
            audio.Play();
            timer = 0f;
        }

        if (grabHandle)
        {
            if (!grabHandleComplete)
            {
                hand.transform.position = Vector3.Lerp(hand.transform.position, grabPosition.position, 50 * Time.deltaTime);
                
                if (hand.transform.position == grabPosition.position)
                    grabHandleComplete = true;
            }
            else
            {
                hand.transform.position = handle.transform.position;
                worldPosition = hand.transform.position + hand.transform.forward * -1000;
                cBase.LookAt(new Vector3(worldPosition.x, 0, worldPosition.z));
                cannon.LookAt(new Vector3(worldPosition.x, worldPosition.y + 500, worldPosition.z));
            }
        }

        if (Input.GetKeyDown(KeyCode.A))
        {
            grabHandle = false;
            grabHandleComplete = false;
            hand.transform.position = primaryHand.position;
        }
    }

    public void OnPointerClick(PointerEventData eventData)
    {
        if (eventData.button == 0 && eventData.pointerEnter.name == "handle")
        {
            grabPosition = handle.transform;
            timer = 0f;
            grabHandle = !grabHandle;
        }
    }
}
