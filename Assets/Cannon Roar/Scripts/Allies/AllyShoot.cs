using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using static UnityEngine.GraphicsBuffer;

public class AllyShoot : MonoBehaviour
{
    public GameObject cannonball;
    public GameObject[] barrellEnd;
    private float timer;
    public float timeBetweenShots = 0.25f;
    private AllyCannonBall cb;
    private int barrelPicker;

    // Update is called once per frame
    void Update()
    {
        RaycastHit hit;
        timer += Time.deltaTime;

        if (timer > timeBetweenShots)
        {
            barrelPicker = Random.Range(0, barrellEnd.Length);
            if (Physics.Raycast(barrellEnd[barrelPicker].transform.position, barrellEnd[barrelPicker].transform.forward, out hit, 500f))
            {
                if (hit.collider.tag != "Enemy")
                {
                    return;
                }
                else
                {
                    GameObject returnedGameObject = PoolManager.current.GetPooledObject(cannonball.name);
                    if (returnedGameObject == null) return;
                    cb = returnedGameObject.GetComponent<AllyCannonBall>();
                    cb.startPos = barrellEnd[barrelPicker].transform.position;
                    cb.transform.position = barrellEnd[barrelPicker].transform.position;
                    cb.transform.rotation = barrellEnd[barrelPicker].transform.rotation;
                    cb.targetPos = hit.transform.position;
                    returnedGameObject.SetActive(true);
                    //cb.audioSource.Play();
                    timer = 0f;
                }
            }
        }
    }
}
