// Simple vertex shader to translate gl_FragCoord to AttractMode's screen coordinate system (thanks Oomek!)

void main()
{
    gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;
    gl_TexCoord[0] = gl_TextureMatrix[0] * gl_MultiTexCoord0;
    gl_FrontColor = gl_Color;
    gl_TexCoord[1].xy = gl_Vertex.xy; // same as gl_FragCoord
}
