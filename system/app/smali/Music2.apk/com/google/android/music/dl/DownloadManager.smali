.class public Lcom/google/android/music/dl/DownloadManager;
.super Lcom/google/android/music/dl/IDownloadManager$Stub;
.source "DownloadManager.java"

# interfaces
.implements Lcom/google/android/music/dl/DownloadExecutor$QueueListener;
.implements Lcom/google/android/music/dl/KeepOnDeviceScheduler$KeepOnEnabledStateListener;
.implements Lcom/google/android/music/dl/RingtoneScheduler$RingtoneDownloadEnabledStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;
    }
.end annotation


# instance fields
.field private final LOGV:Z

.field private mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

.field private mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

.field private final mContext:Landroid/app/Service;

.field private final mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;

.field protected mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

.field private final mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

.field private final mDownloadOrderCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/music/dl/ContentIdentifier;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/music/dl/DownloadOrder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mKeepOnDeviceScheduler:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

.field private mOrderHandlerCreator:Lcom/google/android/music/dl/OrderHandlerCreator;

.field private final mPredictiveSongList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/music/dl/DownloadOrder;",
            ">;"
        }
    .end annotation
.end field

.field private mRingtoneScheduler:Lcom/google/android/music/dl/RingtoneScheduler;

.field private final mStoreConnection:Landroid/content/ServiceConnection;

.field private mStoreService:Lcom/google/android/music/store/IStoreService;

.field private final mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

.field private mStreamingEnabled:Z

.field private final mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/music/dl/stream/StreamingHttpServer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Lcom/google/android/music/dl/IDownloadManager$Stub;-><init>()V

    .line 62
    const-string v0, "MusicDL"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    .line 70
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    .line 72
    iput-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 95
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingEnabled:Z

    .line 109
    iput-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mStoreService:Lcom/google/android/music/store/IStoreService;

    .line 176
    new-instance v0, Lcom/google/android/music/dl/DownloadManager$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/DownloadManager$2;-><init>(Lcom/google/android/music/dl/DownloadManager;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mStoreConnection:Landroid/content/ServiceConnection;

    .line 191
    new-instance v0, Lcom/google/android/music/dl/DownloadManager$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/DownloadManager$3;-><init>(Lcom/google/android/music/dl/DownloadManager;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    .line 244
    new-instance v0, Lcom/google/android/music/dl/DownloadManager$4;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/DownloadManager$4;-><init>(Lcom/google/android/music/dl/DownloadManager;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;

    .line 282
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadOrderCache:Ljava/util/HashMap;

    .line 117
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/dl/DownloadManager;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/dl/DownloadManager;)Lcom/google/android/music/dl/OrderHandlerCreator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mOrderHandlerCreator:Lcom/google/android/music/dl/OrderHandlerCreator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/dl/DownloadManager;)Lcom/google/android/music/dl/cache/CacheManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/music/dl/DownloadManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/music/dl/DownloadManager;->notifyQueueCompleteListenersIfNoDownloads()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/music/dl/DownloadManager;Lcom/google/android/music/dl/ContentIdentifier;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/music/dl/DownloadManager;->downloadRingtoneAsync(Lcom/google/android/music/dl/ContentIdentifier;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/music/dl/DownloadManager;)Lcom/google/android/music/dl/RingtoneScheduler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mRingtoneScheduler:Lcom/google/android/music/dl/RingtoneScheduler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/music/dl/DownloadManager;Lcom/google/android/music/store/IStoreService;)Lcom/google/android/music/store/IStoreService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadManager;->mStoreService:Lcom/google/android/music/store/IStoreService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/music/dl/DownloadManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingEnabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/google/android/music/dl/DownloadManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/music/dl/DownloadManager;)Ljava/util/LinkedList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/dl/DownloadManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/music/dl/DownloadManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/music/dl/DownloadManager;->updateQueueForRingtoneOrKeepon()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/music/dl/DownloadManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/music/dl/DownloadManager;->requestStopService()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/music/dl/DownloadManager;Lcom/google/android/music/dl/ContentIdentifier;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/music/dl/DownloadManager;->downloadRingtone(Lcom/google/android/music/dl/ContentIdentifier;)V

    return-void
.end method

