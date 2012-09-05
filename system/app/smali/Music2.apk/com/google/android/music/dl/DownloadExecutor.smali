.class public Lcom/google/android/music/dl/DownloadExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "DownloadExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/DownloadExecutor$QueueListener;,
        Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;
    }
.end annotation


# static fields
.field private static final LOGV:Z

.field private static final RELEASE_WIFI_LOCK_MSG:I


# instance fields
.field private final mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

.field private final mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentDownloads:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/music/dl/DownloadOrder;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentTask:Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;

.field private mDelayReleaseWifiLock:Ljava/lang/Runnable;

.field private final mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;

.field private mFutureDownloads:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/music/dl/DownloadOrder;",
            ">;"
        }
    .end annotation
.end field

.field private final mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private final mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

.field private mQueueListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/music/dl/DownloadExecutor$QueueListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningThreads:I

.field private mShuttingDown:Z

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-string v0, "MusicDL"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/DownloadExecutor;->LOGV:Z

    .line 45
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    invoke-static {v0}, Lcom/google/android/music/utils/async/AsyncWorkers;->getUniqueMessageType(Lcom/google/android/music/Worker;)I

    move-result v0

    sput v0, Lcom/google/android/music/dl/DownloadExecutor;->RELEASE_WIFI_LOCK_MSG:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/dl/cache/CacheManager;Lcom/google/android/music/dl/BufferProgress;Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/music/dl/INetworkMonitor;)V
    .registers 15
    .parameter "context"
    .parameter "cacheManager"
    .parameter "bufferProgress"
    .parameter "doNotDelete"
    .parameter "preferences"
    .parameter "networkMonitor"

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 85
    const/4 v2, 0x1

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mFutureDownloads:Ljava/util/LinkedList;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    .line 63
    iput-object v7, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentTask:Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;

    .line 66
    iput v1, p0, Lcom/google/android/music/dl/DownloadExecutor;->mRunningThreads:I

    .line 68
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mQueueListeners:Ljava/util/LinkedList;

    .line 71
    iput-boolean v1, p0, Lcom/google/android/music/dl/DownloadExecutor;->mShuttingDown:Z

    .line 76
    iput-object v7, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 253
    new-instance v0, Lcom/google/android/music/dl/DownloadExecutor$4;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/DownloadExecutor$4;-><init>(Lcom/google/android/music/dl/DownloadExecutor;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mDelayReleaseWifiLock:Ljava/lang/Runnable;

    .line 86
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadExecutor;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    .line 88
    iput-object p3, p0, Lcom/google/android/music/dl/DownloadExecutor;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    .line 89
    iput-object p4, p0, Lcom/google/android/music/dl/DownloadExecutor;->mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;

    .line 90
    iput-object p5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 92
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 93
    iput-object p6, p0, Lcom/google/android/music/dl/DownloadExecutor;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    .line 94
    return-void
.end method

.method private declared-synchronized aboutToDownload(Lcom/google/android/music/dl/DownloadOrder;)Z
    .registers 4
    .parameter "order"

    .prologue
    const/4 v1, 0x1

    .line 440
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mFutureDownloads:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    iget v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mRunningThreads:I

    if-ge v0, v1, :cond_1f

    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mFutureDownloads:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {p1, v0}, Lcom/google/android/music/dl/DownloadOrder;->equals(Lcom/google/android/music/dl/DownloadOrder;)Z
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_21

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v1

    :goto_1d
    monitor-exit p0

    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1d

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic access$000(Lcom/google/android/music/dl/DownloadExecutor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/music/dl/DownloadExecutor;->checkAndSendQueueComplete()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/dl/DownloadExecutor;)Lcom/google/android/music/dl/BufferProgress;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/dl/DownloadExecutor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/music/dl/DownloadExecutor;->notifyQueueFailed()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/dl/DownloadExecutor;)Landroid/net/wifi/WifiManager$WifiLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/music/dl/DownloadExecutor;Landroid/net/wifi/WifiManager$WifiLock;)Landroid/net/wifi/WifiManager$WifiLock;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return-object p1
.end method

.method private addDownload(Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;)V
    .registers 5
    .parameter "task"

    .prologue
    .line 112
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadExecutor;->mFutureDownloads:Ljava/util/LinkedList;

    monitor-enter v1

    .line 113
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mFutureDownloads:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;->getOrder()Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 114
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    .line 115
    invoke-virtual {p0, p1}, Lcom/google/android/music/dl/DownloadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 116
    return-void

    .line 114
    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0
