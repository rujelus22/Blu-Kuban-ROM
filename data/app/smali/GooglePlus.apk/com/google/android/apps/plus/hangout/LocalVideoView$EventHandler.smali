.class Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;
.super Lcom/google/android/apps/plus/hangout/GCommEventHandler;
.source "LocalVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/LocalVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/hangout/LocalVideoView;)V
    .registers 2
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/hangout/LocalVideoView;Lcom/google/android/apps/plus/hangout/LocalVideoView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;-><init>(Lcom/google/android/apps/plus/hangout/LocalVideoView;)V

    return-void
.end method


# virtual methods
.method public onCameraPreviewFrameDimensionsChanged(II)V
    .registers 8
    .parameter "width"
    .parameter "height"

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onCameraPreviewFrameDimensionsChanged(II)V

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    #setter for: Lcom/google/android/apps/plus/hangout/LocalVideoView;->selfFrameWidth:I
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->access$402(Lcom/google/android/apps/plus/hangout/LocalVideoView;I)I

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    #setter for: Lcom/google/android/apps/plus/hangout/LocalVideoView;->selfFrameHeight:I
    invoke-static {v0, p2}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->access$502(Lcom/google/android/apps/plus/hangout/LocalVideoView;I)I

    .line 84
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/LocalVideoView;->selfFrameWidth:I
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->access$400(Lcom/google/android/apps/plus/hangout/LocalVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/LocalVideoView;->selfFrameHeight:I
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->access$500(Lcom/google/android/apps/plus/hangout/LocalVideoView;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->layoutVideo(IIII)V

    .line 85
    return-void
.end method

.method public onCameraSwitchRequested()V
    .registers 4

    .prologue
    .line 27
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getLastUsedCameraType()Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    move-result-object v0

    .line 29
    .local v0, lastCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;
    if-eqz v0, :cond_14

    sget-object v2, Lcom/google/android/apps/plus/hangout/Cameras$CameraType;->FrontFacing:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    if-ne v0, v2, :cond_39

    .line 30
    :cond_14
    sget-object v1, Lcom/google/android/apps/plus/hangout/Cameras$CameraType;->RearFacing:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    .line 34
    .local v1, newCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;
    :goto_16
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->setLastUsedCameraType(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V

    .line 35
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->isOutgoingVideoMute()Z

    move-result v2

    if-nez v2, :cond_38

    .line 36
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    #calls: Lcom/google/android/apps/plus/hangout/LocalVideoView;->restartOutgoingVideo(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V
    invoke-static {v2, v1}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->access$000(Lcom/google/android/apps/plus/hangout/LocalVideoView;Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V

    .line 38
    :cond_38
    return-void

    .line 32
    .end local v1           #newCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;
    :cond_39
    sget-object v1, Lcom/google/android/apps/plus/hangout/Cameras$CameraType;->FrontFacing:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    .restart local v1       #newCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;
    goto :goto_16
.end method

.method public onError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;)V
    .registers 4
    .parameter "error"

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;)V

    .line 91
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->AUDIO_VIDEO_SESSION:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    if-ne p1, v0, :cond_16

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/LocalVideoView;->videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->access$100(Lcom/google/android/apps/plus/hangout/LocalVideoView;)Lcom/google/android/apps/plus/hangout/VideoCapturer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->stop()V

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/plus/hangout/LocalVideoView;->audioVideoFailed:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->access$602(Lcom/google/android/apps/plus/hangout/LocalVideoView;Z)Z

    .line 96
    :cond_16
    return-void
.end method

.method public onOutgoingVideoStarted()V
    .registers 3

    .prologue
    .line 59
    invoke-super {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onOutgoingVideoStarted()V

    .line 61
    const-string v0, "Outgoing video started"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->access$210(Lcom/google/android/apps/plus/hangout/LocalVideoView;)I

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->isHangoutTileStarted()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/LocalVideoView;->numPendingStartOutgoingVideoRequests:I
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->access$200(Lcom/google/android/apps/plus/hangout/LocalVideoView;)I

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isOutgoingVideoMute()Z

    move-result v0

    if-nez v0, :cond_46

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->hideLogo()V

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->showVideoSurface()V

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/LocalVideoView;->videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->access$100(Lcom/google/android/apps/plus/hangout/LocalVideoView;)Lcom/google/android/apps/plus/hangout/VideoCapturer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/LocalVideoView;->selectedCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->access$300(Lcom/google/android/apps/plus/hangout/LocalVideoView;)Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->start(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V

    .line 76
    :cond_46
    return-void
.end method

.method public onVideoMuteToggleRequested()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 42
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->isOutgoingVideoMute()Z

    move-result v0

    .line 43
    .local v0, isOutgoingVideoMute:Z
    if-eqz v0, :cond_47

    .line 46
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->getLastUsedCameraType()Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    move-result-object v4

    #calls: Lcom/google/android/apps/plus/hangout/LocalVideoView;->restartOutgoingVideo(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V
    invoke-static {v1, v4}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->access$000(Lcom/google/android/apps/plus/hangout/LocalVideoView;Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V

    .line 51
    :goto_25
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v4

    if-nez v0, :cond_62

    move v1, v2

    :goto_32
    invoke-virtual {v4, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->setOutgoingVideoMute(Z)V

    .line 53
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v4, 0xcb

    if-nez v0, :cond_64

    :goto_3f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 55
    return-void

    .line 48
    :cond_47
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/LocalVideoView;->videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->access$100(Lcom/google/android/apps/plus/hangout/LocalVideoView;)Lcom/google/android/apps/plus/hangout/VideoCapturer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->stop()V

    .line 49
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->stopOutgoingVideo()V

    goto :goto_25

    :cond_62
    move v1, v3

    .line 51
    goto :goto_32

    :cond_64
    move v2, v3

    .line 53
    goto :goto_3f
.end method
