.class Lcom/samsung/dmp/layout/DMPVideoActivity$34;
.super Landroid/content/BroadcastReceiver;
.source "DMPVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmp/layout/DMPVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 2500
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$34;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

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

    .line 2502
    const-string v2, "state"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_48

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$34;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v2

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$34;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$34;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsStopped:Z
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1100(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 2504
    :cond_26
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$34;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsStopped:Z
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1100(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 2505
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$34;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmp/layout/VideoSurfaceView;->pause()V

    .line 2506
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$34;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mPaused:Z
    invoke-static {v2, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1002(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    .line 2507
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$34;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mPause:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1900(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const v3, 0x7f020103

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2511
    :cond_48
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$34;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    const-string v3, "state"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_88

    :goto_52
    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsHeadsetPlugged:Z
    invoke-static {v2, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$4302(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    .line 2512
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$34;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsHeadsetPlugged:Z
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$4300(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v0

    if-nez v0, :cond_87

    .line 2513
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$34;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->is51channelOn:Z
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$4200(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 2514
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$34;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 2515
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$34;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setR2VSMode(Z)V

    .line 2517
    :cond_76
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$34;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->is51channelOn:Z
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$4202(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    .line 2518
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$34;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mButtonSRS:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$4400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0200f6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2521
    :cond_87
    return-void

    :cond_88
    move v0, v1

    .line 2511
    goto :goto_52
.end method