.end method

.method private checkAndSendQueueComplete()V
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mFutureDownloads:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/google/android/music/dl/DownloadExecutor;->isTerminating()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/google/android/music/dl/DownloadExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 267
    invoke-direct {p0}, Lcom/google/android/music/dl/DownloadExecutor;->notifyQueueComplete()V

    .line 269
    :cond_1f
    return-void
.end method

.method private makeRingtoneFromOrder(Lcom/google/android/music/dl/DownloadOrder;)Z
    .registers 12
    .parameter "order"

    .prologue
    const/4 v9, 0x1

    .line 398
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadExecutor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/store/Store;->getRingtoneManager()Lcom/google/android/music/store/MusicRingtoneManager;

    move-result-object v0

    .line 399
    .local v0, ringtones:Lcom/google/android/music/store/MusicRingtoneManager;
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getRingtoneSize()J

    move-result-wide v7

    .line 400
    .local v7, ringtoneFileSize:J
    const-wide/16 v1, 0x0

    cmp-long v1, v7, v1

    if-lez v1, :cond_6a

    .line 402
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->isRingtoneOnly()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 403
    sget-object v5, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;->RINGTONE_DOWNLOAD:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    .line 414
    .local v5, ringtoneSource:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;
    :goto_1d
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getRemoteId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getLocalLocation()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getTrackName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/music/store/MusicRingtoneManager;->makeRingtoneFile(JLjava/lang/String;Ljava/lang/String;Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;Ljava/lang/String;JZ)I

    .line 420
    .end local v5           #ringtoneSource:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;
    :goto_38
    return v9

    .line 404
    :cond_39
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->hasKeeponPurpose()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 405
    sget-object v5, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;->KEEPON_TRACK:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    .restart local v5       #ringtoneSource:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;
    goto :goto_1d

    .line 406
    .end local v5           #ringtoneSource:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;
    :cond_42
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->hasPlaybackPurpose()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 407
    sget-object v5, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;->CACHED_TRACK:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    .restart local v5       #ringtoneSource:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;
    goto :goto_1d

    .line 409
    .end local v5           #ringtoneSource:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;
    :cond_4b
    const-string v1, "MusicDL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected order purpose value when making ringtone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getPurposes()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    sget-object v5, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;->CACHED_TRACK:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    .restart local v5       #ringtoneSource:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;
    goto :goto_1d

    .line 420
    .end local v5           #ringtoneSource:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;
    :cond_6a
    const/4 v9, 0x0

    goto :goto_38
.end method

.method private notifyQueueComplete()V
    .registers 4

    .prologue
    .line 460
    iget-boolean v2, p0, Lcom/google/android/music/dl/DownloadExecutor;->mShuttingDown:Z

    if-eqz v2, :cond_5

    .line 466
    :cond_4
    return-void

    .line 463
    :cond_5
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadExecutor;->mQueueListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/dl/DownloadExecutor$QueueListener;

    .line 464
    .local v1, listener:Lcom/google/android/music/dl/DownloadExecutor$QueueListener;
    invoke-interface {v1}, Lcom/google/android/music/dl/DownloadExecutor$QueueListener;->notifyQueueComplete()V

    goto :goto_b
.end method

.method private notifyQueueFailed()V
    .registers 4

    .prologue
    .line 469
    iget-boolean v2, p0, Lcom/google/android/music/dl/DownloadExecutor;->mShuttingDown:Z

    if-eqz v2, :cond_5

    .line 475
    :cond_4
    return-void

    .line 472
    :cond_5
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadExecutor;->mQueueListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/dl/DownloadExecutor$QueueListener;

    .line 473
    .local v1, listener:Lcom/google/android/music/dl/DownloadExecutor$QueueListener;
    invoke-interface {v1}, Lcom/google/android/music/dl/DownloadExecutor$QueueListener;->notifyQueueFailed()V

    goto :goto_b
.end method

