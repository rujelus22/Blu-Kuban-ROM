.class Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;
.super Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;
.source "UploadsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/iu/UploadsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoUploadTask"
.end annotation


# instance fields
.field private mFingerprintSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/gallery3d/common/Fingerprint;",
            ">;"
        }
    .end annotation
.end field

.field final mMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

.field final mMediaType:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/apps/plus/iu/UploadsManager;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;Lcom/google/android/apps/plus/iu/MediaTracker;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter "account"
    .parameter "mediaTracker"
    .parameter "mediaType"
    .parameter "name"

    .prologue
    .line 1999
    iput-object p1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    .line 2000
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;-><init>(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 2001
    iput-object p3, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->mMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    .line 2002
    iput-object p4, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->mMediaType:Ljava/lang/String;

    .line 2003
    iput-object p5, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->mLogName:Ljava/lang/String;

    .line 2004
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 4

    .prologue
    .line 2229
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    monitor-enter v1

    .line 2230
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->abortSync()V

    .line 2231
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->mMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/MediaTracker;->isTrackingNewMedia()Z

    move-result v0

    if-nez v0, :cond_15

    .line 2232
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->mMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->removeMediaTracker(Lcom/google/android/apps/plus/iu/MediaTracker;)V
    invoke-static {v0, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$3500(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/MediaTracker;)V

    .line 2234
    :cond_15
    monitor-exit v1

    .line 2235
    return-void

    .line 2234
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public getMediaTracker()Lcom/google/android/apps/plus/iu/MediaTracker;
    .registers 2

    .prologue
    .line 2007
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->mMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    return-object v0
.end method

.method protected getNextUpload()Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2070
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->mMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    .line 2074
    .local v0, mediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->mMediaType:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->mFingerprintSet:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->mSyncContext:Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/apps/plus/iu/MediaTracker;->getNextUploadTask(Ljava/lang/String;Ljava/util/Set;Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;)Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    move-result-object v1

    .line 2077
    .local v1, task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    iget-object v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    monitor-enter v3

    .line 2078
    :try_start_f
    iget-boolean v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->mRunning:Z

    if-nez v2, :cond_16

    .line 2079
    const/4 v1, 0x0

    monitor-exit v3

    .line 2088
    .end local v1           #task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    :goto_15
    return-object v1

    .line 2082
    .restart local v1       #task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    :cond_16
    if-eqz v1, :cond_34

    invoke-virtual {v1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->isStartedYet()Z

    move-result v2

    if-nez v2, :cond_34

    .line 2084
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->updateTaskStateAndProgressInDb(Lcom/google/android/apps/plus/iu/UploadTaskEntry;)V
    invoke-static {v2, v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$1600(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/UploadTaskEntry;)V

    .line 2085
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mSettings:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$3600(Lcom/google/android/apps/plus/iu/UploadsManager;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/iu/MediaTracker;->saveStates(Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2087
    :cond_34
    monitor-exit v3

    goto :goto_15

    .end local v1           #task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    :catchall_36
    move-exception v2

    monitor-exit v3
    :try_end_38
    .catchall {:try_start_f .. :try_end_38} :catchall_36

    throw v2
.end method

.method public isBackgroundSync()Z
    .registers 2

    .prologue
    .line 2224
    const/4 v0, 0x1

    return v0
.end method

.method public isSyncOnBattery()Z
    .registers 2

    .prologue
    .line 2219
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mSyncOnBattery:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$4100(Lcom/google/android/apps/plus/iu/UploadsManager;)Z

    move-result v0

    return v0
.end method

.method public isSyncOnRoaming()Z
    .registers 2

    .prologue
    .line 2212
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mSyncOnRoaming:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$4000(Lcom/google/android/apps/plus/iu/UploadsManager;)Z

    move-result v0

    return v0
.end method

.method public isSyncOnWifiOnly()Z
    .registers 4

    .prologue
    .line 2204
    const-string v1, "photo"

    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->mMediaType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2205
    .local v0, isPhoto:Z
    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mWifiOnlyPhoto:Z
    invoke-static {v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$3800(Lcom/google/android/apps/plus/iu/UploadsManager;)Z

    move-result v1

    :goto_10
    return v1

    :cond_11
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mWifiOnlyVideo:Z
    invoke-static {v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$3900(Lcom/google/android/apps/plus/iu/UploadsManager;)Z

    move-result v1

    goto :goto_10
.end method

.method public isUploadedBefore(Lcom/google/android/apps/plus/iu/UploadTaskEntry;)Z
    .registers 4
    .parameter "task"

    .prologue
    .line 2240
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->mFingerprintSet:Ljava/util/HashSet;

    if-nez v1, :cond_9

    .line 2241
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->isUploadedBefore(Lcom/google/android/apps/plus/iu/UploadTaskEntry;)Z

    move-result v1

    .line 2244
    :goto_8
    return v1

    .line 2243
    :cond_9
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getFingerprint()Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v0

    .line 2244
    .local v0, fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->mFingerprintSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_8
.end method

.method public onProgress(Lcom/google/android/apps/plus/iu/UploadTaskEntry;)V
    .registers 6
    .parameter "task"

    .prologue
    .line 2190
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    monitor-enter v1

    .line 2191
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->mRunning:Z

    if-eqz v0, :cond_2d

    .line 2192
    const-string v0, "iu.UploadsManager"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2193
    const-string v0, "iu.UploadsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    :cond_28
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->updateTaskStateAndProgressInDb(Lcom/google/android/apps/plus/iu/UploadTaskEntry;)V
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$1600(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/UploadTaskEntry;)V

    .line 2197
    :cond_2d
    monitor-exit v1

    .line 2198
    return-void

    .line 2197
    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method protected onQuotaReached(Lcom/google/android/apps/plus/iu/UploadTaskEntry;)V
    .registers 3
    .parameter "task"

    .prologue
    .line 2153
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->onStateChanged(I)V

    .line 2154
    return-void
.end method

.method public onRejected(I)V
    .registers 5
    .parameter "reasonCode"

    .prologue
    .line 2171
    const-string v0, "iu.UploadsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REJECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->mLogName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->onStateChanged(I)V

    .line 2174
    return-void
.end method

.method protected onStalled(Lcom/google/android/apps/plus/iu/UploadTaskEntry;Z)V
    .registers 4
    .parameter "task"
    .parameter "gotIoException"

    .prologue
    .line 2159
    if-eqz p2, :cond_17

    .line 2160
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$900(Lcom/google/android/apps/plus/iu/UploadsManager;)Landroid/content/Context;

    move-result-object v0

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->hasNetworkConnectivity(Landroid/content/Context;)Z
    invoke-static {v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$2100(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0xf

    :goto_10
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->onStateChanged(I)V

    .line 2167
    :goto_13
    return-void

    .line 2160
    :cond_14
    const/16 v0, 0xe

    goto :goto_10

    .line 2165
    :cond_17
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->onStateChanged(I)V

    goto :goto_13
.end method

.method public onStateChanged(I)V
    .registers 5
    .parameter "newState"

    .prologue
    .line 2177
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->mMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    .line 2178
    .local v0, mediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/MediaTracker;->getState()I

    move-result v1

    if-eq p1, v1, :cond_28

    .line 2179
    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/iu/MediaTracker;->setState(I)V

    .line 2180
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mSettings:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$3600(Lcom/google/android/apps/plus/iu/UploadsManager;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/iu/MediaTracker;->saveStates(Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2181
    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/MediaTracker;->isTrackingNewMedia()Z

    move-result v1

    if-nez v1, :cond_28

    .line 2182
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    const/4 v2, 0x0

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->requestUploadAllProgressBroadcast(Lcom/google/android/apps/plus/iu/MediaTracker;Z)V
    invoke-static {v1, v0, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$3700(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/MediaTracker;Z)V

    .line 2185
    :cond_28
    return-void
.end method

.method protected onTaskDone(Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/UploadedEntry;)V
    .registers 8
    .parameter "task"
    .parameter "result"

    .prologue
    .line 2122
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    monitor-enter v2

    .line 2123
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->mRunning:Z

    if-nez v1, :cond_9

    .line 2124
    monitor-exit v2

    .line 2142
    :goto_8
    return-void

    .line 2128
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->mMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    .line 2129
    .local v0, mediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/iu/MediaTracker;->onUploadComplete(Lcom/google/android/apps/plus/iu/UploadTaskEntry;)V

    .line 2130
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mSettings:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$3600(Lcom/google/android/apps/plus/iu/UploadsManager;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/iu/MediaTracker;->saveStates(Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2131
    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/MediaTracker;->isTrackingNewMedia()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 2132
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    const/4 v3, 0x0

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->requestUploadAllProgressBroadcast(Lcom/google/android/apps/plus/iu/MediaTracker;Z)V
    invoke-static {v1, v0, v3}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$3700(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/MediaTracker;Z)V

    .line 2134
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getState()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3b

    .line 2135
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->mFingerprintSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getFingerprint()Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2138
    :cond_3b
    const-string v1, "iu.UploadsManager"

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 2139
    const-string v1, "iu.UploadsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   task done: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    :cond_5c
    monitor-exit v2

    goto :goto_8

    .end local v0           #mediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    :catchall_5e
    move-exception v1

    monitor-exit v2
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_5e

    throw v1
.end method

.method protected onUnauthorized(Lcom/google/android/apps/plus/iu/UploadTaskEntry;)V
    .registers 3
    .parameter "task"

    .prologue
    .line 2147
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->onStateChanged(I)V

    .line 2148
    return-void
.end method

.method protected onUploadsDone()V
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 2093
    invoke-super {p0}, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->onUploadsDone()V

    .line 2096
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->mMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    .line 2099
    .local v2, mediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    :try_start_6
    const-string v4, "*"

    iget-object v5, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->mFingerprintSet:Ljava/util/HashSet;

    iget-object v6, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->mSyncContext:Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;

    invoke-virtual {v2, v4, v5, v6}, Lcom/google/android/apps/plus/iu/MediaTracker;->getNextUploadTask(Ljava/lang/String;Ljava/util/Set;Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;)Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    move-result-object v3

    .line 2101
    .local v3, task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    invoke-virtual {v2}, Lcom/google/android/apps/plus/iu/MediaTracker;->isTrackingNewMedia()Z
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_13} :catch_2c

    move-result v4

    if-nez v4, :cond_2a

    if-nez v3, :cond_2a

    .line 2109
    .end local v3           #task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    .local v1, isUploadOldDone:Z
    :goto_18
    iget-object v5, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    monitor-enter v5

    .line 2110
    if-eqz v1, :cond_28

    .line 2111
    :try_start_1d
    iget-object v4, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->removeMediaTracker(Lcom/google/android/apps/plus/iu/MediaTracker;)V
    invoke-static {v4, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$3500(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/MediaTracker;)V

    .line 2114
    iget-object v4, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    const/4 v6, 0x1

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->requestUploadAllProgressBroadcast(Lcom/google/android/apps/plus/iu/MediaTracker;Z)V
    invoke-static {v4, v2, v6}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$3700(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/MediaTracker;Z)V

    .line 2116
    :cond_28
    monitor-exit v5
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_3f

    .line 2117
    return-void

    .line 2101
    .end local v1           #isUploadOldDone:Z
    .restart local v3       #task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    :cond_2a
    const/4 v1, 0x0

    goto :goto_18

    .line 2102
    .end local v3           #task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    :catch_2c
    move-exception v0

    .line 2103
    .local v0, ioe:Ljava/io/IOException;
    const-string v4, "iu.UploadsManager"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 2104
    const-string v4, "iu.UploadsManager"

    const-string v5, "could not get next upload task"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2106
    :cond_3d
    const/4 v1, 0x1

    .restart local v1       #isUploadOldDone:Z
    goto :goto_18

    .line 2116
    .end local v0           #ioe:Ljava/io/IOException;
    :catchall_3f
    move-exception v4

    :try_start_40
    monitor-exit v5
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v4
.end method

.method protected performSyncInternal(Landroid/content/SyncResult;)V
    .registers 11
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 2012
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->onStateChanged(I)V

    .line 2018
    iget-object v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    monitor-enter v3

    .line 2019
    :try_start_a
    iget-object v4, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->mMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    iget-object v5, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    invoke-static {v5}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$3100(Lcom/google/android/apps/plus/iu/UploadsManager;)Lcom/google/android/apps/plus/iu/MediaTracker;

    move-result-object v5

    if-eq v4, v5, :cond_42

    iget-object v4, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->mMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    iget-object v5, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mNewMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    invoke-static {v5}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$3200(Lcom/google/android/apps/plus/iu/UploadsManager;)Lcom/google/android/apps/plus/iu/MediaTracker;

    move-result-object v5

    if-eq v4, v5, :cond_42

    iget-object v4, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->mMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    iget-object v5, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mOldMediaTrackerMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$3300(Lcom/google/android/apps/plus/iu/UploadsManager;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->syncAccount:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v4, v5, :cond_42

    .line 2022
    .local v1, syncCancelled:Z
    :goto_2e
    if-eqz v1, :cond_44

    .line 2023
    const-string v2, "iu.UploadsManager"

    const/4 v4, 0x4

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 2024
    const-string v2, "iu.UploadsManager"

    const-string v4, "--- CANCEL IU provider"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    :cond_40
    monitor-exit v3

    .line 2065
    :cond_41
    :goto_41
    return-void

    .end local v1           #syncCancelled:Z
    :cond_42
    move v1, v2

    .line 2019
    goto :goto_2e

    .line 2029
    .restart local v1       #syncCancelled:Z
    :cond_44
    monitor-exit v3
    :try_end_45
    .catchall {:try_start_a .. :try_end_45} :catchall_83

    .line 2033
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->mMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    iget-object v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mNewMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    invoke-static {v3}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$3200(Lcom/google/android/apps/plus/iu/UploadsManager;)Lcom/google/android/apps/plus/iu/MediaTracker;

    move-result-object v3

    if-ne v2, v3, :cond_89

    .line 2034
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->reloadSystemSettingsQuery()Landroid/database/Cursor;
    invoke-static {v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$3400(Lcom/google/android/apps/plus/iu/UploadsManager;)Landroid/database/Cursor;

    move-result-object v0

    .line 2037
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_64

    :try_start_57
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_64

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_86

    .line 2038
    :cond_64
    const-string v2, "iu.UploadsManager"

    const-string v3, "tried to sync with IU disabled; cancel tracker"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    iget-object v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mNewMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    invoke-static {v3}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$3200(Lcom/google/android/apps/plus/iu/UploadsManager;)Lcom/google/android/apps/plus/iu/MediaTracker;

    move-result-object v3

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->removeMediaTracker(Lcom/google/android/apps/plus/iu/MediaTracker;)V
    invoke-static {v2, v3}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$3500(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/MediaTracker;)V

    .line 2041
    invoke-virtual {p0}, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->cancel()V

    .line 2042
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    const/4 v3, 0x0

    #setter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mNewMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    invoke-static {v2, v3}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$3202(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/MediaTracker;)Lcom/google/android/apps/plus/iu/MediaTracker;
    :try_end_7f
    .catchall {:try_start_57 .. :try_end_7f} :catchall_a5

    .line 2046
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_41

    .line 2029
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #syncCancelled:Z
    :catchall_83
    move-exception v2

    :try_start_84
    monitor-exit v3
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw v2

    .line 2046
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v1       #syncCancelled:Z
    :cond_86
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 2050
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_89
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->mMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/iu/MediaTracker;->getSyncAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->syncCameraSyncStream(Landroid/content/SyncResult;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_aa

    .line 2051
    const-string v2, "iu.UploadsManager"

    invoke-static {v2, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 2052
    const-string v2, "iu.UploadsManager"

    const-string v3, "--- STOP IU provider; picasa sync canceled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 2046
    .restart local v0       #cursor:Landroid/database/Cursor;
    :catchall_a5
    move-exception v2

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2

    .line 2058
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_aa
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    iget-object v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->mMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/iu/MediaTracker;->getSyncAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/iu/UploadsManager;->retrieveAllFingerprints(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->mFingerprintSet:Ljava/util/HashSet;

    .line 2061
    :try_start_b8
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->performSyncInternal(Landroid/content/SyncResult;)V
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_be

    .line 2063
    iput-object v7, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->mFingerprintSet:Ljava/util/HashSet;

    goto :goto_41

    :catchall_be
    move-exception v2

    iput-object v7, p0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->mFingerprintSet:Ljava/util/HashSet;

    throw v2
.end method
