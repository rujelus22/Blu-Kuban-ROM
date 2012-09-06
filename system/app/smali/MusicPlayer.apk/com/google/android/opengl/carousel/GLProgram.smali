.class public Lcom/google/android/opengl/carousel/GLProgram;
.super Ljava/lang/Object;
.source "GLProgram.java"


# static fields
.field public static final sMultiTextureRezzingShader:Ljava/lang/String;

.field public static final sMultiTextureShader:Ljava/lang/String;

.field public static final sSingleTextureOpacityShader:Ljava/lang/String;

.field public static final sSingleTextureShader:Ljava/lang/String;

.field public static final sVertexShader:Ljava/lang/String;


# instance fields
.field public mFShader:I

.field public mProgram:I

.field public mVShader:I

.field public maColorHandle:I

.field public maNormalHandle:I

.field public maPosHandle:I

.field public maTexHandle:I

.field public muMVPMatHandle:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 233
    new-instance v0, Ljava/lang/String;

    const-string v1, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nattribute vec4 aColor;\nvarying vec2 vTextureCoord;\nvarying vec4 vColor;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  gl_PointSize = 1.0;\n  vTextureCoord = aTextureCoord;\n  vColor = aColor;\n}\n"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/opengl/carousel/GLProgram;->sVertexShader:Ljava/lang/String;

    .line 247
    new-instance v0, Ljava/lang/String;

    const-string v1, "precision mediump float;\nvarying vec2 vTextureCoord;uniform sampler2D uTexture;void main() {  vec2 t0 = vTextureCoord.xy;  vec4 col = texture2D(uTexture, t0);  gl_FragColor = col; }\n"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/opengl/carousel/GLProgram;->sSingleTextureShader:Ljava/lang/String;

    .line 260
    new-instance v0, Ljava/lang/String;

    const-string v1, "precision mediump float;\nvarying vec2 vTextureCoord;uniform sampler2D uTexture;uniform float uOpacity;void main() {  vec2 t0 = vTextureCoord.xy;  vec4 col = texture2D(uTexture, t0);  gl_FragColor = col * uOpacity;}\n"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/opengl/carousel/GLProgram;->sSingleTextureOpacityShader:Ljava/lang/String;

    .line 271
    new-instance v0, Ljava/lang/String;

    const-string v1, "precision mediump float;\nvarying vec2 vTextureCoord;uniform sampler2D uTexture;uniform sampler2D uTexture1;uniform float uFadeAmount;void main() {  vec2 t0 = vTextureCoord.xy;  vec4 col = texture2D(uTexture, t0);  vec4 col2 = texture2D(uTexture1, t0);  gl_FragColor = mix(col, col2, uFadeAmount);}\n"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/opengl/carousel/GLProgram;->sMultiTextureShader:Ljava/lang/String;

    .line 284
    new-instance v0, Ljava/lang/String;

    const-string v1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D uTexture;\nuniform sampler2D uTexture1;\nuniform float uFadeAmount;\nuniform float uPreMixA;\nuniform float uPreMixB;\nuniform float uPreFadeA;\nuniform float uPreFadeB;\nfloat computeMix(float posx) {\n  float fxmix = posx * uPreMixA + uPreMixB;\n  return clamp(fxmix, 0.0, 1.0);\n}\nfloat computeAlpha(float posx) {\n  float xalpha = posx * uPreFadeA + uPreFadeB;\n  xalpha = clamp(xalpha, 0.0, 1.0);\n  xalpha = xalpha * (floor(xalpha) + 1.0) * 0.5;\n  return xalpha;\n}\nvoid main() {\n  float alpha = computeAlpha(gl_FragCoord.y);\n  float fmix = computeMix(gl_FragCoord.y);\n  vec2 t0 = vTextureCoord.xy;\n  vec4 col = texture2D(uTexture, t0);\n  vec4 col1 = texture2D(uTexture1, t0);\n  col = mix(col, col1, min(fmix, uFadeAmount));\n  gl_FragColor = col*alpha;\n}\n"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/opengl/carousel/GLProgram;->sMultiTextureRezzingShader:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/opengl/carousel/GLProgram;->maPosHandle:I

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/opengl/carousel/GLProgram;->maTexHandle:I

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/opengl/carousel/GLProgram;->maColorHandle:I

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/opengl/carousel/GLProgram;->maNormalHandle:I

    .line 38
    return-void
.end method