.method private releaseWifiLockAsync()V
    .registers 5

    .prologue
    .line 244
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    sget v2, Lcom/google/android/music/dl/DownloadExecutor;->RELEASE_WIFI_LOCK_MSG:I

    invoke-virtual {v1, v2}, Lcom/google/android/music/Worker;->removeMessages(I)V

    .line 245
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadExecutor;->mDelayReleaseWifiLock:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 246
    .local v0, msg:Landroid/os/Message;
    sget v1, Lcom/google/android/music/dl/DownloadExecutor;->RELEASE_WIFI_LOCK_MSG:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 247
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/music/Worker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 248
    return-void
.end method

.method private saveOrDeleteLocalLocation(Lcom/google/android/music/dl/DownloadOrder;)V
    .registers 13
    .parameter "order"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 272
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getLocalLocation()Ljava/io/File;

    move-result-object v7

    .line 274
    .local v7, localLocation:Ljava/io/File;
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadExecutor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v0

    .line 276
    .local v0, store:Lcom/google/android/music/store/Store;
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->hasRingtonePurpose()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 277
    invoke-direct {p0, p1}, Lcom/google/android/music/dl/DownloadExecutor;->makeRingtoneFromOrder(Lcom/google/android/music/dl/DownloadOrder;)Z

    move-result v8

    .line 278
    .local v8, ringtoneProcessed:Z
    if-nez v8, :cond_31

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->isRingtoneOnly()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 280
    invoke-virtual {v0}, Lcom/google/android/music/store/Store;->getRingtoneManager()Lcom/google/android/music/store/MusicRingtoneManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v5, v2}, Lcom/google/android/music/store/MusicRingtoneManager;->markRingtoneRequestAsFailed(JLjava/lang/String;)Z

    .line 285
    .end local v8           #ringtoneProcessed:Z
    :cond_31
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->isAutoDelete()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 286
    if-eqz v7, :cond_44

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadExecutor;->mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;

    invoke-interface {v1, v7}, Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;->requestDeleteFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 287
    invoke-virtual {p1, v9, v10}, Lcom/google/android/music/dl/DownloadOrder;->setLocalLocation(Ljava/io/File;Z)V

    .line 315
    :cond_44
    :goto_44
    return-void

    .line 292
    :cond_45
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->isRingtoneOnly()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 293
    if-eqz v7, :cond_44

    .line 294
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto :goto_44

    .line 297
    :cond_51
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->shouldSaveLocation()Z

    move-result v1

    if-eqz v1, :cond_84

    if-eqz v7, :cond_84

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, saveLocation:Ljava/lang/String;
    :goto_5d
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->hasKeeponPurpose()Z

    move-result v4

    if-eqz v4, :cond_86

    const/16 v4, 0xc8

    :goto_6d
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadLength()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/store/Store;->saveFileLocation(JLjava/lang/String;IJ)V

    .line 306
    if-nez v3, :cond_44

    .line 308
    if-eqz v7, :cond_44

    .line 309
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadExecutor;->mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;

    invoke-interface {v1, v7}, Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;->requestDeleteFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 310
    invoke-virtual {p1, v9, v10}, Lcom/google/android/music/dl/DownloadOrder;->setLocalLocation(Ljava/io/File;Z)V

    goto :goto_44

    .end local v3           #saveLocation:Ljava/lang/String;
    :cond_84
    move-object v3, v9

    .line 297
    goto :goto_5d

    .line 300
    .restart local v3       #saveLocation:Ljava/lang/String;
    :cond_86
    const/16 v4, 0x64

    goto :goto_6d
.end method


# virtual methods
.method public addDownload(Lcom/google/android/music/dl/DownloadOrder;)V
    .registers 9
    .parameter "order"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mFutureDownloads:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 109
    :cond_10
    :goto_10
    return-void

    .line 106
    :cond_11
    new-instance v6, Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;

    new-instance v0, Lcom/google/android/music/dl/DownloadTask;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadExecutor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadExecutor;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    iget-object v3, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    iget-object v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/dl/DownloadTask;-><init>(Landroid/content/Context;Lcom/google/android/music/dl/BufferProgress;Lcom/google/android/music/dl/cache/CacheManager;Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/dl/INetworkMonitor;)V

    invoke-direct {v6, v0}, Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;-><init>(Lcom/google/android/music/dl/DownloadTask;)V

    invoke-direct {p0, v6}, Lcom/google/android/music/dl/DownloadExecutor;->addDownload(Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;)V

    .line 108
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/store/MusicContent;->DOWNLOAD_QUEUE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_10
.end method

