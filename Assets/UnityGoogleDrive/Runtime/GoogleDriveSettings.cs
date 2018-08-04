﻿// Copyright 2017-2018 Elringus (Artyom Sovetnikov). All Rights Reserved.

using System.Collections.Generic;
using UnityEngine;

namespace UnityGoogleDrive
{
    /// <summary>
    /// Project-specific Google Drive settings resource.
    /// </summary>
    public class GoogleDriveSettings : ScriptableObject
    {
        public const string REQUEST_CONTENT_TYPE = "application/x-www-form-urlencoded";
        public const string CODE_CHALLENGE_METHOD = "S256";
        public const int UNAUTHORIZED_RESPONSE_CODE = 401;

        /// <summary>
        /// Google Drive API application credentials used to authorize requests.
        /// </summary>
        public AuthCredentials AuthCredentials { get { return authCredentials; } }
        /// <summary>
        /// Scopes of access to the user's Google Drive the app will request.
        /// For available scopes see: <see cref="https://developers.google.com/drive/api/v3/about-auth"/>.
        /// </summary>
        public List<string> AccessScopes { get { return accessScopes; } }
        /// <summary>
        /// A web address for the loopback authentication requests. Defult is 'localhost'.
        /// </summary>
        /// <see cref="https://forum.unity.com/threads/515360/page-2#post-3504547"/>
        public string LoopbackUri { get { return loopbackUri; } }
        /// <summary>
        /// HTML page shown to the user when loopback response is received.
        /// </summary>
        public string LoopbackResponseHtml { get { return loopbackResponseHtml; } }
        /// <summary>
        /// Token used to authenticate requests; cached in <see cref="PlayerPrefs"/>.
        /// </summary>
        public string CachedAccessToken { get { return PlayerPrefs.GetString(accessTokenPrefsKey); } set { PlayerPrefs.SetString(accessTokenPrefsKey, value); } }
        /// <summary>
        /// Token used to refresh access tokens; cached in <see cref="PlayerPrefs"/>.
        /// </summary>
        public string CachedRefreshToken { get { return PlayerPrefs.GetString(refreshTokenPrefsKey); } set { PlayerPrefs.SetString(refreshTokenPrefsKey, value); } }

        [SerializeField] private AuthCredentials authCredentials = null;
        [SerializeField] private List<string> accessScopes = new List<string> { "https://www.googleapis.com/auth/drive", "https://www.googleapis.com/auth/drive.appdata" };
        [SerializeField] private string loopbackUri = "http://localhost";
        [SerializeField] private string loopbackResponseHtml = "<html><h1>Please return to the app.</h1></html>";
        [SerializeField] private string accessTokenPrefsKey = "GoogleDriveAccessToken";
        [SerializeField] private string refreshTokenPrefsKey = "GoogleDriveRefreshToken";

        /// <summary>
        /// Retrieves settings from the project resources.
        /// </summary>
        /// <param name="silent">Whether to suppress error when settings resource is not found.</param>
        public static GoogleDriveSettings LoadFromResources (bool silent = false)
        {
            var settings = Resources.Load<GoogleDriveSettings>("GoogleDriveSettings");

            if (!settings && !silent)
            {
                Debug.LogError("UnityGoogleDrive: Settings file not found. " +
                    "Use 'Edit > Project Settings > Google Drive Settings' to create a new one.");
            }

            return settings;
        }

        /// <summary>
        /// Removes cached access and refresh tokens forcing user to login on the next request.
        /// </summary>
        public void DeleteCachedAuthTokens ()
        {
            if (PlayerPrefs.HasKey(accessTokenPrefsKey))
                PlayerPrefs.DeleteKey(accessTokenPrefsKey);
            if (PlayerPrefs.HasKey(refreshTokenPrefsKey))
                PlayerPrefs.DeleteKey(refreshTokenPrefsKey);
        }

        /// <summary>
        /// Whether access or refresh tokens are currently cached in <see cref="PlayerPrefs"/>.
        /// </summary>
        public bool IsAnyAuthTokenCached ()
        {
            return PlayerPrefs.HasKey(accessTokenPrefsKey) || PlayerPrefs.HasKey(refreshTokenPrefsKey);
        }
    }
}
