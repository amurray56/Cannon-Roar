using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using static UnityEngine.GraphicsBuffer;

public class AllyShoot : MonoBehaviour
{
    public GameObject cannonBall;
    public GameObject[] barrellEnd;
    private float timer;
    private float timeBetweenShots = 1f;
    private CannonBall cb;
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
                    GameObject returnedGameObject = PoolManager.current.GetPooledObject(cannonBall.name);
                    if (returnedGameObject == null) return;
                    cb = returnedGameObject.GetComponent<CannonBall>();
                    cb.transform.position = barrellEnd[barrelPicker].transform.position;
                    cb.transform.rotation = barrellEnd[barrelPicker].transform.rotation;
                    returnedGameObject.SetActive(true);
                    cb.rb.isKinematic = false;
                    cb.trailRenderer.Clear();
                    cb.trailRenderer.enabled = true;
                    cb.rb.AddForce(0, 300, cb.force, ForceMode.Impulse);
                    timer= 0;
                }
            }
        }
    }
}
