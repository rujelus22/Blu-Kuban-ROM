.class Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$1;
.super Ljava/lang/Object;
.source "AtHomeDevicePlayback.java"

# interfaces
.implements Lcom/google/android/music/athome/api/MusicConnector$OnAppendSongs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;)V
    .registers 2
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$1;->this$2:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppendSongs(Lcom/google/android/music/athome/api/AtHomeModificationResult;)V
    .registers 11
    .parameter "result"

    .prologue
    .line 202
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$1;->this$2:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    monitor-enter v1

    .line 203
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$1;->this$2:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->mIgnore:Z
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->access$000(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 204
    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_22

    .line 205
    const-string v0, "aah.Music"

    const-string v2, "Queue needs resync after appending songs"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$1;->this$2:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->this$1:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    const/4 v2, 0x1

    #setter for: Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mQueueOutOfSync:Z
    invoke-static {v0, v2}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->access$102(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Z)Z

    .line 207
    monitor-exit v1

    .line 223
    :goto_21
    return-void

    .line 211
    :cond_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_90

    .line 215
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$1;->this$2:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->this$1:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    monitor-enter v8

    .line 216
    :try_start_2e
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$1;->this$2:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->this$1:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector;

    move-result-object v0

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$1;->this$2:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->this$1:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mPlaySongs:Z
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->access$400(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;)Z

    move-result v0

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$1;->this$2:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->this$1:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mQueuePositionUpdated:Z
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->access$500(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 217
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$1;->this$2:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->this$1:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$1;->this$2:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    iget-object v1, v1, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->this$1:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSessionId:J
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->access$600(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$1;->this$2:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    iget-object v3, v3, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->this$1:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    iget-object v3, v3, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$700(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->getAtHomeSubmitterId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$1;->this$2:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    iget-object v5, v5, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->this$1:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mFirstAddedSongId:J
    invoke-static {v5}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->access$800(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$1;->this$2:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    iget-object v7, v7, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->this$1:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    iget-object v7, v7, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;
    invoke-static {v7}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$900(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Landroid/support/place/rpc/RpcErrorHandler;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/music/athome/api/MusicConnector;->setQueuePosition(JJJLandroid/support/place/rpc/RpcErrorHandler;)V

    .line 220
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$1;->this$2:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->this$1:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mQueuePositionUpdated:Z
    invoke-static {v0, v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->access$502(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Z)Z

    .line 222
    :cond_8b
    monitor-exit v8

    goto :goto_21

    :catchall_8d
    move-exception v0

    monitor-exit v8
    :try_end_8f
    .catchall {:try_start_2e .. :try_end_8f} :catchall_8d

    throw v0

    .line 211
    :catchall_90
    move-exception v0

    :try_start_91
    monitor-exit v1
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw v0
.end method
