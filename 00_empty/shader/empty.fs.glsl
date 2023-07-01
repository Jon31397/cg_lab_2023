/**
 * empty basic fragment shader
 */

//need to specify how "precise" float should be
precision mediump float;

//out fragColor: magic output variable containing the final 4D color of the fragment
out vec4 fragColor;

//entry point again
void main() {
  fragColor = vec4(1,1,1,1);
}
