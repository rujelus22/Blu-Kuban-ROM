.class Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;
.super Lcom/google/android/picasasync/UploadsManager$UploadTask;
.source "UploadsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/UploadsManager;
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

.field private final mMediaTracker:Lcom/google/android/picasasync/PhotoTracker;

.field private final mMediaType:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/picasasync/UploadsManager;


# direct methods
.method constructor <init>(Lcom/google/android/picasasync/UploadsManager;Ljava/lang/String;Lcom/google/android/picasasync/PhotoTracker;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter "account"
    .parameter "mediaTracker"
    .parameter "mediaType"

    .prologue
    .line 1491
    iput-object p1, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    .line 1492
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/UploadsManager$UploadTask;-><init>(Lcom/google/android/picasasync/UploadsManager;Ljava/lang/String;)V

    .line 1488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->mFingerprintSet:Ljava/util/HashSet;

    .line 1493
    iput-object p3, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->mMediaTracker:Lcom/google/android/picasasync/PhotoTracker;

    .line 1494
    iput-object p4, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->mMediaType:Ljava/lang/String;

    .line 1495
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 4

    .prologue
    .line 1622
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    monitor-enter v1

    .line 1623
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->cancelSync()V

    .line 1624
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->mMediaTracker:Lcom/google/android/picasasync/PhotoTracker;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PhotoTracker;->isTrackingNewMedia()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->mMediaTracker:Lcom/google/android/picasasync/PhotoTracker;

    #calls: Lcom/google/android/picasasync/UploadsManager;->removeMediaTracker(Lcom/google/android/picasasync/PhotoTracker;)V
    invoke-static {v0, v2}, Lcom/google/android/picasasync/UploadsManager;->access$3200(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/PhotoTracker;)V

    .line 1625
    :cond_15
    monitor-exit v1

    .line 1626
    return-void

    .line 1625
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public getMediaTracker()Lcom/google/android/picasasync/PhotoTracker;
    .registers 2

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->mMediaTracker:Lcom/google/android/picasasync/PhotoTracker;

    return-object v0
.end method

.method protected getNextTask()Lcom/google/android/picasasync/UploadTaskEntry;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1537
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->mMediaTracker:Lcom/google/android/picasasync/PhotoTracker;

    .line 1538
    .local v1, mediaTracker:Lcom/google/android/picasasync/PhotoTracker;
    invoke-virtual {v1}, Lcom/google/android/picasasync/PhotoTracker;->isTrackingNewMedia()Z

    move-result v2

    .line 1542
    .local v2, newMedia:Z
    iget-object v4, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->mMediaType:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->mFingerprintSet:Ljava/util/HashSet;

    iget-object v6, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    invoke-virtual {v1, v4, v5, v6}, Lcom/google/android/picasasync/PhotoTracker;->getNextUploadTask(Ljava/lang/String;Ljava/util/Set;Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;)Lcom/google/android/picasasync/UploadTaskEntry;

    move-result-object v3

    .line 1546
    .local v3, task:Lcom/google/android/picasasync/UploadTaskEntry;
    if-nez v2, :cond_2b

    if-nez v3, :cond_2b

    const-string v4, "*"

    iget-object v5, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->mFingerprintSet:Ljava/util/HashSet;

    iget-object v6, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    invoke-virtual {v1, v4, v5, v6}, Lcom/google/android/picasasync/PhotoTracker;->getNextUploadTask(Ljava/lang/String;Ljava/util/Set;Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;)Lcom/google/android/picasasync/UploadTaskEntry;

    move-result-object v4

    if-nez v4, :cond_2b

    .line 1550
    .local v0, isUploadOldDone:Z
    :goto_21
    iget-object v5, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    monitor-enter v5

    .line 1551
    :try_start_24
    iget-boolean v4, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->mRunning:Z

    if-nez v4, :cond_2d

    const/4 v3, 0x0

    monitor-exit v5

    .line 1564
    .end local v3           #task:Lcom/google/android/picasasync/UploadTaskEntry;
    :goto_2a
    return-object v3

    .line 1546
    .end local v0           #isUploadOldDone:Z
    .restart local v3       #task:Lcom/google/android/picasasync/UploadTaskEntry;
    :cond_2b
    const/4 v0, 0x0

    goto :goto_21

    .line 1553
    .restart local v0       #isUploadOldDone:Z
    :cond_2d
    if-eqz v3, :cond_50

    invoke-virtual {v3}, Lcom/google/android/picasasync/UploadTaskEntry;->isStartedYet()Z

    move-result v4

    if-nez v4, :cond_50

    .line 1555
    iget-object v4, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #calls: Lcom/google/android/picasasync/UploadsManager;->updateTaskStateAndProgressInDb(Lcom/google/android/picasasync/UploadTaskEntry;)V
    invoke-static {v4, v3}, Lcom/google/android/picasasync/UploadsManager;->access$1700(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadTaskEntry;)V

    .line 1556
    iget-object v4, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #getter for: Lcom/google/android/picasasync/UploadsManager;->mSettings:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/google/android/picasasync/UploadsManager;->access$2400(Lcom/google/android/picasasync/UploadsManager;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/picasasync/PhotoTracker;->saveStates(Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1563
    :cond_4b
    :goto_4b
    monitor-exit v5

    goto :goto_2a

    .end local v3           #task:Lcom/google/android/picasasync/UploadTaskEntry;
    :catchall_4d
    move-exception v4

    monitor-exit v5
    :try_end_4f
    .catchall {:try_start_24 .. :try_end_4f} :catchall_4d

    throw v4

    .line 1557
    .restart local v3       #task:Lcom/google/android/picasasync/UploadTaskEntry;
    :cond_50
    if-eqz v0, :cond_4b

    .line 1558
    :try_start_52
    iget-object v4, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #calls: Lcom/google/android/picasasync/UploadsManager;->removeMediaTracker(Lcom/google/android/picasasync/PhotoTracker;)V
    invoke-static {v4, v1}, Lcom/google/android/picasasync/UploadsManager;->access$3200(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/PhotoTracker;)V

    .line 1561
    iget-object v4, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    const/4 v6, 0x1

    #calls: Lcom/google/android/picasasync/UploadsManager;->requestUploadAllProgressBroadcast(Lcom/google/android/picasasync/PhotoTracker;Z)V
    invoke-static {v4, v1, v6}, Lcom/google/android/picasasync/UploadsManager;->access$3300(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/PhotoTracker;Z)V
    :try_end_5d
    .catchall {:try_start_52 .. :try_end_5d} :catchall_4d

    goto :goto_4b
.end method

.method public isBackgroundSync()Z
    .registers 3

    .prologue
    .line 1614
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    monitor-enter v1

    .line 1616
    :try_start_3
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->mMediaTracker:Lcom/google/android/picasasync/PhotoTracker;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PhotoTracker;->isTrackingNewMedia()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1617
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public isSyncOnBattery()Z
    .registers 2

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->mMediaTracker:Lcom/google/android/picasasync/PhotoTracker;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PhotoTracker;->isTrackingNewMedia()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #getter for: Lcom/google/android/picasasync/UploadsManager;->mSyncOnBattery:Z
    invoke-static {v0}, Lcom/google/android/picasasync/UploadsManager;->access$3700(Lcom/google/android/picasasync/UploadsManager;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public isSyncOnRoaming()Z
    .registers 2

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->mMediaTracker:Lcom/google/android/picasasync/PhotoTracker;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PhotoTracker;->isTrackingNewMedia()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #getter for: Lcom/google/android/picasasync/UploadsManager;->mSyncOnRoaming:Z
    invoke-static {v0}, Lcom/google/android/picasasync/UploadsManager;->access$3600(Lcom/google/android/picasasync/UploadsManager;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public isSyncOnWifiOnly()Z
    .registers 4

    .prologue
    .line 1592
    const-string v1, "photo"

    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->mMediaType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1593
    .local v0, isPhoto:Z
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->mMediaTracker:Lcom/google/android/picasasync/PhotoTracker;

    invoke-virtual {v1}, Lcom/google/android/picasasync/PhotoTracker;->isTrackingNewMedia()Z

    move-result v1

    if-eqz v1, :cond_20

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #getter for: Lcom/google/android/picasasync/UploadsManager;->mWifiOnlyPhoto:Z
    invoke-static {v1}, Lcom/google/android/picasasync/UploadsManager;->access$3400(Lcom/google/android/picasasync/UploadsManager;)Z

    move-result v1

    :goto_18
    return v1

    :cond_19
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #getter for: Lcom/google/android/picasasync/UploadsManager;->mWifiOnlyVideo:Z
    invoke-static {v1}, Lcom/google/android/picasasync/UploadsManager;->access$3500(Lcom/google/android/picasasync/UploadsManager;)Z

    move-result v1

    goto :goto_18

    :cond_20
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public isUploadedBefore(Lcom/google/android/picasasync/UploadTaskEntry;)Z
    .registers 3
    .parameter "task"

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->mFingerprintSet:Ljava/util/HashSet;

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Lcom/google/android/picasasync/UploadsManager$UploadTask;->isUploadedBefore(Lcom/google/android/picasasync/UploadTaskEntry;)Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected onTaskDone(Lcom/google/android/picasasync/UploadTaskEntry;)V
    .registers 7
    .parameter "task"

    .prologue
    .line 1570
    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    monitor-enter v2

    .line 1571
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->mRunning:Z

    if-nez v1, :cond_9

    monitor-exit v2

    .line 1586
    :goto_8
    return-void

    .line 1574
    :cond_9
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->mMediaTracker:Lcom/google/android/picasasync/PhotoTracker;

    .line 1575
    .local v0, mediaTracker:Lcom/google/android/picasasync/PhotoTracker;
    invoke-virtual {v0, p1}, Lcom/google/android/picasasync/PhotoTracker;->onUploadComplete(Lcom/google/android/picasasync/UploadTaskEntry;)V

    .line 1576
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #getter for: Lcom/google/android/picasasync/UploadsManager;->mSettings:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/google/android/picasasync/UploadsManager;->access$2400(Lcom/google/android/picasasync/UploadsManager;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/picasasync/PhotoTracker;->saveStates(Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1577
    invoke-virtual {v0}, Lcom/google/android/picasasync/PhotoTracker;->isTrackingNewMedia()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 1578
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    const/4 v3, 0x0

    #calls: Lcom/google/android/picasasync/UploadsManager;->requestUploadAllProgressBroadcast(Lcom/google/android/picasasync/PhotoTracker;Z)V
    invoke-static {v1, v0, v3}, Lcom/google/android/picasasync/UploadsManager;->access$3300(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/PhotoTracker;Z)V

    .line 1580
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getState()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3b

    .line 1581
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->mFingerprintSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getFingerprint()Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1584
    :cond_3b
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$000()Ljava/lang/String;

    move-result-object v1

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

    .line 1585
    monitor-exit v2

    goto :goto_8

    .end local v0           #mediaTracker:Lcom/google/android/picasasync/PhotoTracker;
    :catchall_57
    move-exception v1

    monitor-exit v2
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw v1
.end method

.method protected performSyncInternal(Landroid/content/SyncResult;)V
    .registers 8
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1507
    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    monitor-enter v2

    .line 1508
    :try_start_4
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->mMediaTracker:Lcom/google/android/picasasync/PhotoTracker;

    iget-object v3, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #getter for: Lcom/google/android/picasasync/UploadsManager;->mNewPhotoTracker:Lcom/google/android/picasasync/PhotoTracker;
    invoke-static {v3}, Lcom/google/android/picasasync/UploadsManager;->access$2900(Lcom/google/android/picasasync/UploadsManager;)Lcom/google/android/picasasync/PhotoTracker;

    move-result-object v3

    if-eq v1, v3, :cond_2c

    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->mMediaTracker:Lcom/google/android/picasasync/PhotoTracker;

    iget-object v3, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #getter for: Lcom/google/android/picasasync/UploadsManager;->mOldPhotoTrackerMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/google/android/picasasync/UploadsManager;->access$3000(Lcom/google/android/picasasync/UploadsManager;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->syncAccount:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v1, v3, :cond_2c

    const/4 v0, 0x1

    .line 1510
    .local v0, syncCancelled:Z
    :goto_1f
    if-eqz v0, :cond_2e

    .line 1511
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "sync cancelled"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    monitor-exit v2

    .line 1532
    :goto_2b
    return-void

    .line 1508
    .end local v0           #syncCancelled:Z
    :cond_2c
    const/4 v0, 0x0

    goto :goto_1f

    .line 1514
    .restart local v0       #syncCancelled:Z
    :cond_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_47

    .line 1516
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->mMediaTracker:Lcom/google/android/picasasync/PhotoTracker;

    invoke-virtual {v1}, Lcom/google/android/picasasync/PhotoTracker;->getSyncAccount()Ljava/lang/String;

    move-result-object v1

    const-string v2, "camera-sync"

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->syncAlbum(Landroid/content/SyncResult;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 1517
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sync has been interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 1514
    .end local v0           #syncCancelled:Z
    :catchall_47
    move-exception v1

    :try_start_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v1

    .line 1523
    .restart local v0       #syncCancelled:Z
    :cond_4a
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->mMediaTracker:Lcom/google/android/picasasync/PhotoTracker;

    invoke-virtual {v1}, Lcom/google/android/picasasync/PhotoTracker;->isTrackingNewMedia()Z

    move-result v1

    if-nez v1, :cond_60

    .line 1524
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->mMediaTracker:Lcom/google/android/picasasync/PhotoTracker;

    invoke-virtual {v2}, Lcom/google/android/picasasync/PhotoTracker;->getSyncAccount()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/google/android/picasasync/UploadsManager;->retrieveAllFingerprints(Ljava/lang/String;)Ljava/util/HashSet;
    invoke-static {v1, v2}, Lcom/google/android/picasasync/UploadsManager;->access$3100(Lcom/google/android/picasasync/UploadsManager;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->mFingerprintSet:Ljava/util/HashSet;

    .line 1528
    :cond_60
    :try_start_60
    invoke-super {p0, p1}, Lcom/google/android/picasasync/UploadsManager$UploadTask;->performSyncInternal(Landroid/content/SyncResult;)V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_66

    .line 1530
    iput-object v5, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->mFingerprintSet:Ljava/util/HashSet;

    goto :goto_2b

    :catchall_66
    move-exception v1

    iput-object v5, p0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->mFingerprintSet:Ljava/util/HashSet;

    throw v1
.end method
