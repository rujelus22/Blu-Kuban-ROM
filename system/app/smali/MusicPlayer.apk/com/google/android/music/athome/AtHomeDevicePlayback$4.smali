.class Lcom/google/android/music/athome/AtHomeDevicePlayback$4;
.super Ljava/lang/Object;
.source "AtHomeDevicePlayback.java"

# interfaces
.implements Lcom/google/android/music/athome/api/MusicConnector$OnGetQueue;


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
    .line 1549
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$4;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetQueue(Lcom/google/android/music/athome/api/AtHomePlayQueueContent;)V
    .registers 11
    .parameter "queue"

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$4;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    monitor-enter v8

    .line 1553
    :try_start_7
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$4;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector;

    move-result-object v0

    if-nez v0, :cond_11

    monitor-exit v8

    .line 1581
    :goto_10
    return-void

    .line 1554
    :cond_11
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$4;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->checkSessionLocked()Z
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$5800(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Z

    move-result v0

    if-nez v0, :cond_1e

    monitor-exit v8

    goto :goto_10

    .line 1577
    :catchall_1b
    move-exception v0

    monitor-exit v8
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v0

    .line 1556
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$4;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$4;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2000(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$4;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$700(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->getAtHomeSubmitterId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$4;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mGetPlayStateHandler:Lcom/google/android/music/athome/api/MusicConnector$OnGetPlayState;
    invoke-static {v5}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$5900(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector$OnGetPlayState;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$4;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;
    invoke-static {v6}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$900(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Landroid/support/place/rpc/RpcErrorHandler;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/athome/api/MusicConnector;->getPlayState(JJLcom/google/android/music/athome/api/MusicConnector$OnGetPlayState;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 1559
    const/4 v7, 0x0

    .line 1560
    .local v7, gotQueue:Z
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$4;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v1

    monitor-enter v1
    :try_end_4f
    .catchall {:try_start_1e .. :try_end_4f} :catchall_1b

    .line 1561
    :try_start_4f
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$4;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/music/athome/AtHomePlayQueue;->setContent(Lcom/google/android/music/athome/api/AtHomePlayQueueContent;)V

    .line 1563
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$4;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mFullQueueSyncInProgress:Z
    invoke-static {v0, v2}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$6002(Lcom/google/android/music/athome/AtHomeDevicePlayback;Z)Z

    .line 1565
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$4;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueueVersionWhileSyncing:J
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$6100(Lcom/google/android/music/athome/AtHomeDevicePlayback;)J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->getVersion()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_9e

    .line 1567
    const-string v0, "aah.Music"

    const-string v2, "Missed play queue updates during full sync"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$4;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->resyncPlayQueue()V
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$1700(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    .line 1572
    :goto_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_4f .. :try_end_7a} :catchall_a0

    .line 1574
    if-eqz v7, :cond_8f

    :try_start_7c
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$4;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8f

    .line 1575
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$4;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    const/4 v1, 0x4

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateAtHomeStateLocked(I)V
    invoke-static {v0, v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$6200(Lcom/google/android/music/athome/AtHomeDevicePlayback;I)V

    .line 1577
    :cond_8f
    monitor-exit v8
    :try_end_90
    .catchall {:try_start_7c .. :try_end_90} :catchall_1b

    .line 1579
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$4;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateAtHomeMediaList()V
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$3000(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    .line 1580
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$4;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    const-string v1, "com.android.music.playstatechanged"

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$6300(Lcom/google/android/music/athome/AtHomeDevicePlayback;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1570
    :cond_9e
    const/4 v7, 0x1

    goto :goto_79

    .line 1572
    :catchall_a0
    move-exception v0

    :try_start_a1
    monitor-exit v1
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_a0

    :try_start_a2
    throw v0
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_1b
.end method
