#version 300 es
/**
 * as simple fragment shader just setting the provided color as fragment color
 * Created by Samuel Gratzl on 08.02.2016.
 */

//need to specify how "precise" float should be
precision mediump float;

//interpolate argument between vertex and fragment shader
in vec3 v_color;

//out fragColor: magic output variable containing the final 4D color of the fragment
out vec4 fragColor;

//alpha value determining transparency
uniform float u_alpha;

//entry point again
void main() {
  //TASK 1-4
  //we use the provided interpolated color from our three vertices
  fragColor = vec4(v_color, 1);
}
