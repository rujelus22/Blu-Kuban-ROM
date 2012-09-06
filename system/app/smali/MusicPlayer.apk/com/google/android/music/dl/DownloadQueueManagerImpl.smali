.class public Lcom/google/android/music/dl/DownloadQueueManagerImpl;
.super Ljava/lang/Object;
.source "DownloadQueueManagerImpl.java"

# interfaces
.implements Lcom/google/android/music/dl/DownloadQueueManager;


# static fields
.field private static final LOGV:Z


# instance fields
.field private final mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

.field private final mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

.field private final mContext:Landroid/content/Context;

.field private final mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;

.field private final mDownloadQueue:Lcom/google/android/music/dl/DownloadQueue;

.field private final mDownloadThread:Ljava/lang/Thread;

.field private volatile mEmptyQueueListener:Lcom/google/android/music/dl/DownloadQueueManager$OnEmptyQueueListener;

.field private final mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private final mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

.field private volatile mShutdown:Z

.field private volatile mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const-string v0, "DownloadQueueManagerImpl"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/dl/cache/CacheManager;Lcom/google/android/music/dl/BufferProgress;Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/music/NetworkMonitorServiceConnection;)V
    .registers 9
    .parameter "context"
    .parameter "cacheManager"
    .parameter "bufferProgress"
    .parameter "doNotDelete"
    .parameter "preferences"
    .parameter "networkMonitorServiceConnection"

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mShutdown:Z

    .line 83
    new-instance v0, Lcom/google/android/music/dl/DownloadQueueManagerImpl$1;

    const-string v1, "DownloadQueue"

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/dl/DownloadQueueManagerImpl$1;-><init>(Lcom/google/android/music/dl/DownloadQueueManagerImpl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mDownloadThread:Ljava/lang/Thread;

    .line 154
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mContext:Landroid/content/Context;

    .line 155
    iput-object p2, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    .line 156
    iput-object p3, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    .line 157
    iput-object p4, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;

    .line 158
    iput-object p6, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    .line 159
    iput-object p5, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 160
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 161
    new-instance v0, Lcom/google/android/music/dl/DownloadQueue;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mDownloadThread:Ljava/lang/Thread;

    invoke-direct {v0, v1}, Lcom/google/android/music/dl/DownloadQueue;-><init>(Ljava/lang/Thread;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mDownloadQueue:Lcom/google/android/music/dl/DownloadQueue;

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/dl/DownloadQueueManagerImpl;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mShutdown:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/music/dl/DownloadQueueManagerImpl;)Lcom/google/android/music/dl/DownloadQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mDownloadQueue:Lcom/google/android/music/dl/DownloadQueue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/dl/DownloadQueueManagerImpl;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->notifyEmptyQueue()V

    return-void
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->LOGV:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/music/dl/DownloadQueueManagerImpl;Lcom/google/android/music/dl/DownloadTask;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->runTask(Lcom/google/android/music/dl/DownloadTask;)V

    return-void
.end method

.method private declared-synchronized acquireWifiLock()V
    .registers 6

    .prologue
    .line 298
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v3}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v1

    .line 299
    .local v1, monitor:Lcom/google/android/music/dl/INetworkMonitor;
    iget-object v3, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v3, :cond_2f

    if-eqz v1, :cond_2f

    invoke-interface {v1}, Lcom/google/android/music/dl/INetworkMonitor;->hasWifiConnection()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 302
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xc

    if-lt v3, v4, :cond_31

    .line 303
    const/4 v2, 0x3

    .line 307
    .local v2, wifiLockMode:I
    :goto_1a
    iget-object v3, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v4, "DownloadQueueManagerImpl"

    invoke-virtual {v3, v2, v4}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 308
    iget-object v3, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 309
    iget-object v3, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_3e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2f} :catch_33

    .line 314
    .end local v1           #monitor:Lcom/google/android/music/dl/INetworkMonitor;
    .end local v2           #wifiLockMode:I
    :cond_2f
    :goto_2f
    monitor-exit p0

    return-void

    .line 305
    .restart local v1       #monitor:Lcom/google/android/music/dl/INetworkMonitor;
    :cond_31
    const/4 v2, 0x1

    .restart local v2       #wifiLockMode:I
    goto :goto_1a

    .line 311
    .end local v1           #monitor:Lcom/google/android/music/dl/INetworkMonitor;
    .end local v2           #wifiLockMode:I
    :catch_33
    move-exception v0

    .line 312
    .local v0, e:Landroid/os/RemoteException;
    :try_start_34
    const-string v3, "DownloadQueueManagerImpl"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_3e

    goto :goto_2f

    .line 298
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_3e
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private afterExecute(Lcom/google/android/music/dl/DownloadTask;Z)V
    .registers 8
    .parameter "task"
    .parameter "success"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->releaseWiFiLock()V

    .line 188
    invoke-interface {p1}, Lcom/google/android/music/dl/DownloadTask;->getDownloadOrder()Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v0

    .line 191
    .local v0, order:Lcom/google/android/music/dl/DownloadOrder;
    if-eqz p2, :cond_23

    .line 192
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;

    invoke-static {v1, v2, v0}, Lcom/google/android/music/dl/DownloadUtils;->storeOrDeleteTrack(Landroid/content/Context;Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;Lcom/google/android/music/dl/DownloadOrder;)V

    .line 198
    :goto_10
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/store/MusicContent;->DOWNLOAD_QUEUE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 199
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    invoke-virtual {v1, v0}, Lcom/google/android/music/dl/BufferProgress;->notifyBufferProgress(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 200
    return-void

    .line 194
    :cond_23
    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual {v0, v1}, Lcom/google/android/music/dl/DownloadOrder;->setDownloadStatus(Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)V

    .line 195
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;

    invoke-static {v1, v0}, Lcom/google/android/music/dl/DownloadUtils;->deleteTrack(Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;Lcom/google/android/music/dl/DownloadOrder;)V

    goto :goto_10
.end method

.method private beforeExecute(Lcom/google/android/music/dl/DownloadTask;)V
    .registers 6
    .parameter "task"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/store/MusicContent;->DOWNLOAD_QUEUE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 181
    invoke-interface {p1}, Lcom/google/android/music/dl/DownloadTask;->getDownloadOrder()Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {v0, v1}, Lcom/google/android/music/dl/DownloadUtils;->setBitrate(Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/jumper/MusicPreferences;)V

    .line 183
    invoke-direct {p0}, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->acquireWifiLock()V

    .line 184
    return-void
.end method

.method private notifyEmptyQueue()V
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mEmptyQueueListener:Lcom/google/android/music/dl/DownloadQueueManager$OnEmptyQueueListener;

    if-eqz v0, :cond_9

    .line 204
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mEmptyQueueListener:Lcom/google/android/music/dl/DownloadQueueManager$OnEmptyQueueListener;

    invoke-interface {v0, p0}, Lcom/google/android/music/dl/DownloadQueueManager$OnEmptyQueueListener;->onEmptyQueue(Lcom/google/android/music/dl/DownloadQueueManager;)V

    .line 206
    :cond_9
    return-void
.end method

.method private declared-synchronized releaseWiFiLock()V
    .registers 2

    .prologue
    .line 317
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_d

    .line 318
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 321
    :cond_d
    monitor-exit p0

    return-void

    .line 317
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private runTask(Lcom/google/android/music/dl/DownloadTask;)V
    .registers 4
    .parameter "task"

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 167
    .local v0, success:Z
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->beforeExecute(Lcom/google/android/music/dl/DownloadTask;)V

    .line 168
    invoke-interface {p1}, Lcom/google/android/music/dl/DownloadTask;->run()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_c

    .line 170
    const/4 v0, 0x1

    .line 172
    invoke-direct {p0, p1, v0}, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->afterExecute(Lcom/google/android/music/dl/DownloadTask;Z)V

    .line 174
    return-void

    .line 172
    :catchall_c
    move-exception v1

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->afterExecute(Lcom/google/android/music/dl/DownloadTask;Z)V

    throw v1
.end method


# virtual methods
.method public cancelAll()V
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mDownloadQueue:Lcom/google/android/music/dl/DownloadQueue;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadQueue;->cancelAllTasks()V

    .line 290
    return-void
.end method

.method public download(Lcom/google/android/music/dl/DownloadOrder;)V
    .registers 8
    .parameter "order"

    .prologue
    .line 252
    if-nez p1, :cond_a

    .line 253
    const-string v1, "DownloadQueueManagerImpl"

    const-string v2, "download(): The order is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_9
    return-void

    .line 256
    :cond_a
    sget-boolean v1, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->LOGV:Z

    if-eqz v1, :cond_26

    .line 257
    const-string v1, "DownloadQueueManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_26
    new-instance v0, Lcom/google/android/music/dl/DownloadTaskImpl;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    iget-object v3, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    iget-object v5, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/dl/DownloadTaskImpl;-><init>(Landroid/content/Context;Lcom/google/android/music/dl/BufferProgress;Lcom/google/android/music/dl/cache/CacheManager;Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/NetworkMonitorServiceConnection;)V

    .line 261
    .local v0, task:Lcom/google/android/music/dl/DownloadTask;
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mDownloadQueue:Lcom/google/android/music/dl/DownloadQueue;

    invoke-virtual {v1, v0}, Lcom/google/android/music/dl/DownloadQueue;->addDownloadTask(Lcom/google/android/music/dl/DownloadTask;)Z

    .line 262
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/store/MusicContent;->DOWNLOAD_QUEUE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_9
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_15

    .line 327
    const-string v0, "DownloadQueueManagerImpl"

    const-string v1, "The wifi lock was never released... now releasing in finalizer"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_19

    .line 332
    :cond_15
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 334
    return-void

    .line 332
    :catchall_19
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getCurrentDownloads()Ljava/util/List;
    .registers 2
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
    .line 266
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mDownloadQueue:Lcom/google/android/music/dl/DownloadQueue;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadQueue;->getCurrentDownloads()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDownload(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadOrder;
    .registers 3
    .parameter "trackId"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mDownloadQueue:Lcom/google/android/music/dl/DownloadQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/music/dl/DownloadQueue;->findDownload(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v0

    return-object v0
.end method

.method public isDownloading()Z
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mDownloadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mDownloadQueue:Lcom/google/android/music/dl/DownloadQueue;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadQueue;->isDone()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public replaceCurrentStream(Lcom/google/android/music/dl/DownloadOrder;)V
    .registers 10
    .parameter "order"

    .prologue
    const/4 v7, 0x0

    .line 274
    if-nez p1, :cond_b

    .line 275
    const-string v0, "DownloadQueueManagerImpl"

    const-string v1, "replaceCurrentStream(): The order is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :goto_a
    return-void

    .line 278
    :cond_b
    sget-boolean v0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->LOGV:Z

    if-eqz v0, :cond_1f

    .line 279
    const-string v0, "DownloadQueueManagerImpl"

    const-string v1, "downloadPartial: order=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_1f
    iget-object v6, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mDownloadQueue:Lcom/google/android/music/dl/DownloadQueue;

    new-instance v0, Lcom/google/android/music/dl/DownloadTaskImpl;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    iget-object v3, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    iget-object v5, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/dl/DownloadTaskImpl;-><init>(Landroid/content/Context;Lcom/google/android/music/dl/BufferProgress;Lcom/google/android/music/dl/cache/CacheManager;Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/NetworkMonitorServiceConnection;)V

    invoke-virtual {v6, v0}, Lcom/google/android/music/dl/DownloadQueue;->replaceCurrentTask(Lcom/google/android/music/dl/DownloadTask;)V

    .line 285
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/store/MusicContent;->DOWNLOAD_QUEUE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_a
.end method

.method public setEmptyQueueListener(Lcom/google/android/music/dl/DownloadQueueManager$OnEmptyQueueListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mEmptyQueueListener:Lcom/google/android/music/dl/DownloadQueueManager$OnEmptyQueueListener;

    .line 149
    return-void
.end method

.method public shutdown()V
    .registers 3

    .prologue
    .line 216
    sget-boolean v0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->LOGV:Z

    if-eqz v0, :cond_b

    .line 217
    const-string v0, "DownloadQueueManagerImpl"

    const-string v1, "shutdown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mShutdown:Z

    .line 220
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mDownloadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 221
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 209
    sget-boolean v0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->LOGV:Z

    if-eqz v0, :cond_b

    .line 210
    const-string v0, "DownloadQueueManagerImpl"

    const-string v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_b
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mDownloadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 213
    return-void
.end method

.method public stream(Lcom/google/android/music/dl/DownloadOrder;Ljava/util/List;)V
    .registers 14
    .parameter "streamOrder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/dl/DownloadOrder;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/dl/DownloadOrder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, prefetchList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/dl/DownloadOrder;>;"
    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 224
    if-nez p1, :cond_c

    .line 225
    const-string v1, "DownloadQueueManagerImpl"

    const-string v2, "stream(): The stream order is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_b
    return-void

    .line 228
    :cond_c
    sget-boolean v1, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->LOGV:Z

    if-eqz v1, :cond_50

    .line 229
    if-eqz p2, :cond_84

    .line 230
    const-string v1, "DownloadQueueManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prefetchList.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/music/dl/DownloadOrder;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/google/android/music/dl/DownloadOrder;

    .line 232
    .local v8, orders:[Lcom/google/android/music/dl/DownloadOrder;
    const-string v1, "DownloadQueueManagerImpl"

    const-string v2, "stream: streamOrder=%s prefetchList=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v10

    invoke-static {v8}, Lcom/google/android/music/dl/DownloadOrder;->ordersToString([Lcom/google/android/music/dl/DownloadOrder;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .end local v8           #orders:[Lcom/google/android/music/dl/DownloadOrder;
    :cond_50
    :goto_50
    new-instance v0, Lcom/google/android/music/dl/DownloadTaskImpl;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    iget-object v3, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    iget-object v5, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/dl/DownloadTaskImpl;-><init>(Landroid/content/Context;Lcom/google/android/music/dl/BufferProgress;Lcom/google/android/music/dl/cache/CacheManager;Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/NetworkMonitorServiceConnection;)V

    .line 241
    .local v0, streamTask:Lcom/google/android/music/dl/DownloadTask;
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 242
    .local v9, tasks:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/dl/DownloadTask;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_67
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_94

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/dl/DownloadOrder;

    .line 243
    .local v5, order:Lcom/google/android/music/dl/DownloadOrder;
    new-instance v1, Lcom/google/android/music/dl/DownloadTaskImpl;

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    iget-object v4, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    iget-object v6, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-direct/range {v1 .. v6}, Lcom/google/android/music/dl/DownloadTaskImpl;-><init>(Landroid/content/Context;Lcom/google/android/music/dl/BufferProgress;Lcom/google/android/music/dl/cache/CacheManager;Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/NetworkMonitorServiceConnection;)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_67

    .line 235
    .end local v0           #streamTask:Lcom/google/android/music/dl/DownloadTask;
    .end local v5           #order:Lcom/google/android/music/dl/DownloadOrder;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #tasks:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/dl/DownloadTask;>;"
    :cond_84
    const-string v1, "DownloadQueueManagerImpl"

    const-string v2, "stream: streamOrder=%s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    .line 246
    .restart local v0       #streamTask:Lcom/google/android/music/dl/DownloadTask;
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v9       #tasks:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/dl/DownloadTask;>;"
    :cond_94
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mDownloadQueue:Lcom/google/android/music/dl/DownloadQueue;

    invoke-virtual {v1, v0, v9}, Lcom/google/android/music/dl/DownloadQueue;->addStreamingTask(Lcom/google/android/music/dl/DownloadTask;Ljava/util/List;)Z

    .line 248
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/store/MusicContent;->DOWNLOAD_QUEUE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto/16 :goto_b
.end method
