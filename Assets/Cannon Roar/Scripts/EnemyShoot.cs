using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using static UnityEngine.GraphicsBuffer;

public class EnemyShoot : MonoBehaviour
{
    public GameObject cannonball;
    public GameObject[] barrellEnd;
    private float timer;
    public float timeBetweenShots;
    public GameObject player;
    private EnemyCannonBall cb;
    public GameObject targetManager;
    public int targetPicker;
    public GameObject[] targets;
    private int barrelPicker;
    // Start is called before the first frame update
    void Start()
    {
        targetManager = GameObject.Find("TargetManager");
        player = GameObject.FindGameObjectWithTag("Player");
        targets = targetManager.GetComponent<TargetManager>().targets;
        Invoke("TimeBetweenShotsIncrease", 125f);
    }

    // Update is called once per frame
    void Update()
    {
        RaycastHit hit;
        timer += Time.deltaTime;

        if (timer > timeBetweenShots)
        {
            barrelPicker = Random.Range(0, barrellEnd.Length);
            if (Physics.Raycast(barrellEnd[barrelPicker].transform.position, player.transform.position - barrellEnd[barrelPicker].transform.position, out hit, 500f))
            {
                if (hit.collider.tag != "Player")
                {
                    return;
                }
                else
                {
                    GameObject returnedGameObject = PoolManager.current.GetPooledObject(cannonball.name);
                    if (returnedGameObject == null) return;
                    cb = returnedGameObject.GetComponent<EnemyCannonBall>();
                    cb.startPos = barrellEnd[barrelPicker].transform.position;
                    cb.transform.position = barrellEnd[barrelPicker].transform.position;
                    cb.transform.rotation = barrellEnd[barrelPicker].transform.rotation;
                    targetPicker = Random.Range(0, targets.Length);
                    cb.targetPos = targets[targetPicker].transform.position;
                    returnedGameObject.SetActive(true);
                    timer = 0f;
                }
                    
            }
        }
    }

    private void TimeBetweenShotsIncrease()
    {
        timeBetweenShots = 0.1f;
    }
}
