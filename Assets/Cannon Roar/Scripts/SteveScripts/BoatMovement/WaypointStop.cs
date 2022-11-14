using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaypointStop : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }
    [Range(0f, 2f)]
    [SerializeField]
    private float waypointSize = 2f;

    private void OnDrawGizmos()
    {
        foreach (Transform t in transform)
        {
            Gizmos.color = Color.blue;
            Gizmos.DrawWireSphere(t.position, waypointSize);
        }

        Gizmos.color = Color.red;
        for (int i = 0; i < transform.childCount - 1; i++)
        {
            Gizmos.DrawLine(transform.GetChild(i).position, transform.GetChild(i + 1).position);
        }

    }

    public Transform NextWaypoint(Transform currentWaypoint)
    {
        if (currentWaypoint == null)
        {
            return transform.GetChild(0);
        }

        if (currentWaypoint.GetSiblingIndex() < transform.childCount - 1)
        {
            return transform.GetChild(currentWaypoint.GetSiblingIndex() + 1);
        }
        else
        {
            return transform.GetChild(transform.childCount - 1);
        }
        
    }

    //Sets currentWaypoint in BoatMovement script to the first waypoint
}


