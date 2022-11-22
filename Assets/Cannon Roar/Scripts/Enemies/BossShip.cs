using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossShip : MonoBehaviour
{
    public GameObject[] waypoints;
    private Vector3 startPos;
    private float timer;
    public float speed = 5f;
    private bool firstWaypoint = false;
    private bool secondWaypoint = false;
    private bool lastWaypoint = false;
    private bool lookAt = false;
    private Rigidbody rb;
    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody>();
        startPos = transform.position;
        firstWaypoint = true;
    }

    // Update is called once per frame
    void Update()
    {
        if (firstWaypoint)
        {
            Vector3 targetDirection = (waypoints[0].transform.position - transform.position);
            Quaternion targetRotation = Quaternion.LookRotation(targetDirection);
            transform.rotation = Quaternion.RotateTowards(transform.rotation, targetRotation, 30 * Time.deltaTime);
            transform.position = Vector3.Lerp(startPos, waypoints[0].transform.position, timer / speed);
            timer += Time.deltaTime;

            if (rb.transform.position == waypoints[0].transform.position)
            {
                firstWaypoint = false;
                secondWaypoint = true;
                timer = 0;
            }
        }

        if(secondWaypoint)
        {
            Vector3 targetDirection = (waypoints[1].transform.position - transform.position);
            Quaternion targetRotation = Quaternion.LookRotation(targetDirection);
            transform.rotation = Quaternion.RotateTowards(transform.rotation, targetRotation, 30 * Time.deltaTime);
            transform.position = Vector3.Lerp(waypoints[0].transform.position, waypoints[1].transform.position, timer / speed);
            timer += Time.deltaTime;

            if (transform.position == waypoints[1].transform.position)
            {
                secondWaypoint = false;
                lastWaypoint = true;
                timer = 0;
            }
        }

        if(lastWaypoint)
        {
            Vector3 targetDirection = (waypoints[2].transform.position - transform.position);
            Quaternion targetRotation = Quaternion.LookRotation(targetDirection);
            transform.rotation = Quaternion.RotateTowards(transform.rotation, targetRotation, 30 * Time.deltaTime);
            transform.position = Vector3.Lerp(waypoints[1].transform.position, waypoints[2].transform.position, timer / speed);
            timer += Time.deltaTime;

            if (transform.position == waypoints[2].transform.position)
            {
                lastWaypoint = false;
                lookAt = true;
                timer = 0;
            }
        }

        if(lookAt)
        {
            Vector3 targetDirection = (waypoints[3].transform.position - transform.position);
            Quaternion targetRotation = Quaternion.LookRotation(targetDirection);
            transform.rotation = Quaternion.RotateTowards(transform.rotation, targetRotation, 30 * Time.deltaTime);
            transform.rotation = Quaternion.RotateTowards(transform.rotation, targetRotation, 30 * Time.deltaTime);
            transform.position = Vector3.Lerp(waypoints[2].transform.position, waypoints[3].transform.position, timer / speed);
            timer += Time.deltaTime;

            if (transform.position == waypoints[3].transform.position)
            {
                lookAt = false;
                timer = 0;
            }
        }
    }
}
