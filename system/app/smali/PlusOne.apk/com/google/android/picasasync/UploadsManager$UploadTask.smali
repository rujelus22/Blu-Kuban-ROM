.class Lcom/google/android/picasasync/UploadsManager$UploadTask;
.super Lcom/google/android/picasasync/SyncTask;
.source "UploadsManager.java"

# interfaces
.implements Lcom/google/android/picasasync/Uploader$UploadProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/UploadsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadTask"
.end annotation


# instance fields
.field protected mCurrentTask:Lcom/google/android/picasasync/UploadTaskEntry;

.field protected volatile mRunning:Z

.field protected mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

.field final synthetic this$0:Lcom/google/android/picasasync/UploadsManager;


# direct methods
.method protected constructor <init>(Lcom/google/android/picasasync/UploadsManager;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "account"

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    .line 1109
    invoke-direct {p0, p2}, Lcom/google/android/picasasync/SyncTask;-><init>(Ljava/lang/String;)V

    .line 1104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mRunning:Z

    .line 1110
    return-void
.end method


# virtual methods
.method public cancelSync()V
    .registers 4

    .prologue
    .line 1223
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    monitor-enter v1

    .line 1224
    :try_start_3
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "cancelSync() is called"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mRunning:Z

    .line 1226
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/picasasync/UploadsManager$UploadTask;->stopCurrentTask(I)V

    .line 1227
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->stopSync()V

    .line 1228
    :cond_1c
    monitor-exit v1

    .line 1229
    return-void

    .line 1228
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public cancelTask(J)V
    .registers 7
    .parameter "taskId"

    .prologue
    .line 1260
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    monitor-enter v1

    .line 1261
    :try_start_3
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mCurrentTask:Lcom/google/android/picasasync/UploadTaskEntry;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mCurrentTask:Lcom/google/android/picasasync/UploadTaskEntry;

    iget-wide v2, v0, Lcom/google/android/picasasync/UploadTaskEntry;->id:J

    cmp-long v0, p1, v2

    if-nez v0, :cond_13

    .line 1262
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/android/picasasync/UploadsManager$UploadTask;->stopCurrentTask(I)V

    .line 1264
    :cond_13
    monitor-exit v1

    .line 1265
    return-void

    .line 1264
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method protected getNextTask()Lcom/google/android/picasasync/UploadTaskEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    const/4 v1, 0x1

    #calls: Lcom/google/android/picasasync/UploadsManager;->getNextTaskFromDb(I)Lcom/google/android/picasasync/UploadTaskEntry;
    invoke-static {v0, v1}, Lcom/google/android/picasasync/UploadsManager;->access$1500(Lcom/google/android/picasasync/UploadsManager;I)Lcom/google/android/picasasync/UploadTaskEntry;

    move-result-object v0

    return-object v0
.end method

.method public isBackgroundSync()Z
    .registers 2

    .prologue
    .line 1256
    const/4 v0, 0x0

    return v0
.end method

.method public isDownSync()Z
    .registers 2

    .prologue
    .line 1251
    const/4 v0, 0x0

    return v0
.end method

.method public isSyncOnBattery()Z
    .registers 2

    .prologue
    .line 1246
    const/4 v0, 0x1

    return v0
.end method

.method public isSyncOnRoaming()Z
    .registers 2

    .prologue
    .line 1240
    const/4 v0, 0x1

    return v0
.end method

.method public isSyncOnWifiOnly()Z
    .registers 2

    .prologue
    .line 1234
    const/4 v0, 0x0

    return v0
.end method

.method public isUploadedBefore(Lcom/google/android/picasasync/UploadTaskEntry;)Z
    .registers 16
    .parameter "task"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1306
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getFingerprint()Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/common/Fingerprint;->hashCode()I

    move-result v9

    .line 1307
    .local v9, hash:I
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #getter for: Lcom/google/android/picasasync/UploadsManager;->mPicasaDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;
    invoke-static {v1}, Lcom/google/android/picasasync/UploadsManager;->access$1900(Lcom/google/android/picasasync/UploadsManager;)Lcom/google/android/picasasync/PicasaDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1308
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1310
    :try_start_17
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #getter for: Lcom/google/android/picasasync/UploadsManager;->mPicasaDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;
    invoke-static {v1}, Lcom/google/android/picasasync/UploadsManager;->access$1900(Lcom/google/android/picasasync/UploadsManager;)Lcom/google/android/picasasync/PicasaDatabaseHelper;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getAlbumId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getRealAlbumId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1316
    .local v11, realAlbumId:Ljava/lang/String;
    if-eqz v11, :cond_37

    const-string v1, "camera-sync"

    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_34
    .catchall {:try_start_17 .. :try_end_34} :catchall_8b

    move-result v1

    if-nez v1, :cond_3c

    .line 1334
    :cond_37
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v1, v12

    :goto_3b
    return v1

    .line 1318
    :cond_3c
    :try_start_3c
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$2000()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$2100()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "fingerprint_hash=? AND album_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v11, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_59
    .catchall {:try_start_3c .. :try_end_59} :catchall_8b

    move-result-object v8

    .line 1321
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_61

    .line 1334
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v1, v12

    goto :goto_3b

    .line 1323
    :cond_61
    :try_start_61
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 1324
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 1325
    .local v10, rawData:[B
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getFingerprint()Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/android/gallery3d/common/Fingerprint;->equals([B)Z
    :try_end_73
    .catchall {:try_start_61 .. :try_end_73} :catchall_86

    move-result v1

    if-eqz v1, :cond_61

    .line 1331
    :try_start_76
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_8b

    .line 1334
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v1, v13

    goto :goto_3b

    .line 1331
    .end local v10           #rawData:[B
    :cond_7e
    :try_start_7e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_8b

    .line 1334
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v1, v12

    goto :goto_3b

    .line 1331
    :catchall_86
    move-exception v1

    :try_start_87
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_8b
    .catchall {:try_start_87 .. :try_end_8b} :catchall_8b

    .line 1334
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v11           #realAlbumId:Ljava/lang/String;
    :catchall_8b
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public onFileChanged(Lcom/google/android/picasasync/UploadTaskEntry;)V
    .registers 4
    .parameter "task"

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #getter for: Lcom/google/android/picasasync/UploadsManager;->mFingerprintManager:Lcom/google/android/picasasync/FingerprintManager;
    invoke-static {v0}, Lcom/google/android/picasasync/UploadsManager;->access$1800(Lcom/google/android/picasasync/UploadsManager;)Lcom/google/android/picasasync/FingerprintManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/picasasync/FingerprintManager;->invalidate(Ljava/lang/String;)V

    .line 1302
    return-void
.end method

.method public onProgress(Lcom/google/android/picasasync/UploadTaskEntry;)V
    .registers 6
    .parameter "task"

    .prologue
    .line 1289
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    monitor-enter v1

    .line 1290
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mRunning:Z

    if-eqz v0, :cond_26

    .line 1291
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$000()Ljava/lang/String;

    move-result-object v0

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

    .line 1292
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #calls: Lcom/google/android/picasasync/UploadsManager;->updateTaskStateAndProgressInDb(Lcom/google/android/picasasync/UploadTaskEntry;)V
    invoke-static {v0, p1}, Lcom/google/android/picasasync/UploadsManager;->access$1700(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadTaskEntry;)V

    .line 1294
    :cond_26
    monitor-exit v1

    .line 1295
    return-void

    .line 1294
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method protected onTaskDone(Lcom/google/android/picasasync/UploadTaskEntry;)V
    .registers 3
    .parameter "task"

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #calls: Lcom/google/android/picasasync/UploadsManager;->sendUploadCompleteEvent(Lcom/google/android/picasasync/UploadTaskEntry;)V
    invoke-static {v0, p1}, Lcom/google/android/picasasync/UploadsManager;->access$1600(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadTaskEntry;)V

    .line 1219
    return-void
.end method

.method public final performSync(Landroid/content/SyncResult;)V
    .registers 6
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1114
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    monitor-enter v1

    .line 1115
    :try_start_4
    iget-boolean v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mRunning:Z

    if-nez v0, :cond_a

    monitor-exit v1

    .line 1130
    :goto_9
    return-void

    .line 1118
    :cond_a
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #getter for: Lcom/google/android/picasasync/UploadsManager;->mSyncHelper:Lcom/google/android/picasasync/PicasaSyncHelper;
    invoke-static {v0}, Lcom/google/android/picasasync/UploadsManager;->access$1000(Lcom/google/android/picasasync/UploadsManager;)Lcom/google/android/picasasync/PicasaSyncHelper;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/picasasync/PicasaSyncHelper;->createSyncContext(Landroid/content/SyncResult;Ljava/lang/Thread;)Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    .line 1119
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->setAccount(Ljava/lang/String;)Z

    .line 1121
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #calls: Lcom/google/android/picasasync/UploadsManager;->setCurrentUploadTask(Lcom/google/android/picasasync/UploadsManager$UploadTask;)V
    invoke-static {v0, p0}, Lcom/google/android/picasasync/UploadsManager;->access$1100(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadsManager$UploadTask;)V

    .line 1122
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_32

    .line 1125
    :try_start_27
    invoke-virtual {p0, p1}, Lcom/google/android/picasasync/UploadsManager$UploadTask;->performSyncInternal(Landroid/content/SyncResult;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_35

    .line 1127
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #calls: Lcom/google/android/picasasync/UploadsManager;->setCurrentUploadTask(Lcom/google/android/picasasync/UploadsManager$UploadTask;)V
    invoke-static {v0, v3}, Lcom/google/android/picasasync/UploadsManager;->access$1100(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadsManager$UploadTask;)V

    .line 1128
    iput-object v3, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    goto :goto_9

    .line 1122
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0

    .line 1127
    :catchall_35
    move-exception v0

    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #calls: Lcom/google/android/picasasync/UploadsManager;->setCurrentUploadTask(Lcom/google/android/picasasync/UploadsManager$UploadTask;)V
    invoke-static {v1, v3}, Lcom/google/android/picasasync/UploadsManager;->access$1100(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadsManager$UploadTask;)V

    .line 1128
    iput-object v3, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    throw v0
.end method

.method protected performSyncInternal(Landroid/content/SyncResult;)V
    .registers 14
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1133
    iget-object v3, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 1134
    .local v3, syncStats:Landroid/content/SyncStats;
    :goto_5
    iget-boolean v5, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mRunning:Z

    if-eqz v5, :cond_f

    .line 1137
    invoke-virtual {p0}, Lcom/google/android/picasasync/UploadsManager$UploadTask;->getNextTask()Lcom/google/android/picasasync/UploadTaskEntry;

    move-result-object v4

    .line 1138
    .local v4, task:Lcom/google/android/picasasync/UploadTaskEntry;
    if-nez v4, :cond_10

    .line 1211
    .end local v4           #task:Lcom/google/android/picasasync/UploadTaskEntry;
    :cond_f
    :goto_f
    :pswitch_f
    return-void

    .line 1140
    .restart local v4       #task:Lcom/google/android/picasasync/UploadTaskEntry;
    :cond_10
    invoke-virtual {v4}, Lcom/google/android/picasasync/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_51

    .line 1141
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "*** change account from %s to %s"

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->syncAccount:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v4}, Lcom/google/android/picasasync/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    iget-object v5, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    invoke-virtual {v4}, Lcom/google/android/picasasync/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/google/android/picasasync/UploadsManager;->isValidAccount(Ljava/lang/String;)Z
    invoke-static {v5, v6}, Lcom/google/android/picasasync/UploadsManager;->access$1200(Lcom/google/android/picasasync/UploadsManager;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    iget-wide v6, v4, Lcom/google/android/picasasync/UploadTaskEntry;->id:J

    #calls: Lcom/google/android/picasasync/UploadsManager;->removeTaskFromDb(J)Z
    invoke-static {v5, v6, v7}, Lcom/google/android/picasasync/UploadsManager;->access$1300(Lcom/google/android/picasasync/UploadsManager;J)Z

    goto :goto_f

    .line 1151
    :cond_51
    invoke-virtual {v4}, Lcom/google/android/picasasync/UploadTaskEntry;->isStartedYet()Z

    move-result v5

    if-nez v5, :cond_63

    .line 1152
    invoke-virtual {v4}, Lcom/google/android/picasasync/UploadTaskEntry;->setUploadedTime()V

    .line 1156
    :try_start_5a
    iget-object v5, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #getter for: Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/google/android/picasasync/UploadsManager;->access$100(Lcom/google/android/picasasync/UploadsManager;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/google/android/picasasync/PicasaUploadHelper;->fillRequest(Landroid/content/Context;Lcom/google/android/picasasync/UploadTaskEntry;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_63} :catch_83

    .line 1169
    :cond_63
    iget-object v5, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/picasasync/UploadTaskEntry;->getAlbumId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v5, v6}, Lcom/google/android/picasasync/UploadsManager$UploadTask;->syncAlbum(Landroid/content/SyncResult;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b6

    .line 1170
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "sync has been interrupted"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :goto_78
    iget-object v6, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    monitor-enter v6

    .line 1208
    const/4 v5, 0x0

    :try_start_7c
    iput-object v5, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mCurrentTask:Lcom/google/android/picasasync/UploadTaskEntry;

    .line 1209
    monitor-exit v6

    goto :goto_5

    :catchall_80
    move-exception v5

    monitor-exit v6
    :try_end_82
    .catchall {:try_start_7c .. :try_end_82} :catchall_80

    throw v5

    .line 1157
    :catch_83
    move-exception v0

    .line 1158
    .local v0, e:Ljava/lang/Exception;
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Lcom/google/android/picasasync/UploadTaskEntry;->setState(I)V

    .line 1159
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to process the request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1160
    iget-wide v5, v3, Landroid/content/SyncStats;->numSkippedEntries:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v3, Landroid/content/SyncStats;->numSkippedEntries:J

    .line 1161
    iget-object v5, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    iget-wide v6, v4, Lcom/google/android/picasasync/UploadTaskEntry;->id:J

    #calls: Lcom/google/android/picasasync/UploadsManager;->removeTaskFromDb(J)Z
    invoke-static {v5, v6, v7}, Lcom/google/android/picasasync/UploadsManager;->access$1300(Lcom/google/android/picasasync/UploadsManager;J)Z

    .line 1163
    invoke-virtual {p0, v4}, Lcom/google/android/picasasync/UploadsManager$UploadTask;->onTaskDone(Lcom/google/android/picasasync/UploadTaskEntry;)V

    goto/16 :goto_5

    .line 1173
    .end local v0           #e:Ljava/lang/Exception;
    :cond_b6
    invoke-virtual {p0, v4}, Lcom/google/android/picasasync/UploadsManager$UploadTask;->isUploadedBefore(Lcom/google/android/picasasync/UploadTaskEntry;)Z

    move-result v5

    if-eqz v5, :cond_e5

    .line 1174
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "duplicate upload: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    iget-object v5, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    iget-wide v6, v4, Lcom/google/android/picasasync/UploadTaskEntry;->id:J

    #calls: Lcom/google/android/picasasync/UploadsManager;->removeTaskFromDb(J)Z
    invoke-static {v5, v6, v7}, Lcom/google/android/picasasync/UploadsManager;->access$1300(Lcom/google/android/picasasync/UploadsManager;J)Z

    .line 1176
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/google/android/picasasync/UploadTaskEntry;->setState(I)V

    .line 1204
    :cond_e1
    :goto_e1
    invoke-virtual {p0, v4}, Lcom/google/android/picasasync/UploadsManager$UploadTask;->onTaskDone(Lcom/google/android/picasasync/UploadTaskEntry;)V

    goto :goto_78

    .line 1178
    :cond_e5
    iget-object v6, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    monitor-enter v6

    .line 1179
    :try_start_e8
    iget-boolean v5, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mRunning:Z

    if-nez v5, :cond_f2

    monitor-exit v6

    goto/16 :goto_f

    .line 1181
    :catchall_ef
    move-exception v5

    monitor-exit v6
    :try_end_f1
    .catchall {:try_start_e8 .. :try_end_f1} :catchall_ef

    throw v5

    .line 1180
    :cond_f2
    :try_start_f2
    iput-object v4, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mCurrentTask:Lcom/google/android/picasasync/UploadTaskEntry;

    .line 1181
    monitor-exit v6
    :try_end_f5
    .catchall {:try_start_f2 .. :try_end_f5} :catchall_ef

    .line 1183
    iget-wide v1, v3, Landroid/content/SyncStats;->numIoExceptions:J

    .line 1184
    .local v1, ioExceptionCount:J
    iget-object v5, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #calls: Lcom/google/android/picasasync/UploadsManager;->doTask(Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/Uploader$UploadProgressListener;Landroid/content/SyncResult;)I
    invoke-static {v5, v4, p0, p1}, Lcom/google/android/picasasync/UploadsManager;->access$1400(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/Uploader$UploadProgressListener;Landroid/content/SyncResult;)I

    move-result v5

    packed-switch v5, :pswitch_data_136

    .line 1198
    iget-wide v5, v3, Landroid/content/SyncStats;->numIoExceptions:J

    cmp-long v5, v1, v5

    if-gez v5, :cond_e1

    goto/16 :goto_f

    .line 1188
    :pswitch_108
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "sync album now: %s, %s"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/google/android/picasasync/UploadTaskEntry;->getAlbumId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v4}, Lcom/google/android/picasasync/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    iget-object v5, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/picasasync/UploadTaskEntry;->getAlbumId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v5, v6}, Lcom/google/android/picasasync/UploadsManager$UploadTask;->syncAlbum(Landroid/content/SyncResult;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_e1

    .line 1184
    nop

    :pswitch_data_136
    .packed-switch 0x1
        :pswitch_108
        :pswitch_f
    .end packed-switch
.end method

.method protected stopCurrentTask(I)V
    .registers 6
    .parameter "stopState"

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mCurrentTask:Lcom/google/android/picasasync/UploadTaskEntry;

    .line 1274
    .local v0, task:Lcom/google/android/picasasync/UploadTaskEntry;
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopCurrentTask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    if-nez v0, :cond_1f

    .line 1284
    :goto_1e
    return-void

    .line 1276
    :cond_1f
    monitor-enter v0

    .line 1277
    :try_start_20
    invoke-virtual {v0}, Lcom/google/android/picasasync/UploadTaskEntry;->isCancellable()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1278
    invoke-virtual {v0, p1}, Lcom/google/android/picasasync/UploadTaskEntry;->setState(I)V

    .line 1281
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1283
    :cond_2c
    monitor-exit v0

    goto :goto_1e

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method protected syncAlbum(Landroid/content/SyncResult;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 19
    .parameter "syncResult"
    .parameter "account"
    .parameter "albumId"

    .prologue
    .line 1343
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1344
    .local v5, key:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    .line 1345
    .local v6, syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;
    iget-object v10, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #getter for: Lcom/google/android/picasasync/UploadsManager;->mSyncHelper:Lcom/google/android/picasasync/PicasaSyncHelper;
    invoke-static {v10}, Lcom/google/android/picasasync/UploadsManager;->access$1000(Lcom/google/android/picasasync/UploadsManager;)Lcom/google/android/picasasync/PicasaSyncHelper;

    move-result-object v8

    .line 1346
    .local v8, syncHelper:Lcom/google/android/picasasync/PicasaSyncHelper;
    iget-object v11, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    monitor-enter v11

    .line 1348
    :try_start_26
    iget-object v10, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #getter for: Lcom/google/android/picasasync/UploadsManager;->mSyncedAccountAlbumPairs:Ljava/util/HashSet;
    invoke-static {v10}, Lcom/google/android/picasasync/UploadsManager;->access$2200(Lcom/google/android/picasasync/UploadsManager;)Ljava/util/HashSet;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_35

    const/4 v7, 0x1

    monitor-exit v11

    .line 1406
    :goto_34
    return v7

    .line 1349
    :cond_35
    iget-boolean v10, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mRunning:Z

    if-nez v10, :cond_3f

    const/4 v7, 0x0

    monitor-exit v11

    goto :goto_34

    .line 1350
    :catchall_3c
    move-exception v10

    monitor-exit v11
    :try_end_3e
    .catchall {:try_start_26 .. :try_end_3e} :catchall_3c

    throw v10

    :cond_3f
    :try_start_3f
    monitor-exit v11
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3c

    .line 1351
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$000()Ljava/lang/String;

    move-result-object v10

    const-string v11, "sync album for dedup: %s/%s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {p2 .. p2}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static/range {p3 .. p3}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    iget-object v10, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #getter for: Lcom/google/android/picasasync/UploadsManager;->mPicasaDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;
    invoke-static {v10}, Lcom/google/android/picasasync/UploadsManager;->access$1900(Lcom/google/android/picasasync/UploadsManager;)Lcom/google/android/picasasync/PicasaDatabaseHelper;

    move-result-object v10

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v10, v0, v1}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getAlbumEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/picasasync/AlbumEntry;

    move-result-object v2

    .line 1356
    .local v2, album:Lcom/google/android/picasasync/AlbumEntry;
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v10, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 1357
    .local v3, authExceptionCount:J
    if-nez v2, :cond_ab

    .line 1359
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sync albumlist to get ID for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p3 .. p3}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Lcom/google/android/picasasync/PicasaSyncHelper;->findUser(Ljava/lang/String;)Lcom/google/android/picasasync/UserEntry;

    move-result-object v9

    .line 1361
    .local v9, userEntry:Lcom/google/android/picasasync/UserEntry;
    if-eqz v9, :cond_f3

    .line 1362
    invoke-virtual {v8, v6, v9}, Lcom/google/android/picasasync/PicasaSyncHelper;->syncAlbumsForUser(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/UserEntry;)V

    .line 1363
    iget-object v10, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #getter for: Lcom/google/android/picasasync/UploadsManager;->mPicasaDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;
    invoke-static {v10}, Lcom/google/android/picasasync/UploadsManager;->access$1900(Lcom/google/android/picasasync/UploadsManager;)Lcom/google/android/picasasync/PicasaDatabaseHelper;

    move-result-object v10

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v10, v0, v1}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getAlbumEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/picasasync/AlbumEntry;

    move-result-object v2

    .line 1371
    .end local v9           #userEntry:Lcom/google/android/picasasync/UserEntry;
    :cond_ab
    if-eqz v2, :cond_126

    .line 1372
    const-string v10, "camera-sync"

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_122

    .line 1373
    move-object/from16 v0, p2

    invoke-virtual {v8, v6, v0}, Lcom/google/android/picasasync/PicasaSyncHelper;->syncUploadedPhotos(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Ljava/lang/String;)V

    .line 1397
    :goto_bc
    iget-object v11, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    monitor-enter v11

    .line 1398
    :try_start_bf
    iget-boolean v7, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->mRunning:Z

    .line 1399
    .local v7, syncDone:Z
    if-eqz v7, :cond_ed

    if-eqz v2, :cond_ed

    .line 1401
    iget-object v10, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #getter for: Lcom/google/android/picasasync/UploadsManager;->mSyncedAccountAlbumPairs:Ljava/util/HashSet;
    invoke-static {v10}, Lcom/google/android/picasasync/UploadsManager;->access$2200(Lcom/google/android/picasasync/UploadsManager;)Ljava/util/HashSet;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1402
    iget-object v10, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #getter for: Lcom/google/android/picasasync/UploadsManager;->mSettings:Landroid/content/SharedPreferences;
    invoke-static {v10}, Lcom/google/android/picasasync/UploadsManager;->access$2400(Lcom/google/android/picasasync/UploadsManager;)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v12, "synced_account_albums"

    const-string v13, ";"

    iget-object v14, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #getter for: Lcom/google/android/picasasync/UploadsManager;->mSyncedAccountAlbumPairs:Ljava/util/HashSet;
    invoke-static {v14}, Lcom/google/android/picasasync/UploadsManager;->access$2200(Lcom/google/android/picasasync/UploadsManager;)Ljava/util/HashSet;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1406
    :cond_ed
    monitor-exit v11

    goto/16 :goto_34

    .line 1407
    .end local v7           #syncDone:Z
    :catchall_f0
    move-exception v10

    monitor-exit v11
    :try_end_f2
    .catchall {:try_start_bf .. :try_end_f2} :catchall_f0

    throw v10

    .line 1365
    .restart local v9       #userEntry:Lcom/google/android/picasasync/UserEntry;
    :cond_f3
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "no userEntry for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p2 .. p2}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    invoke-virtual {p0}, Lcom/google/android/picasasync/UploadsManager$UploadTask;->cancelSync()V

    .line 1367
    iget-object v10, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #getter for: Lcom/google/android/picasasync/UploadsManager;->mProblematicAccounts:Ljava/util/HashSet;
    invoke-static {v10}, Lcom/google/android/picasasync/UploadsManager;->access$2300(Lcom/google/android/picasasync/UploadsManager;)Ljava/util/HashSet;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1368
    const/4 v7, 0x0

    goto/16 :goto_34

    .line 1375
    .end local v9           #userEntry:Lcom/google/android/picasasync/UserEntry;
    :cond_122
    invoke-virtual {v8, v6, v2}, Lcom/google/android/picasasync/PicasaSyncHelper;->syncPhotosForAlbum(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/AlbumEntry;)V

    goto :goto_bc

    .line 1377
    :cond_126
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v10, v10, Landroid/content/SyncStats;->numAuthExceptions:J

    cmp-long v10, v3, v10

    if-gez v10, :cond_15f

    .line 1378
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "need authorization for picasa access: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p2 .. p2}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    invoke-virtual {p0}, Lcom/google/android/picasasync/UploadsManager$UploadTask;->cancelSync()V

    .line 1381
    iget-object v10, p0, Lcom/google/android/picasasync/UploadsManager$UploadTask;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #getter for: Lcom/google/android/picasasync/UploadsManager;->mProblematicAccounts:Ljava/util/HashSet;
    invoke-static {v10}, Lcom/google/android/picasasync/UploadsManager;->access$2300(Lcom/google/android/picasasync/UploadsManager;)Ljava/util/HashSet;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1382
    const/4 v7, 0x0

    goto/16 :goto_34

    .line 1385
    :cond_15f
    const-string v10, "camera-sync"

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_189

    .line 1387
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "album doesn\'t exist yet: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p3 .. p3}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bc

    .line 1390
    :cond_189
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "album doesn\'t exist: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p3 .. p3}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    invoke-virtual {p0}, Lcom/google/android/picasasync/UploadsManager$UploadTask;->cancelSync()V

    .line 1392
    const/4 v7, 0x0

    goto/16 :goto_34
.end method
