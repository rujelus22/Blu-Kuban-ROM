.class Lcom/google/android/music/LocalDevicePlayback$18;
.super Ljava/lang/Object;
.source "LocalDevicePlayback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/LocalDevicePlayback;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/LocalDevicePlayback;


# direct methods
.method constructor <init>(Lcom/google/android/music/LocalDevicePlayback;)V
    .registers 2
    .parameter

    .prologue
    .line 2037
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback$18;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const-wide/16 v9, 0x7d0

    const-wide/16 v7, -0x1

    const/4 v6, 0x1

    .line 2041
    :try_start_5
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$18;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$700(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2042
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$18;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$700(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2044
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$18;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mIsSupposedToBePlaying:Z
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$1300(Lcom/google/android/music/LocalDevicePlayback;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 2045
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$18;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const/4 v3, 0x1

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mIsSupposedToBePlaying:Z
    invoke-static {v2, v3}, Lcom/google/android/music/LocalDevicePlayback;->access$1302(Lcom/google/android/music/LocalDevicePlayback;Z)Z

    .line 2046
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$18;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const/4 v3, 0x0

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mPausedByTransientLossOfFocus:Z
    invoke-static {v2, v3}, Lcom/google/android/music/LocalDevicePlayback;->access$2702(Lcom/google/android/music/LocalDevicePlayback;Z)Z

    .line 2047
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$18;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-virtual {v2}, Lcom/google/android/music/LocalDevicePlayback;->onPlayStateChanged()V

    .line 2050
    :cond_32
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$18;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$1800(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->length()I

    move-result v2

    if-gtz v2, :cond_5d

    .line 2054
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$18;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$1800(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    move-result-object v2

    new-instance v3, Lcom/google/android/music/medialist/AllSongsList;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/music/medialist/AllSongsList;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->setMediaList(Lcom/google/android/music/medialist/SongList;)V

    .line 2055
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$18;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const/4 v3, 0x1

    #calls: Lcom/google/android/music/LocalDevicePlayback;->next(Z)V
    invoke-static {v2, v3}, Lcom/google/android/music/LocalDevicePlayback;->access$1400(Lcom/google/android/music/LocalDevicePlayback;Z)V
    :try_end_53
    .catchall {:try_start_5 .. :try_end_53} :catchall_d0

    .line 2077
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$18;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$3200(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2079
    :goto_5c
    return-void

    .line 2058
    :cond_5d
    :try_start_5d
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$18;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$900(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/player/AsyncMediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/player/AsyncMediaPlayer;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_91

    .line 2061
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$18;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    #calls: Lcom/google/android/music/LocalDevicePlayback;->openCurrentAndNext(ZZZ)V
    invoke-static {v2, v3, v4, v5}, Lcom/google/android/music/LocalDevicePlayback;->access$1500(Lcom/google/android/music/LocalDevicePlayback;ZZZ)V

    .line 2063
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$18;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mReloadedQueueSeekPos:J
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$4200(Lcom/google/android/music/LocalDevicePlayback;)J

    move-result-wide v2

    cmp-long v2, v2, v7

    if-eqz v2, :cond_91

    .line 2064
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$18;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$900(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/player/AsyncMediaPlayer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$18;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mReloadedQueueSeekPos:J
    invoke-static {v3}, Lcom/google/android/music/LocalDevicePlayback;->access$4200(Lcom/google/android/music/LocalDevicePlayback;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/player/AsyncMediaPlayer;->seek(J)J

    .line 2065
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$18;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const-wide/16 v3, -0x1

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mReloadedQueueSeekPos:J
    invoke-static {v2, v3, v4}, Lcom/google/android/music/LocalDevicePlayback;->access$4202(Lcom/google/android/music/LocalDevicePlayback;J)J

    .line 2070
    :cond_91
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$18;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$900(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/player/AsyncMediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/player/AsyncMediaPlayer;->duration()J

    move-result-wide v0

    .line 2071
    .local v0, duration:J
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$18;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mRepeatMode:I
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$2400(Lcom/google/android/music/LocalDevicePlayback;)I

    move-result v2

    if-eq v2, v6, :cond_bd

    cmp-long v2, v0, v9

    if-lez v2, :cond_bd

    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$18;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$900(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/player/AsyncMediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/player/AsyncMediaPlayer;->position()J

    move-result-wide v2

    sub-long v4, v0, v9

    cmp-long v2, v2, v4

    if-ltz v2, :cond_bd

    .line 2073
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$18;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const/4 v3, 0x1

    #calls: Lcom/google/android/music/LocalDevicePlayback;->next(Z)V
    invoke-static {v2, v3}, Lcom/google/android/music/LocalDevicePlayback;->access$1400(Lcom/google/android/music/LocalDevicePlayback;Z)V

    .line 2075
    :cond_bd
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$18;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$900(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/player/AsyncMediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/player/AsyncMediaPlayer;->start()V
    :try_end_c6
    .catchall {:try_start_5d .. :try_end_c6} :catchall_d0

    .line 2077
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$18;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$3200(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_5c

    .end local v0           #duration:J
    :catchall_d0
    move-exception v2

    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$18;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/google/android/music/LocalDevicePlayback;->access$3200(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
.end method
