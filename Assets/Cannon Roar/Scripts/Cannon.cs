using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using Liminal.SDK.VR;
using Liminal.SDK.VR.Input;

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

    private new ParticleSystem particleSystem;
    private new AudioSource audio;

    public GameObject reticle;
    private bool grabHandle;
    private Transform vrController;

    // Start is called before the first frame update
    void Start()
    {
        grabHandle = false;
        rb = GetComponent<Rigidbody>();
        particleSystem = GetComponentInChildren<ParticleSystem>();
        audio = GetComponent<AudioSource>();
    }

    // Update is called once per frame
    void Update()
    {
        IVRInputDevice primaryInput = VRDevice.Device.PrimaryInputDevice;

        timer += Time.deltaTime;
        if(Input.GetMouseButtonDown(0) && timer >= timeBetweenShots && grabHandle || primaryInput.GetButtonDown(VRButton.Trigger) && timer >= timeBetweenShots && grabHandle)
        {
            Instantiate(cannonBall, barrelEnd.transform.position, barrelEnd.transform.rotation);
            particleSystem.Play();
            audio.Play();
            timer = 0f;
        }
        
        if (grabHandle)
        {
            //vRControllerVisual = GameObject.Find("VRAvatar").GetComponentInChildren<IVRControllerVisual>();
            //mousePos = reticle.transform.position; //vRControllerVisual.transform.TransformDirection(vRControllerVisual.transform.position);
            //worldPosition = reticle.transform.position + reticle.transform.forward * -1000; //Camera.main.ScreenToWorldPoint(new Vector3(mousePos.x, mousePos.y, mousePos.z));
            //cBase.LookAt(new Vector3(worldPosition.x, 0, worldPosition.z));
            //cannon.LookAt(worldPosition);

            vrController = GameObject.Find("PrimaryHand").transform;
            worldPosition = vrController.transform.position + vrController.transform.forward * -1000;
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
