.class public Lcom/google/android/apps/plus/hangout/SelfVideoView;
.super Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications;
.source "SelfVideoView.java"

# interfaces
.implements Lcom/google/android/apps/plus/hangout/VideoCapturer$Host;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/SelfVideoView$1;,
        Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;,
        Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;
    }
.end annotation


# instance fields
.field private audioVideoFailed:Z

.field private cameraErrorView:Landroid/view/View;

.field private final eventHandler:Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;

.field private extraBottomOffset:I

.field private insetViewGroup:Landroid/view/ViewGroup;

.field private layoutMode:Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

.field private mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

.field private numPendingStartOutgoingVideoRequests:I

.field private selectedCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

.field private selfFrameHeight:I

.field private selfFrameWidth:I

.field private surfaceView:Landroid/view/SurfaceView;

.field private videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    const/16 v1, 0x140

    iput v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->selfFrameWidth:I

    .line 126
    const/16 v1, 0xf0

    iput v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->selfFrameHeight:I

    .line 127
    sget-object v1, Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;->FIT:Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->layoutMode:Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    .line 130
    new-instance v1, Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;-><init>(Lcom/google/android/apps/plus/hangout/SelfVideoView;Lcom/google/android/apps/plus/hangout/SelfVideoView$1;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->eventHandler:Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;

    .line 134
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 135
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030030

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 136
    const v1, 0x7f0d00aa

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->insetViewGroup:Landroid/view/ViewGroup;

    .line 137
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->insetViewGroup:Landroid/view/ViewGroup;

    const v2, 0x7f0d00ab

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->surfaceView:Landroid/view/SurfaceView;

    .line 138
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->insetViewGroup:Landroid/view/ViewGroup;

    const v2, 0x7f0d00ac

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->cameraErrorView:Landroid/view/View;

    .line 140
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

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/hangout/SelfVideoView;Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->restartOutgoingVideo(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/hangout/SelfVideoView;)Lcom/google/android/apps/plus/hangout/VideoCapturer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/hangout/SelfVideoView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->numPendingStartOutgoingVideoRequests:I

    return v0
.end method

.method static synthetic access$210(Lcom/google/android/apps/plus/hangout/SelfVideoView;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->numPendingStartOutgoingVideoRequests:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->numPendingStartOutgoingVideoRequests:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/hangout/SelfVideoView;)Lcom/google/android/apps/plus/hangout/HangoutTile;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/hangout/SelfVideoView;)Landroid/view/SurfaceView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->surfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/hangout/SelfVideoView;)Lcom/google/android/apps/plus/hangout/Cameras$CameraType;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->selectedCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/apps/plus/hangout/SelfVideoView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->selfFrameWidth:I

    return p1
.end method

