#version 300 es
/**
 * A simple fragment shader just setting the provided color as fragment color
 * Created by Samuel Gratzl on 08.02.2016.
 */

//need to specify how "precise" float should be
precision mediump float;

//out fragColor: magic output variable containing the final 4D color of the fragment
out vec4 fragColor;

//entry point again
void main() {
  fragColor = vec4(0, 1, 0, 1);
}
