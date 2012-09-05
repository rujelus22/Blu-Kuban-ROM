.class public abstract Lcom/google/android/music/sync/common/AbstractSyncAdapter;
.super Lcom/google/android/common/LoggingThreadedSyncAdapter;
.source "AbstractSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;,
        Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;,
        Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueueEntry;,
        Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;,
        Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder;
    }
.end annotation


# instance fields
.field private mActionOnInitialization:I

.field protected mAuthInfo:Lcom/google/android/music/sync/common/AuthInfo;

.field protected final mContext:Landroid/content/Context;

.field private mMaxDownstreamLoops:I

.field private mMaxQueueSize:I

.field private final mSyncActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mTag:Ljava/lang/String;

.field private final mThreadPool:Ljava/util/concurrent/ExecutorService;

.field private final mUseVerboseLogging:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1, v1}, Lcom/google/android/common/LoggingThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 51
    const-class v0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mTag:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mSyncActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 79
    iput-object p1, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    .line 80
    iget-object v0, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mUseVerboseLogging:Z

    .line 81
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/music/sync/common/AbstractSyncAdapter;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mActionOnInitialization:I

    return p1
.end method

.method static synthetic access$102(Lcom/google/android/music/sync/common/AbstractSyncAdapter;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mMaxQueueSize:I

    return p1
.end method

.method static synthetic access$202(Lcom/google/android/music/sync/common/AbstractSyncAdapter;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mMaxDownstreamLoops:I

    return p1
.end method

.method private final download(Landroid/content/SyncResult;Landroid/accounts/Account;Ljava/util/HashMap;)V
    .registers 13
    .parameter "syncResult"
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SyncResult;",
            "Landroid/accounts/Account;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    .line 392
    .local p3, protocolState:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p2, p3}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->onDownstreamStart(Landroid/accounts/Account;Ljava/util/HashMap;)V

    .line 394
    new-instance v4, Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;

    iget v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mMaxQueueSize:I

    invoke-direct {v4, v6}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;-><init>(I)V

    .line 395
    .local v4, fetchQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;
    const/4 v1, 0x0

    .line 396
    .local v1, downstreamMergerFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Void;>;"
    const/4 v3, 0x0

    .line 399
    .local v3, downstreamReaderFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Void;>;"
    const/16 v6, 0x64

    :try_start_e
    invoke-virtual {p0}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {p0, v4, v6, v7, v8}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->createDownstreamReader(Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;ILandroid/content/Context;Ljava/util/Map;)Lcom/google/android/music/sync/common/DownstreamReader;

    move-result-object v2

    .line 402
    .local v2, downstreamReader:Lcom/google/android/music/sync/common/DownstreamReader;
    iget-object v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v6, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 404
    invoke-virtual {v2}, Lcom/google/android/music/sync/common/DownstreamReader;->getMergeQueue()Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0, v6, v7, p3}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->createDownstreamMerger(Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;Landroid/content/Context;Ljava/util/Map;)Lcom/google/android/music/sync/common/DownstreamMerger;

    move-result-object v0

    .line 406
    .local v0, downstreamMerger:Lcom/google/android/music/sync/common/DownstreamMerger;
    iget-object v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_31
    .catchall {:try_start_e .. :try_end_31} :catchall_c8

    move-result-object v1

    .line 412
    const/4 v5, 0x0

    .line 413
    .local v5, loopCount:I
    :cond_33
    add-int/lit8 v5, v5, 0x1

    :try_start_35
    iget v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mMaxDownstreamLoops:I

    if-gt v5, v6, :cond_5b

    .line 414
    iget-boolean v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mUseVerboseLogging:Z

    if-eqz v6, :cond_55

    .line 415
    iget-object v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Downstream loop "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_55
    invoke-virtual {p0, p2, v4, p3}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->fetchDataFromServer(Landroid/accounts/Account;Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;Ljava/util/HashMap;)Z

    move-result v6

    if-nez v6, :cond_b5

    .line 431
    :cond_5b
    :goto_5b
    iget v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mMaxDownstreamLoops:I

    if-le v5, v6, :cond_6d

    .line 432
    iget-boolean v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mUseVerboseLogging:Z

    if-eqz v6, :cond_6a

    .line 433
    iget-object v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mTag:Ljava/lang/String;

    const-string v7, "Exceeded maximum number of downstream loops."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_6a
    const/4 v6, 0x1

    iput-boolean v6, p1, Landroid/content/SyncResult;->tooManyRetries:Z
    :try_end_6d
    .catchall {:try_start_35 .. :try_end_6d} :catchall_c3

    .line 438
    :cond_6d
    :try_start_6d
    invoke-virtual {v4}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;->close()V

    .line 442
    iget-boolean v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mUseVerboseLogging:Z

    if-eqz v6, :cond_7b

    .line 443
    iget-object v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mTag:Ljava/lang/String;

    const-string v7, "Waiting on downstream reader thread to finish..."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_7b
    invoke-direct {p0, v3, p1}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->throwIfFutureTaskFailed(Ljava/util/concurrent/Future;Landroid/content/SyncResult;)V

    .line 446
    const/4 v3, 0x0

    .line 449
    iget-boolean v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mUseVerboseLogging:Z

    if-eqz v6, :cond_8a

    .line 450
    iget-object v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mTag:Ljava/lang/String;

    const-string v7, "Waiting on downstream merger thread to finish merging..."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_8a
    invoke-direct {p0, v1, p1}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->throwIfFutureTaskFailed(Ljava/util/concurrent/Future;Landroid/content/SyncResult;)V
    :try_end_8d
    .catchall {:try_start_6d .. :try_end_8d} :catchall_c8

    .line 453
    const/4 v1, 0x0

    .line 456
    if-nez v3, :cond_92

    if-eqz v1, :cond_a6

    .line 457
    :cond_92
    iget-boolean v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mUseVerboseLogging:Z

    if-eqz v6, :cond_9d

    .line 458
    iget-object v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mTag:Ljava/lang/String;

    const-string v7, "Error occurred when dowloading. Waiting for download threads."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_9d
    invoke-virtual {v4}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;->kill()V

    .line 461
    invoke-direct {p0, v3}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->safeWait(Ljava/util/concurrent/Future;)V

    .line 462
    invoke-direct {p0, v1}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->safeWait(Ljava/util/concurrent/Future;)V

    .line 467
    :cond_a6
    invoke-virtual {p0, p2, p3}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->onDownstreamComplete(Landroid/accounts/Account;Ljava/util/HashMap;)V

    .line 469
    iget-boolean v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mUseVerboseLogging:Z

    if-eqz v6, :cond_b4

    .line 470
    iget-object v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mTag:Ljava/lang/String;

    const-string v7, "Downstream sync complete."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_b4
    return-void

    .line 422
    :cond_b5
    :try_start_b5
    invoke-direct {p0, v3}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->hasFutureTaskReportedAnError(Ljava/util/concurrent/Future;)Z

    move-result v6

    if-eqz v6, :cond_e2

    .line 423
    iget-object v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mTag:Ljava/lang/String;

    const-string v7, "Bailing on downstream reader thread due to an error."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catchall {:try_start_b5 .. :try_end_c2} :catchall_c3

    goto :goto_5b

    .line 438
    :catchall_c3
    move-exception v6

    :try_start_c4
    invoke-virtual {v4}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;->close()V

    throw v6
    :try_end_c8
    .catchall {:try_start_c4 .. :try_end_c8} :catchall_c8

    .line 456
    .end local v0           #downstreamMerger:Lcom/google/android/music/sync/common/DownstreamMerger;
    .end local v2           #downstreamReader:Lcom/google/android/music/sync/common/DownstreamReader;
    .end local v5           #loopCount:I
    :catchall_c8
    move-exception v6

    if-nez v3, :cond_cd

    if-eqz v1, :cond_e1

    .line 457
    :cond_cd
    iget-boolean v7, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mUseVerboseLogging:Z

    if-eqz v7, :cond_d8

    .line 458
    iget-object v7, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mTag:Ljava/lang/String;

    const-string v8, "Error occurred when dowloading. Waiting for download threads."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_d8
    invoke-virtual {v4}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;->kill()V

    .line 461
    invoke-direct {p0, v3}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->safeWait(Ljava/util/concurrent/Future;)V

    .line 462
    invoke-direct {p0, v1}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->safeWait(Ljava/util/concurrent/Future;)V

    :cond_e1
    throw v6

    .line 426
    .restart local v0       #downstreamMerger:Lcom/google/android/music/sync/common/DownstreamMerger;
    .restart local v2       #downstreamReader:Lcom/google/android/music/sync/common/DownstreamReader;
    .restart local v5       #loopCount:I
    :cond_e2
    :try_start_e2
    invoke-direct {p0, v1}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->hasFutureTaskReportedAnError(Ljava/util/concurrent/Future;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 427
    iget-object v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mTag:Ljava/lang/String;

    const-string v7, "Bailing on downstream merger thread due to an error."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ef
    .catchall {:try_start_e2 .. :try_end_ef} :catchall_c3

    goto/16 :goto_5b
.end method

.method private hasFutureTaskReportedAnError(Ljava/util/concurrent/Future;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    const/4 v1, 0x0

    .line 491
    :try_start_1
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 492
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_a} :catch_b
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_a} :catch_e

    .line 501
    :cond_a
    :goto_a
    return v1

    .line 495
    :catch_b
    move-exception v0

    .line 496
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    const/4 v1, 0x1

    goto :goto_a

    .line 497
    .end local v0           #e:Ljava/util/concurrent/ExecutionException;
    :catch_e
    move-exception v0

    .line 500
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_a
.end method

