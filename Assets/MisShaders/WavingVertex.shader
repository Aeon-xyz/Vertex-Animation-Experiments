Shader "AeonXYZ/WavingVertex" {
	Properties
	{
		_Value1("Value 1", Float) = 0
		_MainTex("Texture", 2D) = "white" { }
	}

		SubShader
	{
		Pass
	{
		CULL Off

		CGPROGRAM
#pragma vertex vert
#pragma fragment frag
#include "UnityCG.cginc"
#include "AutoLight.cginc"

	sampler2D _MainTex;
	uniform float _Value1;
	

	struct appdata {
		float4 vertex : POSITION;
		float4 texcoord : TEXCOORD0;
	};

	struct v2f {
		float4 pos : POSITION;
		float2 uv: TEXCOORD0;
	};

	v2f vert(appdata_base v) {
		v2f o;
		v.vertex.xyz += sin((v.vertex.y + _Time *10)*3.16)*_Value1;
		o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
		o.uv = v.texcoord;
		return o;
	}

	float4 frag(v2f i) : COLOR
	{
		half4 color = tex2D(_MainTex, i.uv);
		return color;
	}

		ENDCG

	}
	}
		Fallback "VertexLit"
}
