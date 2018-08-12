Shader "Custom/WaterShader" {
	Properties {
		_Color ("Color", Color) = (1,1,1,1)
		_Color2 ("Color2", Color) = (1,1,1,1)
		_MainTex ("Layer 1", 2D) = "white" {}
		_SecTex ("Layer 2", 2D) = "white" {}
		_Normal ("Normal", 2D) = "bump" {}
	}
	SubShader {
		Tags { "RenderType"="Opaque" }

		//Blend OneMinusDstColor One
		LOD 200

		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		//#pragma surface surf Standard fullforwardshadows
		#pragma surface surf Lambert vertex:vert
		// Use shader model 3.0 target, to get nicer looking lighting
		#pragma target 3.0

		sampler2D _MainTex;
		sampler2D _SecTex;
		sampler2D _Normal;

		struct Input {
			float2 uv_MainTex;
			float2 uv_SecTex;
			float2 uv_Normal;
			float3 localPos;
		};

		fixed4 _Color;
		fixed4 _Color2;

		void vert (inout appdata_full v, out Input o) {
          v.vertex.y += (sin(v.vertex.x + _Time.z)/1.25f + cos(v.vertex.z + _Time.z)/1.25f)/2;
          UNITY_INITIALIZE_OUTPUT(Input,o);
  		  o.localPos = v.vertex.xyz;
      	}

		void surf (Input IN, inout SurfaceOutput o) {

			fixed2 scrollUV = IN.uv_MainTex;
			fixed2 scrollSp = IN.uv_SecTex;
			fixed2 scrollNor = IN.uv_Normal;

            fixed xScrollValue = _Time.x;
            fixed yScrollValue = 0;

            scrollUV += fixed2(xScrollValue, yScrollValue + cos(_Time.x));
            scrollNor += fixed2(xScrollValue, yScrollValue+ cos(_Time.x));
            scrollSp += fixed2(xScrollValue*2, yScrollValue + sin(_Time.x));

           
            o.Normal = UnpackNormal (tex2D (_Normal, scrollNor));

            half4 mainc = tex2D( _MainTex, scrollUV);
            half4 speckc = tex2D( _SecTex, scrollSp);

			//o.Albedo = mainc.rgb * lerp(_Color, _Color2, IN.localPos.y*3);
			o.Albedo = (mainc.rgb / speckc.rgb) * lerp(_Color, _Color2, IN.localPos.y*3);
		}
		ENDCG
	}
	FallBack "Diffuse"
}