.method private final safeWait(Ljava/util/concurrent/Future;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 476
    .local p1, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    if-eqz p1, :cond_5

    .line 478
    :try_start_2
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 483
    :cond_5
    :goto_5
    return-void

    .line 479
    :catch_6
    move-exception v0

    .line 480
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mTag:Ljava/lang/String;

    const-string v2, "Exception while waiting for completion."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method private throwIfFutureTaskFailed(Ljava/util/concurrent/Future;Landroid/content/SyncResult;)V
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;",
            "Landroid/content/SyncResult;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    .line 512
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_52

    .line 536
    :goto_3
    return-void

    .line 513
    :catch_4
    move-exception v0

    .line 514
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 515
    instance-of v1, v0, Lcom/google/android/music/sync/api/ServiceUnavailableException;

    if-eqz v1, :cond_2b

    .line 516
    const-class v1, Lcom/google/android/music/sync/api/ServiceUnavailableException;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/api/ServiceUnavailableException;

    .line 517
    invoke-virtual {v0}, Lcom/google/android/music/sync/api/ServiceUnavailableException;->getRetryAfter()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_25

    .line 518
    invoke-virtual {v0}, Lcom/google/android/music/sync/api/ServiceUnavailableException;->getRetryAfter()J

    move-result-wide v1

    iput-wide v1, p2, Landroid/content/SyncResult;->delayUntil:J

    .line 520
    :cond_25
    new-instance v1, Lcom/google/android/music/sync/common/SoftSyncException;

    invoke-direct {v1, v0}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 521
    :cond_2b
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_35

    .line 522
    new-instance v1, Lcom/google/android/music/sync/common/SoftSyncException;

    invoke-direct {v1, v0}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 523
    :cond_35
    instance-of v1, v0, Lcom/google/android/music/sync/common/SoftSyncException;

    if-eqz v1, :cond_42

    .line 524
    const-class v1, Lcom/google/android/music/sync/common/SoftSyncException;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/common/SoftSyncException;

    throw v0

    .line 525
    :cond_42
    instance-of v1, v0, Landroid/accounts/AuthenticatorException;

    if-eqz v1, :cond_4c

    .line 526
    new-instance v1, Landroid/accounts/AuthenticatorException;

    invoke-direct {v1, v0}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 528
    :cond_4c
    new-instance v1, Lcom/google/android/music/sync/common/HardSyncException;

    invoke-direct {v1, v0}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 530
    :catch_52
    move-exception v0

    .line 533
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3
.end method

.method private final upload(Landroid/content/SyncResult;Ljava/util/HashMap;)V
    .registers 13
    .parameter "syncResult"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SyncResult;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    .line 329
    .local p2, protocolState:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-boolean v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mUseVerboseLogging:Z

    if-eqz v6, :cond_b

    .line 330
    iget-object v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mTag:Ljava/lang/String;

    const-string v7, "Commencing upstream sync."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_b
    new-instance v1, Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;

    iget v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mMaxQueueSize:I

    invoke-direct {v1, v6}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;-><init>(I)V

    .line 333
    .local v1, upstreamQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;
    const/4 v3, 0x0

    .line 334
    .local v3, upstreamReaderFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Void;>;"
    const/4 v5, 0x0

    .line 336
    .local v5, upstreamSenderFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Lcom/google/android/music/sync/common/UpstreamSender$UpstreamSenderResult;>;"
    :try_start_14
    iget-object v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v6, p2}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->createUpstreamReader(Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;Landroid/content/Context;Ljava/util/Map;)Lcom/google/android/music/sync/common/UpstreamReader;

    move-result-object v2

    .line 338
    .local v2, upstreamReader:Lcom/google/android/music/sync/common/UpstreamReader;
    iget-object v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v6, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 339
    iget-object v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v6, p2}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->createUpstreamSender(Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;Landroid/content/Context;Ljava/util/Map;)Lcom/google/android/music/sync/common/UpstreamSender;

    move-result-object v4

    .line 343
    .local v4, upstreamSender:Lcom/google/android/music/sync/common/UpstreamSender;
    iget-object v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v6, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    .line 346
    iget-boolean v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mUseVerboseLogging:Z

    if-eqz v6, :cond_37

    .line 347
    iget-object v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mTag:Ljava/lang/String;

    const-string v7, "Waiting on upstream reader thread to finish..."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_37
    invoke-direct {p0, v3, p1}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->throwIfFutureTaskFailed(Ljava/util/concurrent/Future;Landroid/content/SyncResult;)V

    .line 350
    const/4 v3, 0x0

    .line 353
    iget-boolean v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mUseVerboseLogging:Z

    if-eqz v6, :cond_46

    .line 354
    iget-object v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mTag:Ljava/lang/String;

    const-string v7, "Waiting on upstream merger thread to finish merging..."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_46
    invoke-direct {p0, v5, p1}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->throwIfFutureTaskFailed(Ljava/util/concurrent/Future;Landroid/content/SyncResult;)V
    :try_end_49
    .catchall {:try_start_14 .. :try_end_49} :catchall_84

    .line 359
    :try_start_49
    iget-object v7, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    invoke-interface {v5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/sync/common/UpstreamSender$UpstreamSenderResult;

    iget v6, v6, Lcom/google/android/music/sync/common/UpstreamSender$UpstreamSenderResult;->mNumConflicts:I

    int-to-long v8, v6

    iput-wide v8, v7, Landroid/content/SyncStats;->numConflictDetectedExceptions:J
    :try_end_56
    .catchall {:try_start_49 .. :try_end_56} :catchall_84
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_56} :catch_7b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_49 .. :try_end_56} :catch_9e

    .line 366
    :goto_56
    const/4 v5, 0x0

    .line 369
    if-nez v3, :cond_5b

    if-eqz v5, :cond_6f

    .line 370
    :cond_5b
    iget-boolean v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mUseVerboseLogging:Z

    if-eqz v6, :cond_66

    .line 371
    iget-object v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mTag:Ljava/lang/String;

    const-string v7, "Error occurred when downloading. Waiting for download threads."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_66
    invoke-virtual {v1}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;->kill()V

    .line 374
    invoke-direct {p0, v3}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->safeWait(Ljava/util/concurrent/Future;)V

    .line 375
    invoke-direct {p0, v5}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->safeWait(Ljava/util/concurrent/Future;)V

    .line 379
    :cond_6f
    iget-boolean v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mUseVerboseLogging:Z

    if-eqz v6, :cond_7a

    .line 380
    iget-object v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mTag:Ljava/lang/String;

    const-string v7, "Upstream sync done."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_7a
    return-void

    .line 361
    :catch_7b
    move-exception v0

    .line 362
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_7c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V
    :try_end_83
    .catchall {:try_start_7c .. :try_end_83} :catchall_84

    goto :goto_56

    .line 369
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v2           #upstreamReader:Lcom/google/android/music/sync/common/UpstreamReader;
    .end local v4           #upstreamSender:Lcom/google/android/music/sync/common/UpstreamSender;
    :catchall_84
    move-exception v6

    if-nez v3, :cond_89

    if-eqz v5, :cond_9d

    .line 370
    :cond_89
    iget-boolean v7, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mUseVerboseLogging:Z

    if-eqz v7, :cond_94

    .line 371
    iget-object v7, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mTag:Ljava/lang/String;

    const-string v8, "Error occurred when downloading. Waiting for download threads."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_94
    invoke-virtual {v1}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;->kill()V

    .line 374
    invoke-direct {p0, v3}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->safeWait(Ljava/util/concurrent/Future;)V

    .line 375
    invoke-direct {p0, v5}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->safeWait(Ljava/util/concurrent/Future;)V

    :cond_9d
    throw v6

    .line 363
    .restart local v2       #upstreamReader:Lcom/google/android/music/sync/common/UpstreamReader;
    .restart local v4       #upstreamSender:Lcom/google/android/music/sync/common/UpstreamSender;
    :catch_9e
    move-exception v0

    .line 364
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    :try_start_9f
    iget-object v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mTag:Ljava/lang/String;

    const-string v7, "We cannot get here, as the exception would have detected earlier."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a6
    .catchall {:try_start_9f .. :try_end_a6} :catchall_84

    goto :goto_56
