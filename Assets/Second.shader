Shader "Fatemeh/SeconShader"{
	Properties{
		_Color("First Color", Color) = (1,1,1,1)
		_Emission("First Emission", Color) = (1,1,1,1)
		_Texture("First TExture", 2D) = "White" {}
	}

		SubShader{
			CGPROGRAM
				#pragma surface surf Lambert

				struct Input {
					float2 uv_Texture;
				};

			fixed4 _Color;
			fixed4 _Emission;
			sampler2D _Texture;

			void surf(Input IN, inout SurfaceOutput o) {
				//o.Albedo = _Color.rgb;
				//o.Emission = _Emission.rgb;
				o.Albedo = tex2D(_Texture, IN.uv_Texture).rgb;
			}

			ENDCG

	}

		FallBack "Diffuse"
}