.class Lcom/sec/android/app/twlauncher/ReflectionShader;
.super Lcom/sec/android/app/twlauncher/ShaderProgram;
.source "ReflectionShader.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/ShaderProgram;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFragmentSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    const-string v0, "precision mediump float;\nvarying vec2 vTex;\nuniform sampler2D surface;\nuniform vec4 uColor;\nvarying float vAdditionalDarken;\nvoid main() {\n  vec4 sampled = texture2D(surface, vTex);\n  gl_FragColor.rgb = sampled.rgb*uColor.rgb * vAdditionalDarken;\n  gl_FragColor.a = sampled.a*uColor.a;\n}\n"

    return-object v0
.end method

.method protected getVertexSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6
    const-string v0, "uniform mat4 uTransform;\nuniform mat4 uProjection;\nuniform vec4 uRect;\nattribute vec3 aGeometry;\nvarying vec2 vTex;\nuniform float reflectY;\nuniform float fadeOutDistance;\nvarying float vAdditionalDarken;\nvoid main() {\n  vec2 rectSpace = aGeometry.xy*(uRect.zy-uRect.xw)+uRect.xw;\n  vec4 transformed = uTransform*vec4(rectSpace, aGeometry.z, 1.);\n  transformed.y = 2.*reflectY - transformed.y;\n  vTex= vec2(aGeometry.x, 1.-aGeometry.y);\n  vAdditionalDarken = clamp(1.-(transformed.y-reflectY)/fadeOutDistance, 0.,1.);\n  gl_Position = uProjection * transformed;\n}\n"

    return-object v0
.end method
