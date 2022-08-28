// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:True,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33526,y:33073,varname:node_3138,prsc:2|emission-4124-OUT,voffset-6666-OUT;n:type:ShaderForge.SFN_Color,id:5765,x:32634,y:32170,ptovrint:False,ptlb:DepthColor1,ptin:_DepthColor1,varname:node_5765,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1766198,c2:0.7062176,c3:0.764151,c4:1;n:type:ShaderForge.SFN_Color,id:7149,x:32474,y:32170,ptovrint:False,ptlb:DepthColor2,ptin:_DepthColor2,varname:node_7149,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2593894,c2:0.6385623,c3:0.8207547,c4:1;n:type:ShaderForge.SFN_Lerp,id:7999,x:32899,y:32443,varname:node_7999,prsc:2|A-5765-RGB,B-9921-OUT,T-2264-OUT;n:type:ShaderForge.SFN_DepthBlend,id:2264,x:32244,y:32460,varname:node_2264,prsc:2|DIST-7301-OUT;n:type:ShaderForge.SFN_Color,id:6493,x:32119,y:32169,ptovrint:False,ptlb:DepthColor3,ptin:_DepthColor3,varname:node_6493,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1353685,c2:0.407955,c3:0.735849,c4:1;n:type:ShaderForge.SFN_Lerp,id:9921,x:32650,y:32368,varname:node_9921,prsc:2|A-7149-RGB,B-6493-RGB,T-1424-OUT;n:type:ShaderForge.SFN_DepthBlend,id:1424,x:32092,y:32338,varname:node_1424,prsc:2|DIST-5356-OUT;n:type:ShaderForge.SFN_Add,id:5356,x:31941,y:32405,varname:node_5356,prsc:2|A-8703-OUT,B-7301-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7301,x:31716,y:32659,ptovrint:False,ptlb:ColorPosition1,ptin:_ColorPosition1,varname:node_7301,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:8703,x:31658,y:32484,ptovrint:False,ptlb:ColorPosition2,ptin:_ColorPosition2,varname:node_8703,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Lerp,id:4292,x:33156,y:32274,varname:node_4292,prsc:2|A-2821-RGB,B-7999-OUT,T-6929-OUT;n:type:ShaderForge.SFN_Color,id:2821,x:32878,y:32044,ptovrint:False,ptlb:Fresnol_Color,ptin:_Fresnol_Color,varname:node_2821,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4579031,c2:0.8778659,c3:0.9245283,c4:1;n:type:ShaderForge.SFN_Fresnel,id:6929,x:32878,y:32242,varname:node_6929,prsc:2|EXP-4584-OUT;n:type:ShaderForge.SFN_Slider,id:4584,x:32518,y:32066,ptovrint:False,ptlb:Frenol_Exponent,ptin:_Frenol_Exponent,varname:node_4584,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.7903979,max:1;n:type:ShaderForge.SFN_Tex2dAsset,id:3238,x:31753,y:33861,ptovrint:False,ptlb:WaveNormalMap,ptin:_WaveNormalMap,varname:node_3238,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b40a3a0ee26f2124db0eaf98c3b6ce96,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Multiply,id:4433,x:32356,y:33865,varname:node_4433,prsc:2|A-1837-B,B-9595-OUT;n:type:ShaderForge.SFN_Multiply,id:9595,x:32111,y:34117,varname:node_9595,prsc:2|A-6210-OUT,B-296-OUT;n:type:ShaderForge.SFN_Slider,id:6210,x:31730,y:34103,ptovrint:False,ptlb:WaveAmplitude,ptin:_WaveAmplitude,varname:node_6210,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:10,max:10;n:type:ShaderForge.SFN_Tex2d,id:1837,x:32024,y:33859,varname:node_1837,prsc:2,tex:b40a3a0ee26f2124db0eaf98c3b6ce96,ntxv:0,isnm:False|TEX-3238-TEX;n:type:ShaderForge.SFN_Vector1,id:296,x:31786,y:34262,varname:node_296,prsc:2,v1:30;n:type:ShaderForge.SFN_Time,id:7701,x:32010,y:33618,varname:node_7701,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:6406,x:31919,y:33779,ptovrint:False,ptlb:Wave Speed,ptin:_WaveSpeed,varname:node_6406,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:7864,x:32225,y:33701,varname:node_7864,prsc:2|A-7701-T,B-6406-OUT;n:type:ShaderForge.SFN_Subtract,id:6949,x:32563,y:33753,varname:node_6949,prsc:2|A-7864-OUT,B-4433-OUT;n:type:ShaderForge.SFN_Sin,id:1657,x:32743,y:33753,varname:node_1657,prsc:2|IN-6949-OUT;n:type:ShaderForge.SFN_Multiply,id:7350,x:32939,y:33891,varname:node_7350,prsc:2|A-1657-OUT,B-6251-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6251,x:32674,y:34003,ptovrint:False,ptlb:Wave Intesity,ptin:_WaveIntesity,varname:node_6251,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:4550,x:33125,y:33800,varname:node_4550,prsc:2|A-8151-OUT,B-7350-OUT;n:type:ShaderForge.SFN_NormalVector,id:8151,x:32939,y:33699,prsc:2,pt:False;n:type:ShaderForge.SFN_SwitchProperty,id:6666,x:33280,y:33743,ptovrint:False,ptlb:VerttexOffset,ptin:_VerttexOffset,varname:node_6666,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-9171-OUT,B-4550-OUT;n:type:ShaderForge.SFN_Vector1,id:9171,x:33140,y:33682,varname:node_9171,prsc:2,v1:0;n:type:ShaderForge.SFN_DepthBlend,id:3308,x:31502,y:33049,varname:node_3308,prsc:2|DIST-72-OUT;n:type:ShaderForge.SFN_Multiply,id:2055,x:32349,y:33021,varname:node_2055,prsc:2|A-5053-OUT,B-1345-OUT;n:type:ShaderForge.SFN_Multiply,id:4544,x:32458,y:32894,varname:node_4544,prsc:2|A-8535-RGB,B-2055-OUT;n:type:ShaderForge.SFN_Color,id:8535,x:31875,y:32830,ptovrint:False,ptlb:Foam Color,ptin:_FoamColor,varname:node_8535,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8679245,c2:0.8679245,c3:0.8679245,c4:1;n:type:ShaderForge.SFN_Slider,id:1345,x:32028,y:33219,ptovrint:False,ptlb:MainFoamOpacity,ptin:_MainFoamOpacity,varname:node_1345,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.555555,max:1;n:type:ShaderForge.SFN_OneMinus,id:5053,x:32138,y:33063,varname:node_5053,prsc:2|IN-6219-OUT;n:type:ShaderForge.SFN_Add,id:4124,x:33171,y:32982,varname:node_4124,prsc:2|A-4292-OUT,B-4544-OUT,C-1314-OUT;n:type:ShaderForge.SFN_RemapRange,id:1172,x:31126,y:33032,varname:node_1172,prsc:2,frmn:0,frmx:1,tomn:2.2,tomx:0.3|IN-1657-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:6039,x:30714,y:33464,ptovrint:False,ptlb:FoamAsset,ptin:_FoamAsset,varname:node_6039,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5167,x:31149,y:33207,varname:node_5167,prsc:2,ntxv:0,isnm:False|UVIN-9664-OUT,TEX-6039-TEX;n:type:ShaderForge.SFN_Multiply,id:8121,x:31364,y:33221,varname:node_8121,prsc:2|A-5167-R,B-1629-OUT;n:type:ShaderForge.SFN_Multiply,id:72,x:31330,y:33049,varname:node_72,prsc:2|A-1172-OUT,B-8121-OUT;n:type:ShaderForge.SFN_Slider,id:1629,x:31041,y:33385,ptovrint:False,ptlb:FoamDistance,ptin:_FoamDistance,varname:node_1629,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.111111,max:10;n:type:ShaderForge.SFN_Multiply,id:1101,x:30798,y:32973,varname:node_1101,prsc:2|A-4378-OUT,B-4761-T;n:type:ShaderForge.SFN_Multiply,id:6451,x:30798,y:33138,varname:node_6451,prsc:2|A-7929-UVOUT,B-8736-OUT;n:type:ShaderForge.SFN_Add,id:9664,x:30965,y:33065,varname:node_9664,prsc:2|A-1101-OUT,B-6451-OUT;n:type:ShaderForge.SFN_TexCoord,id:7929,x:30411,y:33188,varname:node_7929,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ValueProperty,id:8736,x:30411,y:33365,ptovrint:False,ptlb:Foam Scale,ptin:_FoamScale,varname:node_8736,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Time,id:4761,x:30411,y:33003,varname:node_4761,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:4378,x:30411,y:32910,ptovrint:False,ptlb:Foam Speed,ptin:_FoamSpeed,varname:node_4378,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_Vector1,id:4540,x:31502,y:33255,varname:node_4540,prsc:2,v1:15;n:type:ShaderForge.SFN_Power,id:2541,x:31654,y:33167,varname:node_2541,prsc:2|VAL-3308-OUT,EXP-4540-OUT;n:type:ShaderForge.SFN_Clamp01,id:4122,x:31818,y:33167,varname:node_4122,prsc:2|IN-2541-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:6219,x:31967,y:33074,ptovrint:False,ptlb:MainFoamPower,ptin:_MainFoamPower,varname:node_6219,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-3308-OUT,B-4122-OUT;n:type:ShaderForge.SFN_Tex2d,id:3399,x:30948,y:33644,varname:node_3399,prsc:2,ntxv:0,isnm:False|UVIN-6086-OUT,TEX-6039-TEX;n:type:ShaderForge.SFN_Slider,id:9074,x:30791,y:33813,ptovrint:False,ptlb:SecondaryFoamIntesity,ptin:_SecondaryFoamIntesity,varname:node_9074,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:4325,x:31174,y:33668,varname:node_4325,prsc:2|A-3399-R,B-9074-OUT;n:type:ShaderForge.SFN_Slider,id:7527,x:30761,y:33960,ptovrint:False,ptlb:SecondaryFoamDistance,ptin:_SecondaryFoamDistance,varname:node_7527,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4160156,max:10;n:type:ShaderForge.SFN_DepthBlend,id:2671,x:31139,y:33931,varname:node_2671,prsc:2|DIST-7527-OUT;n:type:ShaderForge.SFN_Multiply,id:3773,x:31655,y:33446,varname:node_3773,prsc:2|A-8628-OUT,B-4325-OUT;n:type:ShaderForge.SFN_Multiply,id:1314,x:32539,y:33229,varname:node_1314,prsc:2|A-8535-RGB,B-3773-OUT;n:type:ShaderForge.SFN_Multiply,id:9465,x:30382,y:33605,varname:node_9465,prsc:2|A-9305-OUT,B-2627-T;n:type:ShaderForge.SFN_Multiply,id:2667,x:30382,y:33770,varname:node_2667,prsc:2|A-9079-UVOUT,B-5400-OUT;n:type:ShaderForge.SFN_Add,id:6086,x:30549,y:33697,varname:node_6086,prsc:2|A-9465-OUT,B-2667-OUT;n:type:ShaderForge.SFN_TexCoord,id:9079,x:29995,y:33800,varname:node_9079,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ValueProperty,id:5400,x:29995,y:33997,ptovrint:False,ptlb:FoamScale2,ptin:_FoamScale2,varname:_FoamScale_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Time,id:2627,x:29995,y:33635,varname:node_2627,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:9305,x:29995,y:33542,ptovrint:False,ptlb:FoamSpeed2,ptin:_FoamSpeed2,varname:_FoamSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_OneMinus,id:8628,x:31344,y:33870,varname:node_8628,prsc:2|IN-2671-OUT;proporder:5765-7149-6493-7301-8703-2821-4584-3238-6210-6406-6251-6666-8535-6039-1345-1629-8736-5400-4378-9305-6219-9074-7527;pass:END;sub:END;*/

