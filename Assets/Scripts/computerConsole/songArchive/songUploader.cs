using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;
using System.Net;
using System;
using System.Xml;
using UnityEngine.UI;
using System.IO;
using System.Xml.Linq;
using System.Text;
using UnityGoogleDrive;

using UnityEditor;




public class songUploader : MonoBehaviour
{

    AudioSource a;

    public List<string> songNames = new List<string>();
    public List<string> songIds = new List<string>();

    public AudioClip testClip, testUpload;

    public GameObject playUIStuff;

    void Start()
    {


        //StartCoroutine(uploadSong());


        a = GetComponent<AudioSource>();


    }

    public GoogleDriveFiles.ListRequest request;

    public IEnumerator checkSongs()
    {

        request = GoogleDriveFiles.List();
        request.Q = "'1Hq-AsAj1e7xJkbEHumqhWltlyvN-LcwL' in parents";
        yield return request.Send();

        if (request.IsError || request.ResponseData.Files == null || request.ResponseData.Files.Count == 0)
        {

            Debug.Log("error getting files");

        }
        else
        {
            for (int i = 0; i < request.ResponseData.Files.Count; i++)
            {
                //request.ResponseData.Files[]+= BuildResults;
                songNames.Add(request.ResponseData.Files[i].Name);
                songIds.Add(request.ResponseData.Files[i].Id);

                Debug.Log(request.ResponseData.Files[i].Name + " , " + request.ResponseData.Files[i].Id);
            }

        }


    }

    private GoogleDriveFiles.DownloadAudioRequest downloadRequest;

    public IEnumerator downloadSelectedSong(int songId)
    {
        downloadRequest = GoogleDriveFiles.DownloadAudio(songIds[songId], AudioType.WAV);

        yield return downloadRequest.Send();
        //show progress bar here!
        Debug.Log("downloading song");

        if (downloadRequest.IsError)
        {
            Debug.Log("error downloading song");
        }
        else
        {
            testClip = downloadRequest.ResponseData.AudioClip;

            a.clip = testClip;
            a.Play();
        }
    }

    GoogleDriveFiles.CreateRequest uploadRequest;

    public IEnumerator uploadSong()
    {
        float[] f = new float[testUpload.samples * testUpload.channels];
        testUpload.GetData(f, 0);

        byte[] b = File.ReadAllBytes(AssetDatabase.GetAssetPath(testUpload));//this might only work on the editor


        UnityGoogleDrive.Data.File file = new UnityGoogleDrive.Data.File()
        { Name = "TestUnityGoogleDriveFilesUpload.wav", Content = b, MimeType = "audio/wav" };
        file.Parents = new List<string> { "1Hq-AsAj1e7xJkbEHumqhWltlyvN-LcwL" };
        uploadRequest = GoogleDriveFiles.Create(file);
        //        Debug.Log(file.Content.Length);

        yield return uploadRequest.Send();
        if (uploadRequest.IsError)
        {
            Debug.Log("error uploading song");
        }
        else
        {
            //Debug.Log(uploadRequest.ResponseData.Content.Length);
            StartCoroutine(checkSongs());
        }







    }


    // Update is called once per frame
    void Update()
    {



    }










    //IEnumerator GetSongNames()
    //{


    //    UnityWebRequest www;
    //    www = UnityWebRequest.Get("https://api.github.com/repos/juliancorderod/uploadSounds/git/trees/8ce503f8278a295d26ec181455f6e617d3acce1e");


    //    yield return www.Send();

    //    if (www.isNetworkError)
    //    {


    //        Debug.Log("network error");
    //    }
    //    else
    //    {
    //        string response = www.downloadHandler.text;

    //        Debug.Log(response);

    //        JSONNode N = JSON.Parse(response);

