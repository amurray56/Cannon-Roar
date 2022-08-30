// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:True,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33526,y:33073,varname:node_3138,prsc:2|emission-3429-OUT,voffset-6666-OUT;n:type:ShaderForge.SFN_Color,id:5765,x:32313,y:32284,ptovrint:False,ptlb:DepthColor1,ptin:_DepthColor1,varname:node_5765,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1766198,c2:0.7062176,c3:0.764151,c4:1;n:type:ShaderForge.SFN_Color,id:7149,x:32153,y:32284,ptovrint:False,ptlb:DepthColor2,ptin:_DepthColor2,varname:node_7149,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2593894,c2:0.6385623,c3:0.8207547,c4:1;n:type:ShaderForge.SFN_Lerp,id:7999,x:32578,y:32557,varname:node_7999,prsc:2|A-5765-RGB,B-9921-OUT,T-2264-OUT;n:type:ShaderForge.SFN_DepthBlend,id:2264,x:31923,y:32574,varname:node_2264,prsc:2|DIST-7301-OUT;n:type:ShaderForge.SFN_Color,id:6493,x:31905,y:32294,ptovrint:False,ptlb:DepthColor3,ptin:_DepthColor3,varname:node_6493,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1353685,c2:0.407955,c3:0.735849,c4:1;n:type:ShaderForge.SFN_Lerp,id:9921,x:32329,y:32482,varname:node_9921,prsc:2|A-7149-RGB,B-6493-RGB,T-1424-OUT;n:type:ShaderForge.SFN_DepthBlend,id:1424,x:31779,y:32440,varname:node_1424,prsc:2|DIST-5356-OUT;n:type:ShaderForge.SFN_Add,id:5356,x:31595,y:32397,varname:node_5356,prsc:2|A-7301-OUT,B-8703-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7301,x:31347,y:32587,ptovrint:False,ptlb:ColorPosition1,ptin:_ColorPosition1,varname:node_7301,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:8703,x:31397,y:32414,ptovrint:False,ptlb:ColorPosition2,ptin:_ColorPosition2,varname:node_8703,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Lerp,id:4292,x:32899,y:32390,varname:node_4292,prsc:2|A-7999-OUT,B-2821-RGB,T-6746-OUT;n:type:ShaderForge.SFN_Color,id:2821,x:32557,y:32158,ptovrint:False,ptlb:Fresnol_Color,ptin:_Fresnol_Color,varname:node_2821,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4579031,c2:0.8778659,c3:0.9245283,c4:1;n:type:ShaderForge.SFN_Slider,id:4584,x:32197,y:32180,ptovrint:False,ptlb:Frenol_Exponent,ptin:_Frenol_Exponent,varname:node_4584,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1066372,max:10;n:type:ShaderForge.SFN_Tex2dAsset,id:3238,x:29914,y:33075,ptovrint:False,ptlb:WaveNormalMap,ptin:_WaveNormalMap,varname:node_3238,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b40a3a0ee26f2124db0eaf98c3b6ce96,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Multiply,id:4433,x:32356,y:33865,varname:node_4433,prsc:2|A-1837-B,B-9595-OUT;n:type:ShaderForge.SFN_Multiply,id:9595,x:32111,y:34117,varname:node_9595,prsc:2|A-6210-OUT,B-296-OUT;n:type:ShaderForge.SFN_Slider,id:6210,x:31730,y:34103,ptovrint:False,ptlb:WaveAmplitude,ptin:_WaveAmplitude,varname:node_6210,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:10,max:10;n:type:ShaderForge.SFN_Tex2d,id:1837,x:32024,y:33859,varname:node_1837,prsc:2,tex:b40a3a0ee26f2124db0eaf98c3b6ce96,ntxv:0,isnm:False|TEX-3238-TEX;n:type:ShaderForge.SFN_Vector1,id:296,x:31786,y:34262,varname:node_296,prsc:2,v1:30;n:type:ShaderForge.SFN_Time,id:7701,x:32010,y:33618,varname:node_7701,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:6406,x:31919,y:33779,ptovrint:False,ptlb:Wave Speed,ptin:_WaveSpeed,varname:node_6406,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:7864,x:32225,y:33701,varname:node_7864,prsc:2|A-7701-T,B-6406-OUT;n:type:ShaderForge.SFN_Subtract,id:6949,x:32563,y:33753,varname:node_6949,prsc:2|A-7864-OUT,B-4433-OUT;n:type:ShaderForge.SFN_Sin,id:1657,x:32743,y:33753,varname:node_1657,prsc:2|IN-6949-OUT;n:type:ShaderForge.SFN_Multiply,id:7350,x:32909,y:33894,varname:node_7350,prsc:2|A-1657-OUT,B-6251-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6251,x:32674,y:34003,ptovrint:False,ptlb:Wave Intesity,ptin:_WaveIntesity,varname:node_6251,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:4550,x:33125,y:33800,varname:node_4550,prsc:2|A-8151-OUT,B-7350-OUT;n:type:ShaderForge.SFN_NormalVector,id:8151,x:32939,y:33699,prsc:2,pt:False;n:type:ShaderForge.SFN_SwitchProperty,id:6666,x:33280,y:33743,ptovrint:False,ptlb:VerttexOffset,ptin:_VerttexOffset,varname:node_6666,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-9171-OUT,B-4550-OUT;n:type:ShaderForge.SFN_Vector1,id:9171,x:33140,y:33682,varname:node_9171,prsc:2,v1:0;n:type:ShaderForge.SFN_DepthBlend,id:3308,x:31502,y:33049,varname:node_3308,prsc:2|DIST-72-OUT;n:type:ShaderForge.SFN_Multiply,id:2055,x:32349,y:33021,varname:node_2055,prsc:2|A-5053-OUT,B-1345-OUT;n:type:ShaderForge.SFN_Multiply,id:4544,x:32458,y:32894,varname:node_4544,prsc:2|A-8535-RGB,B-2055-OUT;n:type:ShaderForge.SFN_Color,id:8535,x:31875,y:32830,ptovrint:False,ptlb:Foam Color,ptin:_FoamColor,varname:node_8535,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8679245,c2:0.8679245,c3:0.8679245,c4:1;n:type:ShaderForge.SFN_Slider,id:1345,x:32028,y:33219,ptovrint:False,ptlb:MainFoamOpacity,ptin:_MainFoamOpacity,varname:node_1345,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.555555,max:1;n:type:ShaderForge.SFN_OneMinus,id:5053,x:32138,y:33063,varname:node_5053,prsc:2|IN-6219-OUT;n:type:ShaderForge.SFN_Add,id:4124,x:33171,y:32982,varname:node_4124,prsc:2|A-8674-OUT,B-4544-OUT,C-1314-OUT;n:type:ShaderForge.SFN_RemapRange,id:1172,x:31126,y:33032,varname:node_1172,prsc:2,frmn:0,frmx:1,tomn:0.2,tomx:0.3|IN-1657-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:6039,x:30714,y:33464,ptovrint:False,ptlb:FoamAsset,ptin:_FoamAsset,varname:node_6039,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5167,x:31149,y:33207,varname:node_5167,prsc:2,ntxv:0,isnm:False|UVIN-9664-OUT,TEX-6039-TEX;n:type:ShaderForge.SFN_Multiply,id:8121,x:31364,y:33221,varname:node_8121,prsc:2|A-5167-R,B-1629-OUT;n:type:ShaderForge.SFN_Multiply,id:72,x:31330,y:33049,varname:node_72,prsc:2|A-1172-OUT,B-8121-OUT;n:type:ShaderForge.SFN_Slider,id:1629,x:31041,y:33385,ptovrint:False,ptlb:FoamDistance,ptin:_FoamDistance,varname:node_1629,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.111111,max:10;n:type:ShaderForge.SFN_Multiply,id:1101,x:30798,y:32973,varname:node_1101,prsc:2|A-4378-OUT,B-4761-T;n:type:ShaderForge.SFN_Multiply,id:6451,x:30798,y:33138,varname:node_6451,prsc:2|A-7929-UVOUT,B-8736-OUT;n:type:ShaderForge.SFN_Add,id:9664,x:30965,y:33065,varname:node_9664,prsc:2|A-1101-OUT,B-6451-OUT;n:type:ShaderForge.SFN_TexCoord,id:7929,x:30411,y:33188,varname:node_7929,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ValueProperty,id:8736,x:30411,y:33365,ptovrint:False,ptlb:Foam Scale,ptin:_FoamScale,varname:node_8736,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Time,id:4761,x:30411,y:33003,varname:node_4761,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:4378,x:30411,y:32910,ptovrint:False,ptlb:Foam Speed,ptin:_FoamSpeed,varname:node_4378,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_Vector1,id:4540,x:31502,y:33255,varname:node_4540,prsc:2,v1:15;n:type:ShaderForge.SFN_Power,id:2541,x:31654,y:33167,varname:node_2541,prsc:2|VAL-3308-OUT,EXP-4540-OUT;n:type:ShaderForge.SFN_Clamp01,id:4122,x:31818,y:33167,varname:node_4122,prsc:2|IN-2541-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:6219,x:31967,y:33074,ptovrint:False,ptlb:MainFoamPower,ptin:_MainFoamPower,varname:node_6219,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-3308-OUT,B-4122-OUT;n:type:ShaderForge.SFN_Tex2d,id:3399,x:30948,y:33644,varname:node_3399,prsc:2,ntxv:0,isnm:False|UVIN-6086-OUT,TEX-6039-TEX;n:type:ShaderForge.SFN_Slider,id:9074,x:30791,y:33813,ptovrint:False,ptlb:SecondaryFoamIntesity,ptin:_SecondaryFoamIntesity,varname:node_9074,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:4325,x:31174,y:33668,varname:node_4325,prsc:2|A-3399-R,B-9074-OUT;n:type:ShaderForge.SFN_Slider,id:7527,x:30761,y:33960,ptovrint:False,ptlb:SecondaryFoamDistance,ptin:_SecondaryFoamDistance,varname:node_7527,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4160156,max:10;n:type:ShaderForge.SFN_DepthBlend,id:2671,x:31139,y:33931,varname:node_2671,prsc:2|DIST-7527-OUT;n:type:ShaderForge.SFN_Multiply,id:3773,x:31655,y:33446,varname:node_3773,prsc:2|A-8628-OUT,B-4325-OUT;n:type:ShaderForge.SFN_Multiply,id:1314,x:32539,y:33229,varname:node_1314,prsc:2|A-8535-RGB,B-3773-OUT;n:type:ShaderForge.SFN_Multiply,id:9465,x:30382,y:33605,varname:node_9465,prsc:2|A-9305-OUT,B-2627-T;n:type:ShaderForge.SFN_Multiply,id:2667,x:30382,y:33770,varname:node_2667,prsc:2|A-9079-UVOUT,B-5400-OUT;n:type:ShaderForge.SFN_Add,id:6086,x:30549,y:33697,varname:node_6086,prsc:2|A-9465-OUT,B-2667-OUT;n:type:ShaderForge.SFN_TexCoord,id:9079,x:29995,y:33800,varname:node_9079,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ValueProperty,id:5400,x:29995,y:33997,ptovrint:False,ptlb:FoamScale2,ptin:_FoamScale2,varname:_FoamScale_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Time,id:2627,x:29995,y:33635,varname:node_2627,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:9305,x:29995,y:33542,ptovrint:False,ptlb:FoamSpeed2,ptin:_FoamSpeed2,varname:_FoamSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_OneMinus,id:8628,x:31344,y:33870,varname:node_8628,prsc:2|IN-2671-OUT;n:type:ShaderForge.SFN_Fresnel,id:6746,x:32578,y:32351,varname:node_6746,prsc:2|EXP-4584-OUT;n:type:ShaderForge.SFN_Tex2d,id:4250,x:30581,y:32038,varname:node_4250,prsc:2,tex:b40a3a0ee26f2124db0eaf98c3b6ce96,ntxv:0,isnm:False|UVIN-8977-UVOUT,TEX-3238-TEX;n:type:ShaderForge.SFN_TexCoord,id:6024,x:29946,y:31957,varname:node_6024,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ValueProperty,id:7036,x:29974,y:32234,ptovrint:False,ptlb:TurbulanceScale,ptin:_TurbulanceScale,varname:node_7036,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:3475,x:30169,y:31993,varname:node_3475,prsc:2|A-6024-UVOUT,B-7036-OUT;n:type:ShaderForge.SFN_Panner,id:8977,x:30371,y:31970,varname:node_8977,prsc:2,spu:0.5,spv:0.5|UVIN-3475-OUT;n:type:ShaderForge.SFN_Slider,id:666,x:30470,y:32218,ptovrint:False,ptlb:TurbulenceDistortion,ptin:_TurbulenceDistortion,varname:node_666,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:6,max:6;n:type:ShaderForge.SFN_Multiply,id:2726,x:30848,y:32071,varname:node_2726,prsc:2|A-4250-G,B-666-OUT;n:type:ShaderForge.SFN_Set,id:7096,x:33125,y:34045,varname:Waves,prsc:2|IN-7350-OUT;n:type:ShaderForge.SFN_Slider,id:8852,x:30493,y:31850,ptovrint:False,ptlb:WavesDistortion,ptin:_WavesDistortion,varname:node_8852,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:4;n:type:ShaderForge.SFN_Get,id:7992,x:30574,y:31715,varname:node_7992,prsc:2|IN-7096-OUT;n:type:ShaderForge.SFN_Multiply,id:9233,x:30827,y:31766,varname:node_9233,prsc:2|A-7992-OUT,B-8852-OUT;n:type:ShaderForge.SFN_Add,id:4865,x:31040,y:31938,varname:node_4865,prsc:2|A-9233-OUT,B-2726-OUT;n:type:ShaderForge.SFN_Set,id:7738,x:31191,y:31844,varname:Turbulence,prsc:2|IN-4865-OUT;n:type:ShaderForge.SFN_Tex2d,id:8678,x:32746,y:31750,ptovrint:False,ptlb:ReflectionTex,ptin:_ReflectionTex,varname:node_8678,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-9240-OUT;n:type:ShaderForge.SFN_Multiply,id:4223,x:32954,y:31789,varname:node_4223,prsc:2|A-8678-RGB,B-9400-OUT;n:type:ShaderForge.SFN_Slider,id:9400,x:32652,y:31973,ptovrint:False,ptlb:Reflection Itensity,ptin:_ReflectionItensity,varname:node_9400,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:3;n:type:ShaderForge.SFN_SwitchProperty,id:3870,x:33221,y:31828,ptovrint:False,ptlb:RealtimeReflect,ptin:_RealtimeReflect,varname:node_3870,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-6987-OUT,B-4223-OUT;n:type:ShaderForge.SFN_Vector1,id:6987,x:33050,y:31740,varname:node_6987,prsc:2,v1:0;n:type:ShaderForge.SFN_Blend,id:8674,x:33283,y:32328,varname:node_8674,prsc:2,blmd:8,clmp:True|SRC-3870-OUT,DST-4292-OUT;n:type:ShaderForge.SFN_LightColor,id:7178,x:32886,y:33256,varname:node_7178,prsc:2;n:type:ShaderForge.SFN_Vector1,id:1015,x:32978,y:33182,varname:node_1015,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:912,x:33184,y:33235,varname:node_912,prsc:2|A-1015-OUT,B-7178-RGB,T-5043-OUT;n:type:ShaderForge.SFN_Multiply,id:3429,x:33328,y:33143,varname:node_3429,prsc:2|A-4124-OUT,B-912-OUT;n:type:ShaderForge.SFN_Slider,id:5043,x:32862,y:33416,ptovrint:False,ptlb:LightColorIntensity,ptin:_LightColorIntensity,varname:node_5043,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8536351,max:1;n:type:ShaderForge.SFN_ScreenPos,id:1495,x:31711,y:31414,varname:node_1495,prsc:2,sctp:2;n:type:ShaderForge.SFN_Add,id:1688,x:31960,y:31701,varname:node_1688,prsc:2|A-1495-V,B-2370-OUT;n:type:ShaderForge.SFN_Add,id:9136,x:31993,y:31546,varname:node_9136,prsc:2|A-1495-U,B-2370-OUT;n:type:ShaderForge.SFN_Vector1,id:2370,x:31689,y:31635,varname:node_2370,prsc:2,v1:0.01;n:type:ShaderForge.SFN_Lerp,id:9240,x:32531,y:31719,varname:node_9240,prsc:2|A-1495-UVOUT,B-7173-OUT,T-4865-OUT;n:type:ShaderForge.SFN_Append,id:7173,x:32172,y:31743,varname:node_7173,prsc:2|A-9136-OUT,B-1688-OUT;proporder:5765-7149-6493-7301-8703-2821-4584-3238-6210-6406-6251-6666-8535-6039-1345-1629-8736-5400-4378-9305-6219-9074-7527-8678-9400-3870-7036-666-8852-5043;pass:END;sub:END;*/

