using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using Liminal.SDK.VR;
using Liminal.SDK.VR.Input;
using Liminal.SDK.VR.Avatars;

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
    private Transform vrController;

    VRAvatarLimb limb;

    // Start is called before the first frame update
    void Start()
    {
        grabHandle = false;
        particleSystem = GetComponentInChildren<ParticleSystem>();
        audio = GetComponent<AudioSource>();
    }

    // Update is called once per frame
    void Update()
    {
        IVRInputDevice primaryInput = VRDevice.Device.PrimaryInputDevice;

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
            vrController = GameObject.Find("PrimaryHand").transform;
            worldPosition = vrController.transform.position + vrController.transform.forward * -1000;
            cBase.LookAt(new Vector3(worldPosition.x, 0, worldPosition.z));
            cannon.LookAt(new Vector3(worldPosition.x, worldPosition.y + 500, worldPosition.z));
        }

    }



    public void OnPointerClick(PointerEventData eventData)
    {
        if (eventData.button == 0 && eventData.pointerEnter.name == "handle")
        {
            grabHandle = !grabHandle;
        }
    }

    
}
