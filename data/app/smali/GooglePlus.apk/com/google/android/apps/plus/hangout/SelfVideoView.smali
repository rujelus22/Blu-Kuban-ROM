.class public Lcom/google/android/apps/plus/hangout/SelfVideoView;
.super Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications;
.source "SelfVideoView.java"

# interfaces
.implements Lcom/google/android/apps/plus/hangout/VideoCapturer$Host;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;,
        Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;
    }
.end annotation


# instance fields
.field private audioVideoFailed:Z

.field private cameraErrorView:Landroid/view/View;

.field private disableFlashLightSupport:Z

.field private final eventHandler:Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;

.field private extraBottomOffset:I

.field private insetViewGroup:Landroid/view/ViewGroup;

.field private layoutMode:Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

.field private mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

.field private mVerticalGravity:F

.field private numPendingStartOutgoingVideoRequests:I

.field private selectedCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

.field private selfFrameHeight:I

.field private selfFrameWidth:I

.field private surfaceView:Landroid/view/SurfaceView;

.field private toggleFlashLightButton:Landroid/widget/ImageButton;

.field private videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    const/16 v1, 0x140

    iput v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->selfFrameWidth:I

    .line 128
    const/16 v1, 0xf0

    iput v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->selfFrameHeight:I

    .line 129
    sget-object v1, Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;->FIT:Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->layoutMode:Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    .line 132
    new-instance v1, Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;-><init>(Lcom/google/android/apps/plus/hangout/SelfVideoView;Lcom/google/android/apps/plus/hangout/SelfVideoView$1;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->eventHandler:Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;

    .line 133
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->disableFlashLightSupport:Z

    .line 134
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->mVerticalGravity:F

    .line 138
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 139
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03004e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 140
    const v1, 0x7f0900fd

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->insetViewGroup:Landroid/view/ViewGroup;

    .line 141
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->insetViewGroup:Landroid/view/ViewGroup;

    const v2, 0x7f0900fe

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->surfaceView:Landroid/view/SurfaceView;

    .line 142
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->insetViewGroup:Landroid/view/ViewGroup;

    const v2, 0x7f0900ff

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->cameraErrorView:Landroid/view/View;

    .line 143
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->insetViewGroup:Landroid/view/ViewGroup;

    const v2, 0x7f090100

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->toggleFlashLightButton:Landroid/widget/ImageButton;

    .line 145
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->toggleFlashLightButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/google/android/apps/plus/hangout/SelfVideoView$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView$1;-><init>(Lcom/google/android/apps/plus/hangout/SelfVideoView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    new-instance v1, Lcom/google/android/apps/plus/hangout/VideoCapturer;

    invoke-static {p1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3, p0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;Landroid/view/SurfaceHolder;Lcom/google/android/apps/plus/hangout/VideoCapturer$Host;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/hangout/SelfVideoView;Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->restartOutgoingVideo(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/hangout/SelfVideoView;)Lcom/google/android/apps/plus/hangout/VideoCapturer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/hangout/SelfVideoView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->updateFlashLightButtonState()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/hangout/SelfVideoView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->numPendingStartOutgoingVideoRequests:I

    return v0
.end method

.method static synthetic access$210(Lcom/google/android/apps/plus/hangout/SelfVideoView;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->numPendingStartOutgoingVideoRequests:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->numPendingStartOutgoingVideoRequests:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/hangout/SelfVideoView;)Lcom/google/android/apps/plus/hangout/HangoutTile;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/hangout/SelfVideoView;)Landroid/view/SurfaceView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->surfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/hangout/SelfVideoView;)Lcom/google/android/apps/plus/hangout/Cameras$CameraType;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->selectedCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/apps/plus/hangout/SelfVideoView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->selfFrameWidth:I

    return p1
.end method

.method static synthetic access$702(Lcom/google/android/apps/plus/hangout/SelfVideoView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->selfFrameHeight:I

    return p1
.end method

.method static synthetic access$802(Lcom/google/android/apps/plus/hangout/SelfVideoView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->audioVideoFailed:Z

    return p1
.end method

.method private restartOutgoingVideo(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V
    .registers 6
    .parameter "type"

    .prologue
    .line 229
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->audioVideoFailed:Z

    if-eqz v1, :cond_5

    .line 255
    :goto_4
    return-void

    .line 234
    :cond_5
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->stop()V

    .line 235
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangoutWithMedia()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 236
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->stopOutgoingVideo()V

    .line 238
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/hangout/GCommApp;->setLastUsedCameraType(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V

    .line 239
    invoke-static {p1}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->getSizeOfCapturedFrames(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 240
    .local v0, size:Landroid/hardware/Camera$Size;
    if-nez v0, :cond_3d

    .line 241
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->onCameraOpenError(Ljava/lang/RuntimeException;)V

    goto :goto_4

    .line 245
    :cond_3d
    const-string v1, "Starting outgoing video"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->startOutgoingVideo(II)V

    .line 249
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->selectedCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    .line 250
    iget v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->numPendingStartOutgoingVideoRequests:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->numPendingStartOutgoingVideoRequests:I

    goto :goto_4

    .line 253
    .end local v0           #size:Landroid/hardware/Camera$Size;
    :cond_5e
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->start(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V

    goto :goto_4
.end method

.method private updateFlashLightButtonState()V
    .registers 3

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->disableFlashLightSupport:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->supportsFlashLight()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 360
    :cond_14
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->toggleFlashLightButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 370
    :goto_1b
    return-void

    .line 364
    :cond_1c
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->toggleFlashLightButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->flashLightEnabled()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 366
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->toggleFlashLightButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200c4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1b

    .line 368
    :cond_33
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->toggleFlashLightButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1b
.end method


# virtual methods
.method public layout(II)V
    .registers 16
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 262
    const/4 v8, 0x0

    .line 263
    .local v8, selfViewRightMargin:I
    const/4 v6, 0x0

    .line 265
    .local v6, selfViewBottomMargin:I
    iget-object v9, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->layoutMode:Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    sget-object v10, Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;->INSET:Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    if-ne v9, v10, :cond_b2

    .line 268
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 269
    .local v2, longEdge:I
    iget v9, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->selfFrameWidth:I

    iget v10, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->selfFrameHeight:I

    if-le v9, v10, :cond_9e

    .line 271
    const-wide v9, 0x3fc999999999999aL

    int-to-double v11, v2

    mul-double/2addr v9, v11

    double-to-int v1, v9

    .line 272
    .local v1, insetWidth:I
    int-to-double v9, v1

    iget v11, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->selfFrameHeight:I

    int-to-double v11, v11

    mul-double/2addr v9, v11

    iget v11, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->selfFrameWidth:I

    int-to-double v11, v11

    div-double/2addr v9, v11

    double-to-int v0, v9

    .line 279
    .local v0, insetHeight:I
    :goto_24
    new-instance v5, Lcom/google/android/apps/plus/hangout/RectangleDimensions;

    invoke-direct {v5, v1, v0}, Lcom/google/android/apps/plus/hangout/RectangleDimensions;-><init>(II)V

    .line 280
    .local v5, selfVideoViewDimensions:Lcom/google/android/apps/plus/hangout/RectangleDimensions;
    const-wide v9, 0x3f947ae147ae147bL

    int-to-double v11, v2

    mul-double/2addr v9, v11

    double-to-int v8, v9

    .line 281
    iget v9, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->extraBottomOffset:I

    add-int v6, v8, v9

    .line 298
    .end local v0           #insetHeight:I
    .end local v1           #insetWidth:I
    .end local v2           #longEdge:I
    :goto_35
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    iget v9, v5, Lcom/google/android/apps/plus/hangout/RectangleDimensions;->width:I

    iget v10, v5, Lcom/google/android/apps/plus/hangout/RectangleDimensions;->height:I

    invoke-direct {v7, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 300
    .local v7, selfViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 302
    iget-object v9, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->layoutMode:Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    sget-object v10, Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;->INSET:Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    if-ne v9, v10, :cond_cf

    .line 303
    const/16 v9, 0xc

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 304
    const/16 v9, 0xb

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 309
    :goto_53
    iget-object v9, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->insetViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    const-string v9, "SelfView.layout: frame=%d,%d root=%d,%d self=%d,%d"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->selfFrameWidth:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->selfFrameHeight:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    iget v12, v5, Lcom/google/android/apps/plus/hangout/RectangleDimensions;->width:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x5

    iget v12, v5, Lcom/google/android/apps/plus/hangout/RectangleDimensions;->height:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    const/4 v9, 0x0

    int-to-float v10, p2

    iget v11, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->mVerticalGravity:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->setPadding(IIII)V

    .line 316
    return-void

    .line 275
    .end local v5           #selfVideoViewDimensions:Lcom/google/android/apps/plus/hangout/RectangleDimensions;
    .end local v7           #selfViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v2       #longEdge:I
    :cond_9e
    const-wide v9, 0x3fc999999999999aL

    int-to-double v11, v2

    mul-double/2addr v9, v11

    double-to-int v0, v9

    .line 276
    .restart local v0       #insetHeight:I
    int-to-double v9, v0

    iget v11, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->selfFrameWidth:I

    int-to-double v11, v11

    mul-double/2addr v9, v11

    iget v11, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->selfFrameHeight:I

    int-to-double v11, v11

    div-double/2addr v9, v11

    double-to-int v1, v9

    .restart local v1       #insetWidth:I
    goto/16 :goto_24

    .line 283
    .end local v0           #insetHeight:I
    .end local v1           #insetWidth:I
    .end local v2           #longEdge:I
    :cond_b2
    iget v9, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->selfFrameHeight:I

    if-nez v9, :cond_c1

    .line 290
    new-instance v5, Lcom/google/android/apps/plus/hangout/RectangleDimensions;

    const/16 v9, 0x64

    const/16 v10, 0x64

    invoke-direct {v5, v9, v10}, Lcom/google/android/apps/plus/hangout/RectangleDimensions;-><init>(II)V

    .restart local v5       #selfVideoViewDimensions:Lcom/google/android/apps/plus/hangout/RectangleDimensions;
    goto/16 :goto_35

    .line 292
    .end local v5           #selfVideoViewDimensions:Lcom/google/android/apps/plus/hangout/RectangleDimensions;
    :cond_c1
    iget v9, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->selfFrameWidth:I

    iget v10, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->selfFrameHeight:I

    invoke-static {v9, v10}, Lcom/google/android/apps/plus/hangout/Utils;->getAspectRatio(II)D

    move-result-wide v3

    .line 293
    .local v3, selfFrameAspectRatio:D
    invoke-static {v3, v4, p1, p2}, Lcom/google/android/apps/plus/hangout/Utils;->fitContentInContainer(DII)Lcom/google/android/apps/plus/hangout/RectangleDimensions;

    move-result-object v5

    .restart local v5       #selfVideoViewDimensions:Lcom/google/android/apps/plus/hangout/RectangleDimensions;
    goto/16 :goto_35

    .line 306
    .end local v3           #selfFrameAspectRatio:D
    .restart local v7       #selfViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_cf
    const/16 v9, 0xd

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_53
.end method

.method public onCameraOpenError(Ljava/lang/RuntimeException;)V
    .registers 4
    .parameter "e"

    .prologue
    .line 182
    const-string v0, "Video capturer failed to start"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->warn(Ljava/lang/String;)V

    .line 183
    invoke-static {p1}, Lcom/google/android/apps/plus/hangout/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->warn(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->surfaceView:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->cameraErrorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    return-void
.end method

.method public onCapturingStateChanged(Z)V
    .registers 2
    .parameter "capturingState"

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->updateFlashLightButtonState()V

    .line 178
    return-void
.end method

.method public onMeasure(IIII)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"
    .parameter "contentWidth"
    .parameter "contentHeight"

    .prologue
    .line 348
    invoke-virtual {p0, p3, p4}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->layout(II)V

    .line 349
    return-void
.end method

.method public onPause()V
    .registers 5

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->eventHandler:Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->unregisterForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 172
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->stopCapturing()V

    .line 173
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->eventHandler:Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->registerForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 164
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->startCapturing()V

    .line 165
    return-void
.end method

.method public setExtraBottomOffset(I)V
    .registers 3
    .parameter "offset"

    .prologue
    .line 327
    iput p1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->extraBottomOffset:I

    .line 328
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 329
    return-void
.end method

.method public setHangoutTile(Lcom/google/android/apps/plus/hangout/HangoutTile;)V
    .registers 2
    .parameter "hangoutTile"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    .line 160
    return-void
.end method

.method public setLayoutMode(Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;)V
    .registers 2
    .parameter "layoutMode"

    .prologue
    .line 323
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->layoutMode:Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    .line 324
    return-void
.end method

.method public setVerticalGravity(F)V
    .registers 2
    .parameter "gravity"

    .prologue
    .line 319
    iput p1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->mVerticalGravity:F

    .line 320
    return-void
.end method

.method public setVisibleViewOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 332
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->layoutMode:Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    sget-object v1, Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;->FIT:Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    if-ne v0, v1, :cond_10

    .line 334
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 335
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 340
    :goto_f
    return-void

    .line 337
    :cond_10
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 338
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_f
.end method

.method public startCapturing()V
    .registers 5

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->isOutgoingVideoMute()Z

    move-result v2

    if-nez v2, :cond_45

    .line 193
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->isOutgoingVideoStarted()Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangoutWithMedia()Z

    move-result v2

    if-nez v2, :cond_46

    .line 195
    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getLastUsedCameraType()Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    move-result-object v0

    .line 197
    .local v0, lastCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->surfaceView:Landroid/view/SurfaceView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 198
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->start(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V

    .line 216
    .end local v0           #lastCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;
    :cond_45
    :goto_45
    return-void

    .line 201
    :cond_46
    invoke-static {}, Lcom/google/android/apps/plus/hangout/Cameras;->isAnyCameraAvailable()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 202
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getLastUsedCameraType()Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    move-result-object v1

    .line 203
    .local v1, type:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;
    if-nez v1, :cond_62

    .line 204
    invoke-static {}, Lcom/google/android/apps/plus/hangout/Cameras;->isFrontFacingCameraAvailable()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 205
    sget-object v1, Lcom/google/android/apps/plus/hangout/Cameras$CameraType;->FrontFacing:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    .line 210
    :cond_62
    :goto_62
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->restartOutgoingVideo(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V

    goto :goto_45

    .line 207
    :cond_66
    sget-object v1, Lcom/google/android/apps/plus/hangout/Cameras$CameraType;->RearFacing:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    goto :goto_62

    .line 212
    .end local v1           #type:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;
    :cond_69
    const-string v2, "Not starting outgoing video because device is not capable."

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    goto :goto_45
.end method

.method public stopCapturing()V
    .registers 2

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->isOutgoingVideoStarted()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 220
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->stopOutgoingVideo()V

    .line 225
    :cond_21
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->stop()V

    .line 226
    return-void
.end method

.method public turnOffFlashLightSupport()V
    .registers 3

    .prologue
    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->disableFlashLightSupport:Z

    .line 353
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->toggleFlashLightButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 354
    return-void
.end method
