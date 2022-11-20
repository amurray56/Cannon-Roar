using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using Liminal.SDK.Core;
using Liminal.Core.Fader;


public class GameManager : MonoBehaviour
{
    //Make this class accessible from any class - GameController.gameController.Variable or method name
    //public static GameManager gameManager;

    //Settings
    public List<GameObject> enemies = new List<GameObject>();
    public List<GameObject> allies = new List<GameObject>();

    public bool gameMusic = true;

    public AudioSource gameMusicAudioSource;

    public AudioSource secondTrack;

    private void Awake()
    {
        Invoke("PlayTrack", 145f);
        Invoke("Quit", 275f);
        Invoke("Fader", 273f);
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
        //ExperienceApp.End();
        Application.Quit();
    }

    private void Fader()
    {
        var fader = ScreenFader.Instance;
        fader.FadeToBlack();
    }
}
