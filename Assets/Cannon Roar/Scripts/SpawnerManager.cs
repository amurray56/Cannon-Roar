using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class SpawnerManager : MonoBehaviour
{
    //Settings
    public float spawnTime;
    public GameObject enemyPrefab;
    private float timer = 120f;
    private bool timerRunning = false;
    //Holds the max number of enemies allowed at any one time
    [SerializeField]
    private int maxNumberOfEnemiesAtOneTime = 1;
    private int lastNumber = -1;

    //Lists
    private List<Transform> spawnPoints = new List<Transform>(); //List for spawnpoints
    [HideInInspector]
    public List<Transform> waypoints = new List<Transform>(); //List for waypoints
    //List for enemies this spawner has created that are still alive
    [HideInInspector] //Hides var below
    public List<GameObject> enemiesFromThisSpawnerList = new List<GameObject>();

    //General
    [HideInInspector]
    public int enemyCount;
    private bool enableSpawner = true;

    public void OnDrawGizmos()
    {
        foreach (Transform child in transform)
        {
            if (child.tag == "Waypoint")
            {
                Gizmos.color = Color.yellow;
                Gizmos.DrawSphere(child.position, .8f);
            }
            if (child.tag == "SpawnPoint")
            {
                Gizmos.color = Color.red;
                Gizmos.DrawSphere(child.position, .8f);
            }
        }
    }
    // Start is called before the first frame update
    public void Start()
    {
        timerRunning = true;
        SetUpChildObjects();
        InvokeRepeating("checkIfObjectShouldBeSpawned", spawnTime, spawnTime);
        InvokeRepeating("AddEnemy", 10, 10);
    }

    private void Update()
    {
        if(timerRunning)
        {
            if(timer > 0)
            {
                timer -= Time.deltaTime;
            }
            else
            {
                maxNumberOfEnemiesAtOneTime = 20;
                timer = 0f;
                timerRunning = false;
            }
        }
    }

    //Checks the setup child elements in the spawner
    public void SetUpChildObjects()
    {
        //Adds Spawn Points and Waypoints to their appropriate lists
        foreach (Transform child in transform)
        {
            if (child.tag == "Waypoint")
            {
                waypoints.Add(child);
            }
            if (child.tag == "SpawnPoint")
            {
                spawnPoints.Add(child);
            }
        }
    }

    //Checks if object should be spawned
    public void checkIfObjectShouldBeSpawned()
    //Allows us to disable and enable the spawner
    {
        if (enableSpawner == true)
        {
            //If we have not reached the limit of enemies from this spawner
            if (enemiesFromThisSpawnerList.Count < maxNumberOfEnemiesAtOneTime)
            {
                EnemySetActive();
            }
        }
    }
    //When this function is called, an enemy is instantiated
    void EnemySetActive()
    {
        enemyCount++; //adds one to the enemycount
        int a = GetRandom(0, spawnPoints.Count);
        //Set a to a random spawn position
        GameObject returnedGameObject = PoolManager.current.GetPooledObject(enemyPrefab.name);
        if (returnedGameObject == null) return;
        returnedGameObject.transform.position = spawnPoints[a].position;
        returnedGameObject.transform.rotation = spawnPoints[a].rotation;
        returnedGameObject.GetComponent<EnemyHealth>().health = 1;
        returnedGameObject.GetComponent<EnemyHealth>().isDead = false;
        returnedGameObject.SetActive(true);
        returnedGameObject.GetComponent<EnemyShoot>().enabled = true;
        returnedGameObject.GetComponent<NavMeshAgent>().enabled = true;
        //Passes the waypoints list to the new enemy script
        EnemyMovement enemyMovement = returnedGameObject.GetComponent<EnemyMovement>();
        enemyMovement.waypoints = waypoints;

        //Loads a reference to the EnemySpawner Script into the health script so that we can remove objects from the list
        EnemyHealth enemyHealth = returnedGameObject.GetComponent<EnemyHealth>();
        enemyHealth.enemySpawnerScript = GetComponent<SpawnerManager>();

        //Allows us to track the number of enemies currently alive
        enemiesFromThisSpawnerList.Add(returnedGameObject); //Adds enemy count to the enemiesFromThisSpawnerList
        //Adds the enemy to the main enemy list in the GameController
        GameManager.gameManager.enemies.Add(returnedGameObject);
    }
    void DestroySpawner()
    {
        Destroy(gameObject); //Not using Gamecontroller.gamecontroller.SpawnerDestroyed(gameObject);
    }

    int GetRandom(int min, int max)
    {
        int rand = Random.Range(min, max);
        while (rand == lastNumber)
            rand = Random.Range(min, max);
        lastNumber = rand;
        return rand;
    }

    private void AddEnemy()
    {
        if(maxNumberOfEnemiesAtOneTime < 10)
            maxNumberOfEnemiesAtOneTime++;
    }
}