using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CannonBall : MonoBehaviour
{
    private Rigidbody rb;
    public float force = 1;

    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody>();
        
        rb.AddForce(transform.forward * force, ForceMode.Impulse);
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        
    }
}
