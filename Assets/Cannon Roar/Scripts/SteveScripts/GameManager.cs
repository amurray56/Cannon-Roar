using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;
using UnityEngine.SceneManagement;


public class GameManager : MonoBehaviour
{
    //Make this class accessible from any class - GameController.gameController.Variable or method name
    //public static GameManager gameManager;

    //Settings
    public List<GameObject> enemies = new List<GameObject>();
    public List<GameObject> allies = new List<GameObject>();

    public bool gameMusic = true;

    public AudioSource gameMusicAudioSource;

    public float timer;

    public AudioSource secondTrack;

    void Start()
    {
        Invoke("PlayTrack", 124f);
        Invoke("Quit", 255f); 
    }

    private void Update()
    {
        timer = Time.time;
    }

    public bool GameMusicToggle()
    {
        if (!gameMusicAudioSource)
        {
            Debug.LogWarning("No Audio Source for game music found");
            return false;
        }
        if (gameMusic && gameMusicAudioSource.isPlaying)
        {
            gameMusic = false;
            gameMusicAudioSource.Stop();
            return false;
        }
        else
        {
            gameMusic = true;
            gameMusicAudioSource.Play();
            return true;
        }
    }

    private void PlayTrack()
    {
        secondTrack.Play();
    }

    private void Quit()
    {
        Application.Quit();
    }
}
