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

    private ParticleSystem particleSystem;
    private AudioSource audio;

    public GameObject reticle;
    private bool grabHandle;
    private IVRControllerVisual vRControllerVisual;

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

        if (timer >= 0.5f)
            particleSystem.Stop();
        
        if (grabHandle)
        {
            //vRControllerVisual = GameObject.Find("VRAvatar").GetComponentInChildren<IVRControllerVisual>();
            mousePos = reticle.transform.position; //vRControllerVisual.transform.TransformDirection(vRControllerVisual.transform.position);
            worldPosition = reticle.transform.position + reticle.transform.forward * -1000; //Camera.main.ScreenToWorldPoint(new Vector3(mousePos.x, mousePos.y, mousePos.z));
            cBase.LookAt(new Vector3(worldPosition.x, 0, worldPosition.z));
            cannon.LookAt(worldPosition);
            
            /*
            //adjust the velocity of target to move to hand
            holdingTarget.velocity = (transform.position - holdingTarget.transform.position) / Time.fixedDeltaTime;

            //Find rotation values and convert to eulers and radians
            holdingTarget.maxAngularVelocity = 20f;
            Quaternion deltaRot = transform.rotation * Quaternion.Inverse(holdingTarget.transform.rotation);

            Vector3 eulerRot = new Vector3(Mathf.DeltaAngle(0, deltaRot.eulerAngles.x),
               Mathf.DeltaAngle(0, deltaRot.eulerAngles.y), Mathf.DeltaAngle(0, deltaRot.eulerAngles.z));


            eulerRot *= Mathf.Deg2Rad;

            //adjust the angular velocity of target to rotate to hand
            holdingTarget.angularVelocity = eulerRot / Time.fixedDeltaTime;
            */
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
