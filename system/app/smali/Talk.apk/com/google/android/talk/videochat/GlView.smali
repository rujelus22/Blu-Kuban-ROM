.class public Lcom/google/android/talk/videochat/GlView;
.super Landroid/opengl/GLSurfaceView;
.source "GlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/GlView$GLRenderer;,
        Lcom/google/android/talk/videochat/GlView$GlViewInitializedCallback;,
        Lcom/google/android/talk/videochat/GlView$InitialCameraFrameCallback;
    }
.end annotation


# instance fields
.field mCallback:Lcom/google/android/talk/videochat/GlView$GlViewInitializedCallback;

.field private mEffects:Lcom/google/android/talk/videochat/EffectsController;

.field private mEffectsStateCallback:Lcom/google/android/talk/videochat/EffectsController$StateCallback;

.field private mGLRenderer:Lcom/google/android/talk/videochat/GlView$GLRenderer;

.field mInitialCameraFrameCallback:Lcom/google/android/talk/videochat/GlView$InitialCameraFrameCallback;

.field private mRemoteStopWatch:Lcom/google/android/videochat/util/GLStopWatch;

.field private mRenderer:Lcom/google/android/videochat/RendererManager;

.field private mSelfBaseXClip:F

.field private mSelfBaseYClip:F

.field private mSelfStopWatch:Lcom/google/android/videochat/util/GLStopWatch;

.field private mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Lcom/google/android/videochat/util/GLStopWatch;

    const-string v1, "GlView.remote"

    invoke-direct {v0, v1}, Lcom/google/android/videochat/util/GLStopWatch;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mRemoteStopWatch:Lcom/google/android/videochat/util/GLStopWatch;

    .line 41
    new-instance v0, Lcom/google/android/videochat/util/GLStopWatch;

    const-string v1, "GlView.self"

    invoke-direct {v0, v1}, Lcom/google/android/videochat/util/GLStopWatch;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mSelfStopWatch:Lcom/google/android/videochat/util/GLStopWatch;

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Lcom/google/android/videochat/util/GLStopWatch;

    const-string v1, "GlView.remote"

    invoke-direct {v0, v1}, Lcom/google/android/videochat/util/GLStopWatch;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mRemoteStopWatch:Lcom/google/android/videochat/util/GLStopWatch;

    .line 41
    new-instance v0, Lcom/google/android/videochat/util/GLStopWatch;

    const-string v1, "GlView.self"

    invoke-direct {v0, v1}, Lcom/google/android/videochat/util/GLStopWatch;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mSelfStopWatch:Lcom/google/android/videochat/util/GLStopWatch;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/talk/videochat/GlView$GLRenderer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mGLRenderer:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/talk/videochat/VideoAnimator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/videochat/util/GLStopWatch;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mRemoteStopWatch:Lcom/google/android/videochat/util/GLStopWatch;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/talk/videochat/EffectsController$StateCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mEffectsStateCallback:Lcom/google/android/talk/videochat/EffectsController$StateCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/videochat/RendererManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mRenderer:Lcom/google/android/videochat/RendererManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/talk/videochat/GlView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/talk/videochat/GlView;->onInitialSelfFrame()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/talk/videochat/GlView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/talk/videochat/GlView;->onInitialRemoteFrame()V

    return-void
.end method

