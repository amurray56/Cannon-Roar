using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class BoatMove1 : MonoBehaviour
{
    //Stores a reference to the waypoint system that the boat will use
    [SerializeField] private Waypoint1 waypointScript;

    [SerializeField] private float moveSpeed = 20f, disThreshold = 1f ;

    private Transform currentWaypoint;

    Rigidbody rBody;


    // Start is called before the first frame update
    void Start()
    {
        //Sets rigidBody
        rBody = GetComponent<Rigidbody>();

        //Set Initial position to first waypoint
        currentWaypoint = waypointScript.NextWaypoint(currentWaypoint);
        transform.position = currentWaypoint.position;

        //Sets the next target waypoint
        currentWaypoint = waypointScript.NextWaypoint(currentWaypoint);
        transform.LookAt(currentWaypoint);

    }

    private void FixedUpdate()
    {
        Vector3 direction = (currentWaypoint.position - transform.position).normalized;

        rBody.MovePosition(transform.position + direction * moveSpeed * Time.deltaTime);

        if (Vector3.Distance(transform.position, currentWaypoint.position) < disThreshold)
        {
            currentWaypoint = waypointScript.NextWaypoint(currentWaypoint);
        }

        transform.LookAt(currentWaypoint);


    }


   

}
