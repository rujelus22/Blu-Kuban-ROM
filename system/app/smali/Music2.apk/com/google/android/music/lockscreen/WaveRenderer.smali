.class public Lcom/google/android/music/lockscreen/WaveRenderer;
.super Ljava/lang/Object;
.source "WaveRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static FPS_FRAMES:I

.field private static sMatrix:[F


# instance fields
.field private mAlphaHandler:I

.field public mAspect:F

.field public mColorProgram:Lcom/google/android/opengl/carousel/GLProgram;

.field private mContext:Landroid/content/Context;

.field public mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

.field private mCurrentTime:J

.field public mFPS:D

.field private mFadeAmoundLoc:I

.field private mFrameCount:I

.field public mIsPortrait:Z

.field public mMultiTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

.field public mScene:Lcom/google/android/music/lockscreen/WaveScene;

.field public mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

.field private mTimeStart:J

.field public mVPMatrix:[F

.field public mView:Lcom/google/android/music/lockscreen/WaveView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/google/android/music/lockscreen/WaveRenderer;->sMatrix:[F

    .line 53
    const/16 v0, 0x32

    sput v0, Lcom/google/android/music/lockscreen/WaveRenderer;->FPS_FRAMES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/lockscreen/WaveView;)V
    .registers 5
    .parameter "context"
    .parameter "view"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/google/android/opengl/carousel/GLProgram;

    invoke-direct {v0}, Lcom/google/android/opengl/carousel/GLProgram;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mColorProgram:Lcom/google/android/opengl/carousel/GLProgram;

    .line 29
    new-instance v0, Lcom/google/android/opengl/carousel/GLProgram;

    invoke-direct {v0}, Lcom/google/android/opengl/carousel/GLProgram;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    .line 31
    new-instance v0, Lcom/google/android/opengl/carousel/GLProgram;

    invoke-direct {v0}, Lcom/google/android/opengl/carousel/GLProgram;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mMultiTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    .line 36
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mVPMatrix:[F

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mAspect:F

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mFrameCount:I

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mTimeStart:J

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mFPS:D

    .line 59
    iput-object p1, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mView:Lcom/google/android/music/lockscreen/WaveView;

    .line 62
    new-instance v0, Lcom/google/android/music/lockscreen/WaveScene;

    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/google/android/music/lockscreen/WaveScene;-><init>(Landroid/content/Context;Lcom/google/android/music/lockscreen/WaveRenderer;)V

    iput-object v0, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mScene:Lcom/google/android/music/lockscreen/WaveScene;

    .line 63
    return-void
.end method

.method private setGlParameter()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 132
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 133
    const/16 v0, 0xcf5

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 134
    const/16 v0, 0xbd0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 135
    const/16 v0, 0x303

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 137
    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 138
    const/16 v0, 0x405

    invoke-static {v0}, Landroid/opengl/GLES20;->glCullFace(I)V

    .line 141
    const-string v0, "setGlParameter"

    invoke-static {v0}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method private updateFPS()V
    .registers 7

    .prologue
    .line 76
    iget v2, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mFrameCount:I

    sget v3, Lcom/google/android/music/lockscreen/WaveRenderer;->FPS_FRAMES:I

    if-ge v2, v3, :cond_d

    .line 77
    iget v2, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mFrameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mFrameCount:I

    .line 92
    :goto_c
    return-void

    .line 79
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 80
    .local v0, time:J
    iget v2, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mFrameCount:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mTimeStart:J

    sub-long v4, v0, v4

    div-long/2addr v2, v4

    long-to-double v2, v2

    iput-wide v2, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mFPS:D

    .line 81
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mFrameCount:I

    .line 82
    iput-wide v0, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mTimeStart:J

    .line 84
    const-wide v2, 0x408f400000000000L

    iget-wide v4, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mFPS:D

    div-double/2addr v2, v4

    goto :goto_c
.end method

.method private useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V
    .registers 3
    .parameter "p"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    .line 200
    iget v0, p1, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 201
    const-string v0, "glUseProgram"

    invoke-static {v0}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 202
    return-void
.end method


# virtual methods
.method public getCurrentTime()J
    .registers 3

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mCurrentTime:J

    return-wide v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 5
    .parameter "gl"

    .prologue
    .line 66
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mCurrentTime:J

    .line 67
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mScene:Lcom/google/android/music/lockscreen/WaveScene;

    invoke-virtual {v1}, Lcom/google/android/music/lockscreen/WaveScene;->onDrawFrame()Z

    move-result v0

    .line 68
    .local v0, stillAnimating:Z
    invoke-direct {p0}, Lcom/google/android/music/lockscreen/WaveRenderer;->updateFPS()V

    .line 70
    if-eqz v0, :cond_14

    .line 71
    invoke-virtual {p0}, Lcom/google/android/music/lockscreen/WaveRenderer;->requestRender()V

    .line 73
    :cond_14
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 14
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 100
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mScene:Lcom/google/android/music/lockscreen/WaveScene;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/music/lockscreen/WaveScene;->updateDimensions(II)V

    .line 101
    int-to-float v0, p2

    int-to-float v3, p3

    div-float/2addr v0, v3

    iput v0, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mAspect:F

    .line 102
    if-le p3, p2, :cond_3c

    move v0, v9

    :goto_13
    iput-boolean v0, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mIsPortrait:Z

    .line 104
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mVPMatrix:[F

    int-to-float v3, p2

    int-to-float v5, p3

    const/high16 v6, -0x3f60

    const/high16 v7, 0x41a0

    move v4, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 105
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mVPMatrix:[F

    invoke-virtual {p0, v0}, Lcom/google/android/music/lockscreen/WaveRenderer;->setMVPUniform([F)V

    .line 107
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3e

    move v8, v9

    .line 109
    .local v8, landscape:Z
    :goto_36
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mScene:Lcom/google/android/music/lockscreen/WaveScene;

    invoke-virtual {v0, p2, p3, v8}, Lcom/google/android/music/lockscreen/WaveScene;->onSizeChanged(IIZ)V

    .line 110
    return-void

    .end local v8           #landscape:Z
    :cond_3c
    move v0, v1

    .line 102
    goto :goto_13

    :cond_3e
    move v8, v1

    .line 107
    goto :goto_36
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 6
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/google/android/music/lockscreen/WaveRenderer;->setGlParameter()V

    .line 115
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mColorProgram:Lcom/google/android/opengl/carousel/GLProgram;

    sget-object v1, Lcom/google/android/opengl/carousel/GLProgram;->sVertexShader:Ljava/lang/String;

    const-string v2, "precision mediump float;\nvarying vec4 vColor;\nvoid main() {\n  gl_FragColor = vColor;\n}\n"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/carousel/GLProgram;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    sget-object v1, Lcom/google/android/opengl/carousel/GLProgram;->sVertexShader:Ljava/lang/String;

    sget-object v2, Lcom/google/android/opengl/carousel/GLProgram;->sSingleTextureShader:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/carousel/GLProgram;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mMultiTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    sget-object v1, Lcom/google/android/opengl/carousel/GLProgram;->sVertexShader:Ljava/lang/String;

    sget-object v2, Lcom/google/android/opengl/carousel/GLProgram;->sMultiTextureShader:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/carousel/GLProgram;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mColorProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v0, v0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v0, v0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mMultiTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v0, v0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    if-nez v0, :cond_31

    .line 126
    :cond_30
    :goto_30
    return-void

    .line 123
    :cond_31
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mColorProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-direct {p0, v0}, Lcom/google/android/music/lockscreen/WaveRenderer;->useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V

    .line 124
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mScene:Lcom/google/android/music/lockscreen/WaveScene;

    invoke-virtual {v0}, Lcom/google/android/music/lockscreen/WaveScene;->loadTexture()V

    .line 125
    invoke-virtual {p0}, Lcom/google/android/music/lockscreen/WaveRenderer;->requestRender()V

    goto :goto_30
.end method

.method public requestRender()V
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mView:Lcom/google/android/music/lockscreen/WaveView;

    invoke-virtual {v0}, Lcom/google/android/music/lockscreen/WaveView;->requestRender()V

    .line 209
    return-void
.end method

.method public setAlpha(F)V
    .registers 3
    .parameter "alpha"

    .prologue
    .line 182
    iget v0, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mAlphaHandler:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 183
    return-void
.end method

.method public setFadeAmount(F)V
    .registers 4
    .parameter "fade"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mMultiTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    if-ne v0, v1, :cond_b

    .line 187
    iget v0, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mFadeAmoundLoc:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 189
    :cond_b
    const-string v0, "setFadeAmount"

    invoke-static {v0}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public setMVPUniform([F)V
    .registers 5
    .parameter "matrix"

    .prologue
    const/4 v2, 0x0

    .line 217
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v0, v0, Lcom/google/android/opengl/carousel/GLProgram;->muMVPMatHandle:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, p1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 218
    return-void
.end method

.method public useModelMatrix([F)V
    .registers 8
    .parameter "matrix"

    .prologue
    const/4 v1, 0x0

    .line 221
    sget-object v0, Lcom/google/android/music/lockscreen/WaveRenderer;->sMatrix:[F

    iget-object v2, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mVPMatrix:[F

    move v3, v1

    move-object v4, p1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 222
    sget-object v0, Lcom/google/android/music/lockscreen/WaveRenderer;->sMatrix:[F

    invoke-virtual {p0, v0}, Lcom/google/android/music/lockscreen/WaveRenderer;->setMVPUniform([F)V

    .line 223
    return-void
.end method

.method public useMultiTextureProgram()V
    .registers 4

    .prologue
    .line 163
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mMultiTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-direct {p0, v1}, Lcom/google/android/music/lockscreen/WaveRenderer;->useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V

    .line 164
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLProgram;->maPosHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 165
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLProgram;->maTexHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 166
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "uTexture"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 167
    .local v0, sampleLoc:I
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 168
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "uTexture1"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 169
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 170
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "uFadeAmount"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mFadeAmoundLoc:I

    .line 171
    iget v1, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mFadeAmoundLoc:I

    const/high16 v2, 0x3f80

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 173
    const-string v1, "setUniform"

    invoke-static {v1}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public useTextureProgram()V
    .registers 4

    .prologue
    .line 151
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-direct {p0, v1}, Lcom/google/android/music/lockscreen/WaveRenderer;->useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V

    .line 152
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLProgram;->maPosHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 153
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLProgram;->maTexHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 154
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "uTexture"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 155
    .local v0, sampleLoc:I
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 156
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "uAlpha"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mAlphaHandler:I

    .line 157
    iget v1, p0, Lcom/google/android/music/lockscreen/WaveRenderer;->mAlphaHandler:I

    const/high16 v2, 0x3f80

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 159
    const-string v1, "setUniform"

    invoke-static {v1}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 160
    return-void
.end method
