{
  "attributes" : 
  {
    "buffers" : 
    {
      "PointLightBuffer" : 
      {
        "binding" : 2,
        "members" : 
        [
          {
            "layout" : "scalar",
            "name" : "numLights",
            "type" : "UInt"
          },
          {
            "layout" : "scalar",
            "name" : "lights",
            "type" : "Struct"
          }
        ],
        "name" : "PointLightBuffer"
      }
    },
    "inputs" : 
    {
      "0" : 
      {
        "layout" : "vec3",
        "name" : "fragPosition",
        "type" : "Float"
      },
      "1" : 
      {
        "layout" : "vec3",
        "name" : "fragNormal",
        "type" : "Float"
      },
      "2" : 
      {
        "layout" : "vec2",
        "name" : "uv",
        "type" : "Float"
      },
      "3" : 
      {
        "layout" : "vec4",
        "name" : "tangent",
        "type" : "Float"
      },
      "4" : 
      {
        "layout" : "vec3",
        "name" : "cameraPos",
        "type" : "Float"
      },
      "5" : 
      {
        "layout" : "mat3",
        "name" : "TBN",
        "type" : "Float"
      }
    },
    "outputs" : 
    {
      "0" : 
      {
        "layout" : "vec4",
        "name" : "fragColor",
        "type" : "Float"
      }
    },
    "samplers" : 
    [
      {
        "binding" : 5,
        "name" : "AO_Roughness_Metallic"
      },
      {
        "binding" : 4,
        "name" : "alphaTex"
      },
      {
        "binding" : 7,
        "name" : "normalMap"
      },
      {
        "binding" : 8,
        "name" : "emission"
      }
    ],
    "uniforms" : 
    {
      "MaterialProperties" : 
      {
        "binding" : 3,
        "members" : 
        [
          {
            "layout" : "scalar",
            "name" : "metallness",
            "type" : "Float"
          }
        ],
        "name" : "MaterialProperties"
      }
    }
  },
  "id" : "/4",
  "lastSourceHash" : "E0ED3A17DE90B733A6D9B3305F1D8EFF",
  "source" : "frag.frag"
}