#version 450
#include "vertIO.glsl"


layout (location = 2) in vec2 TEXCOORD_0;
layout (location = 3) in vec4 TANGENT;

layout (location = 2) out vec2 uv;
layout (location = 3) out vec4 outTan;
layout (location = 4) out vec3 cameraPos;
layout (location = 5) out mat3 TBN;

void main() {
    cameraPos = CAMERA_POSITION;
    fragPosition = (OBJECT_MATRIX * vec4(POSITION, 1)).xyz;
    fragNormal = normalize((OBJECT_MATRIX * vec4(NORMAL, 0)).xyz);
    gl_Position = CAMERA_MATRIX * OBJECT_MATRIX * vec4(POSITION, 1.0);
    uv = TEXCOORD_0;
    outTan = vec4(normalize((OBJECT_MATRIX * vec4(TANGENT.xyz, 0)).xyz), TANGENT.w);

    // I randomly swapped these around and negated some until it all looked right, couldn't get it to match blender but this was pretty close
    vec3 bitangent = normalize(cross(fragNormal, outTan.xyz) * outTan.w);
    TBN = mat3(
        outTan.xyz,
        -bitangent,
        fragNormal
    );
}