.method static synthetic access$900(Landroid/content/Context;Lcom/google/android/music/dl/DownloadManager;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcom/google/android/music/dl/DownloadManager;->updateDownloadQueue(Landroid/content/Context;Lcom/google/android/music/dl/DownloadManager;)V

    return-void
.end method

.method private addNewOrderToPredictiveSongList(Lcom/google/android/music/dl/DownloadOrder;)V
    .registers 9
    .parameter "newOrder"

    .prologue
    .line 497
    iget-object v5, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    monitor-enter v5

    .line 499
    const/4 v1, 0x0

    .line 500
    .local v1, foundSong:Z
    const/4 v0, 0x0

    .line 501
    .local v0, foundExactOrder:Z
    :cond_5
    :goto_5
    :try_start_5
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1b

    if-nez v1, :cond_1b

    .line 502
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/dl/DownloadOrder;

    .line 503
    .local v3, order:Lcom/google/android/music/dl/DownloadOrder;
    if-ne v3, p1, :cond_24

    .line 504
    const/4 v0, 0x1

    .line 505
    const/4 v1, 0x1

    .line 520
    .end local v3           #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_1b
    if-nez v0, :cond_22

    .line 521
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 523
    :cond_22
    monitor-exit v5

    .line 524
    return-void

    .line 508
    .restart local v3       #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_24
    invoke-virtual {v3, p1}, Lcom/google/android/music/dl/DownloadOrder;->equals(Lcom/google/android/music/dl/DownloadOrder;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 509
    const/4 v1, 0x1

    .line 512
    :cond_2b
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #order:Lcom/google/android/music/dl/DownloadOrder;
    check-cast v3, Lcom/google/android/music/dl/DownloadOrder;

    .line 513
    .restart local v3       #order:Lcom/google/android/music/dl/DownloadOrder;
    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->getLocalLocation()Ljava/io/File;

    move-result-object v2

    .line 514
    .local v2, localLocation:Ljava/io/File;
    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->shouldSaveLocation()Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v2, :cond_5

    .line 515
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 516
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Lcom/google/android/music/dl/DownloadOrder;->setLocalLocation(Ljava/io/File;Z)V

    goto :goto_5

    .line 523
    .end local v2           #localLocation:Ljava/io/File;
    .end local v3           #order:Lcom/google/android/music/dl/DownloadOrder;
    :catchall_48
    move-exception v4

    monitor-exit v5
    :try_end_4a
    .catchall {:try_start_5 .. :try_end_4a} :catchall_48

    throw v4
.end method

.method private createOrders([Lcom/google/android/music/dl/ContentIdentifier;I)Ljava/util/List;
    .registers 12
    .parameter "localIds"
    .parameter "purpose"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/music/dl/ContentIdentifier;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/dl/DownloadOrder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 643
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, p1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 644
    .local v5, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/music/dl/DownloadOrder;>;"
    move-object v0, p1

    .local v0, arr$:[Lcom/google/android/music/dl/ContentIdentifier;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_9
    if-ge v1, v2, :cond_38

    aget-object v3, v0, v1

    .line 645
    .local v3, localId:Lcom/google/android/music/dl/ContentIdentifier;
    if-eqz v3, :cond_18

    .line 646
    invoke-direct {p0, v3, p2}, Lcom/google/android/music/dl/DownloadManager;->makeOrder(Lcom/google/android/music/dl/ContentIdentifier;I)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v4

    .line 647
    .local v4, order:Lcom/google/android/music/dl/DownloadOrder;
    if-eqz v4, :cond_1b

    .line 648
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    .end local v4           #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_18
    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 649
    .restart local v4       #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_1b
    iget-boolean v6, p0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    if-eqz v6, :cond_18

    .line 650
    const-string v6, "MusicDL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown descritor: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 654
    .end local v3           #localId:Lcom/google/android/music/dl/ContentIdentifier;
    .end local v4           #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_38
    return-object v5
.end method

.method private downloadRingtone(Lcom/google/android/music/dl/ContentIdentifier;)V
    .registers 4
    .parameter "songId"

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1032
    :try_start_5
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    invoke-virtual {v0, p1}, Lcom/google/android/music/dl/DownloadExecutor;->makeRingtoneWithExistingDownloadOrder(Lcom/google/android/music/dl/ContentIdentifier;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_19

    move-result v0

    if-eqz v0, :cond_13

    .line 1037
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1039
    :goto_12
    return-void

    .line 1037
    :cond_13
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_12

    :catchall_19
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private downloadRingtoneAsync(Lcom/google/android/music/dl/ContentIdentifier;)V
    .registers 4
    .parameter "songId"

    .prologue
    .line 1020
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/dl/DownloadManager$6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/dl/DownloadManager$6;-><init>(Lcom/google/android/music/dl/DownloadManager;Lcom/google/android/music/dl/ContentIdentifier;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 1025
    return-void
.end method

.method private makeOrder(Lcom/google/android/music/dl/ContentIdentifier;I)Lcom/google/android/music/dl/DownloadOrder;
    .registers 4
    .parameter "songId"
    .parameter "purpose"

    .prologue
    .line 297
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/music/dl/DownloadManager;->makeOrder(Lcom/google/android/music/dl/ContentIdentifier;IZ)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v0

    return-object v0
.end method

.method private makeOrder(Lcom/google/android/music/dl/ContentIdentifier;IZ)Lcom/google/android/music/dl/DownloadOrder;
    .registers 10
    .parameter "songId"
    .parameter "newPurpose"
    .parameter "allowCached"

    .prologue
    const/4 v3, 0x0

    .line 309
    if-eqz p3, :cond_8d

    .line 310
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadOrderCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 311
    .local v0, cachedOrder:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/DownloadOrder;>;"
    if-eqz v0, :cond_39

    .line 312
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/dl/DownloadOrder;

    .line 313
    .local v2, order:Lcom/google/android/music/dl/DownloadOrder;
    if-eqz v2, :cond_34

    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v4

    sget-object v5, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-eq v4, v5, :cond_34

    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder;->isRingtoneOnly()Z

    move-result v4

    if-nez v4, :cond_34

    .line 316
    invoke-virtual {v2, p2}, Lcom/google/android/music/dl/DownloadOrder;->hasPurpose(I)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 364
    .end local v0           #cachedOrder:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/DownloadOrder;>;"
    .end local v2           #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_29
    :goto_29
    return-object v2

    .line 319
    .restart local v0       #cachedOrder:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/DownloadOrder;>;"
    .restart local v2       #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_2a
    const/4 v4, 0x1

    if-eq p2, v4, :cond_30

    const/4 v4, 0x2

    if-ne p2, v4, :cond_39

    .line 321
    :cond_30
    invoke-virtual {v2, p2}, Lcom/google/android/music/dl/DownloadOrder;->addPurpose(I)V

    goto :goto_29

    .line 328
    :cond_34
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadOrderCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .end local v0           #cachedOrder:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/DownloadOrder;>;"
    .end local v2           #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_39
    :goto_39
    :try_start_39
    invoke-direct {p0}, Lcom/google/android/music/dl/DownloadManager;->waitForStoreConnection()V

    .line 337
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager;->mStoreService:Lcom/google/android/music/store/IStoreService;

    invoke-interface {v4, p1}, Lcom/google/android/music/store/IStoreService;->createDownloadOrder(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v2

    .line 338
    .restart local v2       #order:Lcom/google/android/music/dl/DownloadOrder;
    invoke-virtual {v2, p2}, Lcom/google/android/music/dl/DownloadOrder;->changePurpose(I)V

    .line 339
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager;->mOrderHandlerCreator:Lcom/google/android/music/dl/OrderHandlerCreator;

    invoke-virtual {v4, v2}, Lcom/google/android/music/dl/OrderHandlerCreator;->createHandler(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 341
    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder;->getHandler()Lcom/google/android/music/dl/DownloadHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/dl/DownloadManager;->mStoreService:Lcom/google/android/music/store/IStoreService;

    invoke-virtual {v4, v2, v5}, Lcom/google/android/music/dl/DownloadHandler;->setOrder(Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/store/IStoreService;)V

    .line 343
    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder;->isRingtoneOnly()Z

    move-result v4

    if-nez v4, :cond_72

    .line 344
    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder;->getLocalLocation()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_72

    .line 347
    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder;->hasKeeponPurpose()Z

    move-result v4

    if-eqz v4, :cond_6d

    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder;->getLocalCopyType()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_93

    .line 350
    :cond_6d
    sget-object v4, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->COMPLETED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual {v2, v4}, Lcom/google/android/music/dl/DownloadOrder;->setDownloadStatus(Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)V

    .line 357
    :cond_72
    :goto_72
    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder;->hasRingtonePurpose()Z

    move-result v4

    if-nez v4, :cond_29

    .line 358
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadOrderCache:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_82} :catch_83

    goto :goto_29

    .line 362
    .end local v2           #order:Lcom/google/android/music/dl/DownloadOrder;
    :catch_83
    move-exception v1

    .line 363
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "MusicDL"

    const-string v5, "Remote store error"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 364
    goto :goto_29

    .line 332
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_8d
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadOrderCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 352
    .restart local v2       #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_93
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_95
    invoke-virtual {v2, v4, v5}, Lcom/google/android/music/dl/DownloadOrder;->setLocalLocation(Ljava/io/File;Z)V
    :try_end_98
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_98} :catch_83

    goto :goto_72
.end method

.method private notifyQueueCompleteListenersIfNoDownloads()V
    .registers 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 235
    :try_start_5
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadExecutor;->getNumberOfDownloads()I

    move-result v0

    if-nez v0, :cond_14

    .line 237
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/music/dl/DownloadManager;->notifyQueueComplete()V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1a

    .line 240
    :cond_14
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 242
    return-void

    .line 240
    :catchall_1a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private requestStopService()V
    .registers 2

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 1043
    return-void
.end method

.method private streamSongImpl(Lcom/google/android/music/dl/DownloadOrder;)Lcom/google/android/music/dl/DownloadState;
    .registers 12
    .parameter "order"

    .prologue
    const v9, 0x12110

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 398
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    if-eqz v0, :cond_23

    .line 399
    const-string v0, "MusicDL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "streamSongImpl: order="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_23
    if-nez p1, :cond_27

    .line 402
    const/4 v0, 0x0

    .line 450
    :goto_26
    return-object v0

    .line 404
    :cond_27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 406
    .local v7, origIdentity:J
    invoke-direct {p0, p1}, Lcom/google/android/music/dl/DownloadManager;->addNewOrderToPredictiveSongList(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 409
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->requiresDownload()Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 410
    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/dl/ContentIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getRemoteId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v9, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 412
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    if-eqz v0, :cond_71

    .line 413
    const-string v0, "MusicDL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Song ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") requires to be downloaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_71
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingEnabled:Z

    if-nez v0, :cond_99

    .line 416
    const-string v0, "MusicDL"

    const-string v1, "Fail download as streaming is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {p1, v5}, Lcom/google/android/music/dl/DownloadOrder;->markDownloadFailed(I)V

    .line 418
    new-instance v0, Lcom/google/android/music/dl/DownloadState;

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getErrorType()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getStreamUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getDuration()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/dl/DownloadState;-><init>(Lcom/google/android/music/dl/ContentIdentifier;Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;ILjava/lang/String;J)V

    goto :goto_26

    .line 423
    :cond_99
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/music/dl/DownloadOrder;->setSeekPoint(J)V

    .line 425
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 427
    :try_start_a3
    invoke-virtual {p0, p1}, Lcom/google/android/music/dl/DownloadManager;->startDownloader(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 428
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    invoke-virtual {v0, p1}, Lcom/google/android/music/dl/DownloadExecutor;->addDownload(Lcom/google/android/music/dl/DownloadOrder;)V
    :try_end_ab
    .catchall {:try_start_a3 .. :try_end_ab} :catchall_e4

    .line 430
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 433
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 434
    :try_start_b3
    invoke-virtual {p0}, Lcom/google/android/music/dl/DownloadManager;->startStreamer()V

    .line 435
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/stream/StreamingHttpServer;

    invoke-virtual {v0, p1}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->getUri(Lcom/google/android/music/dl/DownloadOrder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/music/dl/DownloadOrder;->setStreamUrl(Ljava/lang/String;)V

    .line 436
    monitor-exit v1
    :try_end_c6
    .catchall {:try_start_b3 .. :try_end_c6} :catchall_eb

    .line 448
    :goto_c6
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 450
    new-instance v0, Lcom/google/android/music/dl/DownloadState;

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getErrorType()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getStreamUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getDuration()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/dl/DownloadState;-><init>(Lcom/google/android/music/dl/ContentIdentifier;Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;ILjava/lang/String;J)V

    goto/16 :goto_26

    .line 430
    :catchall_e4
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 436
    :catchall_eb
    move-exception v0

    :try_start_ec
    monitor-exit v1
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_eb

    throw v0

    .line 439
    :cond_ee
    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/dl/ContentIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getRemoteId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v9, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 441
    const-string v0, "MusicDL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event logging MUSIC_START_PLAYBACK_REQUESTED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getRemoteId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": cache hit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    if-eqz v0, :cond_155

    const-string v0, "MusicDL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Song already downloaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_155
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getLocalLocation()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/music/dl/DownloadOrder;->setStreamUrl(Ljava/lang/String;)V

    goto/16 :goto_c6
.end method

.method private static updateDownloadQueue(Landroid/content/Context;Lcom/google/android/music/dl/DownloadManager;)V
    .registers 5
    .parameter "context"
    .parameter "downloadManager"

    .prologue
    .line 930
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 932
    .local v1, serviceToken:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Lcom/google/android/music/MusicUtils$ServiceToken;>;"
    new-instance v0, Lcom/google/android/music/dl/DownloadManager$5;

    invoke-direct {v0, p1, p0, v1}, Lcom/google/android/music/dl/DownloadManager$5;-><init>(Lcom/google/android/music/dl/DownloadManager;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 1016
    .local v0, playbackConnection:Landroid/content/ServiceConnection;
    invoke-static {p0, v0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1017
    return-void
.end method

.method private updateDownloaderQueue(Ljava/util/List;)I
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/dl/DownloadOrder;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, orders:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/dl/DownloadOrder;>;"
    const/4 v7, 0x0

    .line 534
    const/4 v4, 0x0

    .line 535
    .local v4, numberOfDownloads:I
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 595
    :cond_a
    :goto_a
    return v7

    .line 538
    :cond_b
    iget-boolean v8, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingEnabled:Z

    if-eqz v8, :cond_a

    .line 545
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/DownloadOrder;

    .line 547
    .local v0, firstDownload:Lcom/google/android/music/dl/DownloadOrder;
    iget-object v8, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    monitor-enter v8

    .line 548
    :try_start_18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 549
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    :cond_1c
    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_37

    .line 550
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/dl/DownloadOrder;

    .line 551
    .local v5, order:Lcom/google/android/music/dl/DownloadOrder;
    iget-object v9, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v9, v5}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 552
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1c

    .line 555
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    .end local v5           #order:Lcom/google/android/music/dl/DownloadOrder;
    :catchall_34
    move-exception v7

    monitor-exit v8
    :try_end_36
    .catchall {:try_start_18 .. :try_end_36} :catchall_34

    throw v7

    .restart local v3       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    :cond_37
    :try_start_37
    monitor-exit v8
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_34

    .line 557
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a

    .line 561
    iget-object v7, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 563
    :try_start_43
    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/DownloadManager;->startDownloader(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 565
    const/4 v2, 0x1

    .line 566
    .local v2, isAwaitingStreamingEmpty:Z
    iget-object v8, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    monitor-enter v8
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_ab

    .line 567
    :try_start_4a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4e
    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/dl/DownloadOrder;

    .line 568
    .restart local v5       #order:Lcom/google/android/music/dl/DownloadOrder;
    iget-object v7, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v7, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 572
    invoke-virtual {v5}, Lcom/google/android/music/dl/DownloadOrder;->requiresDownload()Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 573
    iget-object v7, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    invoke-virtual {v7, v5}, Lcom/google/android/music/dl/DownloadExecutor;->addDownload(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 574
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    .line 577
    .end local v5           #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_6d
    iget-object v7, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_73
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_86

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/dl/DownloadOrder;

    .line 578
    .restart local v5       #order:Lcom/google/android/music/dl/DownloadOrder;
    invoke-virtual {v5}, Lcom/google/android/music/dl/DownloadOrder;->hasPlaybackPurpose()Z

    move-result v7

    if-eqz v7, :cond_73

    .line 579
    const/4 v2, 0x0

    .line 583
    .end local v5           #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_86
    monitor-exit v8
    :try_end_87
    .catchall {:try_start_4a .. :try_end_87} :catchall_a8

    .line 585
    :try_start_87
    iget-object v8, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v8
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_ab

    .line 586
    :try_start_8a
    iget-object v7, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/dl/stream/StreamingHttpServer;

    .line 587
    .local v6, streamingServer:Lcom/google/android/music/dl/stream/StreamingHttpServer;
    if-eqz v2, :cond_9f

    if-eqz v6, :cond_9f

    .line 588
    invoke-virtual {v6}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->shutdown()V

    .line 589
    iget-object v7, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 591
    :cond_9f
    monitor-exit v8
    :try_end_a0
    .catchall {:try_start_8a .. :try_end_a0} :catchall_b2

    .line 593
    iget-object v7, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v7, v4

    .line 595
    goto/16 :goto_a

    .line 583
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v6           #streamingServer:Lcom/google/android/music/dl/stream/StreamingHttpServer;
    :catchall_a8
    move-exception v7

    :try_start_a9
    monitor-exit v8
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    :try_start_aa
    throw v7
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_ab

    .line 593
    .end local v2           #isAwaitingStreamingEmpty:Z
    :catchall_ab
    move-exception v7

    iget-object v8, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v7

    .line 591
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #isAwaitingStreamingEmpty:Z
    :catchall_b2
    move-exception v7

    :try_start_b3
    monitor-exit v8
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    :try_start_b4
    throw v7
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_ab
.end method

.method private updateQueueForRingtoneOrKeepon()I
    .registers 3

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mRingtoneScheduler:Lcom/google/android/music/dl/RingtoneScheduler;

    invoke-virtual {v0}, Lcom/google/android/music/dl/RingtoneScheduler;->getNextDownload()[Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v0

    .line 1052
    if-eqz v0, :cond_12

    array-length v1, v0

    if-lez v1, :cond_12

    .line 1053
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/dl/DownloadManager;->updateQueue([Lcom/google/android/music/dl/ContentIdentifier;I)I

    move-result v0

    .line 1063
    :goto_11
    return v0

    .line 1056
    :cond_12
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mKeepOnDeviceScheduler:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    invoke-virtual {v0}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->getNextDownload()[Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v0

    .line 1057
    if-eqz v0, :cond_1d

    array-length v1, v0

    if-nez v1, :cond_2a

    .line 1058
    :cond_1d
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    if-eqz v0, :cond_28

    .line 1059
    const-string v0, "MusicDL"

    const-string v1, "The download queue is empty."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_28
    const/4 v0, 0x0

    goto :goto_11

    .line 1063
    :cond_2a
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/dl/DownloadManager;->updateQueue([Lcom/google/android/music/dl/ContentIdentifier;I)I

    move-result v0

    goto :goto_11
.end method

.method private waitForStoreConnection()V
    .registers 4

    .prologue
    .line 205
    monitor-enter p0

    .line 206
    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mStoreService:Lcom/google/android/music/store/IStoreService;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-nez v1, :cond_a

    .line 208
    const-wide/16 v1, 0x2710

    :try_start_7
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_16
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_19

    .line 213
    :cond_a
    :goto_a
    :try_start_a
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mStoreService:Lcom/google/android/music/store/IStoreService;

    if-nez v1, :cond_24

    .line 214
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not connect to store service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_16

    throw v1

    .line 209
    :catch_19
    move-exception v0

    .line 210
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_1a
    const-string v1, "MusicDL"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 216
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_16

    .line 217
    return-void
.end method


# virtual methods
.method public addDownloadProgressListener(Lcom/google/android/music/dl/ContentIdentifier;Lcom/google/android/music/dl/IDownloadProgressListener;)Z
    .registers 4
    .parameter "songId"
    .parameter "listener"

    .prologue
    .line 876
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/dl/BufferProgress;->addDownloadProgressListener(Lcom/google/android/music/dl/ContentIdentifier;Lcom/google/android/music/dl/IDownloadProgressListener;)Z

    move-result v0

    return v0
.end method

.method public getAvailableFreeSpace()J
    .registers 3

    .prologue
    .line 921
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    invoke-virtual {v0}, Lcom/google/android/music/dl/cache/CacheManager;->getFreeSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentDownloads()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/dl/DownloadOrder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 778
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 780
    :try_start_5
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    if-eqz v0, :cond_15

    .line 781
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadExecutor;->getDownloads()Ljava/util/List;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_1c

    move-result-object v0

    .line 785
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_14
    return-object v0

    .line 783
    :cond_15
    const/4 v0, 0x0

    .line 785
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_14

    :catchall_1c
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getDebugInfo(Lcom/google/android/music/dl/ContentIdentifier;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 884
    .line 886
    if-nez p1, :cond_5

    move-object v0, v1

    .line 917
    :goto_4
    return-object v0

    .line 889
    :cond_5
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    monitor-enter v2

    .line 890
    :try_start_8
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/DownloadOrder;

    .line 891
    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/music/dl/ContentIdentifier;->equals(Lcom/google/android/music/dl/ContentIdentifier;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 896
    :goto_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_38

    .line 898
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Streaming Status\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 899
    if-nez v0, :cond_3b

    .line 900
    const-string v0, "Not streaming"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    :cond_33
    :goto_33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 896
    :catchall_38
    move-exception v0

    :try_start_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v0

    .line 901
    :cond_3b
    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v2

    sget-object v3, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->NOT_STARTED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v2, v3, :cond_49

    .line 902
    const-string v0, "Waiting for download to start"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 904
    :cond_49
    const-string v2, "Req bitrate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    :try_start_4e
    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->getRecommendedBitrate()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_55
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4e .. :try_end_55} :catch_68

    .line 910
    :goto_55
    const-string v2, "kbps\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v2

    sget-object v3, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->COMPLETED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v2, v3, :cond_6f

    .line 912
    const-string v0, "Download complete"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 907
    :catch_68
    move-exception v2

    .line 908
    const-string v2, "TBD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_55

    .line 913
    :cond_6f
    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v0

    sget-object v2, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v0, v2, :cond_33

    .line 914
    const-string v0, "Download failed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    :cond_7d
    move-object v0, v1

    goto :goto_24
.end method

.method public getDownload(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadOrder;
    .registers 5
    .parameter "songId"

    .prologue
    .line 753
    const/4 v0, 0x0

    .line 754
    .local v0, order:Lcom/google/android/music/dl/DownloadOrder;
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 756
    :try_start_6
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    if-eqz v1, :cond_10

    .line 757
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    invoke-virtual {v1, p1}, Lcom/google/android/music/dl/DownloadExecutor;->getDownload(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadOrder;
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_1c

    move-result-object v0

    .line 760
    :cond_10
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 762
    if-nez v0, :cond_1b

    .line 763
    invoke-virtual {p0, p1}, Lcom/google/android/music/dl/DownloadManager;->getStreamingDownload(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v0

    .line 765
    :cond_1b
    return-object v0

    .line 760
    :catchall_1c
    move-exception v1

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public getPartialDownload(Lcom/google/android/music/dl/ContentIdentifier;J)Lcom/google/android/music/dl/DownloadOrder;
    .registers 19
    .parameter "songId"
    .parameter "startMs"

    .prologue
    .line 799
    if-eqz p1, :cond_24

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/dl/ContentIdentifier;->isSharedDomain()Z

    move-result v9

    if-eqz v9, :cond_24

    .line 800
    const-string v9, "MusicDL"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Should not seek shared song: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const/4 v8, 0x0

    .line 857
    :goto_23
    return-object v8

    .line 804
    :cond_24
    iget-object v9, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 806
    :try_start_29
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/music/dl/DownloadManager;->getStreamingDownload(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v8

    .line 807
    .local v8, order:Lcom/google/android/music/dl/DownloadOrder;
    if-nez v8, :cond_51

    .line 808
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Should not be requesting a range for a file which never started downloading: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_4a
    .catchall {:try_start_29 .. :try_end_4a} :catchall_4a

    .line 857
    .end local v8           #order:Lcom/google/android/music/dl/DownloadOrder;
    :catchall_4a
    move-exception v9

    iget-object v10, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v9

    .line 811
    .restart local v8       #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_51
    :try_start_51
    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v9

    sget-object v10, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->DOWNLOADING:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v9, v10, :cond_cd

    const/4 v7, 0x1

    .line 819
    .local v7, isDownloading:Z
    :goto_5a
    invoke-static {}, Lcom/google/android/music/dl/NetworkMonitor;->getRecommendedBitrate()I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    const-wide/16 v11, 0x5

    mul-long/2addr v9, v11

    const-wide/16 v11, 0x8

    div-long v2, v9, v11

    .line 824
    .local v2, bytesWillDownload:J
    if-eqz v7, :cond_cf

    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->getCompleted()J

    move-result-wide v9

    add-long v5, v9, v2

    .line 827
    .local v5, completedRange:J
    :goto_70
    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->getSeekPoint()J

    move-result-wide v9

    long-to-float v9, v9

    long-to-float v10, v5

    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->getDuration()J

    move-result-wide v11

    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->getSeekPoint()J

    move-result-wide v13

    sub-long/2addr v11, v13

    long-to-float v11, v11

    mul-float/2addr v10, v11

    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadLength()J

    move-result-wide v11

    long-to-float v11, v11

    div-float/2addr v10, v11

    add-float v4, v9, v10

    .line 830
    .local v4, completedDuration:F
    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->getSeekPoint()J

    move-result-wide v9

    cmp-long v9, p2, v9

    if-ltz v9, :cond_d4

    move-wide/from16 v0, p2

    long-to-float v9, v0

    cmpg-float v9, v9, v4

    if-gez v9, :cond_d4

    .line 831
    iget-boolean v9, p0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    if-eqz v9, :cond_c6

    .line 832
    const-string v9, "MusicDL"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Downloaded past requested seek point ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p2

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), not restarting download"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catchall {:try_start_51 .. :try_end_c6} :catchall_4a

    .line 857
    :cond_c6
    iget-object v9, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_23

    .line 811
    .end local v2           #bytesWillDownload:J
    .end local v4           #completedDuration:F
    .end local v5           #completedRange:J
    .end local v7           #isDownloading:Z
    :cond_cd
    const/4 v7, 0x0

    goto :goto_5a

    .line 824
    .restart local v2       #bytesWillDownload:J
    .restart local v7       #isDownloading:Z
    :cond_cf
    :try_start_cf
    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->getCompleted()J

    move-result-wide v5

    goto :goto_70

    .line 838
    .restart local v4       #completedDuration:F
    .restart local v5       #completedRange:J
    :cond_d4
    iget-object v10, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    monitor-enter v10
    :try_end_d7
    .catchall {:try_start_cf .. :try_end_d7} :catchall_4a

    .line 839
    :try_start_d7
    iget-object v9, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v9

    if-eqz v9, :cond_e8

    iget-object v9, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eq v9, v8, :cond_110

    .line 840
    :cond_e8
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "requesting range download for: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " but the mPredictiveSongList list is: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 851
    :catchall_10d
    move-exception v9

    monitor-exit v10
    :try_end_10f
    .catchall {:try_start_d7 .. :try_end_10f} :catchall_10d

    :try_start_10f
    throw v9
    :try_end_110
    .catchall {:try_start_10f .. :try_end_110} :catchall_4a

    .line 843
    :cond_110
    :try_start_110
    iget-object v9, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 845
    iget-boolean v9, p0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    if-eqz v9, :cond_133

    const-string v9, "MusicDL"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Need to restart download for requested seek: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p2

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_133
    const/4 v9, 0x1

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v9, v11}, Lcom/google/android/music/dl/DownloadManager;->makeOrder(Lcom/google/android/music/dl/ContentIdentifier;IZ)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v8

    .line 847
    if-nez v8, :cond_147

    .line 848
    const/4 v9, 0x0

    monitor-exit v10
    :try_end_13f
    .catchall {:try_start_110 .. :try_end_13f} :catchall_10d

    .line 857
    iget-object v10, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v8, v9

    goto/16 :goto_23

    .line 850
    :cond_147
    :try_start_147
    iget-object v9, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v9, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 851
    monitor-exit v10
    :try_end_14d
    .catchall {:try_start_147 .. :try_end_14d} :catchall_10d

    .line 852
    :try_start_14d
    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->clearCompleted()V

    .line 853
    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Lcom/google/android/music/dl/DownloadOrder;->setSeekPoint(J)V

    .line 854
    iget-object v9, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    const/4 v10, 0x1

    invoke-virtual {v9, v8, v10}, Lcom/google/android/music/dl/DownloadExecutor;->restart(Lcom/google/android/music/dl/DownloadOrder;Z)Lcom/google/android/music/dl/DownloadExecutor;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;
    :try_end_15e
    .catchall {:try_start_14d .. :try_end_15e} :catchall_4a

    .line 857
    iget-object v9, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_23
.end method

.method public getStreamingDownload(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadOrder;
    .registers 9
    .parameter "songId"

    .prologue
    const/4 v3, 0x0

    .line 702
    if-nez p1, :cond_5

    move-object v2, v3

    .line 720
    :goto_4
    return-object v2

    .line 705
    :cond_5
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    monitor-enter v4

    .line 706
    :try_start_8
    iget-object v5, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 707
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 708
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/dl/DownloadOrder;

    .line 709
    .local v2, order:Lcom/google/android/music/dl/DownloadOrder;
    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google/android/music/dl/ContentIdentifier;->equals(Lcom/google/android/music/dl/ContentIdentifier;)Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder;->hasPlaybackPurpose()Z

    move-result v5

    if-eqz v5, :cond_50

    .line 710
    if-eqz v0, :cond_4b

    .line 711
    const-string v3, "MusicDL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DownloadManager.getStreamingDownload("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") did not return the first item from mPredictiveSongList"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_4b
    monitor-exit v4

    goto :goto_4

    .line 717
    .end local v0           #i:I
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    .end local v2           #order:Lcom/google/android/music/dl/DownloadOrder;
    :catchall_4d
    move-exception v3

    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_8 .. :try_end_4f} :catchall_4d

    throw v3

    .line 707
    .restart local v0       #i:I
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    .restart local v2       #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 717
    .end local v2           #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_53
    :try_start_53
    monitor-exit v4
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_4d

    .line 718
    const-string v4, "MusicDL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DownloadManager.getStreamingDownload("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") could not find item in mPredictiveSongList"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 720
    goto :goto_4
.end method

.method public getStreamingDownloadState(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadState;
    .registers 12
    .parameter "xId"

    .prologue
    const/4 v0, 0x0

    .line 724
    if-nez p1, :cond_4

    .line 735
    :goto_3
    return-object v0

    .line 727
    :cond_4
    iget-object v9, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    monitor-enter v9

    .line 728
    :try_start_7
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/music/dl/DownloadOrder;

    .line 729
    .local v8, order:Lcom/google/android/music/dl/DownloadOrder;
    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/music/dl/ContentIdentifier;->equals(Lcom/google/android/music/dl/ContentIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 730
    new-instance v0, Lcom/google/android/music/dl/DownloadState;

    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v2

    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->getErrorType()I

    move-result v3

    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->getStreamUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->getDuration()J

    move-result-wide v5

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/dl/DownloadState;-><init>(Lcom/google/android/music/dl/ContentIdentifier;Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;ILjava/lang/String;J)V

    monitor-exit v9

    goto :goto_3

    .line 734
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #order:Lcom/google/android/music/dl/DownloadOrder;
    :catchall_3b
    move-exception v0

    monitor-exit v9
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_3b

    throw v0

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_3e
    :try_start_3e
    monitor-exit v9
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3b

    goto :goto_3
.end method

.method public getTotalSpace()J
    .registers 3

    .prologue
    .line 925
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    invoke-virtual {v0}, Lcom/google/android/music/dl/cache/CacheManager;->getTotalSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public isDownloading()Z
    .registers 3

    .prologue
    .line 769
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 771
    :try_start_5
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadExecutor;->isDownloading()Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_1a

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    .line 773
    :goto_12
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 771
    :cond_18
    const/4 v0, 0x0

    goto :goto_12

    .line 773
    :catchall_1a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public isKeepOnDownloaderOn()Z
    .registers 2

    .prologue
    .line 790
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mKeepOnDeviceScheduler:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    invoke-virtual {v0}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public logStreamingStatusEvent(Lcom/google/android/music/dl/ContentIdentifier;I)V
    .registers 7
    .parameter "songId"
    .parameter "event"

    .prologue
    .line 740
    if-nez p1, :cond_3

    .line 750
    :goto_2
    return-void

    .line 743
    :cond_3
    iget-object v3, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    monitor-enter v3

    .line 744
    :try_start_6
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/dl/DownloadOrder;

    .line 745
    .local v1, order:Lcom/google/android/music/dl/DownloadOrder;
    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/music/dl/ContentIdentifier;->equals(Lcom/google/android/music/dl/ContentIdentifier;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 746
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    invoke-virtual {v1, v2, p2}, Lcom/google/android/music/dl/DownloadOrder;->logStatusEvent(Landroid/content/Context;I)V

    goto :goto_c

    .line 749
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #order:Lcom/google/android/music/dl/DownloadOrder;
    :catchall_28
    move-exception v2

    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_28

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2b
    :try_start_2b
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_28

    goto :goto_2
.end method

.method public notifyEnabledStateChanged(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 220
    if-eqz p1, :cond_5

    .line 221
    invoke-direct {p0}, Lcom/google/android/music/dl/DownloadManager;->notifyQueueCompleteListenersIfNoDownloads()V

    .line 223
    :cond_5
    return-void
.end method

.method public notifyQueueComplete()V
    .registers 4

    .prologue
    .line 1068
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    monitor-enter v2

    .line 1069
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1070
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1071
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadOrder;->isKeeponOnly()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1072
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 1075
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1

    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    :cond_22
    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1f

    .line 1076
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    invoke-static {v1, p0}, Lcom/google/android/music/dl/DownloadManager;->updateDownloadQueue(Landroid/content/Context;Lcom/google/android/music/dl/DownloadManager;)V

    .line 1077
    return-void
.end method

.method public notifyQueueFailed()V
    .registers 1

    .prologue
    .line 1083
    return-void
.end method

.method protected onCreate()V
    .registers 5

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.music.STORE_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mStoreConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Service;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 123
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    invoke-static {v0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 124
    new-instance v0, Lcom/google/android/music/dl/BufferProgress;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/BufferProgress;-><init>(Lcom/google/android/music/dl/DownloadManager;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    .line 126
    new-instance v0, Lcom/google/android/music/dl/OrderHandlerCreator;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/dl/OrderHandlerCreator;-><init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mOrderHandlerCreator:Lcom/google/android/music/dl/OrderHandlerCreator;

    .line 127
    new-instance v0, Lcom/google/android/music/dl/cache/CacheManager;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v3, p0, Lcom/google/android/music/dl/DownloadManager;->mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/dl/cache/CacheManager;-><init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    .line 128
    new-instance v0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v3, p0, Lcom/google/android/music/dl/DownloadManager;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;-><init>(Landroid/app/Service;Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/music/dl/BufferProgress;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mKeepOnDeviceScheduler:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    .line 130
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mKeepOnDeviceScheduler:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    invoke-virtual {v0, p0}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->addStateChangedListener(Lcom/google/android/music/dl/KeepOnDeviceScheduler$KeepOnEnabledStateListener;)V

    .line 131
    new-instance v0, Lcom/google/android/music/dl/RingtoneScheduler;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/dl/RingtoneScheduler;-><init>(Landroid/app/Service;Lcom/google/android/music/dl/BufferProgress;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mRingtoneScheduler:Lcom/google/android/music/dl/RingtoneScheduler;

    .line 132
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mRingtoneScheduler:Lcom/google/android/music/dl/RingtoneScheduler;

    invoke-virtual {v0, p0}, Lcom/google/android/music/dl/RingtoneScheduler;->addStateChangedListener(Lcom/google/android/music/dl/RingtoneScheduler$RingtoneDownloadEnabledStateListener;)V

    .line 133
    new-instance v0, Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    invoke-direct {v0, v1}, Lcom/google/android/music/NetworkMonitorServiceConnection;-><init>(Lcom/google/android/music/dl/IStreamabilityChangeListener;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    .line 135
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    invoke-virtual {v0, v1}, Lcom/google/android/music/NetworkMonitorServiceConnection;->bindToService(Landroid/content/Context;)V

    .line 136
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    if-eqz v0, :cond_b

    .line 140
    const-string v0, "MusicDL"

    const-string v1, "DownloadManager.onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_b
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/dl/DownloadManager$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/dl/DownloadManager$1;-><init>(Lcom/google/android/music/dl/DownloadManager;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 158
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mStoreConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Service;->unbindService(Landroid/content/ServiceConnection;)V

    .line 159
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    invoke-virtual {v0}, Lcom/google/android/music/dl/cache/CacheManager;->onDestroy()V

    .line 161
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    invoke-virtual {v0}, Lcom/google/android/music/dl/BufferProgress;->onDestroy()V

    .line 163
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mKeepOnDeviceScheduler:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    invoke-virtual {v0}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->onDestroy()V

    .line 164
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mRingtoneScheduler:Lcom/google/android/music/dl/RingtoneScheduler;

    invoke-virtual {v0}, Lcom/google/android/music/dl/RingtoneScheduler;->onDestroy()V

    .line 166
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    if-eqz v0, :cond_41

    .line 167
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadExecutor;->shutdownNow()Ljava/util/List;

    .line 168
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    invoke-virtual {v0, p0}, Lcom/google/android/music/dl/DownloadExecutor;->removeQueueListener(Lcom/google/android/music/dl/DownloadExecutor$QueueListener;)V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    .line 172
    :cond_41
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    invoke-virtual {v0, v1}, Lcom/google/android/music/NetworkMonitorServiceConnection;->unbindFromService(Landroid/content/Context;)V

    .line 173
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 174
    return-void
.end method

.method public removeDownloadProgressListener(Lcom/google/android/music/dl/IDownloadProgressListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 880
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    invoke-virtual {v0, p1}, Lcom/google/android/music/dl/BufferProgress;->removeDownloadProgressListener(Lcom/google/android/music/dl/IDownloadProgressListener;)V

    .line 881
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    if-nez v0, :cond_b

    .line 456
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/DownloadManager;->startDownloader(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 457
    invoke-virtual {p0}, Lcom/google/android/music/dl/DownloadManager;->notifyQueueComplete()V

    .line 459
    :cond_b
    return-void
.end method

.method protected startDownloader(Lcom/google/android/music/dl/DownloadOrder;)V
    .registers 9
    .parameter "order"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 609
    :try_start_5
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    if-eqz v0, :cond_70

    .line 610
    if-eqz p1, :cond_60

    .line 611
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->hasExplicitPlaybackPurpose()Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadExecutor;->getNumberOfDownloads()I

    move-result v0

    if-eqz v0, :cond_60

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->requiresDownload()Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    invoke-virtual {v0, p1}, Lcom/google/android/music/dl/DownloadExecutor;->isDownloading(Lcom/google/android/music/dl/DownloadOrder;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 615
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    if-eqz v0, :cond_49

    .line 616
    const-string v0, "MusicDL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shutting down DownloadExecutor since "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not being downloaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_49
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/music/dl/DownloadExecutor;->restart(Lcom/google/android/music/dl/DownloadOrder;Z)Lcom/google/android/music/dl/DownloadExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    .line 623
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_55
    .catchall {:try_start_5 .. :try_end_55} :catchall_69

    .line 624
    :try_start_55
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 625
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 626
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_55 .. :try_end_60} :catchall_66

    .line 637
    :cond_60
    :goto_60
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 639
    return-void

    .line 626
    :catchall_66
    move-exception v0

    :try_start_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    :try_start_68
    throw v0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_69

    .line 637
    :catchall_69
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 630
    :cond_70
    :try_start_70
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    if-eqz v0, :cond_7b

    const-string v0, "MusicDL"

    const-string v1, "Creating a new DownloadExecutor (was originally null)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_7b
    new-instance v0, Lcom/google/android/music/dl/DownloadExecutor;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    iget-object v3, p0, Lcom/google/android/music/dl/DownloadManager;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager;->mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;

    iget-object v5, p0, Lcom/google/android/music/dl/DownloadManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v6, p0, Lcom/google/android/music/dl/DownloadManager;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v6}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/dl/DownloadExecutor;-><init>(Landroid/content/Context;Lcom/google/android/music/dl/cache/CacheManager;Lcom/google/android/music/dl/BufferProgress;Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/music/dl/INetworkMonitor;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    .line 634
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    invoke-virtual {v0, p0}, Lcom/google/android/music/dl/DownloadExecutor;->addQueueListener(Lcom/google/android/music/dl/DownloadExecutor$QueueListener;)V
    :try_end_97
    .catchall {:try_start_70 .. :try_end_97} :catchall_69

    goto :goto_60
.end method

.method protected startStreamer()V
    .registers 5

    .prologue
    .line 863
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 865
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_15

    .line 866
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lcom/google/android/music/dl/stream/StreamingHttpServer;

    invoke-direct {v3, p0}, Lcom/google/android/music/dl/stream/StreamingHttpServer;-><init>(Lcom/google/android/music/dl/DownloadManager;)V

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_22
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_15} :catch_17

    .line 871
    :cond_15
    :goto_15
    :try_start_15
    monitor-exit v2

    .line 872
    return-void

    .line 868
    :catch_17
    move-exception v0

    .line 869
    .local v0, e:Ljava/io/IOException;
    const-string v1, "MusicDL"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 871
    .end local v0           #e:Ljava/io/IOException;
    :catchall_22
    move-exception v1

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public stop()V
    .registers 5

    .prologue
    .line 462
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 464
    :try_start_5
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    if-eqz v1, :cond_13

    .line 465
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/dl/DownloadExecutor;->restart(Lcom/google/android/music/dl/DownloadOrder;Z)Lcom/google/android/music/dl/DownloadExecutor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    .line 467
    :cond_13
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_37

    .line 468
    :try_start_16
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 471
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 472
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v1

    sget-object v3, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->NOT_STARTED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v1, v3, :cond_1c

    .line 473
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1c

    .line 476
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    :catchall_34
    move-exception v1

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_16 .. :try_end_36} :catchall_34

    :try_start_36
    throw v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    .line 478
    :catchall_37
    move-exception v1

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    .line 476
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    :cond_3e
    :try_start_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_34

    .line 478
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 480
    return-void
.end method

.method public streamSong(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadState;
    .registers 4
    .parameter "songId"

    .prologue
    .line 375
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/google/android/music/dl/DownloadManager;->makeOrder(Lcom/google/android/music/dl/ContentIdentifier;I)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v0

    .line 376
    .local v0, order:Lcom/google/android/music/dl/DownloadOrder;
    invoke-direct {p0, v0}, Lcom/google/android/music/dl/DownloadManager;->streamSongImpl(Lcom/google/android/music/dl/DownloadOrder;)Lcom/google/android/music/dl/DownloadState;

    move-result-object v1

    return-object v1
.end method

.method public streamSongWithOrder(Lcom/google/android/music/dl/DownloadOrder;)Lcom/google/android/music/dl/DownloadState;
    .registers 6
    .parameter "order"

    .prologue
    .line 381
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    if-eqz v1, :cond_1c

    .line 382
    const-string v1, "MusicDL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "streamSongWithOrder: order="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_1c
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mOrderHandlerCreator:Lcom/google/android/music/dl/OrderHandlerCreator;

    invoke-virtual {v1, p1}, Lcom/google/android/music/dl/OrderHandlerCreator;->createHandler(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 388
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getHandler()Lcom/google/android/music/dl/DownloadHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mStoreService:Lcom/google/android/music/store/IStoreService;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/music/dl/DownloadHandler;->setOrder(Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/store/IStoreService;)V

    .line 389
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/android/music/dl/DownloadOrder;->changePurpose(I)V

    .line 390
    invoke-direct {p0, p1}, Lcom/google/android/music/dl/DownloadManager;->streamSongImpl(Lcom/google/android/music/dl/DownloadOrder;)Lcom/google/android/music/dl/DownloadState;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_33

    move-result-object v1

    .line 393
    :goto_32
    return-object v1

    .line 391
    :catch_33
    move-exception v0

    .line 392
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MusicDL"

    const-string v2, "streamSongWithOrder exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    const/4 v1, 0x0

    goto :goto_32
.end method

.method protected updateQueue([Lcom/google/android/music/dl/ContentIdentifier;I)I
    .registers 16
    .parameter "songIds"
    .parameter "purpose"

    .prologue
    const/4 v10, 0x0

    .line 662
    iget-boolean v11, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingEnabled:Z

    if-nez v11, :cond_6

    .line 698
    :cond_5
    :goto_5
    return v10

    .line 666
    :cond_6
    if-eqz p1, :cond_5

    array-length v11, p1

    if-eqz v11, :cond_5

    .line 670
    new-instance v7, Ljava/util/HashMap;

    array-length v11, p1

    invoke-direct {v7, v11}, Ljava/util/HashMap;-><init>(I)V

    .line 672
    .local v7, playlistOrder:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/google/android/music/dl/ContentIdentifier;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    array-length v11, p1

    if-ge v1, v11, :cond_21

    .line 673
    aget-object v11, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 676
    :cond_21
    move-object v6, p1

    .line 678
    .local v6, localPlaylist:[Lcom/google/android/music/dl/ContentIdentifier;
    aget-object v11, p1, v10

    invoke-virtual {v11}, Lcom/google/android/music/dl/ContentIdentifier;->isDefaultDomain()Z

    move-result v11

    if-eqz v11, :cond_79

    .line 679
    array-length v11, p1

    new-array v9, v11, [J

    .line 680
    .local v9, xIds:[J
    const/4 v1, 0x0

    :goto_2e
    array-length v11, p1

    if-ge v1, v11, :cond_3c

    .line 681
    aget-object v11, p1, v1

    invoke-virtual {v11}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v11

    aput-wide v11, v9, v1

    .line 680
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 683
    :cond_3c
    iget-object v11, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    invoke-static {v11}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/google/android/music/store/Store;->requiresDownloadManager([J)[J

    move-result-object v8

    .line 684
    .local v8, useDLMan:[J
    if-eqz v8, :cond_5

    .line 688
    array-length v10, v9

    new-array v6, v10, [Lcom/google/android/music/dl/ContentIdentifier;

    .line 689
    const/4 v1, 0x0

    :goto_4c
    array-length v10, v6

    if-ge v1, v10, :cond_55

    .line 690
    const/4 v10, 0x0

    aput-object v10, v6, v1

    .line 689
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 692
    :cond_55
    move-object v0, v8

    .local v0, arr$:[J
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_58
    if-ge v2, v5, :cond_79

    aget-wide v3, v0, v2

    .line 693
    .local v3, id:J
    new-instance v10, Lcom/google/android/music/dl/ContentIdentifier;

    sget-object v11, Lcom/google/android/music/dl/ContentIdentifier$Domain;->DEFAULT:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    invoke-direct {v10, v3, v4, v11}, Lcom/google/android/music/dl/ContentIdentifier;-><init>(JLcom/google/android/music/dl/ContentIdentifier$Domain;)V

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    new-instance v11, Lcom/google/android/music/dl/ContentIdentifier;

    sget-object v12, Lcom/google/android/music/dl/ContentIdentifier$Domain;->DEFAULT:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    invoke-direct {v11, v3, v4, v12}, Lcom/google/android/music/dl/ContentIdentifier;-><init>(JLcom/google/android/music/dl/ContentIdentifier$Domain;)V

    aput-object v11, v6, v10

    .line 692
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 698
    .end local v0           #arr$:[J
    .end local v2           #i$:I
    .end local v3           #id:J
    .end local v5           #len$:I
    .end local v8           #useDLMan:[J
    .end local v9           #xIds:[J
    :cond_79
    invoke-direct {p0, v6, p2}, Lcom/google/android/music/dl/DownloadManager;->createOrders([Lcom/google/android/music/dl/ContentIdentifier;I)Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/google/android/music/dl/DownloadManager;->updateDownloaderQueue(Ljava/util/List;)I

    move-result v10

    goto :goto_5
.end method
