using System.Collections;
using System.Collections.Generic;
using System.Drawing;
using System.Xml.Xsl;
using UnityEngine;
using static UnityEngine.GraphicsBuffer;

public class EnemyCannonBall : MonoBehaviour
{
    public GameObject[] targets;
    public GameObject targetManager;
    public int targetPicker;
    private float count = 0f;

    public Vector3 targetPos;
    public Vector3 startPos;

    private float distance;
    public float maxDistance = 180f;

    void Start()
    {
        //startPos = transform.position;
        targetManager = GameObject.Find("TargetManager");
        targets = targetManager.GetComponent<TargetManager>().targets;
        //targetPicker = Random.Range(0, targets.Length);
        //targetPos = targets[targetPicker].transform.position;
    }

    void Update()
    {
        if (count < 1)
        {
            count += 0.25f * Time.deltaTime;
            Vector3 halfway = startPos + (targetPos - startPos) / 2 + Vector3.up * (50 * distance);
            Vector3 m1 = Vector3.Lerp(startPos, halfway, count / distance);
            Vector3 m2 = Vector3.Lerp(halfway, targetPos, count / distance);
            transform.position = Vector3.Lerp(m1, m2, count / distance);
            
        }
        
        if (transform.position == targetPos)
            Arrived();
    }

    void Arrived()
    {
        count = 0f;
        gameObject.SetActive(false);
    }

    void OnEnable()
    {
        distance = Vector3.Distance(startPos, targetPos);
        distance = distance / maxDistance;
        distance = Mathf.Clamp01(distance);
    }
}
