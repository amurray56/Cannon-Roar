﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using Liminal.SDK.VR;
using Liminal.SDK.VR.Input;
using UnityEngine.Analytics;

public class Cannon : MonoBehaviour
{
    //Prefabs
    [SerializeField]
    private GameObject cannonBall; // prefab of the cannonballs
    [SerializeField]
    private GameObject barrelEnd; // the empty game object placed at the end of the barrel of the cannon that the cannonball prefab will instantiate from
    public GameObject hand; // The hand model
    public GameObject handleHand; // A prefab of the handle with the hand placed in the center, using this to remove the jittering of the hand that would happen when the hand was moved directly to the handle position. by Disabling the mesh renderer of the hand when and enabling this prefab, the hand movement looks much smoother
    public GameObject primaryHand;

    //Settings
    [HideInInspector]
    public float timer; // Timer that continously adds Time.deltaTime and resets back to 0 on cannon fire, no need to adjust this number 
    public float timeBetweenShots = 1.5f; // Change this float to increase or decrease the rate at which the cannon can be fired.

    //Transform information for hand movement
    private Vector3 worldPosition; // An empty position that uses the hand position plus a forward direction that allows the cannon to look forward based on where the hand is 
    [SerializeField]
    private Transform primaryHandAnchor; // The Transform position of the Primary Hand Anchor on the VR Avatar, used to return the hand to the original position when the player lets go of the cannon
    public Transform cannon; // The Transform position of the empty game object named Pivot in the heirarchy located under the cannon game object, this is for rotating the cannon barrel on the X Axis
    [SerializeField]
    private Transform cBase; // The transform position of the base of the cannon that will rotate on the Y Axis
    private float rotationX;
    private float rotationY;

    //Audio & Particle Effects
    private new ParticleSystem particleSystem; // Fire or smoke, whatever looks cool
    private new AudioSource audio; // bang!

    //Bools for grabbing the handle on the cannon
    [HideInInspector]
    public bool grabHandle; // When this bool is active the cannon will move with the hand
    [HideInInspector]
    public bool grabHandleComplete; // Sets up the hand position when grabbing the handle
    [HideInInspector]
    public bool initialGrab; // This is for the script on the handle not triggering every time the hand moves in and out of the collider
    private bool cannonReload;

    // Start is called before the first frame update
    void Start()
    {
        initialGrab = false;
        handleHand.GetComponent<MeshRenderer>().enabled = false;
        grabHandleComplete = true;
        grabHandle = false;
        particleSystem = GetComponentInChildren<ParticleSystem>();
        audio = GetComponent<AudioSource>();
    }

    // Update is called once per frame
    void Update()
    {
        IVRInputDevice primaryInput = VRDevice.Device.PrimaryInputDevice;
        IVRInputDevice secondaryInput = VRDevice.Device.SecondaryInputDevice;
        timer += Time.deltaTime;
        
        if (!grabHandleComplete)
        {
            hand.transform.position = Vector3.Lerp(hand.transform.position, handleHand.transform.position, 100 * Time.deltaTime);
            if (hand.transform.position == handleHand.transform.position)
            {
                handleHand.GetComponent<MeshRenderer>().enabled = true;
                hand.GetComponent<MeshRenderer>().enabled = false;
                cannonReload = false;
                grabHandleComplete = true;
                grabHandle = true;
            }
        }

        if (grabHandle)
        {
            worldPosition = primaryHand.transform.localPosition - primaryHand.transform.forward * 1000f;
            rotationX = Mathf.Clamp(primaryHand.transform.localPosition.x, -30, 30);
            rotationY = Mathf.Clamp(primaryHand.transform.localPosition.y, -10, 20);

            cBase.transform.localRotation = new Quaternion(0, -primaryHand.transform.localPosition.x, 0, cBase.transform.localRotation.w);
            cannon.transform.localRotation = new Quaternion(primaryHand.transform.localPosition.y, cannon.transform.localRotation.y, 0, cannon.transform.localRotation.w);

            if (primaryHand.transform.position.z > handleHand.transform.position.z + 0.025f && handleHand.transform.localPosition.z <= -0.028f && grabHandle)
            {
                handleHand.transform.position += handleHand.transform.forward * 0.5f * Time.fixedDeltaTime;
            }

            else if (primaryHand.transform.position.z < handleHand.transform.position.z - 0.025f && handleHand.transform.localPosition.z >= -0.035f && grabHandle)
            {
                handleHand.transform.position -= handleHand.transform.forward * 0.5f * Time.fixedDeltaTime;
            }

            if (handleHand.transform.localPosition.z >= -0.028f)
                cannonReload = false;

            if (handleHand.transform.localPosition.z <= -0.035f && timer >= timeBetweenShots && !cannonReload)
            {
                Instantiate(cannonBall, barrelEnd.transform.position, barrelEnd.transform.rotation);
                particleSystem.Play();
                audio.Play();
                timer = 0f;
                cannonReload = true;
            }
        }

        if (Input.GetKeyDown(KeyCode.A) || primaryInput.GetButtonDown(VRButton.Trigger))
        {
            grabHandle = false;
            grabHandleComplete = true;
            handleHand.GetComponent<MeshRenderer>().enabled = false;
            hand.GetComponent<MeshRenderer>().enabled = true;
            hand.transform.position = primaryHandAnchor.position;
            hand.transform.rotation = primaryHandAnchor.rotation;
            initialGrab = false;
        }

        if(Input.GetKey(KeyCode.W))
        {
            hand.transform.position += hand.transform.forward * Time.deltaTime;
        }

        if (Input.GetKey(KeyCode.S))
        {
            hand.transform.position -= hand.transform.forward * Time.deltaTime;
        }

        if (Input.GetKeyUp(KeyCode.W) && !grabHandle)
        {
            hand.transform.position = primaryHandAnchor.position;
        }

        if (Input.GetKeyUp(KeyCode.S) && !grabHandle)
        {
            hand.transform.position = primaryHandAnchor.position;
        }
    }
}
