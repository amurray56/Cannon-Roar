using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Cannon : MonoBehaviour
{
    public GameObject cannonBall;
    public GameObject barrelEnd;
    private Rigidbody rb;
    private Vector3 worldPosition;
    private float timer;
    public float timeBetweenShots = 1.5f;

    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {
        timer += Time.deltaTime;
        if(Input.GetMouseButtonDown(0) && timer >= timeBetweenShots)
        {
            Instantiate(cannonBall, barrelEnd.transform.position, barrelEnd.transform.rotation);
            timer = 0f;
        }

        Vector3 mousePos = Input.mousePosition;
        worldPosition = Camera.main.ScreenToWorldPoint(new Vector3(mousePos.x, mousePos.y, 30f));
        Quaternion direction = Quaternion.LookRotation(worldPosition);
        rb.MoveRotation(direction);
    }
}
