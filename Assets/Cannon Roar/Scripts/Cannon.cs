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
            if (primaryInput.GetButton(VRButton.Trigger))
            {
                float handX = Mathf.Clamp(primaryHand.transform.localPosition.x, -0.5f, 0.5f);
                float handY = Mathf.Clamp(primaryHand.transform.localPosition.y, -0.4f, 0.2f);
                //cBase.transform.localRotation = new Quaternion(0, -handX, 0, cBase.transform.localRotation.w);
                //cannon.transform.localRotation = new Quaternion(handY, cannon.transform.localRotation.y, 0, cannon.transform.localRotation.w);

                cBase.transform.localRotation = Quaternion.Slerp(cBase.transform.localRotation, new Quaternion(0, -handX, 0, cBase.transform.localRotation.w), 0.25f * Time.deltaTime);
                cannon.transform.localRotation = Quaternion.Slerp(cannon.transform.localRotation, new Quaternion(handY, cannon.transform.localRotation.y, 0, cannon.transform.localRotation.w), 0.25f * Time.deltaTime);
            }
            else
            {
                float handX = Mathf.Clamp(primaryHand.transform.localPosition.x, -0.5f, 0.5f);
                float handY = Mathf.Clamp(primaryHand.transform.localPosition.y, -0.4f, 0.2f);
                //cBase.transform.localRotation = new Quaternion(0, -handX, 0, cBase.transform.localRotation.w);
                //cannon.transform.localRotation = new Quaternion(handY, cannon.transform.localRotation.y, 0, cannon.transform.localRotation.w);

                cBase.transform.localRotation = Quaternion.Slerp(cBase.transform.localRotation, new Quaternion(0, -handX, 0, cBase.transform.localRotation.w), 4 * Time.deltaTime);
                cannon.transform.localRotation = Quaternion.Slerp(cannon.transform.localRotation, new Quaternion(handY, cannon.transform.localRotation.y, 0, cannon.transform.localRotation.w), 4 * Time.deltaTime);
            }

            if (primaryHand.transform.position.z > handleHand.transform.position.z + 0.025f && handleHand.transform.localPosition.z <= -0.028f)
            {
                handleHand.transform.position += 0.5f * handleHand.transform.forward * Time.fixedDeltaTime;
            }

            else if (primaryHand.transform.position.z < handleHand.transform.position.z - 0.025f && handleHand.transform.localPosition.z >= -0.035f)
            {
                handleHand.transform.position -= 0.5f * handleHand.transform.forward * Time.fixedDeltaTime;
            }

            if (handleHand.transform.localPosition.z >= -0.0315f)
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

        if (Input.GetKeyDown(KeyCode.A) || primaryInput.GetButtonDown(VRButton.Three))
        {
            grabHandle = false;
            grabHandleComplete = true;
            handleHand.GetComponent<MeshRenderer>().enabled = false;
            hand.GetComponent<MeshRenderer>().enabled = true;
            hand.transform.position = primaryHandAnchor.position;
            hand.transform.rotation = primaryHandAnchor.rotation;
            initialGrab = false;
        }

        if (Input.GetKey(KeyCode.W))
        {
            hand.transform.position += hand.transform.forward * Time.deltaTime;
        }
    }
}