.end method


# virtual methods
.method protected abstract createDownstreamMerger(Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;Landroid/content/Context;Ljava/util/Map;)Lcom/google/android/music/sync/common/DownstreamMerger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/music/sync/common/DownstreamMerger;"
        }
    .end annotation
.end method

.method protected abstract createDownstreamReader(Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;ILandroid/content/Context;Ljava/util/Map;)Lcom/google/android/music/sync/common/DownstreamReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;",
            "I",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/music/sync/common/DownstreamReader;"
        }
    .end annotation
.end method

.method protected abstract createUpstreamReader(Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;Landroid/content/Context;Ljava/util/Map;)Lcom/google/android/music/sync/common/UpstreamReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/music/sync/common/UpstreamReader;"
        }
    .end annotation
.end method

.method protected abstract createUpstreamSender(Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;Landroid/content/Context;Ljava/util/Map;)Lcom/google/android/music/sync/common/UpstreamSender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/music/sync/common/UpstreamSender;"
        }
    .end annotation
.end method

.method protected abstract fetchDataFromServer(Landroid/accounts/Account;Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;Ljava/util/HashMap;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation
.end method

.method innerPerformSync(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;Landroid/accounts/Account;)V
    .registers 16
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 274
    iget-object v0, p5, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 275
    .local v0, accountName:Ljava/lang/String;
    iget-object v1, p5, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 276
    .local v1, accountType:Ljava/lang/String;
    iget-boolean v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mUseVerboseLogging:Z

    if-eqz v6, :cond_2b

    .line 277
    iget-object v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Commencing sync for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_2b
    if-eqz v0, :cond_2f

    if-nez v1, :cond_44

    .line 281
    :cond_2f
    iget-object v5, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 282
    iget-boolean v5, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mUseVerboseLogging:Z

    if-eqz v5, :cond_43

    .line 283
    iget-object v5, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mTag:Ljava/lang/String;

    const-string v6, "The account is either missing a name or type."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_43
    :goto_43
    return-void

    .line 291
    :cond_44
    const-string v6, "initialize"

    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 292
    invoke-static {p5, p2}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_67

    iget v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mActionOnInitialization:I

    if-eqz v6, :cond_67

    .line 294
    iget-object v6, p5, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v7, "@youtube.com"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_64

    :goto_60
    invoke-static {p5, p2, v5}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_43

    :cond_64
    iget v5, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mActionOnInitialization:I

    goto :goto_60

    .line 302
    :cond_67
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 304
    .local v2, protocolState:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 305
    .local v3, success:Z
    iget-object v5, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p5, v5, v2, p1}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->onSyncStart(Landroid/accounts/Account;Landroid/content/Context;Ljava/util/Map;Landroid/os/Bundle;)V

    .line 307
    :try_start_71
    const-string v5, "upload"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 308
    .local v4, uploadOnly:Z
    if-eqz v4, :cond_8f

    .line 309
    iget-boolean v5, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mUseVerboseLogging:Z

    if-eqz v5, :cond_85

    .line 310
    iget-object v5, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mTag:Ljava/lang/String;

    const-string v6, "Skipping downstream sync."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_85
    :goto_85
    invoke-direct {p0, p4, v2}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->upload(Landroid/content/SyncResult;Ljava/util/HashMap;)V
    :try_end_88
    .catchall {:try_start_71 .. :try_end_88} :catchall_93

    .line 317
    const/4 v3, 0x1

    .line 319
    iget-object v5, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p5, v5, v2, v3}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->onSyncEnd(Landroid/accounts/Account;Landroid/content/Context;Ljava/util/Map;Z)V

    goto :goto_43

    .line 313
    :cond_8f
    :try_start_8f
    invoke-direct {p0, p4, p5, v2}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->download(Landroid/content/SyncResult;Landroid/accounts/Account;Ljava/util/HashMap;)V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_93

    goto :goto_85

    .line 319
    .end local v4           #uploadOnly:Z
    :catchall_93
    move-exception v5

    iget-object v6, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p5, v6, v2, v3}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->onSyncEnd(Landroid/accounts/Account;Landroid/content/Context;Ljava/util/Map;Z)V

    throw v5
