#version 450

#include "fragIO.glsl"
#include "lighting.glsl"

MATERIAL_PROPERTIES {
    float metallness;
} mp;

layout (location = 2) in vec2 uv;
layout (location = 3) in vec4 tangent;
layout (location = 4) in vec3 cameraPos;
layout (location = 5) in mat3 TBN;

layout (binding = 4) uniform sampler2D alphaTex;
// GLTF uses a packed texture for Ambient Occlusion, Roughness, and Metallic. (In that order, corresponding to rgb)
layout (binding = 5) uniform sampler2D AO_Roughness_Metallic;
layout (binding = 7) uniform sampler2D normalMap;
layout (binding = 8) uniform sampler2D emission;

void main() {
    vec4 components = texture(AO_Roughness_Metallic, uv);
    float AO = components.r;
    float roughness = components.g;
    float metallic = components.b;
    vec3 alpha = pow(texture(alphaTex, uv).rgb, vec3(2.2));

    // I'm not sure this is right, but looks close enough
    vec3 colorNormal = texture(normalMap, uv).rgb * 2 - 1;
    vec3 normal = normalize(TBN * colorNormal);

    vec3 color = shadePBR(alpha, fragPosition, cameraPos, normal, roughness, metallic * mp.metallness);
    fragColor = max(vec4(color * AO, 1), texture(emission, uv));
}
