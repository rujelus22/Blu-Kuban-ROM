.class public Lcom/google/android/opengl/carousel/GLProgram;
.super Ljava/lang/Object;
.source "GLProgram.java"


# static fields
.field public static final sMultiTextureShader:Ljava/lang/String;

.field public static final sSingleTextureShader:Ljava/lang/String;

.field public static final sVertexShader:Ljava/lang/String;


# instance fields
.field public mFShader:I

.field public mProgram:I

.field public mVShader:I

.field public maColorHandle:I

.field public maPosHandle:I

.field public maTexHandle:I

.field public muMVPMatHandle:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 191
    new-instance v0, Ljava/lang/String;

    const-string v1, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nattribute vec4 aColor;\nvarying vec2 vTextureCoord;\nvarying vec4 vColor;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  gl_PointSize = 1.0;\n  vTextureCoord = aTextureCoord;\n  vColor = aColor;\n}\n"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/opengl/carousel/GLProgram;->sVertexShader:Ljava/lang/String;

    .line 205
    new-instance v0, Ljava/lang/String;

    const-string v1, "precision mediump float;\nvarying vec2 vTextureCoord;uniform sampler2D uTexture;void main() {  vec2 t0 = vTextureCoord.xy;  vec4 col = texture2D(uTexture, t0);  gl_FragColor = col; }\n"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/opengl/carousel/GLProgram;->sSingleTextureShader:Ljava/lang/String;

    .line 215
    new-instance v0, Ljava/lang/String;

    const-string v1, "precision mediump float;\nvarying vec2 vTextureCoord;uniform sampler2D uTexture;uniform sampler2D uTexture1;uniform float uFadeAmount;void main() {  vec2 t0 = vTextureCoord.xy;  vec4 col = texture2D(uTexture, t0);  vec4 col2 = texture2D(uTexture1, t0);  gl_FragColor = mix(col, col2, uFadeAmount);}\n"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/opengl/carousel/GLProgram;->sMultiTextureShader:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/opengl/carousel/GLProgram;->maPosHandle:I

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/opengl/carousel/GLProgram;->maTexHandle:I

    .line 24
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/opengl/carousel/GLProgram;->maColorHandle:I

    .line 31
    return-void
.end method

.method private bindHandles()V
    .registers 4

    .prologue
    .line 110
    iget v0, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const/4 v1, 0x0

    const-string v2, "aPosition"

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 111
    iget v0, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const/4 v1, 0x1

    const-string v2, "aTextureCoord"

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 112
    iget v0, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const/4 v1, 0x2

    const-string v2, "aColor"

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 113
    const-string v0, "bindHandles"

    invoke-static {v0}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method private getHandles()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 118
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "aPosition"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->maPosHandle:I

    .line 119
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->maPosHandle:I

    if-ne v1, v3, :cond_17

    .line 120
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not get attrib location for aPosition"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :cond_17
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "aTextureCoord"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->maTexHandle:I

    .line 124
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->maTexHandle:I

    if-ne v1, v3, :cond_25

    .line 129
    :cond_25
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "aColor"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->maColorHandle:I

    .line 130
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->maColorHandle:I

    if-ne v1, v3, :cond_33

    .line 135
    :cond_33
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "uMVPMatrix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->muMVPMatHandle:I

    .line 136
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->muMVPMatHandle:I

    if-ne v1, v3, :cond_48

    .line 138
    const-string v1, "GLProgram"

    const-string v2, "No attrib handle for muMVPMatHandle."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_48
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "uTexture"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 143
    .local v0, sampleLoc:I
    const-string v1, "getHandles"

    invoke-static {v1}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 144
    const-string v1, "GLProgram"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handles: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/opengl/carousel/GLProgram;->maPosHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/opengl/carousel/GLProgram;->maTexHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/opengl/carousel/GLProgram;->maColorHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/opengl/carousel/GLProgram;->muMVPMatHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method

.method private loadShader(ILjava/lang/String;)I
    .registers 8
    .parameter "shaderType"
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    .line 89
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 90
    .local v1, shader:I
    if-eqz v1, :cond_45

    .line 91
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 92
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 93
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 94
    .local v0, compiled:[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 95
    aget v2, v0, v3

    if-nez v2, :cond_45

    .line 96
    const-string v2, "GLProgram"

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

    .line 97
    const-string v2, "GLProgram"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 99
    const/4 v1, 0x0

    .line 102
    .end local v0           #compiled:[I
    :cond_45
    const-string v2, "loadShader"

    invoke-static {v2}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 103
    return v1
.end method


# virtual methods
.method public createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .parameter "vertexSource"
    .parameter "fragmentSource"

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 51
    const v2, 0x8b31

    invoke-direct {p0, v2, p1}, Lcom/google/android/opengl/carousel/GLProgram;->loadShader(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/opengl/carousel/GLProgram;->mVShader:I

    .line 52
    iget v2, p0, Lcom/google/android/opengl/carousel/GLProgram;->mVShader:I

    if-nez v2, :cond_10

    .line 85
    :cond_f
    :goto_f
    return v1

    .line 56
    :cond_10
    const v2, 0x8b30

    invoke-direct {p0, v2, p2}, Lcom/google/android/opengl/carousel/GLProgram;->loadShader(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/opengl/carousel/GLProgram;->mFShader:I

    .line 57
    iget v2, p0, Lcom/google/android/opengl/carousel/GLProgram;->mFShader:I

    if-eqz v2, :cond_f

    .line 61
    const-string v2, "GLProgram"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The shaders are: vertex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/opengl/carousel/GLProgram;->mVShader:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fragment: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/opengl/carousel/GLProgram;->mFShader:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    iput v2, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    .line 63
    iget v2, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    if-eqz v2, :cond_94

    .line 64
    iget v2, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    iget v3, p0, Lcom/google/android/opengl/carousel/GLProgram;->mVShader:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 65
    const-string v2, "glAttachShader"

    invoke-static {v2}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 67
    iget v2, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    iget v3, p0, Lcom/google/android/opengl/carousel/GLProgram;->mFShader:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 68
    const-string v2, "glAttachShader"

    invoke-static {v2}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/GLProgram;->bindHandles()V

    .line 71
    iget v2, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 72
    new-array v0, v5, [I

    .line 73
    .local v0, linkStatus:[I
    iget v2, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const v3, 0x8b82

    invoke-static {v2, v3, v0, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 74
    aget v2, v0, v1

    if-eq v2, v5, :cond_98

    .line 75
    const-string v2, "GLProgram"

    const-string v3, "Could not link mProgram: "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v2, "GLProgram"

    iget v3, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget v2, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 78
    iput v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    .line 85
    .end local v0           #linkStatus:[I
    :cond_94
    :goto_94
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    goto/16 :goto_f

    .line 80
    .restart local v0       #linkStatus:[I
    :cond_98
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/GLProgram;->getHandles()V

    goto :goto_94
.end method

.method public validProgram()Z
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
