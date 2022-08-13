//
//  ShaderType.h
//  ARReplaceBackGround
//
//  Created by ミズキ on 2022/08/13.
//

#ifndef ShaderType_h
#define ShaderType_h

#include <simd/simd.h>

typedef struct {
    // カメラユニフォーム
    matrix_float4x4 projectionMatrix;
    matrix_float4x4 viewMatrix;
    // ライトのプロパティ
    vector_float3 ambientLightColor;
    vector_float3 directionalLightDirection;
    vector_float3 directionalLightColor;
    float materialShininess;
    // Matting
    int useDepth;
} SharedUniforms;

typedef struct {
    matrix_float4x4 modelMatrix;
} InstanceUniforms;

#endif /* ShaderType_h */