Shader "SteveTest/Tutorial01" {
    Properties {
        _DepthColor1 ("DepthColor1", Color) = (0.1766198,0.7062176,0.764151,1)
        _DepthColor2 ("DepthColor2", Color) = (0.2593894,0.6385623,0.8207547,1)
        _DepthColor3 ("DepthColor3", Color) = (0.1353685,0.407955,0.735849,1)
        _ColorPosition1 ("ColorPosition1", Float ) = 1
        _ColorPosition2 ("ColorPosition2", Float ) = 1
        _Fresnol_Color ("Fresnol_Color", Color) = (0.4579031,0.8778659,0.9245283,1)
        _Frenol_Exponent ("Frenol_Exponent", Range(0, 1)) = 0.7903979
        _WaveNormalMap ("WaveNormalMap", 2D) = "bump" {}
        _WaveAmplitude ("WaveAmplitude", Range(0, 10)) = 10
        _WaveSpeed ("Wave Speed", Float ) = 1
        _WaveIntesity ("Wave Intesity", Float ) = 1
        [MaterialToggle] _VerttexOffset ("VerttexOffset", Float ) = 0
        _FoamColor ("Foam Color", Color) = (0.8679245,0.8679245,0.8679245,1)
        _FoamAsset ("FoamAsset", 2D) = "white" {}
        _MainFoamOpacity ("MainFoamOpacity", Range(0, 1)) = 0.555555
        _FoamDistance ("FoamDistance", Range(0, 10)) = 1.111111
        _FoamScale ("Foam Scale", Float ) = 5
        _FoamScale2 ("FoamScale2", Float ) = 5
        _FoamSpeed ("Foam Speed", Float ) = 0.2
        _FoamSpeed2 ("FoamSpeed2", Float ) = 0.2
        [MaterialToggle] _MainFoamPower ("MainFoamPower", Float ) = 0
        _SecondaryFoamIntesity ("SecondaryFoamIntesity", Range(0, 1)) = 0
        _SecondaryFoamDistance ("SecondaryFoamDistance", Range(0, 10)) = 0.4160156
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform sampler2D _WaveNormalMap; uniform float4 _WaveNormalMap_ST;
            uniform sampler2D _FoamAsset; uniform float4 _FoamAsset_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _DepthColor1)
                UNITY_DEFINE_INSTANCED_PROP( float4, _DepthColor2)
                UNITY_DEFINE_INSTANCED_PROP( float4, _DepthColor3)
                UNITY_DEFINE_INSTANCED_PROP( float, _ColorPosition1)
                UNITY_DEFINE_INSTANCED_PROP( float, _ColorPosition2)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Fresnol_Color)
                UNITY_DEFINE_INSTANCED_PROP( float, _Frenol_Exponent)
                UNITY_DEFINE_INSTANCED_PROP( float, _WaveAmplitude)
                UNITY_DEFINE_INSTANCED_PROP( float, _WaveSpeed)
                UNITY_DEFINE_INSTANCED_PROP( float, _WaveIntesity)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _VerttexOffset)
                UNITY_DEFINE_INSTANCED_PROP( float4, _FoamColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _MainFoamOpacity)
                UNITY_DEFINE_INSTANCED_PROP( float, _FoamDistance)
                UNITY_DEFINE_INSTANCED_PROP( float, _FoamScale)
                UNITY_DEFINE_INSTANCED_PROP( float, _FoamSpeed)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _MainFoamPower)
                UNITY_DEFINE_INSTANCED_PROP( float, _SecondaryFoamIntesity)
                UNITY_DEFINE_INSTANCED_PROP( float, _SecondaryFoamDistance)
                UNITY_DEFINE_INSTANCED_PROP( float, _FoamScale2)
                UNITY_DEFINE_INSTANCED_PROP( float, _FoamSpeed2)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 projPos : TEXCOORD3;
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_7701 = _Time;
                float _WaveSpeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _WaveSpeed );
                float3 node_1837 = UnpackNormal(tex2Dlod(_WaveNormalMap,float4(TRANSFORM_TEX(o.uv0, _WaveNormalMap),0.0,0)));
                float _WaveAmplitude_var = UNITY_ACCESS_INSTANCED_PROP( Props, _WaveAmplitude );
                float node_1657 = sin(((node_7701.g*_WaveSpeed_var)-(node_1837.b*(_WaveAmplitude_var*30.0))));
                float _WaveIntesity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _WaveIntesity );
                float3 _VerttexOffset_var = lerp( 0.0, (v.normal*(node_1657*_WaveIntesity_var)), UNITY_ACCESS_INSTANCED_PROP( Props, _VerttexOffset ) );
                v.vertex.xyz += _VerttexOffset_var;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
