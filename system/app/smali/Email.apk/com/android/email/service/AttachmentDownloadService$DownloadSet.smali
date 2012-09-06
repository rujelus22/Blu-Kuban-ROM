.class Lcom/android/email/service/AttachmentDownloadService$DownloadSet;
.super Ljava/util/TreeSet;
.source "AttachmentDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/AttachmentDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeSet",
        "<",
        "Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field final mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mWatchdogPendingIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/android/email/service/AttachmentDownloadService;


# direct methods
.method constructor <init>(Lcom/android/email/service/AttachmentDownloadService;Ljava/util/Comparator;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-",
            "Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p2, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;>;"
    iput-object p1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    .line 240
    invoke-direct {p0, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 246
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    .line 241
    return-void
.end method

.method static synthetic access$700(Lcom/android/email/service/AttachmentDownloadService$DownloadSet;J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 234
    invoke-direct {p0, p1, p2}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->getDownloadInProgress(J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/service/AttachmentDownloadService$DownloadSet;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->onWatchdogAlarm()V

    return-void
.end method

.method private cancelDownload(Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;)V
    .registers 5
    .parameter "req"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v1, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    .line 504
    return-void
.end method

.method private declared-synchronized getDownloadInProgress(J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    .registers 5
    .parameter "attachmentId"

    .prologue
    .line 466
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onWatchdogAlarm()V
    .registers 11

    .prologue
    .line 414
    iget-object v6, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    #getter for: Lcom/android/email/service/AttachmentDownloadService;->mStop:Z
    invoke-static {v6}, Lcom/android/email/service/AttachmentDownloadService;->access$400(Lcom/android/email/service/AttachmentDownloadService;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 436
    :cond_8
    :goto_8
    return-void

    .line 415
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 416
    .local v1, now:J
    iget-object v6, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    .line 418
    .local v3, req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    iget-wide v6, v3, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastCallbackTime:J

    sub-long v4, v1, v6

    .line 419
    .local v4, timeSinceCallback:J
    const-wide/16 v6, 0x7530

    cmp-long v6, v4, v6

    if-lez v6, :cond_17

    .line 420
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_51

    .line 421
    const-string v6, "AttachmentService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "== Download of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v3, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " timed out"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_51
    invoke-direct {p0, v3}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->cancelDownload(Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;)V

    goto :goto_17

    .line 427
    .end local v3           #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    .end local v4           #timeSinceCallback:J
    :cond_55
    iget-object v6, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 428
    iget-object v6, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v6, :cond_6c

    iget-object v6, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mWatchdogPendingIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_6c

    .line 429
    iget-object v6, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v7, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mWatchdogPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 433
    :cond_6c
    iget-object v6, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v6, v6, Lcom/android/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/android/email/EmailConnectivityManager;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v6, v6, Lcom/android/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/android/email/EmailConnectivityManager;

    invoke-virtual {v6}, Lcom/android/email/EmailConnectivityManager;->hasConnectivity()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 434
    invoke-virtual {p0}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->processQueue()V

    goto :goto_8
.end method

.method private startDownload(Landroid/content/Intent;Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;)V
    .registers 13
    .parameter "intent"
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x3a98

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 479
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->startTime:J

    .line 480
    iput-boolean v0, p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    .line 481
    iget-object v2, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v8, p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    new-instance v7, Lcom/android/emailcommon/service/EmailServiceProxy;

    iget-object v2, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    #getter for: Lcom/android/email/service/AttachmentDownloadService;->mServiceCallback:Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;
    invoke-static {v3}, Lcom/android/email/service/AttachmentDownloadService;->access$600(Lcom/android/email/service/AttachmentDownloadService;)Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;

    move-result-object v3

    invoke-direct {v7, v2, p1, v3}, Lcom/android/emailcommon/service/EmailServiceProxy;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/android/emailcommon/service/IEmailServiceCallback;)V

    .line 484
    .local v7, proxy:Lcom/android/emailcommon/service/EmailServiceProxy;
    iget-wide v2, p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    iget v6, p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    const/4 v8, 0x2

    if-eq v6, v8, :cond_48

    :goto_2d
    invoke-virtual {v7, v2, v3, v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->loadAttachment(JZ)V

    .line 486
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mWatchdogPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_3b

    .line 487
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->createWatchdogPendingIntent(Landroid/content/Context;)V

    .line 490
    :cond_3b
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    iget-object v6, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mWatchdogPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 493
    return-void

    :cond_48
    move v0, v1

    .line 484
    goto :goto_2d
.end method


# virtual methods
.method createWatchdogPendingIntent(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 496
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/service/AttachmentDownloadService$Watchdog;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 497
    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mWatchdogPendingIntent:Landroid/app/PendingIntent;

    .line 498
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mAlarmManager:Landroid/app/AlarmManager;

    .line 499
    return-void
.end method

.method declared-synchronized downloadsForAccount(J)I
    .registers 8
    .parameter "accountId"

    .prologue
    .line 399
    monitor-enter p0

    const/4 v0, 0x0

    .line 400
    .local v0, count:I
    :try_start_2
    iget-object v3, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    .line 401
    .local v2, req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    iget-wide v3, v2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_23

    cmp-long v3, v3, p1

    if-nez v3, :cond_c

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 405
    .end local v2           #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    :cond_21
    monitor-exit p0

    return v0

    .line 399
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_23
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized endDownload(JI)V
    .registers 27
    .parameter "attachmentId"
    .parameter "statusCode"

    .prologue
    .line 513
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mAttachmentFailureMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 523
    .local v9, downloadCount:Ljava/lang/Integer;
    if-eqz p3, :cond_4f

    .line 524
    if-nez v9, :cond_2e

    .line 525
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 527
    :cond_2e
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mAttachmentFailureMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->findDownloadRequest(J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    move-result-object v13

    .line 532
    .local v13, req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    const/16 v17, 0x20

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_a4

    .line 534
    sget-boolean v17, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v17, :cond_91

    .line 535
    const-string v17, "AttachmentService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "== The download for attachment #"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " will be retried"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_91
    if-eqz v13, :cond_99

    .line 539
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v13, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    .line 541
    :cond_99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v17, v0

    #calls: Lcom/android/email/service/AttachmentDownloadService;->kick()V
    invoke-static/range {v17 .. v17}, Lcom/android/email/service/AttachmentDownloadService;->access$300(Lcom/android/email/service/AttachmentDownloadService;)V
    :try_end_a2
    .catchall {:try_start_1 .. :try_end_a2} :catchall_215

    .line 616
    :goto_a2
    monitor-exit p0

    return-void

    .line 546
    :cond_a4
    if-eqz v13, :cond_ab

    .line 547
    :try_start_a6
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->remove(Ljava/lang/Object;)Z

    .line 549
    :cond_ab
    sget-boolean v17, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v17, :cond_fb

    .line 550
    const-wide/16 v14, 0x0

    .line 551
    .local v14, secs:J
    if-eqz v13, :cond_c1

    .line 552
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    iget-wide v0, v13, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    const-wide/16 v19, 0x3e8

    div-long v14, v17, v19

    .line 554
    :cond_c1
    if-nez p3, :cond_218

    const-string v16, "Success"

    .line 556
    .local v16, status:Ljava/lang/String;
    :goto_c5
    const-string v17, "AttachmentService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "<< Download finished for attachment #"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "; "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " seconds from request, status: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    .end local v14           #secs:J
    .end local v16           #status:Ljava/lang/String;
    :cond_fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v5

    .line 561
    .local v5, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v5, :cond_20a

    .line 562
    iget-wide v3, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    .line 564
    .local v3, accountId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mAttachmentStorageMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 565
    .local v6, currentStorage:Ljava/lang/Long;
    if-nez v6, :cond_131

    .line 566
    const-wide/16 v17, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 568
    :cond_131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mAttachmentStorageMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    iget-wide v0, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v21, v0

    add-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    const/4 v8, 0x0

    .line 570
    .local v8, deleted:Z
    iget v0, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x4

    if-eqz v17, :cond_1d7

    .line 571
    const/16 v17, 0x11

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_18c

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    move-wide/from16 v19, v0

    invoke-static/range {v17 .. v20}, Lcom/android/emailcommon/provider/EmailContent;->delete(Landroid/content/Context;Landroid/net/Uri;J)I

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v12

    .line 578
    .local v12, nc:Lcom/android/email/NotificationController;
    invoke-virtual {v12, v5}, Lcom/android/email/NotificationController;->showDownloadForwardFailedNotification(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 579
    const/4 v8, 0x1

    .line 583
    .end local v12           #nc:Lcom/android/email/NotificationController;
    :cond_18c
    if-eqz v13, :cond_1d7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    iget-wide v0, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    move-wide/from16 v18, v0

    invoke-static/range {v17 .. v19}, Lcom/android/emailcommon/utility/Utility;->hasUnloadedAttachments(Landroid/content/Context;J)Z

    move-result v17

    if-nez v17, :cond_1d7

    .line 585
    sget-boolean v17, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v17, :cond_1c4

    .line 586
    const-string v17, "AttachmentService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "== Downloads finished for outgoing msg #"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-wide v0, v13, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->messageId:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_1c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    iget-wide v0, v13, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J

    move-wide/from16 v18, v0

    invoke-static/range {v17 .. v19}, Lcom/android/email/service/MailService;->actionSendPendingMail(Landroid/content/Context;J)V

    .line 591
    :cond_1d7
    const/16 v17, 0x10

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_23c

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    iget-wide v0, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    move-wide/from16 v18, v0

    invoke-static/range {v17 .. v19}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    .line 593
    .local v11, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v11, :cond_231

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    move-wide/from16 v19, v0

    invoke-static/range {v17 .. v20}, Lcom/android/emailcommon/provider/EmailContent;->delete(Landroid/content/Context;Landroid/net/Uri;J)I

    .line 615
    .end local v3           #accountId:J
    .end local v6           #currentStorage:Ljava/lang/Long;
    .end local v8           #deleted:Z
    .end local v11           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_20a
    :goto_20a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v17, v0

    #calls: Lcom/android/email/service/AttachmentDownloadService;->kick()V
    invoke-static/range {v17 .. v17}, Lcom/android/email/service/AttachmentDownloadService;->access$300(Lcom/android/email/service/AttachmentDownloadService;)V
    :try_end_213
    .catchall {:try_start_a6 .. :try_end_213} :catchall_215

    goto/16 :goto_a2

    .line 513
    .end local v5           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v9           #downloadCount:Ljava/lang/Integer;
    .end local v13           #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    :catchall_215
    move-exception v17

    monitor-exit p0

    throw v17

    .line 554
    .restart local v9       #downloadCount:Ljava/lang/Integer;
    .restart local v13       #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    .restart local v14       #secs:J
    :cond_218
    :try_start_218
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_c5

    .line 598
    .end local v14           #secs:J
    .restart local v3       #accountId:J
    .restart local v5       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v6       #currentStorage:Ljava/lang/Long;
    .restart local v8       #deleted:Z
    .restart local v11       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v17, v0

    #calls: Lcom/android/email/service/AttachmentDownloadService;->kick()V
    invoke-static/range {v17 .. v17}, Lcom/android/email/service/AttachmentDownloadService;->access$300(Lcom/android/email/service/AttachmentDownloadService;)V

    goto/16 :goto_a2

    .line 601
    .end local v11           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_23c
    if-nez v8, :cond_20a

    .line 607
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 608
    .local v7, cv:Landroid/content/ContentValues;
    const/4 v10, 0x6

    .line 610
    .local v10, flags:I
    const-string v17, "flags"

    iget v0, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x7

    move/from16 v0, v18

    iput v0, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v7}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I
    :try_end_26c
    .catchall {:try_start_218 .. :try_end_26c} :catchall_215

    goto :goto_20a
.end method

.method declared-synchronized findDownloadRequest(J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    .registers 7
    .parameter "id"

    .prologue
    .line 296
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 297
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;>;"
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 298
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    .line 299
    .local v1, req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    iget-wide v2, v1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_1b

    cmp-long v2, v2, p1

    if-nez v2, :cond_5

    .line 303
    .end local v1           #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    :goto_17
    monitor-exit p0

    return-object v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_17

    .line 296
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;>;"
    :catchall_1b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized isEmpty()Z
    .registers 2

    .prologue
    .line 308
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_14

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_10
    monitor-exit p0

    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_10

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onChange(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .registers 10
    .parameter "context"
    .parameter "att"

    .prologue
    .line 256
    monitor-enter p0

    :try_start_1
    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-virtual {p0, v3, v4}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->findDownloadRequest(J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    move-result-object v2

    .line 257
    .local v2, req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    #calls: Lcom/android/email/service/AttachmentDownloadService;->getPriority(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I
    invoke-static {p2}, Lcom/android/email/service/AttachmentDownloadService;->access$100(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v3

    int-to-long v0, v3

    .line 258
    .local v0, priority:J
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_60

    .line 259
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_30

    .line 260
    const-string v3, "AttachmentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "== Attachment changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_30
    if-eqz v2, :cond_59

    .line 266
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_56

    .line 267
    const-string v3, "AttachmentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "== Attachment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was in queue, removing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_56
    invoke-virtual {p0, v2}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->remove(Ljava/lang/Object;)Z

    .line 287
    :cond_59
    :goto_59
    iget-object v3, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    #calls: Lcom/android/email/service/AttachmentDownloadService;->kick()V
    invoke-static {v3}, Lcom/android/email/service/AttachmentDownloadService;->access$300(Lcom/android/email/service/AttachmentDownloadService;)V
    :try_end_5e
    .catchall {:try_start_1 .. :try_end_5e} :catchall_b0

    .line 288
    :cond_5e
    monitor-exit p0

    return-void

    .line 273
    :cond_60
    :try_start_60
    iget-object v3, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    .line 275
    if-nez v2, :cond_79

    .line 276
    new-instance v2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    .end local v2           #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;Lcom/android/email/service/AttachmentDownloadService$1;)V

    .line 277
    .restart local v2       #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    invoke-virtual {p0, v2}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_79
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_59

    .line 282
    const-string v3, "AttachmentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "== Download queued for attachment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", priority time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_af
    .catchall {:try_start_60 .. :try_end_af} :catchall_b0

    goto :goto_59

    .line 256
    .end local v0           #priority:J
    .end local v2           #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    :catchall_b0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized processQueue()V
    .registers 23

    .prologue
    .line 316
    monitor-enter p0

    :try_start_1
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_2d

    .line 317
    const-string v2, "AttachmentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "== Checking attachment queue, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v5, v5, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v5}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " entries"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v2}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v19

    .line 322
    .local v19, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;>;"
    :cond_37
    :goto_37
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ge v2, v4, :cond_9f

    .line 324
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    .line 326
    .local v20, req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->downloadsForAccount(J)I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_8d

    .line 327
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_37

    .line 328
    const-string v2, "AttachmentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "== Skip #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    iget-wide v5, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; maxed for acct #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    iget-wide v5, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_1 .. :try_end_89} :catchall_8a

    goto :goto_37

    .line 316
    .end local v19           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;>;"
    .end local v20           #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    :catchall_8a
    move-exception v2

    monitor-exit p0

    throw v2

    .line 334
    .restart local v19       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;>;"
    .restart local v20       #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    :cond_8d
    :try_start_8d
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    if-nez v2, :cond_37

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->tryStartDownload(Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;)Z

    goto :goto_37

    .line 340
    .end local v20           #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    :cond_9f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v15, v2, Lcom/android/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/android/email/EmailConnectivityManager;
    :try_end_a5
    .catchall {:try_start_8d .. :try_end_a5} :catchall_8a

    .line 341
    .local v15, ecm:Lcom/android/email/EmailConnectivityManager;
    if-nez v15, :cond_a9

    .line 391
    :cond_a7
    :goto_a7
    monitor-exit p0

    return-void

    .line 342
    :cond_a9
    :try_start_a9
    invoke-virtual {v15}, Lcom/android/email/EmailConnectivityManager;->isAutoSyncAllowed()Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 344
    invoke-virtual {v15}, Lcom/android/email/EmailConnectivityManager;->getActiveNetworkType()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_a7

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    rsub-int/lit8 v12, v2, 0x2

    .line 350
    .local v12, backgroundDownloads:I
    const/4 v2, 0x1

    if-le v12, v2, :cond_a7

    .line 352
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    const/16 v4, 0x19

    invoke-static {v2, v4}, Lcom/android/emailcommon/provider/EmailContent;->uriWithLimit(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    .line 354
    .local v3, lookupUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/email/AttachmentInfo;->PROJECTION:[Ljava/lang/String;

    const-string v5, "contentUri isnull AND flags=0 AND messageKey IN (SELECT _id FROM Message WHERE mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1))"

    const/4 v6, 0x0

    const-string v7, "_id DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 357
    .local v13, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
    :try_end_e9
    .catchall {:try_start_a9 .. :try_end_e9} :catchall_8a

    move-result-object v14

    .line 359
    .local v14, cacheDir:Ljava/io/File;
    :cond_ea
    :goto_ea
    :try_start_ea
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_178

    .line 360
    const/4 v2, 0x4

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 361
    .local v9, accountKey:J
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 362
    .local v16, id:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    invoke-static {v2, v9, v10}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v8

    .line 363
    .local v8, account:Lcom/android/emailcommon/provider/Account;
    if-nez v8, :cond_119

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v16

    invoke-static {v2, v4, v0, v1}, Lcom/android/emailcommon/provider/EmailContent;->delete(Landroid/content/Context;Landroid/net/Uri;J)I
    :try_end_113
    .catchall {:try_start_ea .. :try_end_113} :catchall_114

    goto :goto_ea

    .line 388
    .end local v8           #account:Lcom/android/emailcommon/provider/Account;
    .end local v9           #accountKey:J
    .end local v16           #id:J
    :catchall_114
    move-exception v2

    :try_start_115
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_119
    .catchall {:try_start_115 .. :try_end_119} :catchall_8a

    .line 367
    .restart local v8       #account:Lcom/android/emailcommon/provider/Account;
    .restart local v9       #accountKey:J
    .restart local v16       #id:J
    :cond_119
    :try_start_119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    invoke-virtual {v2, v8, v14}, Lcom/android/email/service/AttachmentDownloadService;->canPrefetchForAccount(Lcom/android/emailcommon/provider/Account;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 369
    new-instance v18, Lcom/android/email/AttachmentInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v13}, Lcom/android/email/AttachmentInfo;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 370
    .local v18, info:Lcom/android/email/AttachmentInfo;
    invoke-virtual/range {v18 .. v18}, Lcom/android/email/AttachmentInfo;->isEligibleForDownload()Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v11

    .line 372
    .local v11, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v11, :cond_ea

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/android/email/service/AttachmentDownloadService;->mAttachmentFailureMap:Ljava/util/HashMap;

    iget-wide v4, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    .line 375
    .local v21, tryCount:Ljava/lang/Integer;
    if-eqz v21, :cond_15f

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x5

    if-gt v2, v4, :cond_ea

    .line 380
    :cond_15f
    new-instance v20, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v11, v4}, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;Lcom/android/email/service/AttachmentDownloadService$1;)V

    .line 381
    .restart local v20       #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->tryStartDownload(Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;)Z
    :try_end_178
    .catchall {:try_start_119 .. :try_end_178} :catchall_114

    .line 388
    .end local v8           #account:Lcom/android/emailcommon/provider/Account;
    .end local v9           #accountKey:J
    .end local v11           #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v16           #id:J
    .end local v18           #info:Lcom/android/email/AttachmentInfo;
    .end local v20           #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    .end local v21           #tryCount:Ljava/lang/Integer;
    :cond_178
    :try_start_178
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_17b
    .catchall {:try_start_178 .. :try_end_17b} :catchall_8a

    goto/16 :goto_a7
.end method

.method declared-synchronized tryStartDownload(Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;)Z
    .registers 10
    .parameter "req"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 445
    monitor-enter p0

    :try_start_3
    iget-object v5, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-wide v6, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J

    #calls: Lcom/android/email/service/AttachmentDownloadService;->getServiceIntentForAccount(J)Landroid/content/Intent;
    invoke-static {v5, v6, v7}, Lcom/android/email/service/AttachmentDownloadService;->access$500(Lcom/android/email/service/AttachmentDownloadService;J)Landroid/content/Intent;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_4a

    move-result-object v2

    .line 446
    .local v2, intent:Landroid/content/Intent;
    if-nez v2, :cond_f

    .line 462
    :cond_d
    :goto_d
    monitor-exit p0

    return v3

    .line 449
    :cond_f
    :try_start_f
    iget-object v5, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v6, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_4a

    move-result-object v5

    if-eqz v5, :cond_43

    move v0, v4

    .line 450
    .local v0, alreadyInProgress:Z
    :goto_1e
    if-nez v0, :cond_d

    .line 453
    :try_start_20
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_3e

    .line 454
    const-string v3, "AttachmentService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">> Starting download for attachment #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_3e
    invoke-direct {p0, v2, p1}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->startDownload(Landroid/content/Intent;Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;)V
    :try_end_41
    .catchall {:try_start_20 .. :try_end_41} :catchall_4a
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_41} :catch_45

    :goto_41
    move v3, v4

    .line 462
    goto :goto_d

    .end local v0           #alreadyInProgress:Z
    :cond_43
    move v0, v3

    .line 449
    goto :goto_1e

    .line 457
    .restart local v0       #alreadyInProgress:Z
    :catch_45
    move-exception v1

    .line 460
    .local v1, e:Landroid/os/RemoteException;
    :try_start_46
    invoke-direct {p0, p1}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->cancelDownload(Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    goto :goto_41

    .line 445
    .end local v0           #alreadyInProgress:Z
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #intent:Landroid/content/Intent;
    :catchall_4a
    move-exception v3

    monitor-exit p0

    throw v3
.end method
