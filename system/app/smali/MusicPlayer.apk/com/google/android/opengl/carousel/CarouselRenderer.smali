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

.field private mFadeAmountMutiRez:I

.field private mFadeAmountMutiTex:I

.field private mFadePreCalAHandle:I

.field private mFadePreCalBHandle:I

.field final mFpsDisplay:Lcom/google/android/opengl/common/FpsDisplay;

.field private mFrameCount:I

.field public mHeight:I

.field public mIsPortrait:Z

.field private mMixPreCalAHandle:I

.field private mMixPreCalBHandle:I

.field public mMultiRezProgram:Lcom/google/android/opengl/carousel/GLProgram;

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

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mDisplayFps:Z

    .line 40
    new-instance v0, Lcom/google/android/opengl/carousel/GLProgram;

    invoke-direct {v0}, Lcom/google/android/opengl/carousel/GLProgram;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mColorProgram:Lcom/google/android/opengl/carousel/GLProgram;

    .line 42
    new-instance v0, Lcom/google/android/opengl/carousel/GLProgram;

    invoke-direct {v0}, Lcom/google/android/opengl/carousel/GLProgram;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    .line 44
    new-instance v0, Lcom/google/android/opengl/carousel/GLProgram;

    invoke-direct {v0}, Lcom/google/android/opengl/carousel/GLProgram;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMultiTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    .line 46
    new-instance v0, Lcom/google/android/opengl/carousel/GLProgram;

    invoke-direct {v0}, Lcom/google/android/opengl/carousel/GLProgram;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMultiRezProgram:Lcom/google/android/opengl/carousel/GLProgram;

    .line 62
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mProjMatrix:[F

    .line 64
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mVPMatrix:[F

    .line 70
    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mWidth:I

    .line 71
    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mHeight:I

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mAspect:F

    .line 104
    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFrameCount:I

    .line 91
    new-instance v0, Lcom/google/android/opengl/common/FpsDisplay;

    invoke-direct {v0, p0}, Lcom/google/android/opengl/common/FpsDisplay;-><init>(Lcom/google/android/opengl/common/IFpsRenderer;)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFpsDisplay:Lcom/google/android/opengl/common/FpsDisplay;

    .line 93
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    .line 95
    iput-object p3, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    .line 97
    new-instance v0, Lcom/google/android/opengl/carousel/GLCamera;

    invoke-direct {v0, p0}, Lcom/google/android/opengl/carousel/GLCamera;-><init>(Lcom/google/android/opengl/carousel/CarouselRenderer;)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCamera:Lcom/google/android/opengl/carousel/GLCamera;

    .line 99
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-direct {v0, p0, p3}, Lcom/google/android/opengl/carousel/CarouselScene;-><init>(Lcom/google/android/opengl/carousel/CarouselRenderer;Lcom/google/android/opengl/carousel/CarouselSetting;)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    .line 100
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselTexture;

    invoke-direct {v0, p0}, Lcom/google/android/opengl/carousel/CarouselTexture;-><init>(Lcom/google/android/opengl/carousel/CarouselRenderer;)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    .line 101
    return-void
.end method

.method private hideCoverView()V
    .registers 3

    .prologue
    .line 205
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-virtual {v1}, Lcom/google/android/opengl/carousel/CarouselView;->getCoverView()Landroid/view/View;

    move-result-object v0

    .line 206
    .local v0, cover:Landroid/view/View;
    if-nez v0, :cond_9

    .line 214
    :goto_8
    return-void

    .line 209
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

    .line 340
    const/16 v0, 0xcf5

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 341
    const/16 v0, 0xbd0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 342
    const/16 v0, 0x303

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 343
    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    .line 345
    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 346
    const/16 v0, 0x405

    invoke-static {v0}, Landroid/opengl/GLES20;->glCullFace(I)V

    .line 349
    const-string v0, "setGlParameter"

    invoke-static {v0}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method private setUniform()V
    .registers 7

    .prologue
    const/high16 v5, 0x3f80

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 368
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    .line 370
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {p0, v1}, Lcom/google/android/opengl/carousel/CarouselRenderer;->useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V

    .line 371
    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 372
    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 373
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "uTexture"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 374
    .local v0, sampleLoc:I
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 376
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMultiTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {p0, v1}, Lcom/google/android/opengl/carousel/CarouselRenderer;->useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V

    .line 377
    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 378
    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 380
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "uTexture"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 381
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 383
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "uTexture1"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 384
    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 386
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "uFadeAmount"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFadeAmountMutiTex:I

    .line 387
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFadeAmountMutiTex:I

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 389
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMultiRezProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {p0, v1}, Lcom/google/android/opengl/carousel/CarouselRenderer;->useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V

    .line 390
    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 391
    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 393
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "uTexture"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 394
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 396
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "uTexture1"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 397
    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 399
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "uFadeAmount"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFadeAmountMutiRez:I

    .line 400
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFadeAmountMutiRez:I

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 402
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "uPreMixA"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMixPreCalAHandle:I

    .line 406
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "uPreMixB"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMixPreCalBHandle:I

    .line 410
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "uPreFadeA"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFadePreCalAHandle:I

    .line 414
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "uPreFadeB"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFadePreCalBHandle:I

    .line 419
    const-string v1, "setUniform"

    invoke-static {v1}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 420
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 5
    .parameter "gl"

    .prologue
    .line 109
    iget-boolean v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mDisplayFps:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mVerboseMode:Z

    if-eqz v1, :cond_d

    .line 110
    :cond_8
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFpsDisplay:Lcom/google/android/opengl/common/FpsDisplay;

    invoke-virtual {v1}, Lcom/google/android/opengl/common/FpsDisplay;->preDraw()V

    .line 112
    :cond_d
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFrameCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFrameCount:I

    .line 113
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFrameCount:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1b

    .line 114
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->hideCoverView()V

    .line 116
    :cond_1b
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v1}, Lcom/google/android/opengl/carousel/CarouselScene;->draw()Z

    move-result v0

    .line 118
    .local v0, stillAnimating:Z
    iget-boolean v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mDisplayFps:Z

    if-nez v1, :cond_29

    iget-boolean v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mVerboseMode:Z

    if-eqz v1, :cond_2e

    .line 121
    :cond_29
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFpsDisplay:Lcom/google/android/opengl/common/FpsDisplay;

    invoke-virtual {v1}, Lcom/google/android/opengl/common/FpsDisplay;->postDraw()V

    .line 124
    :cond_2e
    if-eqz v0, :cond_35

    .line 125
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-virtual {v1}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 127
    :cond_35
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 9
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x0

    .line 140
    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 141
    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFrameCount:I

    .line 142
    iput p2, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mWidth:I

    .line 143
    iput p3, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mHeight:I

    .line 145
    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mAspect:F

    .line 146
    if-le p3, p2, :cond_12

    const/4 v0, 0x1

    :cond_12
    iput-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mIsPortrait:Z

    .line 148
    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mIsPortrait:Z

    if-eqz v0, :cond_40

    .line 149
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

    .line 160
    :goto_2a
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->updatePerspective()V

    .line 161
    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mDisplayFps:Z

    if-nez v0, :cond_35

    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mVerboseMode:Z

    if-eqz v0, :cond_3a

    .line 162
    :cond_35
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFpsDisplay:Lcom/google/android/opengl/common/FpsDisplay;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/opengl/common/FpsDisplay;->updateDimension(II)V

    .line 165
    :cond_3a
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselScene;->updateCarouselRotationAngle()V

    .line 166
    return-void

    .line 152
    :cond_40
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mHeight:I

    int-to-double v1, v1

    iget v3, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mWidth:I

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mTrajectoryAngle:F

    goto :goto_2a
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 6
    .parameter "glUnused"
    .parameter "config"

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->setGlParameter()V

    .line 174
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mColorProgram:Lcom/google/android/opengl/carousel/GLProgram;

    const-string v1, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec4 aColor;\nvarying vec4 vColor;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vColor = aColor;\n}\n"

    const-string v2, "precision mediump float;\nvarying vec4 vColor;\nvoid main() {\n  gl_FragColor = vColor;\n}\n"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/carousel/GLProgram;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    sget-object v1, Lcom/google/android/opengl/carousel/GLProgram;->sVertexShader:Ljava/lang/String;

    sget-object v2, Lcom/google/android/opengl/carousel/GLProgram;->sSingleTextureShader:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/carousel/GLProgram;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMultiTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    sget-object v1, Lcom/google/android/opengl/carousel/GLProgram;->sVertexShader:Ljava/lang/String;

    sget-object v2, Lcom/google/android/opengl/carousel/GLProgram;->sMultiTextureShader:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/carousel/GLProgram;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMultiRezProgram:Lcom/google/android/opengl/carousel/GLProgram;

    sget-object v1, Lcom/google/android/opengl/carousel/GLProgram;->sVertexShader:Ljava/lang/String;

    sget-object v2, Lcom/google/android/opengl/carousel/GLProgram;->sMultiTextureRezzingShader:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/carousel/GLProgram;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mColorProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLProgram;->validProgram()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLProgram;->validProgram()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMultiTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLProgram;->validProgram()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMultiRezProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLProgram;->validProgram()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 181
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to create GLProgram in onSurfaceCreated, exiting.."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_4f
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselTexture;->loadTexture()V

    .line 188
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->setUniform()V

    .line 190
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCardRenderer:Lcom/google/android/opengl/carousel/ICardRenderer;

    if-eqz v0, :cond_60

    .line 191
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCardRenderer:Lcom/google/android/opengl/carousel/ICardRenderer;

    invoke-interface {v0}, Lcom/google/android/opengl/carousel/ICardRenderer;->onSurfaceCreated()V

    .line 195
    :cond_60
    const-string v0, "CarouselRenderer"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_91

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    :cond_7d
    const/4 v0, 0x1

    :goto_7e
    iput-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mVerboseMode:Z

    .line 198
    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mDisplayFps:Z

    if-nez v0, :cond_88

    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mVerboseMode:Z

    if-eqz v0, :cond_8d

    .line 199
    :cond_88
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFpsDisplay:Lcom/google/android/opengl/common/FpsDisplay;

    invoke-virtual {v0}, Lcom/google/android/opengl/common/FpsDisplay;->onSurfaceCreated()V

    .line 201
    :cond_8d
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 202
    return-void

    .line 195
    :cond_91
    const/4 v0, 0x0

    goto :goto_7e