.method private bindHandles()V
    .registers 4

    .prologue
    .line 146
    iget v0, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const/4 v1, 0x0

    const-string v2, "aPosition"

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 147
    iget v0, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const/4 v1, 0x1

    const-string v2, "aTextureCoord"

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 148
    iget v0, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const/4 v1, 0x2

    const-string v2, "aColor"

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 149
    iget v0, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const/4 v1, 0x3

    const-string v2, "aNormal"

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 150
    const-string v0, "bindHandles"

    invoke-static {v0}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method private getHandles()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 155
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "aPosition"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->maPosHandle:I

    .line 156
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->maPosHandle:I

    if-eqz v1, :cond_17

    .line 157
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not get attrib location for aPosition"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_17
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "aTextureCoord"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->maTexHandle:I

    .line 161
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->maTexHandle:I

    if-ne v1, v3, :cond_25

    .line 166
    :cond_25
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "aColor"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->maColorHandle:I

    .line 167
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->maColorHandle:I

    if-ne v1, v3, :cond_33

    .line 171
    :cond_33
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "aNormal"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->maNormalHandle:I

    .line 172
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->maNormalHandle:I

    if-ne v1, v3, :cond_41

    .line 176
    :cond_41
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "uMVPMatrix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->muMVPMatHandle:I

    .line 177
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->muMVPMatHandle:I

    if-ne v1, v3, :cond_56

    .line 179
    const-string v1, "GLProgram"

    const-string v2, "No attrib handle for muMVPMatHandle."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_56
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "uTexture"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 184
    .local v0, sampleLoc:I
    const-string v1, "getHandles"

    invoke-static {v1}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 185
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

    .line 187
    return-void
.end method

.method private loadShader(ILjava/lang/String;)I
    .registers 8
    .parameter "shaderType"
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    .line 125
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 126
    .local v1, shader:I
    if-eqz v1, :cond_45

    .line 127
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 128
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 129
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 130
    .local v0, compiled:[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 131
    aget v2, v0, v3

    if-nez v2, :cond_45

    .line 132
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

    .line 133
    const-string v2, "GLProgram"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 135
    const/4 v1, 0x0

    .line 138
    .end local v0           #compiled:[I
    :cond_45
    const-string v2, "loadShader"

    invoke-static {v2}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 139
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

    .line 58
    const v2, 0x8b31

    invoke-direct {p0, v2, p1}, Lcom/google/android/opengl/carousel/GLProgram;->loadShader(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/opengl/carousel/GLProgram;->mVShader:I

    .line 59
    iget v2, p0, Lcom/google/android/opengl/carousel/GLProgram;->mVShader:I

    if-nez v2, :cond_10

    .line 92
    :cond_f
    :goto_f
    return v1

    .line 63
    :cond_10
    const v2, 0x8b30

    invoke-direct {p0, v2, p2}, Lcom/google/android/opengl/carousel/GLProgram;->loadShader(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/opengl/carousel/GLProgram;->mFShader:I

    .line 64
    iget v2, p0, Lcom/google/android/opengl/carousel/GLProgram;->mFShader:I

    if-eqz v2, :cond_f

    .line 68
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

    .line 69
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    iput v2, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    .line 70
    iget v2, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    if-eqz v2, :cond_94

    .line 71
    iget v2, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    iget v3, p0, Lcom/google/android/opengl/carousel/GLProgram;->mVShader:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 72
    const-string v2, "glAttachShader"

    invoke-static {v2}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 74
    iget v2, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    iget v3, p0, Lcom/google/android/opengl/carousel/GLProgram;->mFShader:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 75
    const-string v2, "glAttachShader"

    invoke-static {v2}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/GLProgram;->bindHandles()V

    .line 78
    iget v2, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 79
    new-array v0, v5, [I

    .line 80
    .local v0, linkStatus:[I
    iget v2, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const v3, 0x8b82

    invoke-static {v2, v3, v0, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 81
    aget v2, v0, v1

    if-eq v2, v5, :cond_98

    .line 82
    const-string v2, "GLProgram"

    const-string v3, "Could not link mProgram: "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v2, "GLProgram"

    iget v3, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget v2, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 85
    iput v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    .line 92
    .end local v0           #linkStatus:[I
    :cond_94
    :goto_94
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    goto/16 :goto_f

    .line 87
    .restart local v0       #linkStatus:[I
    :cond_98
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/GLProgram;->getHandles()V

    goto :goto_94
.end method

.method public validProgram()Z
    .registers 2

    .prologue
    .line 54
    iget v0, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
