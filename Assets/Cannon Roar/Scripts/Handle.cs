using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Handle : MonoBehaviour
{
    private void OnTriggerEnter(Collider hand)
    {
        if(hand.CompareTag("Player"))
            GetComponentInParent<Cannon>().handInside = true;

        if (hand.CompareTag("Player") && !GetComponentInParent<Cannon>().initialGrab)
        {
            GetComponentInParent<Cannon>().grabHandleComplete = false;
            GetComponentInParent<Cannon>().handController.transform.parent = gameObject.GetComponentInParent<Cannon>().handleHand.transform;
            GetComponentInParent<Cannon>().handController.transform.position = gameObject.GetComponentInParent<Cannon>().handleHand.transform.position;
            GetComponentInParent<Cannon>().handController.transform.rotation = gameObject.GetComponentInParent<Cannon>().handleHand.transform.rotation;
            GetComponentInParent<Cannon>().timer = 0f;
            GetComponentInParent<Cannon>().initialGrab = true;
        }
    }

    void OnTriggerExit(Collider hand)
    {
        if (hand.CompareTag("Player"))
        {
            GetComponentInParent<Cannon>().handInside = false;
        }
    }
}