.end method

.method protected abstract onDownstreamComplete(Landroid/accounts/Account;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation
.end method

.method protected abstract onDownstreamStart(Landroid/accounts/Account;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation
.end method

.method public onPerformLoggedSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .registers 16
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"

    .prologue
    const-wide/16 v8, 0x1

    const/4 v7, 0x0

    .line 242
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mSyncActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    .line 243
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->innerPerformSync(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;Landroid/accounts/Account;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_81
    .catch Lcom/google/android/music/sync/common/SoftSyncException; {:try_start_3 .. :try_end_12} :catch_18
    .catch Lcom/google/android/music/sync/common/HardSyncException; {:try_start_3 .. :try_end_12} :catch_4a
    .catch Landroid/accounts/AuthenticatorException; {:try_start_3 .. :try_end_12} :catch_5f

    .line 263
    iget-object v0, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mSyncActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 265
    :goto_17
    return-void

    .line 244
    :catch_18
    move-exception v6

    .line 245
    .local v6, e:Lcom/google/android/music/sync/common/SoftSyncException;
    :try_start_19
    invoke-virtual {v6}, Lcom/google/android/music/sync/common/SoftSyncException;->getRetryAfter()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_29

    .line 246
    invoke-virtual {v6}, Lcom/google/android/music/sync/common/SoftSyncException;->getRetryAfter()J

    move-result-wide v0

    iput-wide v0, p5, Landroid/content/SyncResult;->delayUntil:J

    .line 248
    :cond_29
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    .line 249
    iget-object v0, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mTag:Ljava/lang/String;

    const-string v1, "Sync failed due to soft error."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-boolean v0, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mUseVerboseLogging:Z

    if-eqz v0, :cond_44

    .line 251
    iget-object v0, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mTag:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/android/music/sync/common/SoftSyncException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_19 .. :try_end_44} :catchall_81

    .line 263
    :cond_44
    iget-object v0, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mSyncActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_17

    .line 253
    .end local v6           #e:Lcom/google/android/music/sync/common/SoftSyncException;
    :catch_4a
    move-exception v6

    .line 254
    .local v6, e:Lcom/google/android/music/sync/common/HardSyncException;
    :try_start_4b
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J

    .line 255
    iget-object v0, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mTag:Ljava/lang/String;

    const-string v1, "Sync failed due to a hard error."

    invoke-static {v0, v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_59
    .catchall {:try_start_4b .. :try_end_59} :catchall_81

    .line 263
    iget-object v0, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mSyncActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_17

    .line 256
    .end local v6           #e:Lcom/google/android/music/sync/common/HardSyncException;
    :catch_5f
    move-exception v6

    .line 257
    .local v6, e:Landroid/accounts/AuthenticatorException;
    :try_start_60
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 258
    iget-object v0, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mTag:Ljava/lang/String;

    const-string v1, "Sync failed due to an authentication issue."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-boolean v0, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mUseVerboseLogging:Z

    if-eqz v0, :cond_7b

    .line 260
    iget-object v0, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mTag:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7b
    .catchall {:try_start_60 .. :try_end_7b} :catchall_81

    .line 263
    :cond_7b
    iget-object v0, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mSyncActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_17

    .end local v6           #e:Landroid/accounts/AuthenticatorException;
    :catchall_81
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mSyncActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method

.method protected abstract onSyncEnd(Landroid/accounts/Account;Landroid/content/Context;Ljava/util/Map;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation
.end method

.method protected abstract onSyncStart(Landroid/accounts/Account;Landroid/content/Context;Ljava/util/Map;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation
.end method
