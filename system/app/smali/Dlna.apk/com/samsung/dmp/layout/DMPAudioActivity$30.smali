.class Lcom/samsung/dmp/layout/DMPAudioActivity$30;
.super Landroid/content/BroadcastReceiver;
.source "DMPAudioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmp/layout/DMPAudioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1859
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$30;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1861
    const-string v2, "state"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4b

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$30;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v2

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$30;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$30;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsStopped:Z
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$400(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1863
    :cond_26
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$30;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsStopped:Z
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$400(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z

    move-result v2

    if-nez v2, :cond_4b

    .line 1864
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$30;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmp/layout/VideoSurfaceView;->pause()V

    .line 1865
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$30;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mPaused:Z
    invoke-static {v2, v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$602(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z

    .line 1866
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$30;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlViewDMP;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$300(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/app/dlna/view/MediaControlViewDMP;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$30;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mPaused:Z
    invoke-static {v3}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$600(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->SetPlayPauseButtonImage(Z)V

    .line 1870
    :cond_4b
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$30;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    const-string v3, "state"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_8b

    :goto_55
    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsHeadsetPlugged:Z
    invoke-static {v2, v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$3402(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z

    .line 1871
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$30;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsHeadsetPlugged:Z
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$3400(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z

    move-result v0

    if-nez v0, :cond_8a

    .line 1872
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$30;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->is51channelOn:Z
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$3300(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 1873
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$30;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_79

    .line 1874
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$30;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setR2VSMode(Z)V

    .line 1876
    :cond_79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$30;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->is51channelOn:Z
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$3302(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z

    .line 1877
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$30;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mButtonSRS:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$3500(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02008e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1880
    :cond_8a
    return-void

    :cond_8b
    move v0, v1

    .line 1870
    goto :goto_55
.end method
