// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:True,fnsp:False,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32867,y:32717,varname:node_2865,prsc:2|diff-2975-OUT,spec-358-OUT,gloss-1813-OUT,normal-683-OUT,alpha-7592-OUT,refract-2403-OUT,voffset-82-OUT;n:type:ShaderForge.SFN_Multiply,id:6343,x:32114,y:32712,varname:node_6343,prsc:2|A-7736-RGB,B-6665-RGB;n:type:ShaderForge.SFN_Color,id:6665,x:31921,y:32805,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5019608,c2:0.5019608,c3:0.5019608,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7736,x:31921,y:32620,ptovrint:True,ptlb:Base Color,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5964,x:31701,y:33160,ptovrint:True,ptlb:Normal Map,ptin:_BumpMap,varname:_BumpMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-752-UVOUT;n:type:ShaderForge.SFN_Slider,id:358,x:32435,y:32769,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:node_358,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:1813,x:32435,y:32864,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8,max:1;n:type:ShaderForge.SFN_Multiply,id:2975,x:32303,y:32482,varname:node_2975,prsc:2|A-614-A,B-6665-RGB;n:type:ShaderForge.SFN_VertexColor,id:614,x:31998,y:32374,varname:node_614,prsc:2;n:type:ShaderForge.SFN_Fresnel,id:3883,x:32096,y:32950,varname:node_3883,prsc:2|EXP-4701-OUT;n:type:ShaderForge.SFN_Multiply,id:5184,x:30984,y:33292,varname:node_5184,prsc:2|A-7489-UVOUT,B-7598-OUT;n:type:ShaderForge.SFN_Slider,id:4701,x:31575,y:32859,ptovrint:False,ptlb:Fresenel,ptin:_Fresenel,varname:node_4701,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Multiply,id:5172,x:32468,y:32624,varname:node_5172,prsc:2|A-2975-OUT,B-3883-OUT;n:type:ShaderForge.SFN_Lerp,id:3011,x:31828,y:33363,varname:node_3011,prsc:2|A-621-OUT,B-212-RGB,T-2339-OUT;n:type:ShaderForge.SFN_Normalize,id:683,x:32133,y:33142,varname:node_683,prsc:2|IN-3409-OUT;n:type:ShaderForge.SFN_NormalBlend,id:3409,x:31950,y:33142,varname:node_3409,prsc:2|BSE-3011-OUT,DTL-5964-RGB;n:type:ShaderForge.SFN_Vector3,id:621,x:31597,y:33363,varname:node_621,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Tex2d,id:212,x:31387,y:33522,ptovrint:False,ptlb:Refraction,ptin:_Refraction,varname:node_212,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:False|UVIN-1275-UVOUT;n:type:ShaderForge.SFN_Multiply,id:7592,x:32611,y:33054,varname:node_7592,prsc:2|A-2494-OUT,B-1577-A;n:type:ShaderForge.SFN_Multiply,id:2403,x:32246,y:33497,varname:node_2403,prsc:2|A-2649-OUT,B-8997-OUT;n:type:ShaderForge.SFN_Slider,id:2339,x:31571,y:33632,ptovrint:False,ptlb:Reflection,ptin:_Reflection,varname:node_2339,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Panner,id:1275,x:31162,y:33494,varname:node_1275,prsc:2,spu:1,spv:1|UVIN-5184-OUT;n:type:ShaderForge.SFN_Panner,id:752,x:31308,y:33049,varname:node_752,prsc:2,spu:1,spv:1|UVIN-8323-OUT;n:type:ShaderForge.SFN_Multiply,id:8323,x:31004,y:33065,varname:node_8323,prsc:2|A-7489-UVOUT,B-5008-OUT;n:type:ShaderForge.SFN_TexCoord,id:7489,x:30712,y:33186,varname:node_7489,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Vector1,id:1557,x:30706,y:33027,varname:node_1557,prsc:2,v1:100;n:type:ShaderForge.SFN_Slider,id:2494,x:32223,y:33255,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_2494,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.29,max:1;n:type:ShaderForge.SFN_VertexColor,id:1577,x:32544,y:33278,varname:node_1577,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:2649,x:31965,y:33479,varname:node_2649,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-212-RGB;n:type:ShaderForge.SFN_Slider,id:4308,x:31693,y:33710,ptovrint:False,ptlb:Distortion,ptin:_Distortion,varname:node_4308,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.48,max:1;n:type:ShaderForge.SFN_Multiply,id:8997,x:32068,y:33703,varname:node_8997,prsc:2|A-4308-OUT,B-8423-OUT;n:type:ShaderForge.SFN_Vector1,id:8423,x:31917,y:33811,varname:node_8423,prsc:2,v1:0.2;n:type:ShaderForge.SFN_ValueProperty,id:7598,x:30708,y:33383,ptovrint:False,ptlb:UV_1,ptin:_UV_1,varname:node_7598,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:40;n:type:ShaderForge.SFN_ValueProperty,id:5008,x:30695,y:33093,ptovrint:False,ptlb:UV_2,ptin:_UV_2,varname:node_5008,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:50;n:type:ShaderForge.SFN_Noise,id:7333,x:32798,y:33531,varname:node_7333,prsc:2|XY-8203-UVOUT;n:type:ShaderForge.SFN_Multiply,id:4670,x:33035,y:33405,varname:node_4670,prsc:2|A-7333-OUT,B-3711-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3711,x:32774,y:33325,ptovrint:False,ptlb:Displacement,ptin:_Displacement,varname:node_3711,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector2,id:2355,x:32452,y:33655,varname:node_2355,prsc:2,v1:20,v2:20;n:type:ShaderForge.SFN_ObjectPosition,id:6179,x:32932,y:33223,varname:node_6179,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:7418,x:33136,y:33223,varname:node_7418,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-6179-XYZ;n:type:ShaderForge.SFN_ChannelBlend,id:2124,x:33352,y:33190,varname:node_2124,prsc:2,chbt:0|M-8628-OUT,R-7418-R,G-4670-OUT,B-7418-G;n:type:ShaderForge.SFN_Vector1,id:8628,x:33152,y:33150,varname:node_8628,prsc:2,v1:1;n:type:ShaderForge.SFN_UVTile,id:8203,x:32638,y:33496,varname:node_8203,prsc:2|UVIN-8536-UVOUT,WDT-927-OUT,HGT-927-OUT,TILE-927-OUT;n:type:ShaderForge.SFN_TexCoord,id:8536,x:32638,y:33707,varname:node_8536,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ValueProperty,id:927,x:32452,y:33530,ptovrint:False,ptlb:UV_D,ptin:_UV_D,varname:node_927,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Blend,id:5432,x:33364,y:33593,varname:node_5432,prsc:2,blmd:10,clmp:True;n:type:ShaderForge.SFN_Add,id:8802,x:33299,y:33339,varname:node_8802,prsc:2|A-7418-R,B-7418-G;n:type:ShaderForge.SFN_Add,id:82,x:33464,y:33387,varname:node_82,prsc:2|A-8802-OUT,B-4670-OUT;proporder:5964-6665-7736-358-1813-212-2339-2494-4308-7598-5008-3711-927;pass:END;sub:END;*/

