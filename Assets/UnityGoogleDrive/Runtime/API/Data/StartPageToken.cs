﻿// Copyright 2017-2018 Elringus (Artyom Sovetnikov). All Rights Reserved.

using Newtonsoft.Json;

namespace UnityGoogleDrive.Data
{
    /// <summary>
    /// The starting page token for listing changes.
    /// </summary>
    public class StartPageToken : ResourceData
    {
        /// <summary>
        /// Identifies what kind of resource this is. Value: the fixed string "drive#startPageToken".
        /// </summary>
        public override string Kind { get { return "drive#startPageToken"; } }
        /// <summary>
        /// The value of the starting page token for listing changes.
        /// </summary>
        [JsonProperty("startPageToken")]
        public string StartPageTokenValue { get; private set; }
    }
}
