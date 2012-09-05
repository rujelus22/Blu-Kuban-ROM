.class abstract Lcom/sec/android/app/twlauncher/GLScrollBars$BaseFadingEdgeShader;
.super Lcom/sec/android/app/twlauncher/ShaderProgram;
.source "GLScrollBars.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/GLScrollBars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BaseFadingEdgeShader"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/ShaderProgram;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getCoord()Ljava/lang/String;
.end method

.method protected getFragmentSource()Ljava/lang/String;
    .registers 3

    .prologue
    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision mediump float;\nvarying vec2 vTex;\nuniform sampler2D surface;\nuniform vec4 uColor;\nuniform vec4 edges;\nuniform vec2 strength;\nfloat sharpstep(float edge0, float edge1, float x) {\n  return clamp((x-edge0)*(1./(edge1-edge0)),0.,1.);\n}\nvoid main() {\n  vec4 sampled = texture2D(surface, vTex);\n  float coord = ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLScrollBars$BaseFadingEdgeShader;->getCoord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  float alphaMult = 1.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                    + sharpstep(edges[0], edges[1], coord)*strength[0] - strength[0]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                    - sharpstep(edges[2], edges[3], coord)*strength[1];\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  gl_FragColor = (sampled*uColor)*alphaMult;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
