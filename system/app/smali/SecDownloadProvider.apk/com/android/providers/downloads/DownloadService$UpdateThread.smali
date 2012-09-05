.class Lcom/android/providers/downloads/DownloadService$UpdateThread;
.super Ljava/lang/Thread;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/DownloadService;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/DownloadService;)V
    .registers 3
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    .line 261
    const-string v0, "Download Service"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method private bindMediaScanner()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 392
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnecting:Z
    invoke-static {v1}, Lcom/android/providers/downloads/DownloadService;->access$100(Lcom/android/providers/downloads/DownloadService;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 393
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 394
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.providers.media"

    const-string v2, "com.android.providers.media.MediaScannerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #setter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnecting:Z
    invoke-static {v1, v3}, Lcom/android/providers/downloads/DownloadService;->access$102(Lcom/android/providers/downloads/DownloadService;Z)Z

    .line 397
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnection:Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;
    invoke-static {v2}, Lcom/android/providers/downloads/DownloadService;->access$1000(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/providers/downloads/DownloadService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 399
    .end local v0           #intent:Landroid/content/Intent;
    :cond_25
    return-void
.end method

.method private scheduleAlarm(J)V
    .registers 10
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 402
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 403
    if-nez v0, :cond_15

    .line 404
    const-string v0, "DownloadManager"

    const-string v1, "couldn\'t get alarm manager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :goto_14
    return-void

    .line 408
    :cond_15
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v1, :cond_37

    .line 409
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheduling retry in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_37
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DOWNLOAD_WAKEUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    const-string v2, "com.android.providers.downloads"

    const-class v3, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    iget-object v2, v2, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v2}, Lcom/android/providers/downloads/SystemFacade;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/high16 v5, 0x4000

    invoke-static {v4, v6, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_14
.end method


# virtual methods
.method public run()V
    .registers 28

    .prologue
    .line 266
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 267
    const/16 v16, 0x0

    .line 270
    .local v16, keepService:Z
    const-wide v23, 0x7fffffffffffffffL

    .line 272
    .local v23, wakeUp:J
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    monitor-enter v4

    .line 273
    :try_start_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    iget-object v3, v3, Lcom/android/providers/downloads/DownloadService;->mUpdateThread:Lcom/android/providers/downloads/DownloadService$UpdateThread;

    move-object/from16 v0, p0

    if-eq v3, v0, :cond_26

    .line 274
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "multiple UpdateThreads in DownloadService"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 288
    :catchall_23
    move-exception v3

    monitor-exit v4
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_23

    throw v3

    .line 277
    :cond_26
    :try_start_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mPendingUpdate:Z
    invoke-static {v3}, Lcom/android/providers/downloads/DownloadService;->access$300(Lcom/android/providers/downloads/DownloadService;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/android/providers/downloads/DownloadService;->mUpdateThread:Lcom/android/providers/downloads/DownloadService$UpdateThread;

    .line 279
    if-nez v16, :cond_40

    .line 280
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v3}, Lcom/android/providers/downloads/DownloadService;->stopSelf()V

    .line 282
    :cond_40
    const-wide v5, 0x7fffffffffffffffL

    cmp-long v3, v23, v5

    if-eqz v3, :cond_50

    .line 283
    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/DownloadService$UpdateThread;->scheduleAlarm(J)V

    .line 285
    :cond_50
    monitor-exit v4

    return-void

    .line 287
    :cond_52
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v5, 0x0

    #setter for: Lcom/android/providers/downloads/DownloadService;->mPendingUpdate:Z
    invoke-static {v3, v5}, Lcom/android/providers/downloads/DownloadService;->access$302(Lcom/android/providers/downloads/DownloadService;Z)Z

    .line 288
    monitor-exit v4
    :try_end_5b
    .catchall {:try_start_26 .. :try_end_5b} :catchall_23

    .line 290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    iget-object v3, v3, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v3}, Lcom/android/providers/downloads/SystemFacade;->currentTimeMillis()J

    move-result-wide v20

    .line 291
    .local v20, now:J
    const/16 v17, 0x0

    .line 292
    .local v17, mustScan:Z
    const/16 v16, 0x0

    .line 293
    const-wide v23, 0x7fffffffffffffffL

    .line 294
    new-instance v14, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/providers/downloads/DownloadService;->access$400(Lcom/android/providers/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v14, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 296
    .local v14, idsNoLongerInDatabase:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v3}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 298
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_c

    .line 302
    :try_start_93
    new-instance v22, Lcom/android/providers/downloads/DownloadInfo$Reader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v3}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v9}, Lcom/android/providers/downloads/DownloadInfo$Reader;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;)V

    .line 304
    .local v22, reader:Lcom/android/providers/downloads/DownloadInfo$Reader;
    const-string v3, "_id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 305
    .local v13, idColumn:I
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v3, :cond_c8

    .line 306
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number of rows from downloads-db: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_c8
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_cb
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_14a

    .line 310
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 311
    .local v11, id:J
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 312
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/providers/downloads/DownloadService;->access$400(Lcom/android/providers/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/providers/downloads/DownloadInfo;

    .line 313
    .local v15, info:Lcom/android/providers/downloads/DownloadInfo;
    if-eqz v15, :cond_130

    .line 314
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    #calls: Lcom/android/providers/downloads/DownloadService;->updateDownload(Lcom/android/providers/downloads/DownloadInfo$Reader;Lcom/android/providers/downloads/DownloadInfo;J)V
    invoke-static {v3, v0, v15, v1, v2}, Lcom/android/providers/downloads/DownloadService;->access$500(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadInfo$Reader;Lcom/android/providers/downloads/DownloadInfo;J)V

    .line 319
    :goto_fb
    invoke-virtual {v15}, Lcom/android/providers/downloads/DownloadInfo;->shouldScanFile()Z

    move-result v3

    if-eqz v3, :cond_111

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v4, 0x1

    const/4 v5, 0x0

    #calls: Lcom/android/providers/downloads/DownloadService;->scanFile(Lcom/android/providers/downloads/DownloadInfo;ZZ)Z
    invoke-static {v3, v15, v4, v5}, Lcom/android/providers/downloads/DownloadService;->access$700(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadInfo;ZZ)Z

    move-result v3

    if-nez v3, :cond_111

    .line 320
    const/16 v17, 0x1

    .line 321
    const/16 v16, 0x1

    .line 323
    :cond_111
    invoke-virtual {v15}, Lcom/android/providers/downloads/DownloadInfo;->hasCompletionNotification()Z

    move-result v3

    if-eqz v3, :cond_119

    .line 324
    const/16 v16, 0x1

    .line 326
    :cond_119
    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Lcom/android/providers/downloads/DownloadInfo;->nextAction(J)J

    move-result-wide v18

    .line 327
    .local v18, next:J
    const-wide/16 v3, 0x0

    cmp-long v3, v18, v3

    if-nez v3, :cond_13d

    .line 328
    const/16 v16, 0x1

    .line 309
    :cond_127
    :goto_127
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_12a
    .catchall {:try_start_93 .. :try_end_12a} :catchall_12b

    goto :goto_cb

    .line 334
    .end local v11           #id:J
    .end local v13           #idColumn:I
    .end local v15           #info:Lcom/android/providers/downloads/DownloadInfo;
    .end local v18           #next:J
    .end local v22           #reader:Lcom/android/providers/downloads/DownloadInfo$Reader;
    :catchall_12b
    move-exception v3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v3

    .line 316
    .restart local v11       #id:J
    .restart local v13       #idColumn:I
    .restart local v15       #info:Lcom/android/providers/downloads/DownloadInfo;
    .restart local v22       #reader:Lcom/android/providers/downloads/DownloadInfo$Reader;
    :cond_130
    :try_start_130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    #calls: Lcom/android/providers/downloads/DownloadService;->insertDownload(Lcom/android/providers/downloads/DownloadInfo$Reader;J)Lcom/android/providers/downloads/DownloadInfo;
    invoke-static {v3, v0, v1, v2}, Lcom/android/providers/downloads/DownloadService;->access$600(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadInfo$Reader;J)Lcom/android/providers/downloads/DownloadInfo;
    :try_end_13b
    .catchall {:try_start_130 .. :try_end_13b} :catchall_12b

    move-result-object v15

    goto :goto_fb

    .line 329
    .restart local v18       #next:J
    :cond_13d
    const-wide/16 v3, 0x0

    cmp-long v3, v18, v3

    if-lez v3, :cond_127

    cmp-long v3, v18, v23

    if-gez v3, :cond_127

    .line 330
    move-wide/from16 v23, v18

    goto :goto_127

    .line 334
    .end local v11           #id:J
    .end local v15           #info:Lcom/android/providers/downloads/DownloadInfo;
    .end local v18           #next:J
    :cond_14a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 337
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_151
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_169

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    .line 338
    .local v11, id:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    #calls: Lcom/android/providers/downloads/DownloadService;->deleteDownload(J)V
    invoke-static {v3, v4, v5}, Lcom/android/providers/downloads/DownloadService;->access$800(Lcom/android/providers/downloads/DownloadService;J)V

    goto :goto_151

    .line 343
    .end local v11           #id:Ljava/lang/Long;
    :cond_169
    if-nez v17, :cond_197

    .line 344
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/providers/downloads/DownloadService;->access$400(Lcom/android/providers/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_17b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_197

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/providers/downloads/DownloadInfo;

    .line 345
    .restart local v15       #info:Lcom/android/providers/downloads/DownloadInfo;
    iget-boolean v3, v15, Lcom/android/providers/downloads/DownloadInfo;->mDeleted:Z

    if-eqz v3, :cond_17b

    iget-object v3, v15, Lcom/android/providers/downloads/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_17b

    .line 346
    const/16 v17, 0x1

    .line 347
    const/16 v16, 0x1

    .line 352
    .end local v15           #info:Lcom/android/providers/downloads/DownloadInfo;
    :cond_197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mNotifier:Lcom/android/providers/downloads/DownloadNotification;
    invoke-static {v3}, Lcom/android/providers/downloads/DownloadService;->access$900(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadNotification;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$400(Lcom/android/providers/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/providers/downloads/DownloadNotification;->updateNotification(Ljava/util/Collection;)V

    .line 353
    if-eqz v17, :cond_1f5

    .line 354
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadService$UpdateThread;->bindMediaScanner()V

    .line 361
    :goto_1b3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/providers/downloads/DownloadService;->access$400(Lcom/android/providers/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1c3
    :goto_1c3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/providers/downloads/DownloadInfo;

    .line 362
    .restart local v15       #info:Lcom/android/providers/downloads/DownloadInfo;
    iget-boolean v3, v15, Lcom/android/providers/downloads/DownloadInfo;->mDeleted:Z

    if-eqz v3, :cond_1c3

    .line 365
    iget-object v3, v15, Lcom/android/providers/downloads/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_201

    .line 366
    invoke-virtual {v15}, Lcom/android/providers/downloads/DownloadInfo;->shouldScanFile()Z

    move-result v3

    if-eqz v3, :cond_214

    .line 369
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v4, 0x0

    const/4 v5, 0x1

    #calls: Lcom/android/providers/downloads/DownloadService;->scanFile(Lcom/android/providers/downloads/DownloadInfo;ZZ)Z
    invoke-static {v3, v15, v4, v5}, Lcom/android/providers/downloads/DownloadService;->access$700(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadInfo;ZZ)Z

    move-result v3

    if-nez v3, :cond_1c3

    .line 370
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "scanFile failed!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 356
    .end local v15           #info:Lcom/android/providers/downloads/DownloadInfo;
    :cond_1f5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnection:Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;
    invoke-static {v3}, Lcom/android/providers/downloads/DownloadService;->access$1000(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->disconnectMediaScanner()V

    goto :goto_1b3

    .line 377
    .restart local v15       #info:Lcom/android/providers/downloads/DownloadInfo;
    :cond_201
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v3}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, v15, Lcom/android/providers/downloads/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 381
    :cond_214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    iget-object v4, v15, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    #calls: Lcom/android/providers/downloads/DownloadService;->deleteFileIfExists(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/providers/downloads/DownloadService;->access$1100(Lcom/android/providers/downloads/DownloadService;Ljava/lang/String;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v3}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id = ? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-wide v0, v15, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1c3
.end method
