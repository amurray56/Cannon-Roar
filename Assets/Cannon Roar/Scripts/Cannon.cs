using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using Liminal.SDK.VR;
using Liminal.SDK.VR.Input;
using Liminal.SDK.VR.Avatars.Controllers;
using Liminal.SDK.VR.Avatars;

public class Cannon : MonoBehaviour, IPointerClickHandler, IEventSystemHandler
{
    //Prefabs
    [SerializeField]
    private GameObject cannonBall; // prefab of the cannonballs
    [SerializeField]
    private GameObject barrelEnd; // the empty game object placed at the end of the barrel of the cannon that the cannonball prefab will instantiate from
    [SerializeField]
    private GameObject handle; // The handle of the cannon
    [SerializeField]
    private GameObject hand; // The hand model
    [SerializeField]
    private GameObject handleHand; // A prefab of the handle with the hand placed in the center, using this to remove the jittering of the hand that would happen when the hand was moved directly to the handle position. by Disabling the mesh renderer of the hand when and enabling this prefab, the hand movement looks much smoother
    [SerializeField]
    private GameObject handController; // A new controller prefab that is already placed under the VR Avatar primary hand with the original controller disabled in the heirarchy, used it to get the hand model working

    //Settings
    private float timer; // Timer that continously adds Time.deltaTime and resets back to 0 on cannon fire, no need to adjust this number 
    [SerializeField]
    private float timeBetweenShots = 1.5f; // Change this float to increase or decrease the rate at which the cannon can be fired.

    //Transform information for hand movement
    private Vector3 worldPosition; // An empty position that uses the hand position plus a forward direction that allows the cannon to look forward based on where the hand is 
    [SerializeField]
    private Transform primaryHandAnchor; // The Transform position of the Primary Hand Anchor on the VR Avatar, used to return the hand to the original position when the player lets go of the cannon
    [SerializeField]
    private Transform cannon; // The Transform position of the empty game object named Pivot in the heirarchy located under the cannon game object, this is for rotating the cannon barrel on the X Axis
    [SerializeField]
    private Transform cBase; // The transform position of the base of the cannon that will rotate on the Y Axis

    //Audio & Particle Effects
    private new ParticleSystem particleSystem; // Fire or smoke, whatever looks cool
    private new AudioSource audio; // bang!

    //Bools for grabbing the handle on the cannon
    private bool grabHandle; // When this bool is active the cannon will move with the hand
    private bool grabHandleComplete; // Because of the lerp added to the hand when grabbing the handle, this ensures the hand has arrived at the handle position before allowing the grab handle bool to be true

    // Start is called before the first frame update
    void Start()
    {
        grabHandleComplete = true;
        grabHandle = false;
        particleSystem = GetComponentInChildren<ParticleSystem>();
        audio = GetComponent<AudioSource>();
        handController = GameObject.Find("HandController");
        handController.GetComponent<VRAvatarControllerSettings>().ControllerVisualSettings.Visible = false;
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
            worldPosition = hand.transform.position + hand.transform.forward * -1000; // the -1000 makes it face in the correct direction, otherwise it faces backwards with a positive number
            cBase.LookAt(new Vector3(worldPosition.x, 0, worldPosition.z));
            cannon.LookAt(new Vector3(worldPosition.x, worldPosition.y + 500, worldPosition.z)); // the plus 500 to the .y position lowered the cannon as it was pointing directly up in the air without it
        }

        if (Input.GetKeyDown(KeyCode.A))
        {
            grabHandle = false;
            grabHandleComplete = true;
            handleHand.SetActive(false);
            hand.GetComponent<MeshRenderer>().enabled = true;
            hand.transform.position = primaryHandAnchor.position;
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
