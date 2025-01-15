{
  "attributes" : 
  {
    "buffers" : 
    {
      "InstanceInfo" : 
      {
        "binding" : 1,
        "members" : 
        [
          {
            "layout" : "mat4",
            "name" : "objectMatrix",
            "type" : "Float"
          }
        ],
        "name" : "InstanceInfo"
      }
    },
    "inputs" : 
    {
      "0" : 
      {
        "layout" : "vec3",
        "name" : "POSITION",
        "type" : "Float"
      },
      "1" : 
      {
        "layout" : "vec3",
        "name" : "NORMAL",
        "type" : "Float"
      },
      "2" : 
      {
        "layout" : "vec2",
        "name" : "TEXCOORD_0",
        "type" : "Float"
      },
      "3" : 
      {
        "layout" : "vec4",
        "name" : "TANGENT",
        "type" : "Float"
      }
    },
    "outputs" : 
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
        "name" : "outTan",
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
    "uniforms" : 
    {
      "RenderInfo" : 
      {
        "binding" : 0,
        "members" : 
        [
          {
            "layout" : "mat4",
            "name" : "cameraMatrix",
            "type" : "Float"
          },
          {
            "layout" : "vec3",
            "name" : "cameraPos",
            "type" : "Float"
          }
        ],
        "name" : "RenderInfo"
      }
    }
  },
  "id" : "/5",
  "lastSourceHash" : "BE8A985535A4B28753F7E95EDC75C74",
  "source" : "vert.vert"
}