    //        int i = 0;
    //        bool finishedChecking = false;
    //        while (!finishedChecking)
    //        {
    //            string readMe = N["tree"][i]["path"];
    //            if (readMe != null)
    //            {
    //                i++;
    //                songNames.Add(readMe);
    //                Debug.Log(readMe);
    //            }
    //            else
    //            {
    //                finishedChecking = true;
    //            }
    //        }

    //    }
    //}


    //IEnumerator GetWAV(string songName)
    //{

    //    UnityWebRequest www;

    //    WWWForm wwwdata = new WWWForm();
    //    wwwdata.AddField("refresh_token", "1b27c5200e6edcb5ff9463fe23284ac6caceaf3b");
    //    wwwdata.AddField("client_id", "cdff61938d54854");
    //    wwwdata.AddField("client_secret", "9385afec55dda1d5d9bc6f057d5ec24b0ac6e9ec");
    //    wwwdata.AddField("grant_type", "refresh_token");

    //    //wwwSongWav = UnityWebRequest.Get("https://api.github.com/repos/juliancorderod/uploadSounds/git/trees/8ce503f8278a295d26ec181455f6e617d3acce1e");
    //    //wwwSongWav = UnityWebRequest.Get("https://api.github.com/repos/juliancorderod/uploadSounds/git/blobs/7f0451d62df9431aab79f67955b81ac7597a43f2");
    //    www = UnityWebRequestMultimedia.GetAudioClip("https://github.com/juliancorderod/uploadSounds/blob/master/" + songName + "?raw=true", AudioType.WAV);


    //    yield return www.Send();
    //    Debug.Log("getting");


    //    if (www.isNetworkError)
    //    {


    //        Debug.Log("network error");
    //    }
    //    else
    //    {




    //        AudioClip newWav = DownloadHandlerAudioClip.GetContent(www);


    //        //newWav.name = "no me siento mejor";

    //        a.clip = newWav;
    //        a.Play();




    //    }

    //}



    //float[] f = new float[testClip.samples];
    //testClip.GetData(f, 0);



    //UnityWebRequest www;

    //WWWForm wwwdata = new WWWForm();
    //wwwdata.AddField("Authorization", " Bearer AIzaSyDxNhXUP1SF_Wh5SJfNCYqUi3YbHIX_64o");
    //wwwdata.AddField("Content-Type", "audio / wav");
    //wwwdata.AddField("Content-Length", "audio / wav");
    ////wwwdata.AddBinaryData("body");

    //www = UnityWebRequest.Post("https://www.googleapis.com/upload/drive/v3/files?uploadType=media", wwwdata);

    //yield return www.Send();

    //if (www.isNetworkError)
    //{


    //    Debug.Log("network error");
    //}
    //else
    //{
    //Debug.Log(www.GetResponseHeader("status"));
    //string response = www.downloadHandler.text;
    //Debug.Log(response);
    //}

    //}

    //IEnumerator UploadWav(AudioClip clip)
    //{
    //    UnityWebRequest www;

    //    float[] f = new float[clip.samples * clip.channels];
    //    clip.GetData(f, 0);

    //    Debug.Log(f.ToString());

    //    WWWForm wwwdata = new WWWForm();
    //    wwwdata.AddField("token", "6f6e241d24451bfd7e8ba771dacd15ac40eef6a2");
    //    wwwdata.AddField("path", clip.name + ".wav");
    //    wwwdata.AddField("message", "new song");
    //    wwwdata.AddField("content", "bXkgbmV3IGZpbGUgY29udGVudHM=");
    //    //yield return null;


    //    www = UnityWebRequest.Put("https://api.github.com/repos/juliancorderod/uploadSounds/contents/" + clip.name + ".wav", wwwdata.data);


    //    yield return www.Send();

    //    if (www.isNetworkError)
    //    {


    //        Debug.Log("network error");
    //    }
    //    else
    //    {
    //        Debug.Log(www.GetResponseHeader("status"));
    //        string response = www.downloadHandler.text;
    //        Debug.Log(response);
    //    }
    //}




}