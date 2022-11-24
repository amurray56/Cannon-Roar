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
    ParticleSystem shipHit;
    ParticleSystem waterHit;
    ParticleSystem rockHit;


    // Start is called before the first frame update
    void Awake()
    {
        rb = GetComponent<Rigidbody>();
        trailRenderer = GetComponent<TrailRenderer>();
        sphereCollider = GetComponent<SphereCollider>();
        shipHit = transform.GetChild(0).GetComponent<ParticleSystem>();
        waterHit = transform.GetChild(1).GetComponent<ParticleSystem>();
        rockHit = transform.GetChild(2).GetComponent<ParticleSystem>();
    }

    // Update is called once per frame
    void Update()
    {
        if (transform.position.y <= -10)
        {
            Invoke("ResetBall", 1.5f);
        }
    }

    void OnCollisionEnter(Collision collision)
    {
        if(collision.gameObject.CompareTag("Ally"))
        {
            Physics.IgnoreCollision(collision.collider, sphereCollider);
        }

        if (collision.gameObject.CompareTag("Enemy"))
        {
            Debug.Log("Ship Collided");
            collision.gameObject.GetComponentInParent<EnemyHealth>().cannonBall = gameObject;
            collision.gameObject.GetComponentInParent<EnemyHealth>().TakeDamage(damage);
            shipHit.Play();
            rb.velocity = rb.velocity / 2;
        }

        if (collision.gameObject.CompareTag("Ground") && transform.position.y >= 1)
        {
            Debug.Log("Cliff Collided");
            rockHit.Play();
            rb.velocity = rb.velocity / 2;
        }
        
        if (collision.gameObject.CompareTag("Ground") && transform.position.y < 1)
        {
            Invoke("ResetBall", 1.5f);
        }
    }

    private void OnTriggerEnter(Collider trigger)
    {
        if (trigger.CompareTag("Water"))
        {
            waterHit.Play();
        }
    }

    void ResetBall() // added for Better Particle Display Lifetime
    {
        Debug.Log("ResetBall");
        rb.velocity = Vector3.zero;
        trailRenderer.enabled = false;
        gameObject.SetActive(false);
    }

}
