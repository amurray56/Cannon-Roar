﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class BoatMove1 : MonoBehaviour
{
    //Stores a reference to the waypoint system that the boat will use
    [SerializeField] private Waypoint1 waypointScript;

    [SerializeField] private float disThreshold = 1f ;

    private Transform currentWaypoint;

    NavMeshAgent agent;

    EnemyHealth enemyHealth;

    // Start is called before the first frame update
    void Start()
    {
        //Sets rigidBody
        agent = GetComponent<NavMeshAgent>();

        enemyHealth = GetComponent<EnemyHealth>();

        //Set Initial position to first waypoint
        currentWaypoint = waypointScript.NextWaypoint(currentWaypoint);
        transform.position = currentWaypoint.position;

        //Sets the next target waypoint
        currentWaypoint = waypointScript.NextWaypoint(currentWaypoint);

    }

    private void FixedUpdate()
    {

        if(enemyHealth.health == 0)
        {
            return;
        }
        else
        {
            agent.SetDestination(currentWaypoint.position);

            if (Vector3.Distance(transform.position, currentWaypoint.position) < disThreshold)
            {
                currentWaypoint = waypointScript.NextWaypoint(currentWaypoint);
            }
        }
       
    }
   
}
