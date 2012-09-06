.class public Lcom/google/android/apps/plus/hangout/LocalVideoView;
.super Lcom/google/android/apps/plus/hangout/HangoutVideoView;
.source "LocalVideoView.java"

# interfaces
.implements Lcom/google/android/apps/plus/hangout/VideoCapturer$Host;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;
    }
.end annotation


# instance fields
.field private audioVideoFailed:Z

.field private disableFlashLightSupport:Z

.field private final eventHandler:Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;

.field private isRegistered:Z

.field private numPendingStartOutgoingVideoRequests:I

.field private selectedCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

.field private selfFrameHeight:I

.field private selfFrameWidth:I

.field private final textureView:Landroid/view/TextureView;

.field private final toggleFlashButton:Landroid/widget/ImageButton;

.field private final videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, -0x2

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    const/16 v1, 0x140

    iput v1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->selfFrameWidth:I

    .line 105
    const/16 v1, 0xf0

    iput v1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->selfFrameHeight:I

    .line 106
    new-instance v1, Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;-><init>(Lcom/google/android/apps/plus/hangout/LocalVideoView;Lcom/google/android/apps/plus/hangout/LocalVideoView$1;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->eventHandler:Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;

    .line 116
    new-instance v1, Landroid/view/TextureView;

    invoke-direct {v1, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->textureView:Landroid/view/TextureView;

    .line 117
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->setVideoSurface(Landroid/view/View;)V

    .line 120
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 122
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 123
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 124
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;->FIT:Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->setLayoutMode(Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;)V

    .line 130
    new-instance v1, Lcom/google/android/apps/plus/hangout/VideoCapturer$TextureViewVideoCapturer;

    invoke-static {p1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->textureView:Landroid/view/TextureView;

    invoke-direct {v1, p1, v2, v3, p0}, Lcom/google/android/apps/plus/hangout/VideoCapturer$TextureViewVideoCapturer;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;Landroid/view/TextureView;Lcom/google/android/apps/plus/hangout/VideoCapturer$Host;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;

    .line 135
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->getFlashToggleButton()Landroid/widget/ImageButton;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->toggleFlashButton:Landroid/widget/ImageButton;

    .line 136
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->toggleFlashButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/google/android/apps/plus/hangout/LocalVideoView$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/hangout/LocalVideoView$1;-><init>(Lcom/google/android/apps/plus/hangout/LocalVideoView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/hangout/LocalVideoView;Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->restartOutgoingVideo(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/hangout/LocalVideoView;)Lcom/google/android/apps/plus/hangout/VideoCapturer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/hangout/LocalVideoView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->numPendingStartOutgoingVideoRequests:I

    return v0
.end method

.method static synthetic access$210(Lcom/google/android/apps/plus/hangout/LocalVideoView;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->numPendingStartOutgoingVideoRequests:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->numPendingStartOutgoingVideoRequests:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/hangout/LocalVideoView;)Lcom/google/android/apps/plus/hangout/Cameras$CameraType;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->selectedCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/hangout/LocalVideoView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->selfFrameWidth:I

    return v0
.end method

.method static synthetic access$402(Lcom/google/android/apps/plus/hangout/LocalVideoView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->selfFrameWidth:I

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/hangout/LocalVideoView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->selfFrameHeight:I

    return v0
.end method

.method static synthetic access$502(Lcom/google/android/apps/plus/hangout/LocalVideoView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->selfFrameHeight:I

    return p1
.end method

.method static synthetic access$602(Lcom/google/android/apps/plus/hangout/LocalVideoView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->audioVideoFailed:Z

    return p1
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/hangout/LocalVideoView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->updateFlashLightButtonState()V

    return-void
.end method

.method private restartOutgoingVideo(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V
    .registers 6
    .parameter "type"

    .prologue
    .line 245
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->audioVideoFailed:Z

    if-eqz v1, :cond_5

    .line 271
    :goto_4
    return-void

    .line 250
    :cond_5
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->stop()V

    .line 251
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangoutWithMedia()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 252
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->stopOutgoingVideo()V

    .line 254
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/hangout/GCommApp;->setLastUsedCameraType(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V

    .line 255
    invoke-static {p1}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->getSizeOfCapturedFrames(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 256
    .local v0, size:Landroid/hardware/Camera$Size;
    if-nez v0, :cond_3d

    .line 257
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->onCameraOpenError(Ljava/lang/RuntimeException;)V

    goto :goto_4

    .line 261
    :cond_3d
    const-string v1, "Starting outgoing video"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->startOutgoingVideo(II)V

    .line 265
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->selectedCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    .line 266
    iget v1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->numPendingStartOutgoingVideoRequests:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->numPendingStartOutgoingVideoRequests:I

    goto :goto_4

    .line 269
    .end local v0           #size:Landroid/hardware/Camera$Size;
    :cond_5e
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->start(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V

    goto :goto_4
.end method

.method private startCapturing()V
    .registers 4

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->isOutgoingVideoMute()Z

    move-result v2

    if-nez v2, :cond_45

    .line 207
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->isOutgoingVideoStarted()Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangoutWithMedia()Z

    move-result v2

    if-nez v2, :cond_46

    .line 209
    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getLastUsedCameraType()Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    move-result-object v0

    .line 211
    .local v0, lastCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->hideLogo()V

    .line 212
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->showVideoSurface()V

    .line 213
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->start(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V

    .line 231
    .end local v0           #lastCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;
    :cond_45
    :goto_45
    return-void

    .line 216
    :cond_46
    invoke-static {}, Lcom/google/android/apps/plus/hangout/Cameras;->isAnyCameraAvailable()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 217
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getLastUsedCameraType()Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    move-result-object v1

    .line 218
    .local v1, type:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;
    if-nez v1, :cond_62

    .line 219
    invoke-static {}, Lcom/google/android/apps/plus/hangout/Cameras;->isFrontFacingCameraAvailable()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 220
    sget-object v1, Lcom/google/android/apps/plus/hangout/Cameras$CameraType;->FrontFacing:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    .line 225
    :cond_62
    :goto_62
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->restartOutgoingVideo(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V

    goto :goto_45

    .line 222
    :cond_66
    sget-object v1, Lcom/google/android/apps/plus/hangout/Cameras$CameraType;->RearFacing:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    goto :goto_62

    .line 227
    .end local v1           #type:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;
    :cond_69
    const-string v2, "Not starting outgoing video because device is not capable."

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    goto :goto_45
.end method

.method private stopCapturing()V
    .registers 3

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    .line 235
    .local v0, wrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->isOutgoingVideoStarted()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 236
    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->stopOutgoingVideo()V

    .line 241
    :cond_15
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->stop()V

    .line 242
    return-void
.end method

.method private updateFlashLightButtonState()V
    .registers 3

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->disableFlashLightSupport:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->supportsFlashLight()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 291
    :cond_14
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->toggleFlashButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 301
    :goto_1b
    return-void

    .line 295
    :cond_1c
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->toggleFlashButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->flashLightEnabled()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 297
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->toggleFlashButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200c4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1b

    .line 299
    :cond_33
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->toggleFlashButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1b
.end method


# virtual methods
.method public isVideoShowing()Z
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->isCapturing()Z

    move-result v0

    return v0
.end method

.method public onCameraOpenError(Ljava/lang/RuntimeException;)V
    .registers 3
    .parameter "e"

    .prologue
    .line 187
    const-string v0, "Video capturer failed to start"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->warn(Ljava/lang/String;)V

    .line 188
    invoke-static {p1}, Lcom/google/android/apps/plus/hangout/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->warn(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->hideVideoSurface()V

    .line 190
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->hideLogo()V

    .line 191
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->showCameraError()V

    .line 192
    return-void
.end method

.method public onCapturingStateChanged(Z)V
    .registers 2
    .parameter "capturingState"

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->updateFlashLightButtonState()V

    .line 180
    return-void
.end method

.method public onMeasure(IIII)V
    .registers 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"
    .parameter "contentWidth"
    .parameter "contentHeight"

    .prologue
    .line 279
    iget v0, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->selfFrameWidth:I

    iget v1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->selfFrameHeight:I

    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->layoutVideo(IIII)V

    .line 280
    return-void
.end method

.method public onPause()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 163
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->isRegistered:Z

    if-eqz v1, :cond_14

    .line 164
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 165
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->eventHandler:Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->unregisterForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 166
    iput-boolean v3, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->isRegistered:Z

    .line 171
    .end local v0           #context:Landroid/content/Context;
    :cond_14
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->stopCapturing()V

    .line 172
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 150
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->isRegistered:Z

    if-nez v1, :cond_15

    .line 151
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 152
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->eventHandler:Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->registerForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 153
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView;->isRegistered:Z

    .line 155
    .end local v0           #context:Landroid/content/Context;
    :cond_15
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->startCapturing()V

    .line 156
    return-void
.end method
