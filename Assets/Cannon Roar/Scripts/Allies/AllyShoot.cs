using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using static UnityEngine.GraphicsBuffer;

public class AllyShoot : MonoBehaviour
{
    [SerializeField] private GameObject cannonBall;
    [SerializeField] private GameObject[] barrellEnd;
    private float timer;
    private float timeBetweenShots = 0.5f;
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
                    cb.rb.transform.position = barrellEnd[barrelPicker].transform.position;
                    cb.rb.transform.rotation = barrellEnd[barrelPicker].transform.rotation;
                    returnedGameObject.SetActive(true);
                    cb.rb.isKinematic = false;
                    cb.trailRenderer.Clear();
                    cb.trailRenderer.enabled = true;
                    cb.rb.AddForce(cb.rb.transform.up * 300, ForceMode.Impulse);
                    cb.rb.AddForce(cb.rb.transform.forward * cb.force, ForceMode.Impulse);
                    timer= 0;
                }
            }
        }
    }
}
