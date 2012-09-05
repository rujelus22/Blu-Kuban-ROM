.class Lcom/samsung/dmp/layout/DMPVideoActivity$31;
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
    .line 2462
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$31;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v5, 0x3eb

    const/4 v4, 0x1

    .line 2464
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2465
    .local v0, action:Ljava/lang/String;
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPalmTouchReceiver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    const-string v1, "android.intent.action.PALM_DOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 2468
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$31;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 2469
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$31;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsPalmAvailable:Z
    invoke-static {v1, v4}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$6402(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    .line 2470
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$31;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2481
    :cond_41
    :goto_41
    return-void

    .line 2472
    :cond_42
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$31;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    const/4 v2, 0x0

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsPalmAvailable:Z
    invoke-static {v1, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$6402(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    goto :goto_41

    .line 2474
    :cond_49
    const-string v1, "android.intent.action.PALM_UP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 2475
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$31;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsPalmAvailable:Z
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$6400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v1

    if-ne v1, v4, :cond_63

    .line 2476
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$31;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_41

    .line 2478
    :cond_63
    const-string v1, "DLNA"

    const-string v2, "mIsPalmAvailable == false"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41
.end method
