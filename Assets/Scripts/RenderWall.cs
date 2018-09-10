using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RenderWall : MonoBehaviour {
    
    public WallType renderWallType;

    public enum WallType
    {
        NW, NE, SW, SE, N, E, S, W,
    }
    
	
}
