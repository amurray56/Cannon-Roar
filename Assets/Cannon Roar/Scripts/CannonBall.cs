using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CannonBall : MonoBehaviour
{
    [HideInInspector] public Rigidbody rb;
    public float force = 1;
    public int damage = 1;
    [HideInInspector] public TrailRenderer trailRenderer;

    // Start is called before the first frame update
    void Awake()
    {
        rb = GetComponent<Rigidbody>();
        trailRenderer = GetComponent<TrailRenderer>();
    }

    // Update is called once per frame
    void Update()
    {
        if (transform.position.y <= -50)
        {
            
        }
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Enemy"))
        {
            other.GetComponent<EnemyHealth>().TakeDamage(damage);
            other.GetComponent<BoxCollider>().isTrigger = true;
        }
    }

    void OnCollisionEnter(Collision collision)
    {
        if(collision.gameObject.tag == "Ground")
        {
            gameObject.SetActive(false);
            rb.isKinematic = true;
            trailRenderer.enabled = false;
        }
    }
}