Shader "Shader Forge/Water" {
    Properties {
        _BumpMap ("Normal Map", 2D) = "bump" {}
        _Color ("Color", Color) = (0.5019608,0.5019608,0.5019608,1)
        _MainTex ("Base Color", 2D) = "white" {}
        _Metallic ("Metallic", Range(0, 1)) = 0
        _Gloss ("Gloss", Range(0, 1)) = 0.8
        _Refraction ("Refraction", 2D) = "bump" {}
        _Reflection ("Reflection", Range(0, 1)) = 0
        _Opacity ("Opacity", Range(0, 1)) = 0.29
        _Distortion ("Distortion", Range(0, 1)) = 0.48
        _UV_1 ("UV_1", Float ) = 40
        _UV_2 ("UV_2", Float ) = 50
        _Displacement ("Displacement", Float ) = 1
        _UV_D ("UV_D", Float ) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
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
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma target 2.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform sampler2D _Refraction; uniform float4 _Refraction_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color)
                UNITY_DEFINE_INSTANCED_PROP( float, _Metallic)
                UNITY_DEFINE_INSTANCED_PROP( float, _Gloss)
                UNITY_DEFINE_INSTANCED_PROP( float, _Reflection)
                UNITY_DEFINE_INSTANCED_PROP( float, _Opacity)
                UNITY_DEFINE_INSTANCED_PROP( float, _Distortion)
                UNITY_DEFINE_INSTANCED_PROP( float, _UV_1)
                UNITY_DEFINE_INSTANCED_PROP( float, _UV_2)
                UNITY_DEFINE_INSTANCED_PROP( float, _Displacement)
                UNITY_DEFINE_INSTANCED_PROP( float, _UV_D)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 vertexColor : COLOR;
                float4 projPos : TEXCOORD7;
                UNITY_FOG_COORDS(8)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD9;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.vertexColor = v.vertexColor;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float2 node_7418 = objPos.rgb.rb;
                float _UV_D_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UV_D );
                float2 node_8203_tc_rcp = float2(1.0,1.0)/float2( _UV_D_var, _UV_D_var );
                float node_8203_ty = floor(_UV_D_var * node_8203_tc_rcp.x);
                float node_8203_tx = _UV_D_var - _UV_D_var * node_8203_ty;
                float2 node_8203 = (o.uv0 + float2(node_8203_tx, node_8203_ty)) * node_8203_tc_rcp;
                float2 node_7333_skew = node_8203 + 0.2127+node_8203.x*0.3713*node_8203.y;
                float2 node_7333_rnd = 4.789*sin(489.123*(node_7333_skew));
                float node_7333 = frac(node_7333_rnd.x*node_7333_rnd.y*(1+node_7333_skew.x));
                float _Displacement_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Displacement );
                float node_4670 = (node_7333*_Displacement_var);
                float node_82 = ((node_7418.r+node_7418.g)+node_4670);
                v.vertex.xyz += float3(node_82,node_82,node_82);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_8338 = _Time;
                float _UV_1_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UV_1 );
                float2 node_1275 = ((i.uv0*_UV_1_var)+node_8338.g*float2(1,1));
                float4 _Refraction_var = tex2D(_Refraction,TRANSFORM_TEX(node_1275, _Refraction));
                float _Reflection_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Reflection );
                float _UV_2_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UV_2 );
                float2 node_752 = ((i.uv0*_UV_2_var)+node_8338.g*float2(1,1));
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_752, _BumpMap)));
                float3 node_3409_nrm_base = lerp(float3(0,0,1),_Refraction_var.rgb,_Reflection_var) + float3(0,0,1);
                float3 node_3409_nrm_detail = _BumpMap_var.rgb * float3(-1,-1,1);
                float3 node_3409_nrm_combined = node_3409_nrm_base*dot(node_3409_nrm_base, node_3409_nrm_detail)/node_3409_nrm_base.z - node_3409_nrm_detail;
                float3 node_3409 = node_3409_nrm_combined;
                float3 normalLocal = normalize(node_3409);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float _Distortion_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Distortion );
                float2 sceneUVs = (i.projPos.xy / i.projPos.w) + (_Refraction_var.rgb.rg*(_Distortion_var*0.2));
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float _Gloss_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Gloss );
                float gloss = _Gloss_var;
                float perceptualRoughness = 1.0 - _Gloss_var;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float _Metallic_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Metallic );
                float3 specularColor = _Metallic_var;
                float specularMonochrome;
                float4 _Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Color );
                float3 node_2975 = (i.vertexColor.a*_Color_var.rgb);
                float3 diffuseColor = node_2975; // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                half surfaceReduction;
                #ifdef UNITY_COLORSPACE_GAMMA
                    surfaceReduction = 1.0-0.28*roughness*perceptualRoughness;
                #else
                    surfaceReduction = 1.0/(roughness*roughness + 1.0);
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                indirectSpecular *= surfaceReduction;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                float _Opacity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Opacity );
                fixed4 finalRGBA = fixed4(lerp(sceneColor.rgb, finalColor,(_Opacity_var*i.vertexColor.a)),1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma target 2.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform sampler2D _Refraction; uniform float4 _Refraction_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color)
                UNITY_DEFINE_INSTANCED_PROP( float, _Metallic)
                UNITY_DEFINE_INSTANCED_PROP( float, _Gloss)
                UNITY_DEFINE_INSTANCED_PROP( float, _Reflection)
                UNITY_DEFINE_INSTANCED_PROP( float, _Opacity)
                UNITY_DEFINE_INSTANCED_PROP( float, _Distortion)
                UNITY_DEFINE_INSTANCED_PROP( float, _UV_1)
                UNITY_DEFINE_INSTANCED_PROP( float, _UV_2)
                UNITY_DEFINE_INSTANCED_PROP( float, _Displacement)
                UNITY_DEFINE_INSTANCED_PROP( float, _UV_D)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 vertexColor : COLOR;
                float4 projPos : TEXCOORD7;
                LIGHTING_COORDS(8,9)
                UNITY_FOG_COORDS(10)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float2 node_7418 = objPos.rgb.rb;
                float _UV_D_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UV_D );
                float2 node_8203_tc_rcp = float2(1.0,1.0)/float2( _UV_D_var, _UV_D_var );
                float node_8203_ty = floor(_UV_D_var * node_8203_tc_rcp.x);
                float node_8203_tx = _UV_D_var - _UV_D_var * node_8203_ty;
                float2 node_8203 = (o.uv0 + float2(node_8203_tx, node_8203_ty)) * node_8203_tc_rcp;
                float2 node_7333_skew = node_8203 + 0.2127+node_8203.x*0.3713*node_8203.y;
                float2 node_7333_rnd = 4.789*sin(489.123*(node_7333_skew));
                float node_7333 = frac(node_7333_rnd.x*node_7333_rnd.y*(1+node_7333_skew.x));
                float _Displacement_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Displacement );
                float node_4670 = (node_7333*_Displacement_var);
                float node_82 = ((node_7418.r+node_7418.g)+node_4670);
                v.vertex.xyz += float3(node_82,node_82,node_82);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_4839 = _Time;
                float _UV_1_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UV_1 );
                float2 node_1275 = ((i.uv0*_UV_1_var)+node_4839.g*float2(1,1));
                float4 _Refraction_var = tex2D(_Refraction,TRANSFORM_TEX(node_1275, _Refraction));
                float _Reflection_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Reflection );
                float _UV_2_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UV_2 );
                float2 node_752 = ((i.uv0*_UV_2_var)+node_4839.g*float2(1,1));
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_752, _BumpMap)));
                float3 node_3409_nrm_base = lerp(float3(0,0,1),_Refraction_var.rgb,_Reflection_var) + float3(0,0,1);
                float3 node_3409_nrm_detail = _BumpMap_var.rgb * float3(-1,-1,1);
                float3 node_3409_nrm_combined = node_3409_nrm_base*dot(node_3409_nrm_base, node_3409_nrm_detail)/node_3409_nrm_base.z - node_3409_nrm_detail;
                float3 node_3409 = node_3409_nrm_combined;
                float3 normalLocal = normalize(node_3409);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float _Distortion_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Distortion );
                float2 sceneUVs = (i.projPos.xy / i.projPos.w) + (_Refraction_var.rgb.rg*(_Distortion_var*0.2));
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float _Gloss_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Gloss );
                float gloss = _Gloss_var;
                float perceptualRoughness = 1.0 - _Gloss_var;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float _Metallic_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Metallic );
                float3 specularColor = _Metallic_var;
                float specularMonochrome;
                float4 _Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Color );
                float3 node_2975 = (i.vertexColor.a*_Color_var.rgb);
                float3 diffuseColor = node_2975; // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                float _Opacity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Opacity );
                fixed4 finalRGBA = fixed4(finalColor * (_Opacity_var*i.vertexColor.a),0);
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
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma target 2.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _Displacement)
                UNITY_DEFINE_INSTANCED_PROP( float, _UV_D)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD1;
                float2 uv1 : TEXCOORD2;
                float2 uv2 : TEXCOORD3;
                float4 posWorld : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float2 node_7418 = objPos.rgb.rb;
                float _UV_D_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UV_D );
                float2 node_8203_tc_rcp = float2(1.0,1.0)/float2( _UV_D_var, _UV_D_var );
                float node_8203_ty = floor(_UV_D_var * node_8203_tc_rcp.x);
                float node_8203_tx = _UV_D_var - _UV_D_var * node_8203_ty;
                float2 node_8203 = (o.uv0 + float2(node_8203_tx, node_8203_ty)) * node_8203_tc_rcp;
                float2 node_7333_skew = node_8203 + 0.2127+node_8203.x*0.3713*node_8203.y;
                float2 node_7333_rnd = 4.789*sin(489.123*(node_7333_skew));
                float node_7333 = frac(node_7333_rnd.x*node_7333_rnd.y*(1+node_7333_skew.x));
                float _Displacement_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Displacement );
                float node_4670 = (node_7333*_Displacement_var);
                float node_82 = ((node_7418.r+node_7418.g)+node_4670);
                v.vertex.xyz += float3(node_82,node_82,node_82);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma target 2.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color)
                UNITY_DEFINE_INSTANCED_PROP( float, _Metallic)
                UNITY_DEFINE_INSTANCED_PROP( float, _Gloss)
                UNITY_DEFINE_INSTANCED_PROP( float, _Displacement)
                UNITY_DEFINE_INSTANCED_PROP( float, _UV_D)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.vertexColor = v.vertexColor;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float2 node_7418 = objPos.rgb.rb;
                float _UV_D_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UV_D );
                float2 node_8203_tc_rcp = float2(1.0,1.0)/float2( _UV_D_var, _UV_D_var );
                float node_8203_ty = floor(_UV_D_var * node_8203_tc_rcp.x);
                float node_8203_tx = _UV_D_var - _UV_D_var * node_8203_ty;
                float2 node_8203 = (o.uv0 + float2(node_8203_tx, node_8203_ty)) * node_8203_tc_rcp;
                float2 node_7333_skew = node_8203 + 0.2127+node_8203.x*0.3713*node_8203.y;
                float2 node_7333_rnd = 4.789*sin(489.123*(node_7333_skew));
                float node_7333 = frac(node_7333_rnd.x*node_7333_rnd.y*(1+node_7333_skew.x));
                float _Displacement_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Displacement );
                float node_4670 = (node_7333*_Displacement_var);
                float node_82 = ((node_7418.r+node_7418.g)+node_4670);
                v.vertex.xyz += float3(node_82,node_82,node_82);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                UNITY_SETUP_INSTANCE_ID( i );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float4 _Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Color );
                float3 node_2975 = (i.vertexColor.a*_Color_var.rgb);
                float3 diffColor = node_2975;
                float specularMonochrome;
                float3 specColor;
                float _Metallic_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Metallic );
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, _Metallic_var, specColor, specularMonochrome );
                float _Gloss_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Gloss );
                float roughness = 1.0 - _Gloss_var;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
