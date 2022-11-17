using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BoatSpawner : MonoBehaviour
{
    [SerializeField]
    private GameObject boatPatrol;
    
    [SerializeField]
    private float spawnTime = 2f;

    public int enemyCount;
    //Holds the max number of enemies alloweed at anyone time
    public int maxNumberOfEnemiesAtOneTime = 1;
    public int maxNumberOfEnemiesOtherSpawnerLifeTime = 10;

    [HideInInspector] //hides variable below
    public List<GameObject> enemiesFromThisSpawnerList = new List<GameObject>();

    private Vector3 spawnPoint;




    // Start is called before the first frame update
    void Start()
    {
        spawnPoint = gameObject.transform.position;
        InvokeRepeating("checkIfObjectShouldBeSpawned", spawnTime, spawnTime);
    }

    void checkIfObjectShouldBeSpawned()
    {
        
        
           //if we have not reached the limit of enemies from this spawner
            if (enemiesFromThisSpawnerList.Count < maxNumberOfEnemiesAtOneTime && enemyCount < maxNumberOfEnemiesOtherSpawnerLifeTime)
            {
                EnemySpawn();
            }
            //if we have reacher the max number of enemies and all the enemies from this spawner are dead
            //else if (enemiesFromThisSpawnerList.Count == 0 && enemyCount >= maxNumberOfEnemiesOtherSpawnerLifeTime)
            //{
               // DestroySpawner();
           // }
        
    }

    void EnemySpawn()
    {
        enemyCount++;
        GameObject newBoatPatrol = Instantiate(boatPatrol, spawnPoint, Quaternion.identity);
        EnemyHealth enemyHealth = newBoatPatrol.GetComponentInChildren<EnemyHealth>();
        enemyHealth.enemySpawnerScript = GetComponent<BoatSpawner>();
        //Allows is to track the number of enemies currently alive
        enemiesFromThisSpawnerList.Add(newBoatPatrol);
    }
}
