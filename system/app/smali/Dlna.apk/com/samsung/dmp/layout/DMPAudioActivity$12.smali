.class Lcom/samsung/dmp/layout/DMPAudioActivity$12;
.super Ljava/lang/Thread;
.source "DMPAudioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmp/layout/DMPAudioActivity;->onChange()V
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
    .line 1367
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$12;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1370
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$12;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->isSuspended:Z
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$3600(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1373
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$12;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsStopped:Z
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$400(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1392
    return-void

    .line 1376
    :cond_11
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$12;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmp/layout/VideoSurfaceView;->getCurrentPosition()I

    move-result v1

    .line 1377
    .local v1, temp_position:I
    if-eqz v1, :cond_4f

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$12;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmp/layout/VideoSurfaceView;->getDuration()I

    move-result v2

    if-gt v1, v2, :cond_4f

    .line 1378
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$12;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mCurrentPosition:I
    invoke-static {v2, v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$202(Lcom/samsung/dmp/layout/DMPAudioActivity;I)I

    .line 1383
    :goto_2e
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$12;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$900(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1384
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$12;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$900(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3ee

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1387
    const-wide/16 v2, 0x3e8

    :try_start_46
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_49
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_0

    .line 1388
    :catch_4a
    move-exception v0

    .line 1389
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1380
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_4f
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMPAudioActivity.onChange : temp_position : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method
