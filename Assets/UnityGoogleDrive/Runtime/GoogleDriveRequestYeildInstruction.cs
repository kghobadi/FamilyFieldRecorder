﻿// Copyright 2017-2018 Elringus (Artyom Sovetnikov). All Rights Reserved.

using System;
using UnityEngine;

namespace UnityGoogleDrive
{
    public abstract class GoogleDriveRequestYeildInstruction : CustomYieldInstruction
    {
        public event Action OnDoneNonGeneric;
        public abstract bool IsDone { get; }

        protected void InvokeOnDoneNonGeneric ()
        {
            if (OnDoneNonGeneric != null)
                OnDoneNonGeneric.Invoke();
        }
    }

    /// <summary>
    /// Yield instruction to suspend coroutines while <see cref="GoogleDriveRequest{TData}"/> is running.
    /// </summary>
    /// <typeparam name="T">Type of the response data of the request the instruction is serving for.</typeparam>
    public class GoogleDriveRequestYeildInstruction<TResponse> : GoogleDriveRequestYeildInstruction
    {
        /// <summary>
        /// Event invoked when corresponding request is done running.
        /// Make sure to check for <see cref="GoogleDriveRequest.IsError"/> before using the response data.
        /// </summary>
        public event Action<TResponse> OnDone;

        public override bool IsDone { get { return GoogleDriveRequest.IsDone; } }
        public override bool keepWaiting { get { return !IsDone; } }
        public float Progress { get { return GoogleDriveRequest.Progress; } }
        public GoogleDriveRequest<TResponse> GoogleDriveRequest { get; private set; }

        public GoogleDriveRequestYeildInstruction (GoogleDriveRequest<TResponse> googleDriveRequest)
        {
            GoogleDriveRequest = googleDriveRequest;
            GoogleDriveRequest.OnDone += HandleRequestDone;
        }

        private void HandleRequestDone (TResponse responseData)
        {
            GoogleDriveRequest.OnDone -= HandleRequestDone;
            if (OnDone != null)
                OnDone.Invoke(responseData);
            InvokeOnDoneNonGeneric();
        }
    }
}
