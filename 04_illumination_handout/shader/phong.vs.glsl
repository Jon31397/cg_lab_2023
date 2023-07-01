#version 300 es
/**
 * A phong shader implementation
 * Created by Samuel Gratzl on 29.02.2016.
 */
in vec3 a_position;
in vec3 a_normal;

uniform mat4 u_modelView;
uniform mat3 u_normalMatrix;
uniform mat4 u_projection;

//TASK 3-3 light position as uniform
//TASK 5-3 second light source
vec3 lightPos = vec3(0, -2, 2);

//output of this shader
out vec3 v_normalVec;
out vec3 v_eyeVec;
out vec3 v_lightVec;
out vec3 v_light2Vec;

void main() {
	vec4 eyePosition = u_modelView * vec4(a_position,1);

  	v_normalVec = u_normalMatrix * a_normal;

  	v_eyeVec = -eyePosition.xyz;
	//TASK 3-4 light position as uniform
	v_lightVec = lightPos - eyePosition.xyz;
	//TASK 5-4 second light source position

	gl_Position = u_projection * eyePosition;
}