.end method

.method public requestRedraw()V
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 134
    return-void
.end method

.method public setFadeAmount(F)V
    .registers 5
    .parameter "fade"

    .prologue
    const/4 v2, -0x1

    .line 283
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMultiTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    if-ne v0, v1, :cond_11

    .line 284
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFadeAmountMutiTex:I

    if-eq v0, v2, :cond_10

    .line 285
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFadeAmountMutiTex:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 298
    :cond_10
    :goto_10
    return-void

    .line 290
    :cond_11
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMultiRezProgram:Lcom/google/android/opengl/carousel/GLProgram;

    if-ne v0, v1, :cond_10

    .line 291
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFadeAmountMutiRez:I

    if-eq v0, v2, :cond_10

    .line 292
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFadeAmountMutiRez:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_10
.end method

.method public setMVPUniform([F)V
    .registers 5
    .parameter "matrix"

    .prologue
    const/4 v2, 0x0

    .line 279
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v0, v0, Lcom/google/android/opengl/carousel/GLProgram;->muMVPMatHandle:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, p1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 280
    return-void
.end method

.method public setMixAndFade(FFFF)V
    .registers 13
    .parameter "mix0"
    .parameter "mix1"
    .parameter "fade0"
    .parameter "fade1"

    .prologue
    const/high16 v7, 0x3f80

    const/4 v6, -0x1

    .line 301
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMultiRezProgram:Lcom/google/android/opengl/carousel/GLProgram;

    if-ne v4, v5, :cond_40

    .line 302
    sub-float v4, p1, p2

    div-float v2, v7, v4

    .line 303
    .local v2, mixPreCalA:F
    neg-float v4, p2

    sub-float v5, p1, p2

    div-float v3, v4, v5

    .line 304
    .local v3, mixPreCalB:F
    sub-float v4, p3, p4

    div-float v0, v7, v4

    .line 305
    .local v0, fadePreCalA:F
    neg-float v4, p4

    sub-float v5, p3, p4

    div-float v1, v4, v5

    .line 307
    .local v1, fadePreCalB:F
    iget v4, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMixPreCalAHandle:I

    if-eq v4, v6, :cond_24

    .line 308
    iget v4, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMixPreCalAHandle:I

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 313
    :cond_24
    iget v4, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMixPreCalBHandle:I

    if-eq v4, v6, :cond_2d

    .line 314
    iget v4, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMixPreCalBHandle:I

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 319
    :cond_2d
    iget v4, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFadePreCalAHandle:I

    if-eq v4, v6, :cond_36

    .line 320
    iget v4, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFadePreCalAHandle:I

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 325
    :cond_36
    iget v4, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFadePreCalBHandle:I

    if-eq v4, v6, :cond_3f

    .line 326
    iget v4, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFadePreCalBHandle:I

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 334
    :cond_3f
    return-void

    .line 332
    .end local v0           #fadePreCalA:F
    .end local v1           #fadePreCalB:F
    .end local v2           #mixPreCalA:F
    .end local v3           #mixPreCalB:F
    :cond_40
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "not MultiTextureRezzingShader"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public updatePerspective()V
    .registers 6

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mProjMatrix:[F

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCamera:Lcom/google/android/opengl/carousel/GLCamera;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLCamera;->mFovy:F

    iget v2, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mAspect:F

    const v3, 0x3dcccccd

    const/high16 v4, 0x42c8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/opengl/carousel/GL2Helper;->loadPerspectiveMatrix([FFFFF)V

    .line 222
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCamera:Lcom/google/android/opengl/carousel/GLCamera;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->setCamera()V

    .line 223
    return-void
.end method

.method public useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V
    .registers 3
    .parameter "p"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    if-eq v0, p1, :cond_12

    .line 242
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    .line 243
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v0, v0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 244
    const-string v0, "glUseProgram"

    invoke-static {v0}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 246
    :cond_12
    return-void
.end method

.method public useTextureProgram()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 260
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    if-eq v1, v2, :cond_30

    .line 261
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iput-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    .line 262
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 263
    const-string v1, "glUseProgram"

    invoke-static {v1}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 264
    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 265
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 266
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "uTexture"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 267
    .local v0, sampleLoc:I
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 268
    const-string v1, "setUniform"

    invoke-static {v1}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 271
    .end local v0           #sampleLoc:I
    :cond_30
    return-void
.end method