.method public addQueueListener(Lcom/google/android/music/dl/DownloadExecutor$QueueListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mQueueListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 453
    return-void
.end method

.method protected declared-synchronized afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .registers 14
    .parameter "r"
    .parameter "t"

    .prologue
    .line 168
    monitor-enter p0

    :try_start_1
    iget v7, p0, Lcom/google/android/music/dl/DownloadExecutor;->mRunningThreads:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/google/android/music/dl/DownloadExecutor;->mRunningThreads:I

    .line 169
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;

    move-object v2, v0

    .line 170
    .local v2, downloadTask:Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentTask:Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;

    .line 172
    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;->getOrder()Lcom/google/android/music/dl/DownloadOrder;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_ad

    move-result-object v5

    .line 175
    .local v5, order:Lcom/google/android/music/dl/DownloadOrder;
    const-wide/16 v7, 0x1

    :try_start_14
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v7, v8, v9}, Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_ad
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_14 .. :try_end_19} :catch_b0
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_19} :catch_f5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_14 .. :try_end_19} :catch_f2

    .line 185
    :cond_19
    :goto_19
    if-eqz p2, :cond_ba

    .line 186
    :try_start_1b
    sget-object v7, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual {v5, v7}, Lcom/google/android/music/dl/DownloadOrder;->setDownloadStatus(Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)V

    .line 187
    invoke-direct {p0, v5}, Lcom/google/android/music/dl/DownloadExecutor;->saveOrDeleteLocalLocation(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 188
    const-string v7, "MusicDL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error running download thread: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    :goto_3f
    sget-object v7, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v8, Lcom/google/android/music/dl/DownloadExecutor$2;

    invoke-direct {v8, p0, v5}, Lcom/google/android/music/dl/DownloadExecutor$2;-><init>(Lcom/google/android/music/dl/DownloadExecutor;Lcom/google/android/music/dl/DownloadOrder;)V

    invoke-static {v7, v8}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 210
    invoke-direct {p0}, Lcom/google/android/music/dl/DownloadExecutor;->releaseWifiLockAsync()V

    .line 212
    invoke-virtual {v5}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v7

    sget-object v8, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v7, v8, :cond_f0

    invoke-virtual {v5}, Lcom/google/android/music/dl/DownloadOrder;->hasPlaybackPurpose()Z

    move-result v7

    if-eqz v7, :cond_f0

    .line 215
    new-instance v1, Ljava/util/LinkedList;

    invoke-virtual {p0}, Lcom/google/android/music/dl/DownloadExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 216
    .local v1, currentDownloads:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Runnable;>;"
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/music/dl/DownloadExecutor;->mFutureDownloads:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-eq v7, v8, :cond_99

    .line 217
    const-string v7, "MusicDL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The list of tasks<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> did not match our internal list of orders<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/music/dl/DownloadExecutor;->mFutureDownloads:Ljava/util/LinkedList;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_99
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_9d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_db

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Runnable;

    .line 221
    .local v6, task:Ljava/lang/Runnable;
    invoke-virtual {p0, v6}, Lcom/google/android/music/dl/DownloadExecutor;->remove(Ljava/lang/Runnable;)Z
    :try_end_ac
    .catchall {:try_start_1b .. :try_end_ac} :catchall_ad

    goto :goto_9d

    .line 168
    .end local v1           #currentDownloads:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Runnable;>;"
    .end local v2           #downloadTask:Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #order:Lcom/google/android/music/dl/DownloadOrder;
    .end local v6           #task:Ljava/lang/Runnable;
    :catchall_ad
    move-exception v7

    monitor-exit p0

    throw v7

    .line 176
    .restart local v2       #downloadTask:Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;
    .restart local v5       #order:Lcom/google/android/music/dl/DownloadOrder;
    :catch_b0
    move-exception v3

    .line 177
    .local v3, e:Ljava/util/concurrent/ExecutionException;
    :try_start_b1
    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 178
    if-nez p2, :cond_19

    .line 179
    move-object p2, v3

    goto/16 :goto_19

    .line 190
    .end local v3           #e:Ljava/util/concurrent/ExecutionException;
    :cond_ba
    invoke-direct {p0, v5}, Lcom/google/android/music/dl/DownloadExecutor;->saveOrDeleteLocalLocation(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 191
    iget-object v7, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 192
    iget-object v7, p0, Lcom/google/android/music/dl/DownloadExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/google/android/music/store/MusicContent;->DOWNLOAD_QUEUE_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 196
    sget-object v7, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v8, Lcom/google/android/music/dl/DownloadExecutor$1;

    invoke-direct {v8, p0}, Lcom/google/android/music/dl/DownloadExecutor$1;-><init>(Lcom/google/android/music/dl/DownloadExecutor;)V

    invoke-static {v7, v8}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    goto/16 :goto_3f

    .line 223
    .restart local v1       #currentDownloads:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Runnable;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_db
    sget-boolean v7, Lcom/google/android/music/dl/DownloadExecutor;->LOGV:Z

    if-eqz v7, :cond_e6

    .line 224
    const-string v7, "MusicDL"

    const-string v8, "Streaming/UserPlaylist DL failed, not continuing with rest of download queue"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_e6
    sget-object v7, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v8, Lcom/google/android/music/dl/DownloadExecutor$3;

    invoke-direct {v8, p0}, Lcom/google/android/music/dl/DownloadExecutor$3;-><init>(Lcom/google/android/music/dl/DownloadExecutor;)V

    invoke-static {v7, v8}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V
    :try_end_f0
    .catchall {:try_start_b1 .. :try_end_f0} :catchall_ad

    .line 234
    .end local v1           #currentDownloads:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Runnable;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_f0
    monitor-exit p0

    return-void

    .line 182
    :catch_f2
    move-exception v7

    goto/16 :goto_19

    .line 181
    :catch_f5
    move-exception v7

    goto/16 :goto_19
.end method

.method protected declared-synchronized beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .registers 12
    .parameter "t"
    .parameter "r"

    .prologue
    .line 319
    monitor-enter p0

    :try_start_1
    move-object v0, p2

    check-cast v0, Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;

    move-object v1, v0

    .line 320
    .local v1, downloadTask:Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;
    iput-object v1, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentTask:Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;

    .line 321
    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;->getOrder()Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v3

    .line 323
    .local v3, order:Lcom/google/android/music/dl/DownloadOrder;
    iget-object v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v6, p0, Lcom/google/android/music/dl/DownloadExecutor;->mFutureDownloads:Ljava/util/LinkedList;

    monitor-enter v6
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_2f

    .line 325
    :try_start_13
    iget-object v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mFutureDownloads:Ljava/util/LinkedList;

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 326
    monitor-exit v6
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_2c

    .line 327
    :try_start_19
    iget v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mRunningThreads:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mRunningThreads:I

    .line 329
    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->requiresDownload()Z

    move-result v5

    if-nez v5, :cond_32

    .line 330
    sget-object v5, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->COMPLETED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual {v3, v5}, Lcom/google/android/music/dl/DownloadOrder;->setDownloadStatus(Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)V
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_2f

    .line 362
    :cond_2a
    :goto_2a
    monitor-exit p0

    return-void

    .line 326
    :catchall_2c
    move-exception v5

    :try_start_2d
    monitor-exit v6
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v5
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    .line 319
    .end local v1           #downloadTask:Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;
    .end local v3           #order:Lcom/google/android/music/dl/DownloadOrder;
    :catchall_2f
    move-exception v5

    monitor-exit p0

    throw v5

    .line 333
    .restart local v1       #downloadTask:Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;
    .restart local v3       #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_32
    :try_start_32
    sget-object v5, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->DOWNLOADING:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual {v3, v5}, Lcom/google/android/music/dl/DownloadOrder;->setDownloadStatus(Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)V

    .line 335
    iget-object v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/google/android/music/store/MusicContent;->DOWNLOAD_QUEUE_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 337
    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->hasKeeponPurpose()Z

    move-result v5

    if-nez v5, :cond_52

    iget-object v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v5}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamOnlyHQ()Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 339
    :cond_52
    const/16 v5, 0x200

    invoke-virtual {v3, v5}, Lcom/google/android/music/dl/DownloadOrder;->setRecommendedBitrate(I)V
    :try_end_57
    .catchall {:try_start_32 .. :try_end_57} :catchall_2f

    .line 347
    :goto_57
    :try_start_57
    iget-object v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v5, :cond_2a

    iget-object v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    invoke-interface {v5}, Lcom/google/android/music/dl/INetworkMonitor;->hasWifiConnection()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 350
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xc

    if-lt v5, v6, :cond_9f

    .line 351
    const/4 v4, 0x3

    .line 355
    .local v4, wifiLockMode:I
    :goto_6a
    iget-object v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v6, "MusicDL"

    invoke-virtual {v5, v4, v6}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 356
    iget-object v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 357
    iget-object v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
    :try_end_7f
    .catchall {:try_start_57 .. :try_end_7f} :catchall_2f
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_7f} :catch_80

    goto :goto_2a

    .line 359
    .end local v4           #wifiLockMode:I
    :catch_80
    move-exception v2

    .line 360
    .local v2, e:Landroid/os/RemoteException;
    :try_start_81
    const-string v5, "MusicDL"

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    .line 340
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_8b
    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->isRingtoneOnly()Z

    move-result v5

    if-eqz v5, :cond_97

    .line 341
    const/16 v5, 0x80

    invoke-virtual {v3, v5}, Lcom/google/android/music/dl/DownloadOrder;->setRecommendedBitrate(I)V

    goto :goto_57

    .line 343
    :cond_97
    invoke-static {}, Lcom/google/android/music/dl/NetworkMonitor;->getRecommendedBitrate()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/android/music/dl/DownloadOrder;->setRecommendedBitrate(I)V
    :try_end_9e
    .catchall {:try_start_81 .. :try_end_9e} :catchall_2f

    goto :goto_57

    .line 353
    :cond_9f
    const/4 v4, 0x1

    .restart local v4       #wifiLockMode:I
    goto :goto_6a
