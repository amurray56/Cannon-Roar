using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CannonBall : MonoBehaviour
{
    [HideInInspector] public Rigidbody rb;
    public float force = 1;
    public int damage = 1;
    [HideInInspector] public TrailRenderer trailRenderer;
    private SphereCollider sphereCollider;

    // Start is called before the first frame update
    void Awake()
    {
        rb = GetComponent<Rigidbody>();
        trailRenderer = GetComponent<TrailRenderer>();
        sphereCollider = GetComponent<SphereCollider>();
    }

    // Update is called once per frame
    void Update()
    {
        if (transform.position.y <= -10)
        {
            rb.velocity = Vector3.zero;
            trailRenderer.enabled = false;
            gameObject.SetActive(false);
        }
    }

    void OnCollisionEnter(Collision collision)
    {
        if(collision.gameObject.CompareTag("Water") || collision.gameObject.CompareTag("Ally"))
        {
            Physics.IgnoreCollision(collision.collider, sphereCollider);
        }

        if (collision.gameObject.CompareTag("Enemy"))
        {
            collision.gameObject.GetComponentInParent<EnemyHealth>().TakeDamage(damage);
            rb.velocity = rb.velocity / 2;
        }

        if (collision.gameObject.CompareTag("Ground") && transform.position.y <= 1)
        {
            rb.velocity = Vector3.zero;
            trailRenderer.enabled = false;
            gameObject.SetActive(false);
        }
    }
}
