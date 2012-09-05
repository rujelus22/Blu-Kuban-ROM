.class public Lcom/google/android/opengl/carousel/CarouselRenderer;
.super Ljava/lang/Object;
.source "CarouselRenderer.java"

# interfaces
.implements Lcom/google/android/opengl/common/GLSurfaceView$Renderer;
.implements Lcom/google/android/opengl/common/IFpsRenderer;


# instance fields
.field public mAspect:F

.field public mAutoRotation:Z

.field public mCamera:Lcom/google/android/opengl/carousel/GLCamera;

.field public mCardRenderer:Lcom/google/android/opengl/carousel/ICardRenderer;

.field public mColorProgram:Lcom/google/android/opengl/carousel/GLProgram;

.field public mContext:Landroid/content/Context;

.field public mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

.field mDisplayFps:Z

.field private mFadeAmoundLoc:I

.field final mFpsDisplay:Lcom/google/android/opengl/common/FpsDisplay;

.field public mHeight:I

.field public mIsPortrait:Z

.field public mMultiTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

.field public mProjMatrix:[F

.field public mScene:Lcom/google/android/opengl/carousel/CarouselScene;

.field public mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

.field public mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

.field public mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

.field public mVPMatrix:[F

.field private mVerboseMode:Z

.field public mView:Lcom/google/android/opengl/carousel/CarouselView;

.field public mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/opengl/carousel/CarouselView;Lcom/google/android/opengl/carousel/CarouselSetting;)V
    .registers 7
    .parameter "context"
    .parameter "view"
    .parameter "setting"

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mDisplayFps:Z

    .line 38
    new-instance v0, Lcom/google/android/opengl/carousel/GLProgram;

    invoke-direct {v0}, Lcom/google/android/opengl/carousel/GLProgram;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mColorProgram:Lcom/google/android/opengl/carousel/GLProgram;

    .line 40
    new-instance v0, Lcom/google/android/opengl/carousel/GLProgram;

    invoke-direct {v0}, Lcom/google/android/opengl/carousel/GLProgram;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    .line 42
    new-instance v0, Lcom/google/android/opengl/carousel/GLProgram;

    invoke-direct {v0}, Lcom/google/android/opengl/carousel/GLProgram;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMultiTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    .line 51
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mProjMatrix:[F

    .line 53
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mVPMatrix:[F

    .line 59
    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mWidth:I

    .line 60
    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mHeight:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mAspect:F

    .line 80
    new-instance v0, Lcom/google/android/opengl/common/FpsDisplay;

    invoke-direct {v0, p0}, Lcom/google/android/opengl/common/FpsDisplay;-><init>(Lcom/google/android/opengl/common/IFpsRenderer;)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFpsDisplay:Lcom/google/android/opengl/common/FpsDisplay;

    .line 82
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    .line 84
    iput-object p3, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    .line 86
    new-instance v0, Lcom/google/android/opengl/carousel/GLCamera;

    invoke-direct {v0, p0}, Lcom/google/android/opengl/carousel/GLCamera;-><init>(Lcom/google/android/opengl/carousel/CarouselRenderer;)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCamera:Lcom/google/android/opengl/carousel/GLCamera;

    .line 88
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-direct {v0, p0, p3}, Lcom/google/android/opengl/carousel/CarouselScene;-><init>(Lcom/google/android/opengl/carousel/CarouselRenderer;Lcom/google/android/opengl/carousel/CarouselSetting;)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    .line 89
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselTexture;

    invoke-direct {v0, p0}, Lcom/google/android/opengl/carousel/CarouselTexture;-><init>(Lcom/google/android/opengl/carousel/CarouselRenderer;)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    .line 90
    return-void
.end method

.method private hideCoverView()V
    .registers 3

    .prologue
    .line 187
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-virtual {v1}, Lcom/google/android/opengl/carousel/CarouselView;->getCoverView()Landroid/view/View;

    move-result-object v0

    .line 188
    .local v0, cover:Landroid/view/View;
    if-nez v0, :cond_9

    .line 197
    :goto_8
    return-void

    .line 191
    :cond_9
    new-instance v1, Lcom/google/android/opengl/carousel/CarouselRenderer$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/opengl/carousel/CarouselRenderer$1;-><init>(Lcom/google/android/opengl/carousel/CarouselRenderer;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
.end method

.method private setGlParameter()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 276
    const/16 v0, 0xcf5

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 277
    const/16 v0, 0xbd0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 278
    const/16 v0, 0x303

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 279
    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    .line 281
    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 282
    const/16 v0, 0x405

    invoke-static {v0}, Landroid/opengl/GLES20;->glCullFace(I)V

    .line 285
    const-string v0, "setGlParameter"

    invoke-static {v0}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method private setUniform()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 304
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    .line 306
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {p0, v1}, Lcom/google/android/opengl/carousel/CarouselRenderer;->useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V

    .line 307
    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 308
    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 309
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "uTexture"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 310
    .local v0, sampleLoc:I
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 312
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMultiTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {p0, v1}, Lcom/google/android/opengl/carousel/CarouselRenderer;->useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V

    .line 313
    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 314
    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 316
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "uTexture"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 317
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 319
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "uTexture1"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 320
    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 322
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "uFadeAmount"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFadeAmoundLoc:I

    .line 323
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFadeAmoundLoc:I

    const/high16 v2, 0x3f80

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 325
    const-string v1, "setUniform"

    invoke-static {v1}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 326
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 4
    .parameter "gl"

    .prologue
    .line 96
    iget-boolean v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mDisplayFps:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mVerboseMode:Z

    if-eqz v1, :cond_d

    .line 97
    :cond_8
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFpsDisplay:Lcom/google/android/opengl/common/FpsDisplay;

    invoke-virtual {v1}, Lcom/google/android/opengl/common/FpsDisplay;->preDraw()V

    .line 100
    :cond_d
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v1}, Lcom/google/android/opengl/carousel/CarouselScene;->draw()Z

    move-result v0

    .line 101
    .local v0, stillAnimating:Z
    iget-boolean v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mDisplayFps:Z

    if-nez v1, :cond_1b

    iget-boolean v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mVerboseMode:Z

    if-eqz v1, :cond_20

    .line 104
    :cond_1b
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFpsDisplay:Lcom/google/android/opengl/common/FpsDisplay;

    invoke-virtual {v1}, Lcom/google/android/opengl/common/FpsDisplay;->postDraw()V

    .line 107
    :cond_20
    if-eqz v0, :cond_27

    .line 108
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-virtual {v1}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 110
    :cond_27
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 9
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 124
    iput p2, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mWidth:I

    .line 125
    iput p3, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mHeight:I

    .line 127
    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mAspect:F

    .line 128
    if-le p3, p2, :cond_10

    const/4 v0, 0x1

    :cond_10
    iput-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mIsPortrait:Z

    .line 130
    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mIsPortrait:Z

    if-eqz v0, :cond_3e

    .line 131
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mHeight:I

    int-to-double v1, v1

    iget v3, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mWidth:I

    sget v4, Lcom/google/android/opengl/carousel/CarouselSetting;->TRAJECTORY_X_OFFSET:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mTrajectoryAngle:F

    .line 142
    :goto_28
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->updatePerspective()V

    .line 143
    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mDisplayFps:Z

    if-nez v0, :cond_33

    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mVerboseMode:Z

    if-eqz v0, :cond_38

    .line 144
    :cond_33
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFpsDisplay:Lcom/google/android/opengl/common/FpsDisplay;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/opengl/common/FpsDisplay;->updateDimension(II)V

    .line 147
    :cond_38
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselScene;->updateCarouselRotationAngle()V

    .line 148
    return-void

    .line 134
    :cond_3e
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mHeight:I

    int-to-double v1, v1

    iget v3, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mWidth:I

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mTrajectoryAngle:F

    goto :goto_28
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 6
    .parameter "glUnused"
    .parameter "config"

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->setGlParameter()V

    .line 156
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mColorProgram:Lcom/google/android/opengl/carousel/GLProgram;

    const-string v1, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec4 aColor;\nvarying vec4 vColor;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vColor = aColor;\n}\n"

    const-string v2, "precision mediump float;\nvarying vec4 vColor;\nvoid main() {\n  gl_FragColor = vColor;\n}\n"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/carousel/GLProgram;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    sget-object v1, Lcom/google/android/opengl/carousel/GLProgram;->sVertexShader:Ljava/lang/String;

    sget-object v2, Lcom/google/android/opengl/carousel/GLProgram;->sSingleTextureShader:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/carousel/GLProgram;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMultiTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    sget-object v1, Lcom/google/android/opengl/carousel/GLProgram;->sVertexShader:Ljava/lang/String;

    sget-object v2, Lcom/google/android/opengl/carousel/GLProgram;->sMultiTextureShader:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/carousel/GLProgram;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mColorProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLProgram;->validProgram()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLProgram;->validProgram()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMultiTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLProgram;->validProgram()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 162
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to create GLProgram in onSurfaceCreated, exiting.."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_3e
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselTexture;->loadTexture()V

    .line 169
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->setUniform()V

    .line 171
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCardRenderer:Lcom/google/android/opengl/carousel/ICardRenderer;

    if-eqz v0, :cond_4f

    .line 172
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCardRenderer:Lcom/google/android/opengl/carousel/ICardRenderer;

    invoke-interface {v0}, Lcom/google/android/opengl/carousel/ICardRenderer;->onSurfaceCreated()V

    .line 176
    :cond_4f
    const-string v0, "CarouselRenderer"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_83

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    :cond_6c
    const/4 v0, 0x1

    :goto_6d
    iput-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mVerboseMode:Z

    .line 179
    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mDisplayFps:Z

    if-nez v0, :cond_77

    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mVerboseMode:Z

    if-eqz v0, :cond_7c

    .line 180
    :cond_77
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFpsDisplay:Lcom/google/android/opengl/common/FpsDisplay;

    invoke-virtual {v0}, Lcom/google/android/opengl/common/FpsDisplay;->onSurfaceCreated()V

    .line 182
    :cond_7c
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->hideCoverView()V

    .line 183
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 184
    return-void

    .line 176
    :cond_83
    const/4 v0, 0x0

    goto :goto_6d
.end method

.method public requestRedraw()V
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 117
    return-void
.end method

.method public setFadeAmount(F)V
    .registers 4
    .parameter "fade"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMultiTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    if-ne v0, v1, :cond_10

    .line 267
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFadeAmoundLoc:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 268
    const-string v0, "setFadeAmount"

    invoke-static {v0}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 270
    :cond_10
    return-void
.end method

.method public setMVPUniform([F)V
    .registers 5
    .parameter "matrix"

    .prologue
    const/4 v2, 0x0

    .line 262
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v0, v0, Lcom/google/android/opengl/carousel/GLProgram;->muMVPMatHandle:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, p1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 263
    return-void
.end method

.method public updatePerspective()V
    .registers 6

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mProjMatrix:[F

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCamera:Lcom/google/android/opengl/carousel/GLCamera;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLCamera;->mFovy:F

    iget v2, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mAspect:F

    const v3, 0x3dcccccd

    const/high16 v4, 0x42c8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/opengl/carousel/GL2Helper;->loadPerspectiveMatrix([FFFFF)V

    .line 205
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCamera:Lcom/google/android/opengl/carousel/GLCamera;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->setCamera()V

    .line 206
    return-void
.end method

.method public useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V
    .registers 3
    .parameter "p"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    if-eq v0, p1, :cond_12

    .line 225
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    .line 226
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v0, v0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 227
    const-string v0, "glUseProgram"

    invoke-static {v0}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 229
    :cond_12
    return-void
.end method

.method public useTextureProgram()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 243
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    if-eq v1, v2, :cond_30

    .line 244
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iput-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    .line 245
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 246
    const-string v1, "glUseProgram"

    invoke-static {v1}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 247
    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 248
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 249
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "uTexture"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 250
    .local v0, sampleLoc:I
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 251
    const-string v1, "setUniform"

    invoke-static {v1}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 254
    .end local v0           #sampleLoc:I
    :cond_30
    return-void
.end method