.end method

.method protected finalize()V
    .registers 4

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_15

    .line 510
    const-string v0, "MusicDL"

    const-string v1, "The wifi lock was never released... now releasing in finalizer"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 512
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 515
    :cond_15
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->finalize()V

    .line 516
    return-void
.end method

.method public getDownload(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadOrder;
    .registers 6
    .parameter "songId"

    .prologue
    const/4 v2, 0x0

    .line 365
    if-nez p1, :cond_5

    move-object v1, v2

    .line 379
    :goto_4
    return-object v1

    .line 368
    :cond_5
    iget-object v3, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/dl/DownloadOrder;

    .line 369
    .local v1, order:Lcom/google/android/music/dl/DownloadOrder;
    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/music/dl/ContentIdentifier;->equals(Lcom/google/android/music/dl/ContentIdentifier;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_4

    .line 373
    .end local v1           #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_22
    iget-object v3, p0, Lcom/google/android/music/dl/DownloadExecutor;->mFutureDownloads:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/dl/DownloadOrder;

    .line 374
    .restart local v1       #order:Lcom/google/android/music/dl/DownloadOrder;
    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/music/dl/ContentIdentifier;->equals(Lcom/google/android/music/dl/ContentIdentifier;)Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_4

    .end local v1           #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_3f
    move-object v1, v2

    .line 379
    goto :goto_4
.end method

.method public getDownloads()Ljava/util/List;
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
    .line 445
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 446
    .local v0, downloads:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/music/dl/DownloadOrder;>;"
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 447
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadExecutor;->mFutureDownloads:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 448
    return-object v0
.end method

.method public getNumberOfDownloads()I
    .registers 3

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadExecutor;->mFutureDownloads:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized isDownloading()Z
    .registers 2

    .prologue
    .line 432
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentTask:Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mFutureDownloads:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1a

    move-result v0

    if-nez v0, :cond_18

    :cond_15
    const/4 v0, 0x1

    :goto_16
    monitor-exit p0

    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_16

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDownloading(Lcom/google/android/music/dl/DownloadOrder;)Z
    .registers 3
    .parameter "order"

    .prologue
    .line 428
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0, p1}, Lcom/google/android/music/dl/DownloadExecutor;->aboutToDownload(Lcom/google/android/music/dl/DownloadOrder;)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_14

    move-result v0

    if-eqz v0, :cond_12

    :cond_f
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

.method makeRingtoneWithExistingDownloadOrder(Lcom/google/android/music/dl/ContentIdentifier;)Z
    .registers 8
    .parameter "songId"

    .prologue
    const/4 v1, 0x0

    .line 383
    invoke-virtual {p0, p1}, Lcom/google/android/music/dl/DownloadExecutor;->getDownload(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v0

    .line 384
    .local v0, order:Lcom/google/android/music/dl/DownloadOrder;
    if-nez v0, :cond_8

    .line 394
    :cond_7
    :goto_7
    return v1

    .line 387
    :cond_8
    invoke-direct {p0, v0}, Lcom/google/android/music/dl/DownloadExecutor;->makeRingtoneFromOrder(Lcom/google/android/music/dl/DownloadOrder;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 389
    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->isFinishedStatus()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->getSeekPoint()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    .line 390
    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->setRingtoneRequested()V

    .line 391
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public removeQueueListener(Lcom/google/android/music/dl/DownloadExecutor$QueueListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mQueueListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 457
    return-void
.end method

.method public declared-synchronized restart(Lcom/google/android/music/dl/DownloadOrder;Z)Lcom/google/android/music/dl/DownloadExecutor;
    .registers 14
    .parameter "firstItem"
    .parameter "retainQueue"

    .prologue
    .line 123
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentTask:Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentTask:Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;

    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;->getOrder()Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/music/dl/DownloadOrder;->equals(Lcom/google/android/music/dl/DownloadOrder;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 124
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentTask:Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;

    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;->getTask()Lcom/google/android/music/dl/DownloadTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadTask;->signalGoingToRestart()V

    .line 126
    :cond_1a
    const/4 v9, 0x0

    .line 127
    .local v9, passOnWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v1, :cond_2e

    if-nez p1, :cond_29

    if-eqz p2, :cond_2e

    invoke-virtual {p0}, Lcom/google/android/music/dl/DownloadExecutor;->isDownloading()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 130
    :cond_29
    iget-object v9, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 133
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 135
    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/music/dl/DownloadExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v8

    .line 136
    .local v8, oldQueue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Runnable;>;"
    new-instance v0, Lcom/google/android/music/dl/DownloadExecutor;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadExecutor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    iget-object v3, p0, Lcom/google/android/music/dl/DownloadExecutor;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    iget-object v4, p0, Lcom/google/android/music/dl/DownloadExecutor;->mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;

    iget-object v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v6, p0, Lcom/google/android/music/dl/DownloadExecutor;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/dl/DownloadExecutor;-><init>(Landroid/content/Context;Lcom/google/android/music/dl/cache/CacheManager;Lcom/google/android/music/dl/BufferProgress;Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/music/dl/INetworkMonitor;)V

    .line 138
    .local v0, newExecutor:Lcom/google/android/music/dl/DownloadExecutor;
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadExecutor;->mQueueListeners:Ljava/util/LinkedList;

    iput-object v1, v0, Lcom/google/android/music/dl/DownloadExecutor;->mQueueListeners:Ljava/util/LinkedList;

    .line 139
    iput-object v9, v0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 140
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/dl/DownloadExecutor;->mQueueListeners:Ljava/util/LinkedList;

    .line 142
    if-eqz p1, :cond_51

    .line 143
    invoke-virtual {v0, p1}, Lcom/google/android/music/dl/DownloadExecutor;->addDownload(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 146
    :cond_51
    if-eqz p2, :cond_6c

    .line 147
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_57
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Runnable;

    .line 148
    .local v10, r:Ljava/lang/Runnable;
    check-cast v10, Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;

    .end local v10           #r:Ljava/lang/Runnable;
    invoke-direct {v0, v10}, Lcom/google/android/music/dl/DownloadExecutor;->addDownload(Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;)V
    :try_end_68
    .catchall {:try_start_1 .. :try_end_68} :catchall_69

    goto :goto_57

    .line 123
    .end local v0           #newExecutor:Lcom/google/android/music/dl/DownloadExecutor;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #oldQueue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Runnable;>;"
    .end local v9           #passOnWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
    :catchall_69
    move-exception v1

    monitor-exit p0

    throw v1

    .line 151
    .restart local v0       #newExecutor:Lcom/google/android/music/dl/DownloadExecutor;
    .restart local v8       #oldQueue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Runnable;>;"
    .restart local v9       #passOnWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
    :cond_6c
    monitor-exit p0

    return-object v0
.end method

.method public shutdownNow()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mShuttingDown:Z

    .line 157
    monitor-enter p0

    .line 158
    :try_start_4
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_10

    .line 159
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 162
    :cond_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_16

    .line 163
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 162
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method
