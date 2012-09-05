.class Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;
.super Lcom/google/android/apps/plus/hangout/GCommEventHandler;
.source "SelfVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/SelfVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/SelfVideoView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/hangout/SelfVideoView;)V
    .registers 2
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/hangout/SelfVideoView;Lcom/google/android/apps/plus/hangout/SelfVideoView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;-><init>(Lcom/google/android/apps/plus/hangout/SelfVideoView;)V

    return-void
.end method


# virtual methods
.method public onCameraPreviewFrameDimensionsChanged(II)V
    .registers 6
    .parameter "width"
    .parameter "height"

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onCameraPreviewFrameDimensionsChanged(II)V

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    #setter for: Lcom/google/android/apps/plus/hangout/SelfVideoView;->selfFrameWidth:I
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->access$602(Lcom/google/android/apps/plus/hangout/SelfVideoView;I)I

    .line 84
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    #setter for: Lcom/google/android/apps/plus/hangout/SelfVideoView;->selfFrameHeight:I
    invoke-static {v0, p2}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->access$702(Lcom/google/android/apps/plus/hangout/SelfVideoView;I)I

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->layout(II)V

    .line 87
    return-void
.end method

.method public onCameraSwitchRequested()V
    .registers 4

    .prologue
    .line 29
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getLastUsedCameraType()Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    move-result-object v0

    .line 31
    .local v0, lastCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;
    if-eqz v0, :cond_14

    sget-object v2, Lcom/google/android/apps/plus/hangout/Cameras$CameraType;->FrontFacing:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    if-ne v0, v2, :cond_39

    .line 32
    :cond_14
    sget-object v1, Lcom/google/android/apps/plus/hangout/Cameras$CameraType;->RearFacing:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    .line 36
    .local v1, newCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;
    :goto_16
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->setLastUsedCameraType(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V

    .line 37
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->isOutgoingVideoMute()Z

    move-result v2

    if-nez v2, :cond_38

    .line 38
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    #calls: Lcom/google/android/apps/plus/hangout/SelfVideoView;->restartOutgoingVideo(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V
    invoke-static {v2, v1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->access$000(Lcom/google/android/apps/plus/hangout/SelfVideoView;Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V

    .line 40
    :cond_38
    return-void

    .line 34
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
    .line 91
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;)V

    .line 93
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->AUDIO_VIDEO_SESSION:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    if-ne p1, v0, :cond_16

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/SelfVideoView;->videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->access$100(Lcom/google/android/apps/plus/hangout/SelfVideoView;)Lcom/google/android/apps/plus/hangout/VideoCapturer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->stop()V

    .line 96
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/plus/hangout/SelfVideoView;->audioVideoFailed:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->access$802(Lcom/google/android/apps/plus/hangout/SelfVideoView;Z)Z

    .line 98
    :cond_16
    return-void
.end method

.method public onOutgoingVideoStarted()V
    .registers 3

    .prologue
    .line 61
    invoke-super {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onOutgoingVideoStarted()V

    .line 63
    const-string v0, "Outgoing video started"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->access$210(Lcom/google/android/apps/plus/hangout/SelfVideoView;)I

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/SelfVideoView;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->access$300(Lcom/google/android/apps/plus/hangout/SelfVideoView;)Lcom/google/android/apps/plus/hangout/HangoutTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->isTileStarted()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/SelfVideoView;->numPendingStartOutgoingVideoRequests:I
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->access$200(Lcom/google/android/apps/plus/hangout/SelfVideoView;)I

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isOutgoingVideoMute()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/SelfVideoView;->surfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->access$400(Lcom/google/android/apps/plus/hangout/SelfVideoView;)Landroid/view/SurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/SelfVideoView;->videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->access$100(Lcom/google/android/apps/plus/hangout/SelfVideoView;)Lcom/google/android/apps/plus/hangout/VideoCapturer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/SelfVideoView;->selectedCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->access$500(Lcom/google/android/apps/plus/hangout/SelfVideoView;)Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->start(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V

    .line 77
    :cond_4a
    return-void
.end method

.method public onVideoMuteToggleRequested()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 44
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->isOutgoingVideoMute()Z

    move-result v0

    .line 45
    .local v0, isOutgoingVideoMute:Z
    if-eqz v0, :cond_47

    .line 48
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->getLastUsedCameraType()Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    move-result-object v4

    #calls: Lcom/google/android/apps/plus/hangout/SelfVideoView;->restartOutgoingVideo(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V
    invoke-static {v1, v4}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->access$000(Lcom/google/android/apps/plus/hangout/SelfVideoView;Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V

    .line 53
    :goto_25
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v4

    if-nez v0, :cond_62

    move v1, v2

    :goto_32
    invoke-virtual {v4, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->setOutgoingVideoMute(Z)V

    .line 55
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v4, 0xcb

    if-nez v0, :cond_64

    :goto_3f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 57
    return-void

    .line 50
    :cond_47
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/SelfVideoView;->videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->access$100(Lcom/google/android/apps/plus/hangout/SelfVideoView;)Lcom/google/android/apps/plus/hangout/VideoCapturer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->stop()V

    .line 51
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->stopOutgoingVideo()V

    goto :goto_25

    :cond_62
    move v1, v3

    .line 53
    goto :goto_32

    :cond_64
    move v2, v3

    .line 55
    goto :goto_3f
.end method
