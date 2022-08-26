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

    public GameObject handleHand;

    // Start is called before the first frame update
    void Start()
    {
        grabHandleComplete = true;
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

        if (!grabHandleComplete)
        {
            hand.transform.position = Vector3.Lerp(hand.transform.position, handle.transform.position, 50 * Time.deltaTime);

            if (hand.transform.position == handle.transform.position)
            {
                handleHand.SetActive(true);
                hand.GetComponent<MeshRenderer>().enabled = false;
                grabHandleComplete = true;
                grabHandle = true;
            }
        }

        if (grabHandle)
        {
            if (Input.GetMouseButtonDown(0) && timer >= timeBetweenShots || primaryInput.GetButtonDown(VRButton.Trigger) && timer >= timeBetweenShots)
            {
                Instantiate(cannonBall, barrelEnd.transform.position, barrelEnd.transform.rotation);
                particleSystem.Play();
                audio.Play();
                timer = 0f;
            }

            hand.transform.position = handle.transform.position;
            worldPosition = hand.transform.position + hand.transform.forward * -1000;
            cBase.LookAt(new Vector3(worldPosition.x, 0, worldPosition.z));
            cannon.LookAt(new Vector3(worldPosition.x, worldPosition.y + 500, worldPosition.z));
        }

        if (Input.GetKeyDown(KeyCode.A))
        {
            grabHandle = false;
            grabHandleComplete = true;
            handleHand.SetActive(false);
            hand.GetComponent<MeshRenderer>().enabled = true;
            hand.transform.position = primaryHand.position;
        }
    }

    public void OnPointerClick(PointerEventData eventData)
    {
        if (eventData.button == 0 && eventData.pointerEnter.name == "handle")
        {
            grabHandleComplete = false;
            timer = 0f;
        }
    }
}
