.class Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;
.super Ljava/lang/Thread;
.source "SecDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/providers/downloads/SecDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/providers/downloads/SecDownloadService;


# direct methods
.method public constructor <init>(Lcom/sec/android/providers/downloads/SecDownloadService;)V
    .registers 3
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    .line 312
    const-string v0, "Download Service"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 313
    return-void
.end method


# virtual methods
.method public run()V
    .registers 20

    .prologue
    .line 316
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 320
    const/4 v3, 0x0

    .line 323
    const-wide v1, 0x7fffffffffffffffL

    move-wide/from16 v17, v1

    move v1, v3

    move-wide/from16 v2, v17

    .line 325
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    monitor-enter v4

    .line 326
    :try_start_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #getter for: Lcom/sec/android/providers/downloads/SecDownloadService;->mUpdateThread:Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;
    invoke-static {v5}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$300(Lcom/sec/android/providers/downloads/SecDownloadService;)Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;

    move-result-object v5

    move-object/from16 v0, p0

    if-eq v5, v0, :cond_2c

    .line 327
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "multiple UpdateThreads in DownloadService"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 363
    :catchall_29
    move-exception v1

    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_29

    throw v1

    .line 330
    :cond_2c
    :try_start_2c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #getter for: Lcom/sec/android/providers/downloads/SecDownloadService;->mPendingUpdate:Z
    invoke-static {v5}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$400(Lcom/sec/android/providers/downloads/SecDownloadService;)Z

    move-result v5

    if-nez v5, :cond_a5

    .line 331
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    const/4 v6, 0x0

    #setter for: Lcom/sec/android/providers/downloads/SecDownloadService;->mUpdateThread:Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;
    invoke-static {v5, v6}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$302(Lcom/sec/android/providers/downloads/SecDownloadService;Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;)Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;

    .line 332
    if-nez v1, :cond_4e

    .line 333
    const-string v1, "SecDownloader"

    const-string v5, "stopself called"

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    invoke-virtual {v1}, Lcom/sec/android/providers/downloads/SecDownloadService;->stopSelf()V

    .line 336
    :cond_4e
    const-wide v5, 0x7fffffffffffffffL

    cmp-long v1, v2, v5

    if-eqz v1, :cond_6c

    .line 337
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    const-string v5, "alarm"

    invoke-virtual {v1, v5}, Lcom/sec/android/providers/downloads/SecDownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 339
    if-nez v1, :cond_7e

    .line 340
    const-string v1, "SecDownloader"

    const-string v2, "SecDownloadService : run : couldn\'t get alarm manager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_6c
    :goto_6c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/providers/downloads/SecDownloadService;->oldChars:Landroid/database/CharArrayBuffer;
    invoke-static {v1, v2}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$502(Lcom/sec/android/providers/downloads/SecDownloadService;Landroid/database/CharArrayBuffer;)Landroid/database/CharArrayBuffer;

    .line 359
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/providers/downloads/SecDownloadService;->mNewChars:Landroid/database/CharArrayBuffer;
    invoke-static {v1, v2}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$602(Lcom/sec/android/providers/downloads/SecDownloadService;Landroid/database/CharArrayBuffer;)Landroid/database/CharArrayBuffer;

    .line 360
    monitor-exit v4

    .line 373
    :cond_7d
    return-void

    .line 348
    :cond_7e
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.DOWNLOAD_WAKEUP"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    const-string v6, "com.sec.android.providers.downloads"

    const-class v7, Lcom/sec/android/providers/downloads/SecDownloadReceiver;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    add-long/2addr v2, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    const/4 v8, 0x0

    const/high16 v9, 0x4000

    invoke-static {v7, v8, v5, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v6, v2, v3, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_6c

    .line 362
    :cond_a5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/providers/downloads/SecDownloadService;->mPendingUpdate:Z
    invoke-static {v1, v2}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$402(Lcom/sec/android/providers/downloads/SecDownloadService;Z)Z

    .line 363
    monitor-exit v4
    :try_end_ae
    .catchall {:try_start_2c .. :try_end_ae} :catchall_29

    .line 364
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    invoke-static {v1}, Lcom/sec/android/providers/downloads/SecHelpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v12

    .line 365
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    invoke-static {v1}, Lcom/sec/android/providers/downloads/SecHelpers;->isNetworkRoaming(Landroid/content/Context;)Z

    move-result v13

    .line 366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 368
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    invoke-virtual {v1}, Lcom/sec/android/providers/downloads/SecDownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 371
    if-eqz v2, :cond_7d

    .line 379
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 381
    const/4 v3, 0x0

    .line 383
    const/4 v11, 0x0

    .line 384
    const/4 v10, 0x0

    .line 385
    const-wide v8, 0x7fffffffffffffffL

    .line 387
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    .line 392
    const-string v1, "_id"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 411
    :goto_ec
    if-eqz v4, :cond_fc

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #getter for: Lcom/sec/android/providers/downloads/SecDownloadService;->mDownloads:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$700(Lcom/sec/android/providers/downloads/SecDownloadService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_284

    .line 416
    :cond_fc
    if-eqz v4, :cond_122

    .line 428
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #calls: Lcom/sec/android/providers/downloads/SecDownloadService;->shouldScanFile(I)Z
    invoke-static {v1, v3}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$800(Lcom/sec/android/providers/downloads/SecDownloadService;I)Z

    move-result v1

    if-eqz v1, :cond_11a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #calls: Lcom/sec/android/providers/downloads/SecDownloadService;->mediaScannerConnected()Z
    invoke-static {v1}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$900(Lcom/sec/android/providers/downloads/SecDownloadService;)Z

    move-result v1

    if-eqz v1, :cond_11a

    .line 429
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    const/4 v5, 0x0

    #calls: Lcom/sec/android/providers/downloads/SecDownloadService;->scanFile(Landroid/database/Cursor;I)Z
    invoke-static {v1, v5, v3}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$1000(Lcom/sec/android/providers/downloads/SecDownloadService;Landroid/database/Cursor;I)Z

    .line 431
    :cond_11a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #calls: Lcom/sec/android/providers/downloads/SecDownloadService;->deleteDownload(I)V
    invoke-static {v1, v3}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$1100(Lcom/sec/android/providers/downloads/SecDownloadService;I)V

    goto :goto_ec

    .line 433
    :cond_122
    move/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 435
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #getter for: Lcom/sec/android/providers/downloads/SecDownloadService;->mDownloads:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$700(Lcom/sec/android/providers/downloads/SecDownloadService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v3, v1, :cond_195

    .line 440
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    move v4, v12

    move v5, v13

    move-wide v6, v14

    #calls: Lcom/sec/android/providers/downloads/SecDownloadService;->insertDownload(Landroid/database/Cursor;IZZJ)V
    invoke-static/range {v1 .. v7}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$1200(Lcom/sec/android/providers/downloads/SecDownloadService;Landroid/database/Cursor;IZZJ)V

    .line 442
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #calls: Lcom/sec/android/providers/downloads/SecDownloadService;->shouldScanFile(I)Z
    invoke-static {v1, v3}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$800(Lcom/sec/android/providers/downloads/SecDownloadService;I)Z

    move-result v1

    if-eqz v1, :cond_2d2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #calls: Lcom/sec/android/providers/downloads/SecDownloadService;->mediaScannerConnected()Z
    invoke-static {v1}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$900(Lcom/sec/android/providers/downloads/SecDownloadService;)Z

    move-result v1

    if-eqz v1, :cond_15e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #calls: Lcom/sec/android/providers/downloads/SecDownloadService;->scanFile(Landroid/database/Cursor;I)Z
    invoke-static {v1, v2, v3}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$1000(Lcom/sec/android/providers/downloads/SecDownloadService;Landroid/database/Cursor;I)Z

    move-result v1

    if-nez v1, :cond_2d2

    .line 444
    :cond_15e
    const/4 v1, 0x1

    .line 445
    const/4 v10, 0x1

    .line 447
    :goto_160
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #calls: Lcom/sec/android/providers/downloads/SecDownloadService;->visibleNotification(I)Z
    invoke-static {v4, v3}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$1300(Lcom/sec/android/providers/downloads/SecDownloadService;I)Z

    move-result v4

    if-eqz v4, :cond_16b

    .line 448
    const/4 v10, 0x1

    .line 450
    :cond_16b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #calls: Lcom/sec/android/providers/downloads/SecDownloadService;->nextAction(IJ)J
    invoke-static {v4, v3, v14, v15}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$1400(Lcom/sec/android/providers/downloads/SecDownloadService;IJ)J

    move-result-wide v4

    .line 451
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_189

    .line 452
    const/4 v10, 0x1

    .line 456
    :cond_17a
    :goto_17a
    add-int/lit8 v4, v3, 0x1

    .line 457
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 458
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    move v11, v1

    move v1, v3

    move v3, v4

    :goto_186
    move v4, v1

    .line 531
    goto/16 :goto_ec

    .line 453
    :cond_189
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_17a

    cmp-long v6, v4, v8

    if-gez v6, :cond_17a

    move-wide v8, v4

    .line 454
    goto :goto_17a

    .line 460
    :cond_195
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #getter for: Lcom/sec/android/providers/downloads/SecDownloadService;->mDownloads:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$700(Lcom/sec/android/providers/downloads/SecDownloadService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v1, v1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    .line 462
    if-ge v1, v5, :cond_1cc

    .line 469
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #calls: Lcom/sec/android/providers/downloads/SecDownloadService;->shouldScanFile(I)Z
    invoke-static {v1, v3}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$800(Lcom/sec/android/providers/downloads/SecDownloadService;I)Z

    move-result v1

    if-eqz v1, :cond_1c3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #calls: Lcom/sec/android/providers/downloads/SecDownloadService;->mediaScannerConnected()Z
    invoke-static {v1}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$900(Lcom/sec/android/providers/downloads/SecDownloadService;)Z

    move-result v1

    if-eqz v1, :cond_1c3

    .line 470
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    const/4 v5, 0x0

    #calls: Lcom/sec/android/providers/downloads/SecDownloadService;->scanFile(Landroid/database/Cursor;I)Z
    invoke-static {v1, v5, v3}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$1000(Lcom/sec/android/providers/downloads/SecDownloadService;Landroid/database/Cursor;I)Z

    .line 472
    :cond_1c3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #calls: Lcom/sec/android/providers/downloads/SecDownloadService;->deleteDownload(I)V
    invoke-static {v1, v3}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$1100(Lcom/sec/android/providers/downloads/SecDownloadService;I)V

    move v1, v4

    goto :goto_186

    .line 473
    :cond_1cc
    if-ne v1, v5, :cond_229

    .line 480
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    move v4, v12

    move v5, v13

    move-wide v6, v14

    #calls: Lcom/sec/android/providers/downloads/SecDownloadService;->updateDownload(Landroid/database/Cursor;IZZJ)V
    invoke-static/range {v1 .. v7}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$1500(Lcom/sec/android/providers/downloads/SecDownloadService;Landroid/database/Cursor;IZZJ)V

    .line 483
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #calls: Lcom/sec/android/providers/downloads/SecDownloadService;->shouldScanFile(I)Z
    invoke-static {v1, v3}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$800(Lcom/sec/android/providers/downloads/SecDownloadService;I)Z

    move-result v1

    if-eqz v1, :cond_1f8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #calls: Lcom/sec/android/providers/downloads/SecDownloadService;->mediaScannerConnected()Z
    invoke-static {v1}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$900(Lcom/sec/android/providers/downloads/SecDownloadService;)Z

    move-result v1

    if-eqz v1, :cond_1f6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #calls: Lcom/sec/android/providers/downloads/SecDownloadService;->scanFile(Landroid/database/Cursor;I)Z
    invoke-static {v1, v2, v3}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$1000(Lcom/sec/android/providers/downloads/SecDownloadService;Landroid/database/Cursor;I)Z

    move-result v1

    if-nez v1, :cond_1f8

    .line 486
    :cond_1f6
    const/4 v11, 0x1

    .line 487
    const/4 v10, 0x1

    .line 489
    :cond_1f8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #calls: Lcom/sec/android/providers/downloads/SecDownloadService;->visibleNotification(I)Z
    invoke-static {v1, v3}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$1300(Lcom/sec/android/providers/downloads/SecDownloadService;I)Z

    move-result v1

    if-eqz v1, :cond_203

    .line 490
    const/4 v10, 0x1

    .line 492
    :cond_203
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #calls: Lcom/sec/android/providers/downloads/SecDownloadService;->nextAction(IJ)J
    invoke-static {v1, v3, v14, v15}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$1400(Lcom/sec/android/providers/downloads/SecDownloadService;IJ)J

    move-result-wide v4

    .line 493
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_21d

    .line 494
    const/4 v10, 0x1

    .line 498
    :cond_212
    :goto_212
    add-int/lit8 v3, v3, 0x1

    .line 499
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 500
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    goto/16 :goto_186

    .line 495
    :cond_21d
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_212

    cmp-long v1, v4, v8

    if-gez v1, :cond_212

    move-wide v8, v4

    .line 496
    goto :goto_212

    .line 508
    :cond_229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    move v4, v12

    move v5, v13

    move-wide v6, v14

    #calls: Lcom/sec/android/providers/downloads/SecDownloadService;->insertDownload(Landroid/database/Cursor;IZZJ)V
    invoke-static/range {v1 .. v7}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$1200(Lcom/sec/android/providers/downloads/SecDownloadService;Landroid/database/Cursor;IZZJ)V

    .line 511
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #calls: Lcom/sec/android/providers/downloads/SecDownloadService;->shouldScanFile(I)Z
    invoke-static {v1, v3}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$800(Lcom/sec/android/providers/downloads/SecDownloadService;I)Z

    move-result v1

    if-eqz v1, :cond_253

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #calls: Lcom/sec/android/providers/downloads/SecDownloadService;->mediaScannerConnected()Z
    invoke-static {v1}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$900(Lcom/sec/android/providers/downloads/SecDownloadService;)Z

    move-result v1

    if-eqz v1, :cond_251

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #calls: Lcom/sec/android/providers/downloads/SecDownloadService;->scanFile(Landroid/database/Cursor;I)Z
    invoke-static {v1, v2, v3}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$1000(Lcom/sec/android/providers/downloads/SecDownloadService;Landroid/database/Cursor;I)Z

    move-result v1

    if-nez v1, :cond_253

    .line 514
    :cond_251
    const/4 v11, 0x1

    .line 515
    const/4 v10, 0x1

    .line 517
    :cond_253
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #calls: Lcom/sec/android/providers/downloads/SecDownloadService;->visibleNotification(I)Z
    invoke-static {v1, v3}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$1300(Lcom/sec/android/providers/downloads/SecDownloadService;I)Z

    move-result v1

    if-eqz v1, :cond_25e

    .line 518
    const/4 v10, 0x1

    .line 520
    :cond_25e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #calls: Lcom/sec/android/providers/downloads/SecDownloadService;->nextAction(IJ)J
    invoke-static {v1, v3, v14, v15}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$1400(Lcom/sec/android/providers/downloads/SecDownloadService;IJ)J

    move-result-wide v4

    .line 521
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_278

    .line 522
    const/4 v10, 0x1

    .line 526
    :cond_26d
    :goto_26d
    add-int/lit8 v3, v3, 0x1

    .line 527
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 528
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    goto/16 :goto_186

    .line 523
    :cond_278
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_26d

    cmp-long v1, v4, v8

    if-gez v1, :cond_26d

    move-wide v8, v4

    .line 524
    goto :goto_26d

    .line 537
    :cond_284
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #getter for: Lcom/sec/android/providers/downloads/SecDownloadService;->mNotifier:Lcom/sec/android/providers/downloads/SecDownloadNotification;
    invoke-static {v1}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$1600(Lcom/sec/android/providers/downloads/SecDownloadService;)Lcom/sec/android/providers/downloads/SecDownloadNotification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/providers/downloads/SecDownloadNotification;->updateNotification()V

    .line 542
    if-eqz v11, :cond_2c6

    .line 543
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #getter for: Lcom/sec/android/providers/downloads/SecDownloadService;->mMediaScannerConnecting:Z
    invoke-static {v1}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$100(Lcom/sec/android/providers/downloads/SecDownloadService;)Z

    move-result v1

    if-nez v1, :cond_2bf

    .line 544
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 545
    const-string v3, "com.android.providers.media"

    const-string v4, "com.android.providers.media.MediaScannerService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 547
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    const/4 v4, 0x1

    #setter for: Lcom/sec/android/providers/downloads/SecDownloadService;->mMediaScannerConnecting:Z
    invoke-static {v3, v4}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$102(Lcom/sec/android/providers/downloads/SecDownloadService;Z)Z

    .line 548
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #getter for: Lcom/sec/android/providers/downloads/SecDownloadService;->mMediaScannerConnection:Lcom/sec/android/providers/downloads/SecDownloadService$MediaScannerConnection;
    invoke-static {v4}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$1700(Lcom/sec/android/providers/downloads/SecDownloadService;)Lcom/sec/android/providers/downloads/SecDownloadService$MediaScannerConnection;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Lcom/sec/android/providers/downloads/SecDownloadService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 555
    :cond_2bf
    :goto_2bf
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-wide v2, v8

    move v1, v10

    .line 556
    goto/16 :goto_10

    .line 551
    :cond_2c6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #getter for: Lcom/sec/android/providers/downloads/SecDownloadService;->mMediaScannerConnection:Lcom/sec/android/providers/downloads/SecDownloadService$MediaScannerConnection;
    invoke-static {v1}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$1700(Lcom/sec/android/providers/downloads/SecDownloadService;)Lcom/sec/android/providers/downloads/SecDownloadService$MediaScannerConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/providers/downloads/SecDownloadService$MediaScannerConnection;->disconnectMediaScanner()V

    goto :goto_2bf

    :cond_2d2
    move v1, v11

    goto/16 :goto_160
.end method