////// Lighting:
////// Emissive:
                float4 _Fresnol_Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Fresnol_Color );
                float4 _DepthColor1_var = UNITY_ACCESS_INSTANCED_PROP( Props, _DepthColor1 );
                float4 _DepthColor2_var = UNITY_ACCESS_INSTANCED_PROP( Props, _DepthColor2 );
                float4 _DepthColor3_var = UNITY_ACCESS_INSTANCED_PROP( Props, _DepthColor3 );
                float _ColorPosition2_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorPosition2 );
                float _ColorPosition1_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorPosition1 );
                float _Frenol_Exponent_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Frenol_Exponent );
                float4 _FoamColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FoamColor );
                float4 node_7701 = _Time;
                float _WaveSpeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _WaveSpeed );
                float3 node_1837 = UnpackNormal(tex2D(_WaveNormalMap,TRANSFORM_TEX(i.uv0, _WaveNormalMap)));
                float _WaveAmplitude_var = UNITY_ACCESS_INSTANCED_PROP( Props, _WaveAmplitude );
                float node_1657 = sin(((node_7701.g*_WaveSpeed_var)-(node_1837.b*(_WaveAmplitude_var*30.0))));
                float _FoamSpeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FoamSpeed );
                float4 node_4761 = _Time;
                float _FoamScale_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FoamScale );
                float2 node_9664 = ((_FoamSpeed_var*node_4761.g)+(i.uv0*_FoamScale_var));
                float4 node_5167 = tex2D(_FoamAsset,TRANSFORM_TEX(node_9664, _FoamAsset));
                float _FoamDistance_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FoamDistance );
                float node_3308 = saturate((sceneZ-partZ)/((node_1657*-1.9+2.2)*(node_5167.r*_FoamDistance_var)));
                float _MainFoamPower_var = lerp( node_3308, saturate(pow(node_3308,15.0)), UNITY_ACCESS_INSTANCED_PROP( Props, _MainFoamPower ) );
                float _MainFoamOpacity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _MainFoamOpacity );
                float _SecondaryFoamDistance_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SecondaryFoamDistance );
                float _FoamSpeed2_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FoamSpeed2 );
                float4 node_2627 = _Time;
                float _FoamScale2_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FoamScale2 );
                float2 node_6086 = ((_FoamSpeed2_var*node_2627.g)+(i.uv0*_FoamScale2_var));
                float4 node_3399 = tex2D(_FoamAsset,TRANSFORM_TEX(node_6086, _FoamAsset));
                float _SecondaryFoamIntesity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SecondaryFoamIntesity );
                float3 emissive = (lerp(_Fresnol_Color_var.rgb,lerp(_DepthColor1_var.rgb,lerp(_DepthColor2_var.rgb,_DepthColor3_var.rgb,saturate((sceneZ-partZ)/(_ColorPosition2_var+_ColorPosition1_var))),saturate((sceneZ-partZ)/_ColorPosition1_var)),pow(1.0-max(0,dot(normalDirection, viewDirection)),_Frenol_Exponent_var))+(_FoamColor_var.rgb*((1.0 - _MainFoamPower_var)*_MainFoamOpacity_var))+(_FoamColor_var.rgb*((1.0 - saturate((sceneZ-partZ)/_SecondaryFoamDistance_var))*(node_3399.r*_SecondaryFoamIntesity_var))));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform sampler2D _WaveNormalMap; uniform float4 _WaveNormalMap_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _WaveAmplitude)
                UNITY_DEFINE_INSTANCED_PROP( float, _WaveSpeed)
                UNITY_DEFINE_INSTANCED_PROP( float, _WaveIntesity)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _VerttexOffset)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_7701 = _Time;
                float _WaveSpeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _WaveSpeed );
                float3 node_1837 = UnpackNormal(tex2Dlod(_WaveNormalMap,float4(TRANSFORM_TEX(o.uv0, _WaveNormalMap),0.0,0)));
                float _WaveAmplitude_var = UNITY_ACCESS_INSTANCED_PROP( Props, _WaveAmplitude );
                float node_1657 = sin(((node_7701.g*_WaveSpeed_var)-(node_1837.b*(_WaveAmplitude_var*30.0))));
                float _WaveIntesity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _WaveIntesity );
                float3 _VerttexOffset_var = lerp( 0.0, (v.normal*(node_1657*_WaveIntesity_var)), UNITY_ACCESS_INSTANCED_PROP( Props, _VerttexOffset ) );
                v.vertex.xyz += _VerttexOffset_var;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
