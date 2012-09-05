.class Lcom/samsung/dmp/layout/DMPVideoActivity$16;
.super Ljava/lang/Object;
.source "DMPVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1733
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$16;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1736
    :goto_0
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$16;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->isDestroying:Z
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$5900(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1737
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$16;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    iget-boolean v1, v1, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPrevOccurence:Z

    if-eqz v1, :cond_14

    .line 1738
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$16;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPrevOccurence:Z

    .line 1770
    :cond_13
    return-void

    .line 1741
    :cond_14
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$16;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->isSuspended:Z
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$3100(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1742
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$16;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mutex:Ljava/lang/Object;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$3200(Lcom/samsung/dmp/layout/DMPVideoActivity;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1744
    :try_start_23
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$16;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mutex:Ljava/lang/Object;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$3200(Lcom/samsung/dmp/layout/DMPVideoActivity;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_75
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_2c} :catch_70

    .line 1748
    :goto_2c
    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_75

    .line 1750
    :cond_2d
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$16;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsStopped:Z
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1100(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1753
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$16;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$16;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmp/layout/VideoSurfaceView;->getCurrentPosition()I

    move-result v2

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->currentPosition:I
    invoke-static {v1, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$602(Lcom/samsung/dmp/layout/DMPVideoActivity;I)I

    .line 1759
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$16;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1760
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$16;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3ee

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1761
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$16;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1b58

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1764
    const-wide/16 v1, 0x3e8

    :try_start_67
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6a
    .catch Ljava/lang/InterruptedException; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_0

    .line 1765
    :catch_6b
    move-exception v0

    .line 1766
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1745
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_70
    move-exception v0

    .line 1746
    .restart local v0       #e:Ljava/lang/InterruptedException;
    :try_start_71
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2c

    .line 1748
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_75
    move-exception v1

    monitor-exit v2
    :try_end_77
    .catchall {:try_start_71 .. :try_end_77} :catchall_75

    throw v1
.end method
