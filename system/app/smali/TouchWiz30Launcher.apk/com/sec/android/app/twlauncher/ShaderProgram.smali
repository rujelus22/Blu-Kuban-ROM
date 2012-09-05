.class public Lcom/sec/android/app/twlauncher/ShaderProgram;
.super Ljava/lang/Object;
.source "ShaderProgram.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;
.implements Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field public colorHandle:I

.field public geometryHandle:I

.field public prog:I

.field public projectionHandle:I

.field public rectHandle:I

.field public surfaceHandle:I

.field public transformHandle:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 154
    const-string v0, "ShaderProgram"

    sput-object v0, Lcom/sec/android/app/twlauncher/ShaderProgram;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->geometryHandle:I

    .line 15
    iput v0, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->rectHandle:I

    .line 17
    iput v0, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->transformHandle:I

    .line 19
    iput v0, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->projectionHandle:I

    .line 21
    iput v0, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->surfaceHandle:I

    .line 23
    iput v0, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->colorHandle:I

    .line 25
    const/4 v0, -0x2

    iput v0, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->prog:I

    .line 9
    return-void
.end method

.method private static checkGlError(Ljava/lang/String;)V
    .registers 5
    .parameter "op"

    .prologue
    .line 148
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, error:I
    if-eqz v0, :cond_23

    .line 149
    sget-object v1, Lcom/sec/android/app/twlauncher/ShaderProgram;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :cond_23
    return-void
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .parameter "vertexSource"
    .parameter "fragmentSource"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 108
    const v5, 0x8b31

    invoke-direct {p0, v5, p1}, Lcom/sec/android/app/twlauncher/ShaderProgram;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 109
    .local v3, vertexShader:I
    if-nez v3, :cond_d

    move v2, v4

    .line 134
    :cond_c
    :goto_c
    return v2

    .line 113
    :cond_d
    const v5, 0x8b30

    invoke-direct {p0, v5, p2}, Lcom/sec/android/app/twlauncher/ShaderProgram;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 114
    .local v1, pixelShader:I
    if-nez v1, :cond_18

    move v2, v4

    .line 115
    goto :goto_c

    .line 118
    :cond_18
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 119
    .local v2, program:I
    if-eqz v2, :cond_c

    .line 120
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 121
    const-string v5, "glAttachShader"

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/ShaderProgram;->checkGlError(Ljava/lang/String;)V

    .line 122
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 123
    const-string v5, "glAttachShader"

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/ShaderProgram;->checkGlError(Ljava/lang/String;)V

    .line 124
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 125
    new-array v0, v6, [I

    .line 126
    .local v0, linkStatus:[I
    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 127
    aget v4, v0, v4

    if-eq v4, v6, :cond_c

    .line 128
    sget-object v4, Lcom/sec/android/app/twlauncher/ShaderProgram;->TAG:Ljava/lang/String;

    const-string v5, "Could not link program: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    sget-object v4, Lcom/sec/android/app/twlauncher/ShaderProgram;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 131
    const/4 v2, 0x0

    goto :goto_c
.end method

.method private loadShader(ILjava/lang/String;)I
    .registers 8
    .parameter "shaderType"
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    .line 91
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 92
    .local v1, shader:I
    if-eqz v1, :cond_45

    .line 93
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 94
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 95
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 96
    .local v0, compiled:[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 97
    aget v2, v0, v3

    if-nez v2, :cond_45

    .line 98
    sget-object v2, Lcom/sec/android/app/twlauncher/ShaderProgram;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-object v2, Lcom/sec/android/app/twlauncher/ShaderProgram;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 101
    const/4 v1, 0x0

    .line 104
    .end local v0           #compiled:[I
    :cond_45
    return v1
.end method


# virtual methods
.method public attribLocation(Ljava/lang/String;)I
    .registers 6
    .parameter "name"

    .prologue
    .line 75
    iget v1, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->prog:I

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 76
    .local v0, handle:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_21

    .line 77
    sget-object v1, Lcom/sec/android/app/twlauncher/ShaderProgram;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get attrib location of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_21
    return v0
.end method

.method public create(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V
    .registers 4
    .parameter "renderer"

    .prologue
    .line 28
    iget v0, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->prog:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_6

    .line 40
    :goto_5
    return-void

    .line 30
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ShaderProgram;->getVertexSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ShaderProgram;->getFragmentSource()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/ShaderProgram;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->prog:I

    .line 32
    const-string v0, "aGeometry"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/ShaderProgram;->attribLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->geometryHandle:I

    .line 33
    const-string v0, "uTransform"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/ShaderProgram;->uniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->transformHandle:I

    .line 34
    const-string v0, "uProjection"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/ShaderProgram;->uniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->projectionHandle:I

    .line 35
    const-string v0, "uRect"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/ShaderProgram;->uniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->rectHandle:I

    .line 36
    const-string v0, "surface"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/ShaderProgram;->uniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->surfaceHandle:I

    .line 37
    const-string v0, "uColor"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/ShaderProgram;->uniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->colorHandle:I

    .line 39
    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->addGLObject(Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;)V

    goto :goto_5
.end method

.method protected getAdditionalVertexSourceHeader()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    const-string v0, ""

    return-object v0
.end method

.method protected getFragmentSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    const-string v0, "precision mediump float;\nvarying vec2 vTex;\nuniform sampler2D surface;\nuniform vec4 uColor;\nvoid main() {\n  gl_FragColor = texture2D(surface, vTex)*uColor;\n}\n"

    return-object v0
.end method

.method protected getPostTransformSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    const-string v0, "void postTransform(inout vec4 pos) {\n}\n"

    return-object v0
.end method

.method public getTransformType()I
    .registers 2

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method protected getVertexSource()Ljava/lang/String;
    .registers 3

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uniform mat4 uTransform;\nuniform mat4 uProjection;\nuniform vec4 uRect;\nuniform vec4 uTexRect;\nattribute vec3 aGeometry;\nvarying vec2 vTex;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ShaderProgram;->getAdditionalVertexSourceHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ShaderProgram;->getPostTransformSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "void main() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  vTex= aGeometry.xy*(uTexRect.zw-uTexRect.xy)+uTexRect.xy;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  vec2 rectSpace = aGeometry.xy*(uRect.zw-uRect.xy)+uRect.xy;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  vec4 transformed = uTransform*vec4(rectSpace, aGeometry.z, 1.);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  postTransform(transformed);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  gl_Position = uProjection * transformed;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onContextLost()V
    .registers 2

    .prologue
    .line 157
    const/4 v0, -0x2

    iput v0, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->prog:I

    .line 158
    return-void
.end method

.method public preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 161
    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->preloadShader(Lcom/sec/android/app/twlauncher/ShaderProgram;)V

    .line 162
    return-void
.end method

.method public uniformLocation(Ljava/lang/String;)I
    .registers 6
    .parameter "name"

    .prologue
    .line 83
    iget v1, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->prog:I

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 84
    .local v0, handle:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_21

    .line 85
    sget-object v1, Lcom/sec/android/app/twlauncher/ShaderProgram;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get uniform location of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_21
    return v0
.end method
