#version 300 es
/**
 * A simple fragment shader just setting the provided color as fragment color
 * Created by Samuel Gratzl on 08.02.2016.
 */

//need to specify how "precise" float should be
precision mediump float;

//uniform: like a parameter for all fragment shader instances. In our case a the rgb color to use
uniform vec3 u_usercolor;

//in (varying): interpolated argument between vertex and fragment shader
in vec4 v_color;

//out fragColor: magic output variable containing the final 4D color of the fragment
out vec4 fragColor;

//entry point again
void main() {
  //fragColor = vec4(0, 1, 0, 1);
  //fragColor = vec4(u_usercolor, 1);
  fragColor = v_color;
}
