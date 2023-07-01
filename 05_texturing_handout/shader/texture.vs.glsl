#version 300 es
// Phong Vertex Shader

in vec3 a_position;
in vec3 a_normal;
//given texture coordinates per vertex
in vec2 a_texCoord;

uniform mat4 u_modelView;
uniform mat3 u_normalMatrix;
uniform mat4 u_projection;
uniform mat4 u_invView;

uniform vec3 u_lightPos;

//output of this shader
out vec3 v_normalVec;
out vec3 v_eyeVec;
out vec3 v_lightVec;

//TASK 1: define output variable for texture coordinates

void main() {
	vec4 eyePosition = u_modelView * vec4(a_position,1);

	v_normalVec = u_normalMatrix * a_normal;

	v_eyeVec = -eyePosition.xyz;
	v_lightVec = u_lightPos - eyePosition.xyz;

	//TASK 1: pass on texture coordinates to fragment shader

	gl_Position = u_projection * eyePosition;
}