.method static synthetic access$500(I)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    invoke-static {p0}, Lcom/google/android/talk/videochat/GlView;->surfaceRotationEnumToDegress(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/talk/videochat/GlView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/GlView;->drawBgColor(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/videochat/util/GLStopWatch;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mSelfStopWatch:Lcom/google/android/videochat/util/GLStopWatch;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/talk/videochat/GlView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/google/android/talk/videochat/GlView;->mSelfBaseXClip:F

    return v0
.end method

.method static synthetic access$802(Lcom/google/android/talk/videochat/GlView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/google/android/talk/videochat/GlView;->mSelfBaseXClip:F

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/talk/videochat/GlView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/google/android/talk/videochat/GlView;->mSelfBaseYClip:F

    return v0
.end method

.method static synthetic access$902(Lcom/google/android/talk/videochat/GlView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/google/android/talk/videochat/GlView;->mSelfBaseYClip:F

    return p1
.end method

.method private drawBgColor(I)V
    .registers 6
    .parameter "rgb"

    .prologue
    const/high16 v3, 0x437f

    .line 675
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v3

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v3

    and-int/lit16 v2, p1, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    const/high16 v3, 0x3f80

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 680
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 681
    return-void
.end method

.method private onInitialRemoteFrame()V
    .registers 1

    .prologue
    .line 211
    return-void
.end method

.method private onInitialSelfFrame()V
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mInitialCameraFrameCallback:Lcom/google/android/talk/videochat/GlView$InitialCameraFrameCallback;

    if-eqz v0, :cond_9

    .line 196
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mInitialCameraFrameCallback:Lcom/google/android/talk/videochat/GlView$InitialCameraFrameCallback;

    invoke-interface {v0}, Lcom/google/android/talk/videochat/GlView$InitialCameraFrameCallback;->onInitialFrame()V

    .line 198
    :cond_9
    new-instance v0, Lcom/google/android/talk/videochat/GlView$2;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/GlView$2;-><init>(Lcom/google/android/talk/videochat/GlView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/GlView;->post(Ljava/lang/Runnable;)Z

    .line 207
    return-void
.end method

.method private static surfaceRotationEnumToDegress(I)I
    .registers 5
    .parameter "rotation"

    .prologue
    const/4 v0, 0x0

    .line 179
    packed-switch p0, :pswitch_data_26

    .line 189
    const-string v1, "Talk:GlView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad rotation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/videochat/util/LogUtil;->Logwtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :goto_1c
    :pswitch_1c
    return v0

    .line 183
    :pswitch_1d
    const/16 v0, 0x5a

    goto :goto_1c

    .line 185
    :pswitch_20
    const/16 v0, 0xb4

    goto :goto_1c

    .line 187
    :pswitch_23
    const/16 v0, 0x10e

    goto :goto_1c

    .line 179
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1d
        :pswitch_20
        :pswitch_23
    .end packed-switch
.end method


# virtual methods
.method public createRenderers(Lcom/google/android/talk/videochat/GlView$GlViewInitializedCallback;Lcom/google/android/videochat/CameraSpecification;)V
    .registers 5
    .parameter "callback"
    .parameter "defaultCamera"

    .prologue
    .line 133
    new-instance v0, Lcom/google/android/videochat/RendererManager;

    invoke-direct {v0}, Lcom/google/android/videochat/RendererManager;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mRenderer:Lcom/google/android/videochat/RendererManager;

    .line 134
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mGLRenderer:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    if-eqz v0, :cond_12

    .line 135
    const-string v0, "Talk:GlView"

    const-string v1, "createRenderer called with mGLRenderer != null"

    invoke-static {v0, v1}, Lcom/google/android/videochat/util/LogUtil;->Logwtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_12
    iput-object p1, p0, Lcom/google/android/talk/videochat/GlView;->mCallback:Lcom/google/android/talk/videochat/GlView$GlViewInitializedCallback;

    .line 138
    new-instance v0, Lcom/google/android/talk/videochat/GlView$GLRenderer;

    invoke-direct {v0, p0, p0, p2}, Lcom/google/android/talk/videochat/GlView$GLRenderer;-><init>(Lcom/google/android/talk/videochat/GlView;Lcom/google/android/talk/videochat/GlView;Lcom/google/android/videochat/CameraSpecification;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mGLRenderer:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    .line 139
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mGLRenderer:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/GlView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 140
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/GlView;->setRenderMode(I)V

    .line 141
    return-void
.end method

.method public destroyRenderer()V
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mGLRenderer:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->destroyRenderer()V

    .line 145
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mRenderer:Lcom/google/android/videochat/RendererManager;

    invoke-virtual {v0}, Lcom/google/android/videochat/RendererManager;->release()V

    .line 146
    return-void
.end method

.method public getActiveEffect()I
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mGLRenderer:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->getActiveEffect()I

    move-result v0

    return v0
.end method

.method public getActiveEffectParam()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mGLRenderer:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->getActiveEffectParam()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEffectsController()Lcom/google/android/talk/videochat/EffectsController;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mEffects:Lcom/google/android/talk/videochat/EffectsController;

    return-object v0
.end method

.method public getRemoteFrameRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoAnimator;->getRemoteFrameRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteRenderer()Lcom/google/android/videochat/RemoteRenderer;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mGLRenderer:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->getRemoteRenderer()Lcom/google/android/videochat/RemoteRenderer;

    move-result-object v0

    return-object v0
.end method

.method public getSelfFrameRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoAnimator;->getSelfFrameRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getSelfRenderer()Lcom/google/android/videochat/SelfRenderer;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mGLRenderer:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->getSelfRenderer()Lcom/google/android/videochat/SelfRenderer;

    move-result-object v0

    return-object v0
.end method

.method public hideRemoteFrame()V
    .registers 3

    .prologue
    .line 624
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/VideoAnimator;->setRemoteFrameAlpha(F)V

    .line 625
    return-void
.end method

.method public hideSelfFrame()V
    .registers 3

    .prologue
    .line 632
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/VideoAnimator;->setSelfFrameAlpha(F)V

    .line 633
    return-void
.end method

.method public initialize(ZLcom/google/android/talk/videochat/GlView$InitialCameraFrameCallback;)V
    .registers 5
    .parameter "initiate"
    .parameter "callback"

    .prologue
    .line 87
    if-eqz p1, :cond_14

    .line 90
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/GlView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/GlView;->setBackgroundColor(I)V

    .line 93
    :cond_14
    new-instance v0, Lcom/google/android/talk/videochat/EffectsController;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/EffectsController;-><init>(Lcom/google/android/talk/videochat/GlView;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mEffects:Lcom/google/android/talk/videochat/EffectsController;

    .line 94
    new-instance v0, Lcom/google/android/talk/videochat/VideoAnimator;

    invoke-virtual {p0}, Lcom/google/android/talk/videochat/GlView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/talk/videochat/VideoAnimator;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;

    .line 96
    iput-object p2, p0, Lcom/google/android/talk/videochat/GlView;->mInitialCameraFrameCallback:Lcom/google/android/talk/videochat/GlView$InitialCameraFrameCallback;

    .line 98
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/GlView;->setEGLContextClientVersion(I)V

    .line 99
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 103
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onAttachedToWindow()V

    .line 104
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;

    invoke-virtual {p0}, Lcom/google/android/talk/videochat/GlView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/VideoAnimator;->supplyMainThreadHandler(Landroid/os/Handler;)V

    .line 105
    return-void
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 113
    const-string v1, "Talk:GlView"

    const-string v2, "GlView.onPause"

    invoke-static {v1, v2}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 116
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/GlView;->getSelfRenderer()Lcom/google/android/videochat/SelfRenderer;

    move-result-object v0

    .line 117
    .local v0, selfRenderer:Lcom/google/android/videochat/SelfRenderer;
    if-eqz v0, :cond_17

    .line 118
    invoke-virtual {v0}, Lcom/google/android/videochat/SelfRenderer;->getCamera()Lcom/google/android/videochat/CameraInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/videochat/CameraInterface;->suspendCamera()V

    .line 120
    :cond_17
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 124
    const-string v0, "Talk:GlView"

    const-string v1, "GlView.onResume"

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 126
    return-void
.end method

.method public placeFramesInSwappedPositions()V
    .registers 3

    .prologue
    .line 640
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/VideoAnimator;->placeFramesInSwappedPositions(Z)V

    .line 641
    return-void
.end method

.method public placeRemoteFrameInFullscreen()V
    .registers 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoAnimator;->placeRemoteFrameInFullscreen()V

    .line 629
    return-void
.end method

.method public placeSelfFrameInCorner(Z)V
    .registers 3
    .parameter "animate"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/videochat/VideoAnimator;->placeSelfFrameInCorner(Z)V

    .line 653
    return-void
.end method

.method public placeSelfFrameInVanity(Z)V
    .registers 3
    .parameter "animate"

    .prologue
    .line 648
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/videochat/VideoAnimator;->placeSelfFrameInVanity(Z)V

    .line 649
    return-void
.end method

.method public reverseSwapAnimation()V
    .registers 3

    .prologue
    .line 644
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/VideoAnimator;->placeFramesInStandardPositions(Z)V

    .line 645
    return-void
.end method

.method setActiveEffect(ILjava/lang/Object;)V
    .registers 4
    .parameter "id"
    .parameter "param"

    .prologue
    .line 157
    new-instance v0, Lcom/google/android/talk/videochat/GlView$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/talk/videochat/GlView$1;-><init>(Lcom/google/android/talk/videochat/GlView;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/GlView;->queueEvent(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method

.method setSpecialEffectsStateCallback(Lcom/google/android/talk/videochat/EffectsController$StateCallback;)V
    .registers 2
    .parameter "cb"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/android/talk/videochat/GlView;->mEffectsStateCallback:Lcom/google/android/talk/videochat/EffectsController$StateCallback;

    .line 176
    return-void
.end method

.method public showBlackBackground(Z)V
    .registers 3
    .parameter "animate"

    .prologue
    .line 656
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/videochat/VideoAnimator;->setBackgroundToBlack(Z)V

    .line 657
    return-void
.end method

.method public startSwapAnimation()V
    .registers 3

    .prologue
    .line 636
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/VideoAnimator;->placeFramesInSwappedPositions(Z)V

    .line 637
    return-void
.end method

.method public switchCamera(Lcom/google/android/talk/videochat/CameraTracker;)V
    .registers 6
    .parameter "tracker"

    .prologue
    .line 660
    new-instance v3, Lcom/google/android/talk/videochat/GlView$3;

    invoke-direct {v3, p0}, Lcom/google/android/talk/videochat/GlView$3;-><init>(Lcom/google/android/talk/videochat/GlView;)V

    invoke-virtual {p0, v3}, Lcom/google/android/talk/videochat/GlView;->post(Ljava/lang/Runnable;)Z

    .line 668
    iget-object v3, p0, Lcom/google/android/talk/videochat/GlView;->mGLRenderer:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    invoke-virtual {v3}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->getSelfRenderer()Lcom/google/android/videochat/SelfRenderer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/videochat/SelfRenderer;->getCamera()Lcom/google/android/videochat/CameraInterface;

    move-result-object v0

    .line 669
    .local v0, cam:Lcom/google/android/videochat/CameraInterface;
    invoke-virtual {v0}, Lcom/google/android/videochat/CameraInterface;->getCurrentCameraId()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/google/android/talk/videochat/CameraTracker;->nextCamera(I)I

    move-result v1

    .line 670
    .local v1, id:I
    invoke-virtual {p1, v1}, Lcom/google/android/talk/videochat/CameraTracker;->getOverrideSizeForCamera(I)Lcom/google/android/videochat/Size;

    move-result-object v2

    .line 671
    .local v2, s:Lcom/google/android/videochat/Size;
    new-instance v3, Lcom/google/android/videochat/CameraSpecification;

    invoke-direct {v3, v1, v2}, Lcom/google/android/videochat/CameraSpecification;-><init>(ILcom/google/android/videochat/Size;)V

    invoke-virtual {v0, v3}, Lcom/google/android/videochat/CameraInterface;->useCamera(Lcom/google/android/videochat/CameraSpecification;)V

    .line 672
    return-void
.end method
