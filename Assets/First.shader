Shader "Fatemeh/FirstShader"{
	Properties{
		_Color ("First Color", Color) = (1,1,1,1)
		_Emission ("First Emission", Color) = (1,1,1,1)
	}

	SubShader{
		CGPROGRAM
			#pragma surface surf Lambert
			
			struct Input {
				float2 uvMainTex;
			};

		fixed4 _Color;
		fixed4 _Emission;
			
		void surf(Input IN, inout SurfaceOutput o) {
			o.Albedo = _Color.rgb;
			o.Emission = _Emission.rgb;
		}

		ENDCG

	}

	FallBack "Diffuse"
}