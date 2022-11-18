using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class EnemyHealth : MonoBehaviour
{
    [HideInInspector]
    public NavMeshAgent agent;
    public int health = 1;
    private float time;
    private EnemyShoot enemyShoot;
    [HideInInspector]
    public SpawnerManager enemySpawnerScript;
    [HideInInspector] 
    public BoxCollider boxCollider;
    private BoxCollider waterCollider;
    private MeshCollider environment;
    public bool isDead;


    // Start is called before the first frame update
    void Awake()
    {
        boxCollider = GetComponentInChildren<BoxCollider>();
        agent = GetComponentInChildren<NavMeshAgent>();
        enemyShoot = GetComponentInChildren<EnemyShoot>();
        waterCollider = GameObject.Find("water").GetComponent<BoxCollider>();
        environment = GameObject.Find("Environment").GetComponent<MeshCollider>();
    }

    // Update is called once per frame
    void Update()
    {
        if(transform.position.y <= -99)
        {
            enemySpawnerScript.enemiesFromThisSpawnerList.Remove(gameObject);
            gameObject.SetActive(false);
        }
    }

    public void TakeDamage(int damage)
    {
        health -= damage;
        if (health <= 0)
        {
            Death();
        }
    }

    public void Death()
    {
        time = 0;
        isDead = true;
        enemyShoot.enabled = false;
        enemySpawnerScript.enemyCount--;
        agent.enabled = false;
        StartCoroutine(SinkShip());
    }

    IEnumerator SinkShip()
    {
        Physics.IgnoreCollision(boxCollider, waterCollider);
        Physics.IgnoreCollision(boxCollider, environment);
        Vector3 position = transform.position;
        Vector3 endPosition = new Vector3(position.x, -100, position.z);
        //agent.enabled = !agent.enabled;
        while (position != endPosition)
        {
            transform.position = Vector3.Lerp(position, new Vector3(position.x, -100, position.z), time / 10);
            time += Time.deltaTime;
            yield return new WaitForEndOfFrame();
        }
        yield return null;
    }
}
