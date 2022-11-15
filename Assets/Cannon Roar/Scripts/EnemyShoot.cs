using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using static UnityEngine.GraphicsBuffer;

public class EnemyShoot : MonoBehaviour
{
    public GameObject cannonball;
    public GameObject barrellEnd;
    private float timer;
    public float timeBetweenShots;
    public GameObject player;
    private EnemyCannonBall cb;
    public GameObject targetManager;
    public int targetPicker;
    public GameObject[] targets;
    // Start is called before the first frame update
    void Start()
    {
        targetManager = GameObject.Find("TargetManager");
        targets = targetManager.GetComponent<TargetManager>().targets;
    }

    // Update is called once per frame
    void Update()
    {
        RaycastHit hit;
        timer += Time.deltaTime;

        if (timer > timeBetweenShots && Physics.Raycast(barrellEnd.transform.position, player.transform.position - barrellEnd.transform.position, out hit, 1000f))
        {
            if (hit.collider.tag == "Player")
            {
                GameObject returnedGameObject = PoolManager.current.GetPooledObject(cannonball.name);
                if (returnedGameObject == null) return;
                cb = returnedGameObject.GetComponent<EnemyCannonBall>();
                cb.startPos = barrellEnd.transform.position;
                returnedGameObject.transform.position = barrellEnd.transform.position;
                returnedGameObject.transform.rotation = barrellEnd.transform.rotation;
                targetPicker = Random.Range(0, targets.Length);
                cb.targetPos = targets[targetPicker].transform.position;
                returnedGameObject.SetActive(true);
                timer = 0f;
            }
        }
    }
}
