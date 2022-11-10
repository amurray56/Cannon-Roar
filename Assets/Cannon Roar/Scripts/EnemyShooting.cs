using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyShooting : MonoBehaviour
{

    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void OnDrawGizmos()
    {
        foreach (Transform target in gameObject.GetComponentInChildren<Transform>())
        {
            if (target.CompareTag("Target"))
            {
                Gizmos.color = Color.yellow;
                Gizmos.DrawSphere(target.transform.position, 1);
            }
        }
    }
}
