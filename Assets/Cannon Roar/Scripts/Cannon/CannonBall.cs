﻿using System.Collections;
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
            rb.isKinematic = true;
            trailRenderer.enabled = false;
            gameObject.SetActive(false);
        }
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Enemy"))
        {
            rb.isKinematic = true;
            other.GetComponentInParent<EnemyHealth>().TakeDamage(damage);
            rb.isKinematic = false;
        }
    }

    void OnCollisionEnter(Collision collision)
    {
        if(collision.gameObject.tag == "Water")
        {
            Physics.IgnoreCollision(collision.collider, sphereCollider);
        }

        if(collision.gameObject.tag == "Ground" && transform.position.y <= 1)
        {
            rb.isKinematic = true;
            trailRenderer.enabled = false;
            gameObject.SetActive(false);
        }
    }
}