using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CannonBall : MonoBehaviour
{
    public Rigidbody rb;
    public float force = 1;
    public int damage = 1;

    // Start is called before the first frame update
    void Awake()
    {
        rb = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {
        if (transform.position.y <= -50)
        {
            gameObject.SetActive(false);
            rb.isKinematic = true;
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
}