Shader "SteveTest/Tutorial01" {
    Properties {
        _DepthColor1 ("DepthColor1", Color) = (0.1766198,0.7062176,0.764151,1)
        _DepthColor2 ("DepthColor2", Color) = (0.2593894,0.6385623,0.8207547,1)
        _DepthColor3 ("DepthColor3", Color) = (0.1353685,0.407955,0.735849,1)
        _ColorPosition1 ("ColorPosition1", Float ) = 1
        _ColorPosition2 ("ColorPosition2", Float ) = 1
        _Fresnol_Color ("Fresnol_Color", Color) = (0.4579031,0.8778659,0.9245283,1)
        _Frenol_Exponent ("Frenol_Exponent", Range(0, 10)) = 0.1066372
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
        _ReflectionTex ("ReflectionTex", 2D) = "white" {}
        _ReflectionItensity ("Reflection Itensity", Range(0, 3)) = 1
        [MaterialToggle] _RealtimeReflect ("RealtimeReflect", Float ) = 0
        _TurbulanceScale ("TurbulanceScale", Float ) = 1
        _TurbulenceDistortion ("TurbulenceDistortion", Range(0, 6)) = 6
        _WavesDistortion ("WavesDistortion", Range(0, 4)) = 1
        _LightColorIntensity ("LightColorIntensity", Range(0, 1)) = 0.8536351
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
            uniform float4 _LightColor0;
            uniform sampler2D _CameraDepthTexture;
            uniform sampler2D _WaveNormalMap; uniform float4 _WaveNormalMap_ST;
            uniform sampler2D _FoamAsset; uniform float4 _FoamAsset_ST;
            uniform sampler2D _ReflectionTex; uniform float4 _ReflectionTex_ST;
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
                UNITY_DEFINE_INSTANCED_PROP( float, _TurbulanceScale)
                UNITY_DEFINE_INSTANCED_PROP( float, _TurbulenceDistortion)
                UNITY_DEFINE_INSTANCED_PROP( float, _WavesDistortion)
                UNITY_DEFINE_INSTANCED_PROP( float, _ReflectionItensity)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _RealtimeReflect)
                UNITY_DEFINE_INSTANCED_PROP( float, _LightColorIntensity)
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
                float node_7350 = (node_1657*_WaveIntesity_var);
                float3 _VerttexOffset_var = lerp( 0.0, (v.normal*node_7350), UNITY_ACCESS_INSTANCED_PROP( Props, _VerttexOffset ) );
                v.vertex.xyz += _VerttexOffset_var;
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
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
////// Emissive:
                float node_2370 = 0.01;
                float4 node_7701 = _Time;
                float _WaveSpeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _WaveSpeed );
                float3 node_1837 = UnpackNormal(tex2D(_WaveNormalMap,TRANSFORM_TEX(i.uv0, _WaveNormalMap)));
                float _WaveAmplitude_var = UNITY_ACCESS_INSTANCED_PROP( Props, _WaveAmplitude );
                float node_1657 = sin(((node_7701.g*_WaveSpeed_var)-(node_1837.b*(_WaveAmplitude_var*30.0))));
                float _WaveIntesity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _WaveIntesity );
                float node_7350 = (node_1657*_WaveIntesity_var);
                float Waves = node_7350;
                float _WavesDistortion_var = UNITY_ACCESS_INSTANCED_PROP( Props, _WavesDistortion );
                float4 node_9826 = _Time;
                float _TurbulanceScale_var = UNITY_ACCESS_INSTANCED_PROP( Props, _TurbulanceScale );
                float2 node_8977 = ((i.uv0*_TurbulanceScale_var)+node_9826.g*float2(0.5,0.5));
                float3 node_4250 = UnpackNormal(tex2D(_WaveNormalMap,TRANSFORM_TEX(node_8977, _WaveNormalMap)));
                float _TurbulenceDistortion_var = UNITY_ACCESS_INSTANCED_PROP( Props, _TurbulenceDistortion );
                float node_4865 = ((Waves*_WavesDistortion_var)+(node_4250.g*_TurbulenceDistortion_var));
                float2 node_9240 = lerp(sceneUVs.rg,float2((sceneUVs.r+node_2370),(sceneUVs.g+node_2370)),node_4865);
                float4 _ReflectionTex_var = tex2D(_ReflectionTex,TRANSFORM_TEX(node_9240, _ReflectionTex));
                float _ReflectionItensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ReflectionItensity );
                float3 _RealtimeReflect_var = lerp( 0.0, (_ReflectionTex_var.rgb*_ReflectionItensity_var), UNITY_ACCESS_INSTANCED_PROP( Props, _RealtimeReflect ) );
                float4 _DepthColor1_var = UNITY_ACCESS_INSTANCED_PROP( Props, _DepthColor1 );
                float4 _DepthColor2_var = UNITY_ACCESS_INSTANCED_PROP( Props, _DepthColor2 );
                float4 _DepthColor3_var = UNITY_ACCESS_INSTANCED_PROP( Props, _DepthColor3 );
                float _ColorPosition1_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorPosition1 );
                float _ColorPosition2_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorPosition2 );
                float4 _Fresnol_Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Fresnol_Color );
                float _Frenol_Exponent_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Frenol_Exponent );
                float4 _FoamColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FoamColor );
                float _FoamSpeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FoamSpeed );
                float4 node_4761 = _Time;
                float _FoamScale_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FoamScale );
                float2 node_9664 = ((_FoamSpeed_var*node_4761.g)+(i.uv0*_FoamScale_var));
                float4 node_5167 = tex2D(_FoamAsset,TRANSFORM_TEX(node_9664, _FoamAsset));
                float _FoamDistance_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FoamDistance );
                float node_3308 = saturate((sceneZ-partZ)/((node_1657*0.1+0.2)*(node_5167.r*_FoamDistance_var)));
                float _MainFoamPower_var = lerp( node_3308, saturate(pow(node_3308,15.0)), UNITY_ACCESS_INSTANCED_PROP( Props, _MainFoamPower ) );
                float _MainFoamOpacity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _MainFoamOpacity );
                float _SecondaryFoamDistance_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SecondaryFoamDistance );
                float _FoamSpeed2_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FoamSpeed2 );
                float4 node_2627 = _Time;
                float _FoamScale2_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FoamScale2 );
                float2 node_6086 = ((_FoamSpeed2_var*node_2627.g)+(i.uv0*_FoamScale2_var));
                float4 node_3399 = tex2D(_FoamAsset,TRANSFORM_TEX(node_6086, _FoamAsset));
                float _SecondaryFoamIntesity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SecondaryFoamIntesity );
                float node_1015 = 1.0;
                float _LightColorIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _LightColorIntensity );
                float3 emissive = ((saturate((_RealtimeReflect_var+lerp(lerp(_DepthColor1_var.rgb,lerp(_DepthColor2_var.rgb,_DepthColor3_var.rgb,saturate((sceneZ-partZ)/(_ColorPosition1_var+_ColorPosition2_var))),saturate((sceneZ-partZ)/_ColorPosition1_var)),_Fresnol_Color_var.rgb,pow(1.0-max(0,dot(normalDirection, viewDirection)),_Frenol_Exponent_var))))+(_FoamColor_var.rgb*((1.0 - _MainFoamPower_var)*_MainFoamOpacity_var))+(_FoamColor_var.rgb*((1.0 - saturate((sceneZ-partZ)/_SecondaryFoamDistance_var))*(node_3399.r*_SecondaryFoamIntesity_var))))*lerp(float3(node_1015,node_1015,node_1015),_LightColor0.rgb,_LightColorIntensity_var));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
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
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _CameraDepthTexture;
            uniform sampler2D _WaveNormalMap; uniform float4 _WaveNormalMap_ST;
            uniform sampler2D _FoamAsset; uniform float4 _FoamAsset_ST;
            uniform sampler2D _ReflectionTex; uniform float4 _ReflectionTex_ST;
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
                UNITY_DEFINE_INSTANCED_PROP( float, _TurbulanceScale)
                UNITY_DEFINE_INSTANCED_PROP( float, _TurbulenceDistortion)
                UNITY_DEFINE_INSTANCED_PROP( float, _WavesDistortion)
                UNITY_DEFINE_INSTANCED_PROP( float, _ReflectionItensity)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _RealtimeReflect)
                UNITY_DEFINE_INSTANCED_PROP( float, _LightColorIntensity)
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
                LIGHTING_COORDS(4,5)
                UNITY_FOG_COORDS(6)
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
                float node_7350 = (node_1657*_WaveIntesity_var);
                float3 _VerttexOffset_var = lerp( 0.0, (v.normal*node_7350), UNITY_ACCESS_INSTANCED_PROP( Props, _VerttexOffset ) );
                v.vertex.xyz += _VerttexOffset_var;
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
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float3 finalColor = 0;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
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
                float node_7350 = (node_1657*_WaveIntesity_var);
                float3 _VerttexOffset_var = lerp( 0.0, (v.normal*node_7350), UNITY_ACCESS_INSTANCED_PROP( Props, _VerttexOffset ) );
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
