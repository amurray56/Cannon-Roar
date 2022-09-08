using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Handle : MonoBehaviour
{
    private void OnTriggerEnter(Collider hand)
    {
        if (hand.CompareTag("Player"))
        {
            gameObject.GetComponentInParent<Cannon>().grabHandleComplete = false;
        }
    }
}
