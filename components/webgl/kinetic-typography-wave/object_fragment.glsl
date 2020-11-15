varying vec2 vUv;
varying vec3 vPos;
varying vec4 vPosition;

uniform float u_time;
uniform float u_progress;
uniform vec2 u_mouse;
uniform sampler2D u_tex;
uniform sampler2D u_texture2;
uniform vec4 u_resolution;

void main(){
  float shadow = clamp((vPos.z + 1.5), 0.0, 1.0);

  vec2 repeat = vec2(3.0, 12.0);
  vec2 uv = fract(vUv * repeat + vec2(((u_time * u_mouse.x) * 0.5), 0.0));

  vec3 texture = texture2D(u_tex, uv).rgb;

  gl_FragColor = vec4(texture * shadow, 1.0);
}
