.class Lcom/google/android/music/athome/AtHomeDevicePlayback$2;
.super Ljava/lang/Object;
.source "AtHomeDevicePlayback.java"

# interfaces
.implements Lcom/google/android/music/athome/api/MusicConnector$OnGetSessionInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeDevicePlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V
    .registers 2
    .parameter

    .prologue
    .line 1473
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$2;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetSessionInfo(Lcom/google/android/music/athome/api/AtHomeSessionInfo;)V
    .registers 16
    .parameter "session"

    .prologue
    const/4 v3, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1477
    const/4 v9, 0x0

    .line 1478
    .local v9, shuffleModeChanged:Z
    const/4 v8, 0x0

    .line 1479
    .local v8, repeatModeChanged:Z
    const/4 v7, 0x0

    .line 1480
    .local v7, playLocalList:Z
    const/4 v10, 0x1

    .line 1481
    .local v10, success:Z
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$2;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v13

    monitor-enter v13

    .line 1482
    :try_start_e
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$2;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector;

    move-result-object v0

    if-nez v0, :cond_18

    monitor-exit v13

    .line 1515
    :cond_17
    :goto_17
    return-void

    .line 1483
    :cond_18
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$2;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, v3, :cond_4b

    .line 1484
    const-string v0, "aah.Music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state in onGetSessionInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$2;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    monitor-exit v13

    goto :goto_17

    .line 1502
    :catchall_48
    move-exception v0

    monitor-exit v13
    :try_end_4a
    .catchall {:try_start_e .. :try_end_4a} :catchall_48

    throw v0

    .line 1488
    :cond_4b
    :try_start_4b
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$2;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->shouldReuseSessionLocked(Lcom/google/android/music/athome/api/AtHomeSessionInfo;)Z
    invoke-static {v0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$4500(Lcom/google/android/music/athome/AtHomeDevicePlayback;Lcom/google/android/music/athome/api/AtHomeSessionInfo;)Z

    move-result v0

    if-nez v0, :cond_b3

    .line 1489
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$2;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;
    invoke-static {v0, v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2002(Lcom/google/android/music/athome/AtHomeDevicePlayback;Lcom/google/android/music/athome/api/AtHomeSessionInfo;)Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    .line 1490
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$2;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->getContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$4600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/athome/AtHomePlayQueue;->getMaxSize(Landroid/content/Context;)I

    move-result v4

    .line 1491
    .local v4, maxQueueSize:I
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$2;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$2;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$700(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getAtHomeSubmitterId()J

    move-result-wide v1

    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$2;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPartyMode:Z
    invoke-static {v5}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$4700(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Z

    move-result v5

    if-eqz v5, :cond_af

    :goto_7b
    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$2;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mNewSessionInfoHandler:Lcom/google/android/music/athome/api/MusicConnector$OnNewSession;
    invoke-static {v5}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$4800(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector$OnNewSession;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$2;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mFatalErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;
    invoke-static {v6}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$4300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Landroid/support/place/rpc/RpcErrorHandler;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/athome/api/MusicConnector;->newSession(JIILcom/google/android/music/athome/api/MusicConnector$OnNewSession;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 1494
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$2;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mLastLocalPlaybackSongList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$4900(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    if-eqz v0, :cond_b1

    move v7, v11

    .line 1502
    .end local v4           #maxQueueSize:I
    :goto_93
    monitor-exit v13
    :try_end_94
    .catchall {:try_start_4b .. :try_end_94} :catchall_48

    .line 1504
    if-eqz v9, :cond_9d

    .line 1505
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$2;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    const-string v1, "com.google.android.music.shufflemodechanged"

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$5300(Lcom/google/android/music/athome/AtHomeDevicePlayback;Ljava/lang/String;)V

    .line 1507
    :cond_9d
    if-eqz v8, :cond_a6

    .line 1508
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$2;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    const-string v1, "com.google.android.music.repeatmodechanged"

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$5400(Lcom/google/android/music/athome/AtHomeDevicePlayback;Ljava/lang/String;)V

    .line 1510
    :cond_a6
    if-nez v10, :cond_d7

    .line 1511
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$2;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyFailure()V

    goto/16 :goto_17

    .restart local v4       #maxQueueSize:I
    :cond_af
    move v3, v11

    .line 1491
    goto :goto_7b

    :cond_b1
    move v7, v12

    .line 1494
    goto :goto_93

    .line 1496
    .end local v4           #maxQueueSize:I
    :cond_b3
    :try_start_b3
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$2;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    const/4 v1, 0x0

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->processSessionInfoLocked(Lcom/google/android/music/athome/api/AtHomeSessionInfo;Z)Z
    invoke-static {v0, p1, v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$5000(Lcom/google/android/music/athome/AtHomeDevicePlayback;Lcom/google/android/music/athome/api/AtHomeSessionInfo;Z)Z

    move-result v10

    .line 1497
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$2;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->isShuffle()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeUtils;->getShuffleMode(Z)I

    move-result v1

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateShuffleModeLocked(I)Z
    invoke-static {v0, v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$5100(Lcom/google/android/music/athome/AtHomeDevicePlayback;I)Z

    move-result v9

    .line 1499
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$2;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getRepeatMode()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeUtils;->atHomeToPlaybackServiceRepeatMode(I)I

    move-result v1

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateRepeatModeLocked(I)Z
    invoke-static {v0, v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$5200(Lcom/google/android/music/athome/AtHomeDevicePlayback;I)Z
    :try_end_d5
    .catchall {:try_start_b3 .. :try_end_d5} :catchall_48

    move-result v8

    goto :goto_93

    .line 1512
    :cond_d7
    if-eqz v7, :cond_17

    .line 1513
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$2;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$2;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mLastLocalPlaybackSongList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$4900(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/medialist/SongList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$2;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mLastLocalPlaybackSongListPosition:I
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$5500(Lcom/google/android/music/athome/AtHomeDevicePlayback;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v11}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->open(Lcom/google/android/music/medialist/SongList;IZ)V

    goto/16 :goto_17
.end method
