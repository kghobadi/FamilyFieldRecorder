// Upgrade NOTE: upgraded instancing buffer 'Props' to new syntax.

Shader "Custom/Petal_Shader" {
	Properties {
		_Color ("Color", Color) = (1,1,1,1)
		_MainTex ("Albedo (RGB)", 2D) = "white" {}

	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 200
		
		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf Standard fullforwardshadows

		// Use shader model 3.0 target, to get nicer looking lighting
		#pragma target 3.0

		sampler2D _MainTex;

		struct Input {
			float2 uv_MainTex;
			float3 localPos;
			float3 worldPos;

		};

		fixed4 _Color;
		float _Spread;
		float _Light;



		void surf (Input IN, inout SurfaceOutputStandard o) {
			float3 localPos = IN.worldPos -  mul(unity_ObjectToWorld, float4(0,0,0,1)).xyz;

			fixed4 c = _Color + (localPos.y*2) -1;
         	
			o.Albedo = c.rgb;
			o.Alpha = c.a;
		}
		ENDCG
	}
	//FallBack "Diffuse"
}
