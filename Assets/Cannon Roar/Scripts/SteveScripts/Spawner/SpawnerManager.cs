using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnerManager : MonoBehaviour
{ 
    public float spawnTime;
    public GameObject[] enemyPrefabs;

    //Holds the max number of enemies alloweed at anyone time
    public int maxNumberOfEnemiesAtOneTime = 1;
    public int maxNumberOfEnemiesOtherSpawnerLifeTime = 5;

    //Lists
    private List<Transform> spawnPoints = new List<Transform>();    //lists for spawnpoints
    [HideInInspector]
    public List<Transform> waypoints = new List<Transform>();       //list for waypoints
    //List for enemies this spawner has created that are still alive
    [HideInInspector] //hides variable below
    public List<GameObject> enemiesFromThisSpawnerList = new List<GameObject>();

    //General
    private int enemycount;
    private bool enableSpawner = true;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