.method static synthetic access$702(Lcom/google/android/apps/plus/hangout/SelfVideoView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->selfFrameHeight:I

    return p1
.end method

.method static synthetic access$802(Lcom/google/android/apps/plus/hangout/SelfVideoView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->audioVideoFailed:Z

    return p1
.end method

.method private restartOutgoingVideo(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V
    .registers 6
    .parameter "type"

    .prologue
    .line 211
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->audioVideoFailed:Z

    if-eqz v1, :cond_5

    .line 237
    :goto_4
    return-void

    .line 216
    :cond_5
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->stop()V

    .line 217
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangoutWithMedia()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 218
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->stopOutgoingVideo()V

    .line 220
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/hangout/GCommApp;->setLastUsedCameraType(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V

    .line 221
    invoke-static {p1}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->getSizeOfCapturedFrames(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 222
    .local v0, size:Landroid/hardware/Camera$Size;
    if-nez v0, :cond_3d

    .line 223
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->onCameraOpenError(Ljava/lang/RuntimeException;)V

    goto :goto_4

    .line 227
    :cond_3d
    const-string v1, "Starting outgoing video"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->startOutgoingVideo(II)V

    .line 231
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->selectedCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    .line 232
    iget v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->numPendingStartOutgoingVideoRequests:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->numPendingStartOutgoingVideoRequests:I

    goto :goto_4

    .line 235
    .end local v0           #size:Landroid/hardware/Camera$Size;
    :cond_5e
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->start(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V

    goto :goto_4
.end method


# virtual methods
.method public layout(II)V
    .registers 16
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 244
    const/4 v8, 0x0

    .line 245
    .local v8, selfViewRightMargin:I
    const/4 v6, 0x0

    .line 247
    .local v6, selfViewBottomMargin:I
    iget-object v9, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->layoutMode:Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    sget-object v10, Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;->INSET:Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    if-ne v9, v10, :cond_af

    .line 250
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 251
    .local v2, longEdge:I
    iget v9, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->selfFrameWidth:I

    iget v10, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->selfFrameHeight:I

    if-le v9, v10, :cond_9b

    .line 253
    const-wide v9, 0x3fc999999999999aL

    int-to-double v11, v2

    mul-double/2addr v9, v11

    double-to-int v1, v9

    .line 254
    .local v1, insetWidth:I
    int-to-double v9, v1

    iget v11, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->selfFrameHeight:I

    int-to-double v11, v11

    mul-double/2addr v9, v11

    iget v11, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->selfFrameWidth:I

    int-to-double v11, v11

    div-double/2addr v9, v11

    double-to-int v0, v9

    .line 261
    .local v0, insetHeight:I
    :goto_24
    new-instance v5, Lcom/google/android/apps/plus/hangout/RectangleDimensions;

    invoke-direct {v5, v1, v0}, Lcom/google/android/apps/plus/hangout/RectangleDimensions;-><init>(II)V

    .line 262
    .local v5, selfVideoViewDimensions:Lcom/google/android/apps/plus/hangout/RectangleDimensions;
    const-wide v9, 0x3f947ae147ae147bL

    int-to-double v11, v2

    mul-double/2addr v9, v11

    double-to-int v8, v9

    .line 263
    iget v9, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->extraBottomOffset:I

    add-int v6, v8, v9

    .line 280
    .end local v0           #insetHeight:I
    .end local v1           #insetWidth:I
    .end local v2           #longEdge:I
    :goto_35
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    iget v9, v5, Lcom/google/android/apps/plus/hangout/RectangleDimensions;->width:I

    iget v10, v5, Lcom/google/android/apps/plus/hangout/RectangleDimensions;->height:I

    invoke-direct {v7, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 282
    .local v7, selfViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 283
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangoutWithMedia()Z

    move-result v9

    if-eqz v9, :cond_cc

    .line 284
    const/16 v9, 0xc

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 285
    const/16 v9, 0xb

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 290
    :goto_5b
    iget-object v9, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->insetViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
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

    .line 295
    return-void

    .line 257
    .end local v5           #selfVideoViewDimensions:Lcom/google/android/apps/plus/hangout/RectangleDimensions;
    .end local v7           #selfViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v2       #longEdge:I
    :cond_9b
    const-wide v9, 0x3fc999999999999aL

    int-to-double v11, v2

    mul-double/2addr v9, v11

    double-to-int v0, v9

    .line 258
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

    .line 265
    .end local v0           #insetHeight:I
    .end local v1           #insetWidth:I
    .end local v2           #longEdge:I
    :cond_af
    iget v9, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->selfFrameHeight:I

    if-nez v9, :cond_be

    .line 272
    new-instance v5, Lcom/google/android/apps/plus/hangout/RectangleDimensions;

    const/16 v9, 0x64

    const/16 v10, 0x64

    invoke-direct {v5, v9, v10}, Lcom/google/android/apps/plus/hangout/RectangleDimensions;-><init>(II)V

    .restart local v5       #selfVideoViewDimensions:Lcom/google/android/apps/plus/hangout/RectangleDimensions;
    goto/16 :goto_35

    .line 274
    .end local v5           #selfVideoViewDimensions:Lcom/google/android/apps/plus/hangout/RectangleDimensions;
    :cond_be
    iget v9, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->selfFrameWidth:I

    iget v10, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->selfFrameHeight:I

    invoke-static {v9, v10}, Lcom/google/android/apps/plus/hangout/Utils;->getAspectRatio(II)D

    move-result-wide v3

    .line 275
    .local v3, selfFrameAspectRatio:D
    invoke-static {v3, v4, p1, p2}, Lcom/google/android/apps/plus/hangout/Utils;->fitContentInContainer(DII)Lcom/google/android/apps/plus/hangout/RectangleDimensions;

    move-result-object v5

    .restart local v5       #selfVideoViewDimensions:Lcom/google/android/apps/plus/hangout/RectangleDimensions;
    goto/16 :goto_35

    .line 287
    .end local v3           #selfFrameAspectRatio:D
    .restart local v7       #selfViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_cc
    const/16 v9, 0xd

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_5b
.end method

.method public onCameraOpenError(Ljava/lang/RuntimeException;)V
    .registers 4
    .parameter "e"

    .prologue
    .line 164
    const-string v0, "Video capturer failed to start"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->warn(Ljava/lang/String;)V

    .line 165
    invoke-static {p1}, Lcom/google/android/apps/plus/hangout/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->warn(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->surfaceView:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->cameraErrorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    return-void
.end method

.method public onMeasure(IIII)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"
    .parameter "contentWidth"
    .parameter "contentHeight"

    .prologue
    .line 323
    invoke-virtual {p0, p3, p4}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->layout(II)V

    .line 324
    return-void
.end method

.method public onPause()V
    .registers 5

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->eventHandler:Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->unregisterForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 159
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->stopCapturing()V

    .line 160
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->eventHandler:Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->registerForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 151
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->startCapturing()V

    .line 152
    return-void
.end method

.method public setExtraBottomOffset(I)V
    .registers 3
    .parameter "offset"

    .prologue
    .line 302
    iput p1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->extraBottomOffset:I

    .line 303
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 304
    return-void
.end method

.method public setHangoutTile(Lcom/google/android/apps/plus/hangout/HangoutTile;)V
    .registers 2
    .parameter "hangoutTile"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    .line 147
    return-void
.end method

.method public setLayoutMode(Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;)V
    .registers 2
    .parameter "layoutMode"

    .prologue
    .line 298
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->layoutMode:Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    .line 299
    return-void
.end method

.method public setVisibleViewOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 307
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->layoutMode:Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    sget-object v1, Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;->FIT:Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    if-ne v0, v1, :cond_10

    .line 309
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 310
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 315
    :goto_f
    return-void

    .line 312
    :cond_10
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 313
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_f
.end method

.method public startCapturing()V
    .registers 5

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->isOutgoingVideoMute()Z

    move-result v2

    if-nez v2, :cond_45

    .line 175
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

    .line 177
    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getLastUsedCameraType()Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    move-result-object v0

    .line 179
    .local v0, lastCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->surfaceView:Landroid/view/SurfaceView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 180
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->start(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V

    .line 198
    .end local v0           #lastCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;
    :cond_45
    :goto_45
    return-void

    .line 183
    :cond_46
    invoke-static {}, Lcom/google/android/apps/plus/hangout/Cameras;->isAnyCameraAvailable()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 184
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getLastUsedCameraType()Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    move-result-object v1

    .line 185
    .local v1, type:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;
    if-nez v1, :cond_62

    .line 186
    invoke-static {}, Lcom/google/android/apps/plus/hangout/Cameras;->isFrontFacingCameraAvailable()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 187
    sget-object v1, Lcom/google/android/apps/plus/hangout/Cameras$CameraType;->FrontFacing:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    .line 192
    :cond_62
    :goto_62
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->restartOutgoingVideo(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V

    goto :goto_45

    .line 189
    :cond_66
    sget-object v1, Lcom/google/android/apps/plus/hangout/Cameras$CameraType;->RearFacing:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    goto :goto_62

    .line 194
    .end local v1           #type:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;
    :cond_69
    const-string v2, "Not starting outgoing video because device is not capable."

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    goto :goto_45
.end method

.method public stopCapturing()V
    .registers 2

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->isOutgoingVideoStarted()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 202
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->stopOutgoingVideo()V

    .line 207
    :cond_21
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView;->videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->stop()V

    .line 208
    return-void
.end method
