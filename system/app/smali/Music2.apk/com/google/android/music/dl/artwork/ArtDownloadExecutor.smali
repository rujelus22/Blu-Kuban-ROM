.class public Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "ArtDownloadExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$DownloadQueueCompleteListener;,
        Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;
    }
.end annotation


# static fields
.field private static final LOGV:Z

.field private static final sRejectionHandler:Ljava/util/concurrent/RejectedExecutionHandler;


# instance fields
.field private mCacheDir:Ljava/io/File;

.field private final mContext:Landroid/content/Context;

.field private mCurrentDownloads:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloadQueueCompleteListener:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$DownloadQueueCompleteListener;

.field private mFutureDownloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningThreads:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-string v0, "ArtDownloadExecutor"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->LOGV:Z

    .line 232
    new-instance v0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$2;

    invoke-direct {v0}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$2;-><init>()V

    sput-object v0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->sRejectionHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$DownloadQueueCompleteListener;)V
    .registers 13
    .parameter "context"
    .parameter "downloadQueueCompleteListener"

    .prologue
    const/4 v1, 0x0

    .line 56
    const/4 v2, 0x5

    const-wide/16 v3, 0x3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v7, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->sRejectionHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mFutureDownloads:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/HashSet;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    .line 48
    iput v1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mRunningThreads:I

    .line 58
    iput-object p1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mDownloadQueueCompleteListener:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$DownloadQueueCompleteListener;

    .line 61
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v8

    .line 62
    .local v8, cacheRootDir:Ljava/io/File;
    if-nez v8, :cond_38

    .line 63
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    .line 65
    :cond_38
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "artwork"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCacheDir:Ljava/io/File;

    .line 66
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_71

    .line 67
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 69
    :try_start_65
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCacheDir:Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_71} :catch_72

    .line 74
    :cond_71
    :goto_71
    return-void

    .line 70
    :catch_72
    move-exception v9

    .line 71
    .local v9, e:Ljava/io/IOException;
    const-string v0, "ArtDownloadExecutor"

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_71
.end method

.method static synthetic access$300(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;)Ljava/io/File;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCacheDir:Ljava/io/File;

    return-object v0
.end method

.method private declared-synchronized afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;Z)V
    .registers 10
    .parameter "r"
    .parameter "t"
    .parameter "isImmediateDownload"

    .prologue
    .line 99
    monitor-enter p0

    :try_start_1
    iget v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mRunningThreads:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mRunningThreads:I

    .line 100
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;

    move-object v1, v0

    .line 102
    .local v1, downloadTask:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;
    if-eqz p2, :cond_6a

    .line 103
    sget-boolean v2, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->LOGV:Z

    if-eqz v2, :cond_2d

    const-string v2, "ArtDownloadExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error running download thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    :cond_2d
    #getter for: Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mLocalLocation:Ljava/io/File;
    invoke-static {v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->access$000(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 109
    :cond_34
    :goto_34
    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    #getter for: Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mAlbumId:Ljava/lang/Long;
    invoke-static {v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->access$200(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 110
    if-nez p3, :cond_4c

    .line 112
    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mContext:Landroid/content/Context;

    #getter for: Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mAlbumId:Ljava/lang/Long;
    invoke-static {v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->access$200(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/music/utils/AlbumArtUtils;->notifyAlbumArtChanged(Landroid/content/Context;J)V

    .line 114
    :cond_4c
    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_68

    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mFutureDownloads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_68

    if-nez p2, :cond_68

    .line 120
    sget-object v2, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v3, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$1;

    invoke-direct {v3, p0}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$1;-><init>(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;)V

    invoke-static {v2, v3}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V
    :try_end_68
    .catchall {:try_start_1 .. :try_end_68} :catchall_8c

    .line 127
    :cond_68
    monitor-exit p0

    return-void

    .line 105
    :cond_6a
    :try_start_6a
    #getter for: Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mArtworkExists:Z
    invoke-static {v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->access$100(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->wasDownloadSuccessful()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 106
    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v2

    #getter for: Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mAlbumId:Ljava/lang/Long;
    invoke-static {v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->access$200(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    #getter for: Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mLocalLocation:Ljava/io/File;
    invoke-static {v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->access$000(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/music/store/Store;->saveArtwork(JLjava/io/File;)V
    :try_end_8b
    .catchall {:try_start_6a .. :try_end_8b} :catchall_8c

    goto :goto_34

    .line 99
    .end local v1           #downloadTask:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;
    :catchall_8c
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public addDownload(Ljava/lang/Long;)V
    .registers 3
    .parameter "albumId"

    .prologue
    .line 83
    monitor-enter p0

    .line 84
    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mFutureDownloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 85
    :cond_11
    monitor-exit p0

    .line 91
    :goto_12
    return-void

    .line 88
    :cond_13
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mFutureDownloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_22

    .line 90
    new-instance v0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;

    invoke-direct {v0, p0, p1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;-><init>(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;Ljava/lang/Long;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_12

    .line 89
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method

.method protected declared-synchronized afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "r"
    .parameter "t"

    .prologue
    .line 95
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 96
    monitor-exit p0

    return-void

    .line 95
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .registers 7
    .parameter "t"
    .parameter "r"

    .prologue
    .line 131
    monitor-enter p0

    :try_start_1
    move-object v0, p2

    check-cast v0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;

    move-object v1, v0

    .line 133
    .local v1, downloadTask:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;
    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    #getter for: Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mAlbumId:Ljava/lang/Long;
    invoke-static {v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->access$200(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mFutureDownloads:Ljava/util/List;

    #getter for: Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mAlbumId:Ljava/lang/Long;
    invoke-static {v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->access$200(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 135
    iget v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mRunningThreads:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mRunningThreads:I
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 136
    monitor-exit p0

    return-void

    .line 131
    .end local v1           #downloadTask:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;
    :catchall_1f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getCurrentNumberOfDownloads()I
    .registers 2

    .prologue
    .line 139
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected notifyQueueComplete()V
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mDownloadQueueCompleteListener:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$DownloadQueueCompleteListener;

    invoke-interface {v0}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$DownloadQueueCompleteListener;->onDownloadQueueCompleted()V

    .line 144
    return-void
.end method
