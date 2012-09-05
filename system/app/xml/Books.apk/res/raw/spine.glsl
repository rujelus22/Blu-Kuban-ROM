varying float varColor;
varying vec2 varTex0;

void main() {
    vec2 tex1Coord = vec2((1.0 - UNI_uCoef)*varTex0.x + UNI_uCoef, varTex0.y);

    lowp vec4 col = texture2D(UNI_Tex1, tex1Coord); //page texture
    lowp vec4 shadow = texture2D(UNI_Tex0, varTex0);

    col.rgb = mix(col.rgb, shadow.rgb, shadow.a);

    col *= UNI_fadeinAlpha;
    col.a = UNI_fadeinAlpha;
    gl_FragColor = col;
}
