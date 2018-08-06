using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class songPlayer : MonoBehaviour
{

    public songUploader s;

    int songIndex;

    public Text songNamesText;

    public Button rButt, lButt, playButt;

    // Use this for initialization
    void Start()
    {
        StartCoroutine(s.checkSongs());

        rButt.onClick.AddListener(RightButton);
        lButt.onClick.AddListener(LeftButton);
        playButt.onClick.AddListener(PlayButton);
    }

    // Update is called once per frame
    void Update()
    {
        if (s.songNames.Count > 0)
            songNamesText.text = s.songNames[songIndex];

    }

    public void RightButton()
    {

        if (songIndex == s.songNames.Count - 1)
            songIndex = 0;
        else
            songIndex++;
    }
    void LeftButton()
    {
        if (songIndex == 0)
            songIndex = s.songNames.Count - 1;
        else
            songIndex--;
    }

    void PlayButton()
    {

        StartCoroutine(s.downloadSelectedSong(songIndex));

    }
}
