using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class BoatMove1 : MonoBehaviour
{
    //Stores a reference to the waypoint system that the boat will use
    [SerializeField] private Waypoint1 waypointScript;

    [SerializeField] private float disThreshold = 1f ;

    private Transform currentWaypoint;

    private Transform boat;

    NavMeshAgent agent;

    // Start is called before the first frame update
    void Start()
    {
        //Sets rigidBody
        agent = GetComponent<NavMeshAgent>();

        //Set Initial position to first waypoint
        currentWaypoint = waypointScript.NextWaypoint(currentWaypoint);
        transform.position = currentWaypoint.position;

        //Sets the next target waypoint
        currentWaypoint = waypointScript.NextWaypoint(currentWaypoint);
       

    }

    private void FixedUpdate()
    {

        agent.SetDestination(currentWaypoint.position);

        if (Vector3.Distance(transform.position, currentWaypoint.position) < disThreshold)
        {
            currentWaypoint = waypointScript.NextWaypoint(currentWaypoint);
        }

        currentWaypoint = waypointScript.NextWaypoint(currentWaypoint);
        Vector3.RotateTowards(boat.position, currentWaypoint.position, 6.83f, float.PositiveInfinity);

    }
   
}
