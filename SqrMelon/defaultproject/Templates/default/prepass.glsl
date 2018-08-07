// Prepass cone tracing at a lower resolution, more advanced implementation can be found in:
// https://www.shadertoy.com/view/XdycWy by Henrik Münther
void main()
{
    Ray ray = ScreenRayUV(gl_FragCoord.xy/uResolution);

    Hit hit = Trace(ray, 0.0, FAR, STEPS);

    outColor0 = vec4(hit.totalDistance-1.0,0,0,0);
}
