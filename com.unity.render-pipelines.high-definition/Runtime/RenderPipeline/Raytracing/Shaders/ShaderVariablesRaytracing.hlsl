#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/HDRayTracingManager.cs.hlsl"

// The target acceleration acceleration structure should only be defined for non compute shaders
#ifndef SHADER_STAGE_COMPUTE
RaytracingAccelerationStructure         _RaytracingAccelerationStructure;
#endif
float                                   _RaytracingRayBias;
float                                   _RaytracingRayMaxLength;
int                                     _RaytracingNumSamples;
int                                     _RaytracingSampleIndex;
int                                     _RaytracingMinRecursion;
int                                     _RaytracingMaxRecursion;
float                                   _RaytracingIntensityClamp;
float                                   _RaytracingReflectionMaxDistance;
float                                   _RaytracingReflectionMinSmoothness;
int                                     _RaytracingIncludeSky;
int                                     _RaytracingFrameIndex;
float                                   _RaytracingPixelSpreadAngle;
int                                     _RayCountEnabled;
float                                   _RaytracingCameraNearPlane;
uint                                    _RaytracingDiffuseRay;
int                                     _RaytracingPreExposition;
RWStructuredBuffer<uint>                _RayCountBuffer;
