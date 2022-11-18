using UnityEngine;
using System.Collections;
using UnityEngine.UI; //Required when using UI elements.
using System.Collections.Generic; //Required when using lists.
using UnityEngine.SceneManagement;


public class GameManager : MonoBehaviour
{
    //Make this class accessible from any class - GameController.gameController.Variable or method name
    public static GameManager gameManager;

    //Settings
    public List<GameObject> enemies = new List<GameObject>();//List of enemies

    public bool gameMusic = true;

    public AudioSource gameMusicAudioSource;

    void OnEnable()//addition
    {
        Debug.Log("OnEnable called");
        SceneManager.sceneLoaded += OnSceneLoaded;
    }
    void OnSceneLoaded(Scene scene, LoadSceneMode mode)//addition
    {
        enemies.Clear();

        Debug.Log("OnSceneLoaded: " + scene.name);
        Debug.Log(mode);
    }
    private void Awake()
    {
        if (gameManager == null)
        {
            DontDestroyOnLoad(gameObject);
            gameManager = this;
        }
        else if (gameManager != null)
        {
            Destroy(gameObject);
        }
    }
    void Start()
    {

    }

    private void Update()
    {

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
}
