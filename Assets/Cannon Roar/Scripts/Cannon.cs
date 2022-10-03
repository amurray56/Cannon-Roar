using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using Liminal.SDK.VR;
using Liminal.SDK.VR.Input;
using UnityEngine.Analytics;

public class Cannon : MonoBehaviour, IPointerClickHandler, IEventSystemHandler
{
    //Prefabs
    [SerializeField]
    private GameObject cannonBall; // prefab of the cannonballs
    [SerializeField]
    private GameObject barrelEnd; // the empty game object placed at the end of the barrel of the cannon that the cannonball prefab will instantiate from
    public GameObject handle; // The handle of the cannon
    public GameObject hand; // The hand model
    public GameObject handleHand; // A prefab of the handle with the hand placed in the center, using this to remove the jittering of the hand that would happen when the hand was moved directly to the handle position. by Disabling the mesh renderer of the hand when and enabling this prefab, the hand movement looks much smoother
    public GameObject handController;

    //Settings
    [HideInInspector]
    public float timer; // Timer that continously adds Time.deltaTime and resets back to 0 on cannon fire, no need to adjust this number 
    [SerializeField]
    private float timeBetweenShots = 1.5f; // Change this float to increase or decrease the rate at which the cannon can be fired.
    private Vector3 handPosition;
    private float distanceToTrigger;
    private bool cannonFiring;

    //Transform information for hand movement
    private Vector3 worldPosition; // An empty position that uses the hand position plus a forward direction that allows the cannon to look forward based on where the hand is 
    [SerializeField]
    private Transform primaryHandAnchor; // The Transform position of the Primary Hand Anchor on the VR Avatar, used to return the hand to the original position when the player lets go of the cannon
    public Transform cannon; // The Transform position of the empty game object named Pivot in the heirarchy located under the cannon game object, this is for rotating the cannon barrel on the X Axis
    [SerializeField]
    private Transform cBase; // The transform position of the base of the cannon that will rotate on the Y Axis
    public Transform cannonCenter;
    private float rotationX;
    private float rotationY;

    //Audio & Particle Effects
    private new ParticleSystem particleSystem; // Fire or smoke, whatever looks cool
    private new AudioSource audio; // bang!

    //Bools for grabbing the handle on the cannon
    private bool grabHandle; // When this bool is active the cannon will move with the hand
    [HideInInspector]
    public bool grabHandleComplete; // Because of the lerp added to the hand when grabbing the handle, this ensures the hand has arrived at the handle position before allowing the grab handle bool to be true

    // Start is called before the first frame update
    void Start()
    {
        handleHand.GetComponent<MeshRenderer>().enabled = false;
        grabHandleComplete = true;
        grabHandle = false;
        particleSystem = GetComponentInChildren<ParticleSystem>();
        audio = GetComponent<AudioSource>();
        cannon.position = cannonCenter.position;
    }

    // Update is called once per frame
    void Update()
    {
        IVRInputDevice primaryInput = VRDevice.Device.PrimaryInputDevice;
        IVRInputDevice secondaryInput = VRDevice.Device.SecondaryInputDevice;
        timer += Time.deltaTime;
        
        if (!grabHandleComplete)
        {
            hand.transform.position = Vector3.Lerp(hand.transform.position, handleHand.transform.position, 50 * Time.deltaTime);

            if (hand.transform.position == handleHand.transform.position)
            {
                hand.transform.position = handleHand.transform.position;
                handleHand.GetComponent<MeshRenderer>().enabled = true;
                hand.GetComponent<MeshRenderer>().enabled = false;
                grabHandleComplete = true;
                grabHandle = true;
            }
        }

        if (grabHandle)
        {
            //FireCannon();

            if (primaryInput.GetButton(VRButton.Trigger))
            {
                cannonFiring = false;
                handPosition = handController.transform.position;

            }
            else
                cannonFiring = true;

            if (cannonFiring)
            {
                worldPosition = hand.transform.position - hand.transform.forward * 1000; // the -1000 makes it face in the correct direction, otherwise it faces backwards with a positive number
                rotationX = Mathf.Clamp(worldPosition.x * 0.1f, -30, 30);
                rotationY = Mathf.Clamp(worldPosition.y * 0.1f, -45, 10);
                cBase.transform.localEulerAngles = new Vector3(0, rotationX, 0);
                cannon.transform.localEulerAngles = new Vector3(rotationY, cBase.transform.rotation.y, 0); // the plus 500 to the .y position lowered the cannon as it was pointing directly up in the air without it
            }
        }

        if (Input.GetKeyDown(KeyCode.A))
        {
            grabHandle = false;
            grabHandleComplete = true;
            handleHand.GetComponent<MeshRenderer>().enabled = false;
            hand.GetComponent<MeshRenderer>().enabled = true;
            handController.transform.parent = hand.transform;
            handController.transform.position = hand.transform.position;
            handController.transform.rotation = hand.transform.rotation;
            hand.transform.position = primaryHandAnchor.position;
            hand.transform.rotation = primaryHandAnchor.rotation;
        }

        if(Input.GetKey(KeyCode.W) && !grabHandle)
        {
            hand.transform.position += hand.transform.forward * Time.deltaTime;
        }

        if (Input.GetKey(KeyCode.W) && grabHandle)
        {
            handController.transform.position += handController.transform.forward * Time.deltaTime;
        }

        if (Input.GetKeyUp(KeyCode.W) && !grabHandle)
        {
            hand.transform.position = primaryHandAnchor.position;
        }

        if (handController.transform.position.z < handleHand.transform.position.z && grabHandle && timer >= timeBetweenShots)
        {
            cannon.transform.position += cannon.transform.forward * Time.deltaTime;
        }

        if (Input.GetKey(KeyCode.S) && grabHandle)
        {
            handController.transform.position -= handController.transform.forward * Time.deltaTime;
        }

        if(cannon.position.z < cannonCenter.position.z - 0.15f && timer >= timeBetweenShots)
        {
            Instantiate(cannonBall, barrelEnd.transform.position, barrelEnd.transform.rotation);
            particleSystem.Play();
            audio.Play();
            timer = 0f;
            cannon.position = cannonCenter.position;
            handController.transform.position = handleHand.transform.position;
            handController.transform.rotation = handleHand.transform.rotation;
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

    private void FireCannon()
    {
        IVRInputDevice primaryInput = VRDevice.Device.PrimaryInputDevice;
        if (Input.GetMouseButtonDown(0) && timer >= timeBetweenShots || primaryInput.GetButtonDown(VRButton.Trigger) && timer >= timeBetweenShots)
        {
            Instantiate(cannonBall, barrelEnd.transform.position, barrelEnd.transform.rotation);
            particleSystem.Play();
            audio.Play();
            timer = 0f;
        }
    }
}
