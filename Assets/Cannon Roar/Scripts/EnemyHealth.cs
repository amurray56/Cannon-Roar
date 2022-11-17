using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class EnemyHealth : MonoBehaviour
{
    private Rigidbody rb;
    private NavMeshAgent agent;
    public int health = 1;
    private float time;

    [HideInInspector]
    public BoatSpawner enemySpawnerScript;

    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody>();
        agent = GetComponent<NavMeshAgent>();

    }

    // Update is called once per frame
    void Update()
    {
        if(transform.position.y <= -99)
        {
            Destroy(gameObject);
        }
    }

    public void TakeDamage(int damage)
    {
        health -= damage;
        if (health <= 0)
        {
            enemySpawnerScript.enemyCount--;
            StartCoroutine(SinkShip());
        }
      
    }

    IEnumerator SinkShip()
    {
        Vector3 position = rb.transform.position;
        Vector3 endPosition = new Vector3(position.x, -100, position.z);
        agent.enabled = !agent.enabled;
        while (position != endPosition)
        {
            time += Time.deltaTime;
            rb.MovePosition(Vector3.Lerp(position, new Vector3(position.x, -100, position.z), time / 5));
            yield return new WaitForEndOfFrame();
        }
        yield return null;
    }
}
