.class Lcom/google/android/music/athome/AtHomeDevicePlayback$11;
.super Lcom/google/android/music/athome/api/MusicConnector$Listener;
.source "AtHomeDevicePlayback.java"


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
    .line 1679
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-direct {p0}, Lcom/google/android/music/athome/api/MusicConnector$Listener;-><init>()V

    return-void
.end method

.method private postProcessQueueUpdate(Lcom/google/android/music/athome/api/AtHomeModificationResult;)V
    .registers 5
    .parameter "modificationResult"

    .prologue
    .line 1874
    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->getModificationStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_60

    .line 1890
    const-string v0, "aah.Music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected modification status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->getModificationStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    :goto_23
    return-void

    .line 1876
    :pswitch_24
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateAtHomeMediaList()V
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$3000(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    goto :goto_23

    .line 1879
    :pswitch_2a
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateAtHomeMediaList()V
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$3000(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    .line 1880
    invoke-static {}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1881
    const-string v0, "aah.Music"

    const-string v1, "Play queue needs resync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    :cond_3c
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->resyncPlayQueue()V
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$1700(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    goto :goto_23

    .line 1886
    :pswitch_42
    const-string v0, "aah.Music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modification failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->resyncPlayQueue()V
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$1700(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    goto :goto_23

    .line 1874
    :pswitch_data_60
    .packed-switch -0x2
        :pswitch_2a
        :pswitch_42
        :pswitch_24
    .end packed-switch
.end method

.method private preProcessQueueUpdate(JI)Z
    .registers 8
    .parameter "sessionId"
    .parameter "newVersion"

    .prologue
    const/4 v0, 0x0

    .line 1847
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/athome/AtHomePlayQueue;->getSessionId()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1d

    .line 1848
    invoke-static {}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$1800()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1849
    const-string v1, "aah.Music"

    const-string v2, "Ignoring play queue update due to id mismatch"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    :cond_1c
    :goto_1c
    return v0

    .line 1854
    :cond_1d
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mFullQueueSyncInProgress:Z
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$6000(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1855
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    int-to-long v2, p3

    #setter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueueVersionWhileSyncing:J
    invoke-static {v1, v2, v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$6102(Lcom/google/android/music/athome/AtHomeDevicePlayback;J)J

    goto :goto_1c

    .line 1859
    :cond_2c
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/athome/AtHomePlayQueue;->getVersion()I

    move-result v1

    if-lt v1, p3, :cond_6b

    .line 1860
    invoke-static {}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$1800()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1861
    const-string v1, "aah.Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring play queue update. Local version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/athome/AtHomePlayQueue;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Remote version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 1867
    :cond_6b
    const/4 v0, 0x1

    goto :goto_1c
.end method


# virtual methods
.method public onAllSongsRemoved(JILandroid/support/place/rpc/RpcContext;)V
    .registers 7
    .parameter "sessionId"
    .parameter "newVersion"
    .parameter "context"

    .prologue
    .line 1761
    invoke-static {}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1762
    const-string v0, "aah.Music"

    const-string v1, "Play queue cleared"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    :cond_d
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->clearPlayQueue(JI)V
    invoke-static {v0, p1, p2, p3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$6900(Lcom/google/android/music/athome/AtHomeDevicePlayback;JI)V

    .line 1765
    return-void
.end method

.method public onConnected(Landroid/support/place/rpc/RpcData;)V
    .registers 2
    .parameter "state"

    .prologue
    .line 1713
    invoke-super {p0, p1}, Lcom/google/android/music/athome/api/MusicConnector$Listener;->onConnected(Landroid/support/place/rpc/RpcData;)V

    .line 1714
    return-void
.end method

.method public onDisconnected()V
    .registers 7

    .prologue
    .line 1718
    invoke-super {p0}, Lcom/google/android/music/athome/api/MusicConnector$Listener;->onDisconnected()V

    .line 1719
    const-string v0, "aah.Music"

    const-string v1, "AtHomeMusicClient listener disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeError:Z
    invoke-static {v0, v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$1102(Lcom/google/android/music/athome/AtHomeDevicePlayback;Z)Z

    .line 1721
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    const/16 v1, 0x138c

    #setter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeErrorType:I
    invoke-static {v0, v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$1202(Lcom/google/android/music/athome/AtHomeDevicePlayback;I)I

    .line 1722
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyFailure()V

    .line 1725
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    monitor-enter v1

    .line 1726
    :try_start_23
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 1727
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/athome/api/MusicConnector;->startListening(Lcom/google/android/music/athome/api/MusicConnector$Listener;)V

    .line 1728
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$700(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->getAtHomeSubmitterId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mGetSessionInfoHandler:Lcom/google/android/music/athome/api/MusicConnector$OnGetSessionInfo;
    invoke-static {v4}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$4200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector$OnGetSessionInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mFatalErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;
    invoke-static {v5}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$4300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Landroid/support/place/rpc/RpcErrorHandler;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/music/athome/api/MusicConnector;->getSessionInfo(JLcom/google/android/music/athome/api/MusicConnector$OnGetSessionInfo;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 1731
    :cond_53
    monitor-exit v1

    .line 1732
    return-void

    .line 1731
    :catchall_55
    move-exception v0

    monitor-exit v1
    :try_end_57
    .catchall {:try_start_23 .. :try_end_57} :catchall_55

    throw v0
.end method

.method public onPlayStateChanged(JLcom/google/android/music/athome/api/AtHomePlayState;Landroid/support/place/rpc/RpcContext;)V
    .registers 6
    .parameter "sessionId"
    .parameter "state"
    .parameter "context"

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->processPlayStateUpdate(Lcom/google/android/music/athome/api/AtHomePlayState;)V
    invoke-static {v0, p3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$6400(Lcom/google/android/music/athome/AtHomeDevicePlayback;Lcom/google/android/music/athome/api/AtHomePlayState;)V

    .line 1931
    return-void
.end method

.method public onRegisteredSubmitter(JLcom/google/android/music/athome/api/SubmitterInfo;Landroid/support/place/rpc/RpcContext;)V
    .registers 6
    .parameter "sessionId"
    .parameter "submitter"
    .parameter "context"

    .prologue
    .line 1973
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/music/athome/AtHomePlayQueue;->addSubmitter(Lcom/google/android/music/athome/api/SubmitterInfo;)V

    .line 1974
    return-void
.end method

.method public onRepeatModeChanged(JILandroid/support/place/rpc/RpcContext;)V
    .registers 10
    .parameter "sessionId"
    .parameter "atHomeRepeatMode"
    .parameter "context"

    .prologue
    .line 1995
    const/4 v1, 0x0

    .line 1996
    .local v1, repeatModeChanged:Z
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    monitor-enter v3

    .line 1997
    :try_start_8
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector;

    move-result-object v2

    if-nez v2, :cond_19

    .line 1998
    const-string v2, "aah.Music"

    const-string v4, "onRepeatModeChanged ignored (not connected to a place)"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    monitor-exit v3

    .line 2009
    :cond_18
    :goto_18
    return-void

    .line 2002
    :cond_19
    invoke-static {p3}, Lcom/google/android/music/athome/AtHomeUtils;->atHomeToPlaybackServiceRepeatMode(I)I

    move-result v0

    .line 2004
    .local v0, playbackServiceRepeatMode:I
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateRepeatModeLocked(I)Z
    invoke-static {v2, v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$5200(Lcom/google/android/music/athome/AtHomeDevicePlayback;I)Z

    move-result v1

    .line 2005
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2e

    .line 2006
    if-eqz v1, :cond_18

    .line 2007
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    const-string v3, "com.google.android.music.repeatmodechanged"

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyChange(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$7100(Lcom/google/android/music/athome/AtHomeDevicePlayback;Ljava/lang/String;)V

    goto :goto_18

    .line 2005
    .end local v0           #playbackServiceRepeatMode:I
    :catchall_2e
    move-exception v2

    :try_start_2f
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v2
.end method

.method public onSessionEnded(JLandroid/support/place/rpc/RpcContext;)V
    .registers 9
    .parameter "sessionId"
    .parameter "context"

    .prologue
    .line 1912
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/athome/AtHomePlayQueue;->getSessionId()J

    move-result-wide v2

    const/4 v4, 0x0

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->clearPlayQueue(JI)V
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$6900(Lcom/google/android/music/athome/AtHomeDevicePlayback;JI)V

    .line 1914
    const/4 v0, 0x0

    .line 1915
    .local v0, error:Z
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    monitor-enter v2

    .line 1916
    :try_start_18
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2000(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    move-result-object v1

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2000(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v3

    cmp-long v1, p1, v3

    if-nez v1, :cond_4e

    .line 1917
    const-string v1, "aah.Music"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session ended "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    const/4 v0, 0x1

    .line 1919
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    const/16 v3, 0x138f

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->onFatalErrorLocked(I)V
    invoke-static {v1, v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$4400(Lcom/google/android/music/athome/AtHomeDevicePlayback;I)V

    .line 1921
    :cond_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_18 .. :try_end_4f} :catchall_57

    .line 1922
    if-eqz v0, :cond_56

    .line 1923
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-virtual {v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyFailure()V

    .line 1925
    :cond_56
    return-void

    .line 1921
    :catchall_57
    move-exception v1

    :try_start_58
    monitor-exit v2
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v1
.end method

.method public onSessionVariableChanged(JLjava/lang/String;Landroid/support/place/rpc/RpcData;Landroid/support/place/rpc/RpcContext;)V
    .registers 10
    .parameter "sessionId"
    .parameter "name"
    .parameter "value"
    .parameter "context"

    .prologue
    .line 1899
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    monitor-enter v1

    .line 1900
    :try_start_7
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2000(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2000(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-nez v0, :cond_52

    .line 1901
    invoke-static {}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1902
    const-string v2, "aah.Music"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated session variable: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p4, :cond_54

    const-string v0, "null"

    :goto_3e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    :cond_49
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2000(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->setSessionVariable(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 1907
    :cond_52
    monitor-exit v1

    .line 1908
    return-void

    .line 1902
    :cond_54
    invoke-virtual {p4}, Landroid/support/place/rpc/RpcData;->toDebugString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    .line 1907
    :catchall_59
    move-exception v0

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_7 .. :try_end_5b} :catchall_59

    throw v0
.end method

.method public onShuffleChanged(JZLandroid/support/place/rpc/RpcContext;)V
    .registers 9
    .parameter "sessionId"
    .parameter "shuffled"
    .parameter "context"

    .prologue
    .line 1979
    const/4 v0, 0x0

    .line 1980
    .local v0, shuffleModeChanged:Z
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    monitor-enter v2

    .line 1981
    :try_start_8
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector;

    move-result-object v1

    if-nez v1, :cond_19

    .line 1982
    const-string v1, "aah.Music"

    const-string v3, "onShuffleChanged ignored (not connected to a place)"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    monitor-exit v2

    .line 1990
    :cond_18
    :goto_18
    return-void

    .line 1985
    :cond_19
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-static {p3}, Lcom/google/android/music/athome/AtHomeUtils;->getShuffleMode(Z)I

    move-result v3

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateShuffleModeLocked(I)Z
    invoke-static {v1, v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$5100(Lcom/google/android/music/athome/AtHomeDevicePlayback;I)Z

    move-result v0

    .line 1986
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2e

    .line 1987
    if-eqz v0, :cond_18

    .line 1988
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    const-string v2, "com.google.android.music.shufflemodechanged"

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$7000(Lcom/google/android/music/athome/AtHomeDevicePlayback;Ljava/lang/String;)V

    goto :goto_18

    .line 1986
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public onSongMoved(JIJJLandroid/support/place/rpc/RpcContext;)V
    .registers 19
    .parameter "sessionId"
    .parameter "newVersion"
    .parameter "movedSongQueueId"
    .parameter "desiredPosisionQueueId"
    .parameter "context"

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v9

    monitor-enter v9

    .line 1701
    :try_start_7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->preProcessQueueUpdate(JI)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1702
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v0

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/music/athome/AtHomePlayQueue;->moveSong(JIJJ)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v8

    .line 1707
    .local v8, result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    monitor-exit v9
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_23

    .line 1708
    invoke-direct {p0, v8}, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->postProcessQueueUpdate(Lcom/google/android/music/athome/api/AtHomeModificationResult;)V

    .line 1709
    .end local v8           #result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :goto_20
    return-void

    .line 1705
    :cond_21
    :try_start_21
    monitor-exit v9

    goto :goto_20

    .line 1707
    :catchall_23
    move-exception v0

    monitor-exit v9
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public onSongRangeRemoved(JIJJLandroid/support/place/rpc/RpcContext;)V
    .registers 20
    .parameter "sessionId"
    .parameter "newVersion"
    .parameter "firstSongQueueId"
    .parameter "lastSongQueueId"
    .parameter "context"

    .prologue
    .line 1957
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v10

    monitor-enter v10

    .line 1958
    :try_start_7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->preProcessQueueUpdate(JI)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1959
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v0

    const/4 v8, 0x0

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/music/athome/AtHomePlayQueue;->removeSongsInRange(JIJJLcom/google/android/music/athome/AtHomePlayQueue$OnRemovedHandler;)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v9

    .line 1964
    .local v9, result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    monitor-exit v10
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_24

    .line 1965
    invoke-direct {p0, v9}, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->postProcessQueueUpdate(Lcom/google/android/music/athome/api/AtHomeModificationResult;)V

    .line 1966
    .end local v9           #result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :goto_21
    return-void

    .line 1962
    :cond_22
    :try_start_22
    monitor-exit v10

    goto :goto_21

    .line 1964
    :catchall_24
    move-exception v0

    monitor-exit v10
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public onSongRemoved(JIJLandroid/support/place/rpc/RpcContext;)V
    .registers 15
    .parameter "sessionId"
    .parameter "newVersion"
    .parameter "songQueueId"
    .parameter "context"

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v7

    monitor-enter v7

    .line 1686
    :try_start_7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->preProcessQueueUpdate(JI)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1687
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v0

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/athome/AtHomePlayQueue;->removeSong(JIJ)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v6

    .line 1691
    .local v6, result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    monitor-exit v7
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_21

    .line 1692
    invoke-direct {p0, v6}, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->postProcessQueueUpdate(Lcom/google/android/music/athome/api/AtHomeModificationResult;)V

    .line 1693
    .end local v6           #result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :goto_1e
    return-void

    .line 1689
    :cond_1f
    :try_start_1f
    monitor-exit v7

    goto :goto_1e

    .line 1691
    :catchall_21
    move-exception v0

    monitor-exit v7
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_21

    throw v0
.end method

.method public onSongsAppended(JILjava/util/List;Landroid/support/place/rpc/RpcContext;)V
    .registers 9
    .parameter "sessionId"
    .parameter "newVersion"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;",
            "Landroid/support/place/rpc/RpcContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1772
    .local p4, addedSongs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v2

    monitor-enter v2

    .line 1773
    :try_start_7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->preProcessQueueUpdate(JI)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1774
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/music/athome/AtHomePlayQueue;->appendSongs(JILjava/util/Collection;)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v0

    .line 1778
    .local v0, result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1e

    .line 1779
    invoke-direct {p0, v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->postProcessQueueUpdate(Lcom/google/android/music/athome/api/AtHomeModificationResult;)V

    .line 1780
    .end local v0           #result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :goto_1b
    return-void

    .line 1776
    :cond_1c
    :try_start_1c
    monitor-exit v2

    goto :goto_1b

    .line 1778
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public onSongsInserted(JIJLjava/util/List;Landroid/support/place/rpc/RpcContext;)V
    .registers 17
    .parameter "sessionId"
    .parameter "newVersion"
    .parameter "insertAfterQueueId"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;",
            "Landroid/support/place/rpc/RpcContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1801
    .local p6, newSongs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v8

    monitor-enter v8

    .line 1802
    :try_start_7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->preProcessQueueUpdate(JI)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1803
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v0

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/athome/AtHomePlayQueue;->insertSongs(JIJLjava/util/Collection;)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v7

    .line 1808
    .local v7, result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    monitor-exit v8
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_22

    .line 1809
    invoke-direct {p0, v7}, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->postProcessQueueUpdate(Lcom/google/android/music/athome/api/AtHomeModificationResult;)V

    .line 1810
    .end local v7           #result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :goto_1f
    return-void

    .line 1806
    :cond_20
    :try_start_20
    monitor-exit v8

    goto :goto_1f

    .line 1808
    :catchall_22
    move-exception v0

    monitor-exit v8
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public onSongsInsertedAndPositioned(JIJLjava/util/List;Landroid/support/place/rpc/RpcData;Landroid/support/place/rpc/RpcContext;)V
    .registers 19
    .parameter "sessionId"
    .parameter "newVersion"
    .parameter "lastUnaffectedSongId"
    .parameter
    .parameter "previousSongIds"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;",
            "Landroid/support/place/rpc/RpcData;",
            "Landroid/support/place/rpc/RpcContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1818
    .local p6, newSongs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v9

    monitor-enter v9

    .line 1819
    :try_start_7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->preProcessQueueUpdate(JI)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1820
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v0

    invoke-static/range {p7 .. p7}, Lcom/google/android/music/athome/api/AtHomeApiUtils;->toLongs(Landroid/support/place/rpc/RpcData;)[J

    move-result-object v7

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/music/athome/AtHomePlayQueue;->insertAndPositionSongs(JIJLjava/util/Collection;[J)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v8

    .line 1826
    .local v8, result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    monitor-exit v9
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_27

    .line 1827
    invoke-direct {p0, v8}, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->postProcessQueueUpdate(Lcom/google/android/music/athome/api/AtHomeModificationResult;)V

    .line 1828
    .end local v8           #result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :goto_24
    return-void

    .line 1824
    :cond_25
    :try_start_25
    monitor-exit v9

    goto :goto_24

    .line 1826
    :catchall_27
    move-exception v0

    monitor-exit v9
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public onSongsPrepended(JILjava/util/List;Landroid/support/place/rpc/RpcContext;)V
    .registers 9
    .parameter "sessionId"
    .parameter "newVersion"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;",
            "Landroid/support/place/rpc/RpcContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1787
    .local p4, newSongs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v2

    monitor-enter v2

    .line 1788
    :try_start_7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->preProcessQueueUpdate(JI)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1789
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/music/athome/AtHomePlayQueue;->prependSongs(JILjava/util/Collection;)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v0

    .line 1793
    .local v0, result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1e

    .line 1794
    invoke-direct {p0, v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->postProcessQueueUpdate(Lcom/google/android/music/athome/api/AtHomeModificationResult;)V

    .line 1795
    .end local v0           #result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :goto_1b
    return-void

    .line 1791
    :cond_1c
    :try_start_1c
    monitor-exit v2

    goto :goto_1b

    .line 1793
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public onSongsReodered(JIJLandroid/support/place/rpc/RpcData;Landroid/support/place/rpc/RpcContext;)V
    .registers 17
    .parameter "sessionId"
    .parameter "newVersion"
    .parameter "lastUnaffectedSongId"
    .parameter "reorderedSongIds"
    .parameter "context"

    .prologue
    .line 2016
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v8

    monitor-enter v8

    .line 2017
    :try_start_7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->preProcessQueueUpdate(JI)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2018
    invoke-static {p6}, Lcom/google/android/music/athome/api/AtHomeApiUtils;->toLongs(Landroid/support/place/rpc/RpcData;)[J

    move-result-object v6

    .line 2019
    .local v6, reorderedSongs:[J
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v0

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/athome/AtHomePlayQueue;->reorderOrder(JIJ[J)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v7

    .line 2024
    .local v7, result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    monitor-exit v8
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_25

    .line 2026
    invoke-direct {p0, v7}, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->postProcessQueueUpdate(Lcom/google/android/music/athome/api/AtHomeModificationResult;)V

    .line 2027
    .end local v6           #reorderedSongs:[J
    .end local v7           #result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :goto_22
    return-void

    .line 2022
    :cond_23
    :try_start_23
    monitor-exit v8

    goto :goto_22

    .line 2024
    :catchall_25
    move-exception v0

    monitor-exit v8
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public onSongsUpdated(JILjava/util/List;Landroid/support/place/rpc/RpcContext;)V
    .registers 9
    .parameter "sessionId"
    .parameter "newVersion"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;",
            "Landroid/support/place/rpc/RpcContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1835
    .local p4, updatedSongs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v2

    monitor-enter v2

    .line 1836
    :try_start_7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->preProcessQueueUpdate(JI)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1837
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/music/athome/AtHomePlayQueue;->updateSongs(JILjava/util/Collection;)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v0

    .line 1841
    .local v0, result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1e

    .line 1842
    invoke-direct {p0, v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->postProcessQueueUpdate(Lcom/google/android/music/athome/api/AtHomeModificationResult;)V

    .line 1843
    .end local v0           #result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :goto_1b
    return-void

    .line 1839
    :cond_1c
    :try_start_1c
    monitor-exit v2

    goto :goto_1b

    .line 1841
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public onSubmitterSongsRemoved(JIJLandroid/support/place/rpc/RpcContext;)V
    .registers 15
    .parameter "sessionId"
    .parameter "newVersion"
    .parameter "submitterId"
    .parameter "context"

    .prologue
    .line 1937
    invoke-static {}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1938
    const-string v0, "aah.Music"

    const-string v1, "Removing account songs"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    :cond_d
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v7

    monitor-enter v7

    .line 1942
    :try_start_14
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->preProcessQueueUpdate(JI)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1943
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v0

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/athome/AtHomePlayQueue;->removeSubmitterSongs(JIJ)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v6

    .line 1948
    .local v6, result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    monitor-exit v7
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_2e

    .line 1949
    invoke-direct {p0, v6}, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;->postProcessQueueUpdate(Lcom/google/android/music/athome/api/AtHomeModificationResult;)V

    .line 1950
    .end local v6           #result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :goto_2b
    return-void

    .line 1946
    :cond_2c
    :try_start_2c
    monitor-exit v7

    goto :goto_2b

    .line 1948
    :catchall_2e
    move-exception v0

    monitor-exit v7
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_2e

    throw v0
.end method
