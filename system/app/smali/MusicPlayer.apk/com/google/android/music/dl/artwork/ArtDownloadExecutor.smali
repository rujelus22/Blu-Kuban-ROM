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

.field private mIsExternalCacheDir:Z

.field private mRunningThreads:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-string v0, "ArtDownloadExecutor"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->LOGV:Z

    .line 270
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
    const/4 v1, 0x5

    const/4 v9, 0x0

    .line 62
    const-wide/16 v3, 0x3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v7, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->sRejectionHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v0, p0

    move v2, v1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mFutureDownloads:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    .line 52
    iput v9, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mRunningThreads:I

    .line 64
    iput-object p1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mDownloadQueueCompleteListener:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$DownloadQueueCompleteListener;

    .line 67
    invoke-static {}, Lcom/google/android/music/utils/PostFroyoUtils$EnvironmentCompat;->isExternalStorageEmulated()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 68
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/music/dl/cache/CacheUtils;->getExternalArtworkCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCacheDir:Ljava/io/File;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mIsExternalCacheDir:Z

    .line 71
    :cond_3c
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCacheDir:Ljava/io/File;

    if-nez v0, :cond_4a

    .line 72
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/music/dl/cache/CacheUtils;->getInternalArtworkCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCacheDir:Ljava/io/File;

    .line 73
    iput-boolean v9, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mIsExternalCacheDir:Z

    .line 76
    :cond_4a
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_63

    .line 77
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 79
    :try_start_57
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCacheDir:Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_63} :catch_64

    .line 84
    :cond_63
    :goto_63
    return-void

    .line 80
    :catch_64
    move-exception v8

    .line 81
    .local v8, e:Ljava/io/IOException;
    const-string v0, "ArtDownloadExecutor"

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_63
.end method

.method static synthetic access$400(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;)Ljava/io/File;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCacheDir:Ljava/io/File;

    return-object v0
.end method

.method private declared-synchronized afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;Z)V
    .registers 11
    .parameter "r"
    .parameter "t"
    .parameter "isImmediateDownload"

    .prologue
    .line 109
    monitor-enter p0

    :try_start_1
    iget v3, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mRunningThreads:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mRunningThreads:I

    .line 110
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;

    move-object v1, v0

    .line 112
    .local v1, downloadTask:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;
    if-eqz p2, :cond_76

    .line 113
    sget-boolean v3, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->LOGV:Z

    if-eqz v3, :cond_2d

    const-string v3, "ArtDownloadExecutor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error running download thread: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    :cond_2d
    #getter for: Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mLocalLocationFullPath:Ljava/io/File;
    invoke-static {v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->access$000(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_3a

    .line 115
    #getter for: Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mLocalLocationFullPath:Ljava/io/File;
    invoke-static {v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->access$000(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 126
    :cond_3a
    :goto_3a
    iget-object v3, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    #getter for: Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mAlbumId:Ljava/lang/Long;
    invoke-static {v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->access$200(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 127
    if-nez p3, :cond_52

    .line 128
    iget-object v3, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mContext:Landroid/content/Context;

    #getter for: Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mAlbumId:Ljava/lang/Long;
    invoke-static {v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->access$200(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->notifyAlbumArtChanged(Landroid/content/Context;J)V

    .line 130
    :cond_52
    iget-object v3, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_74

    iget-object v3, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mFutureDownloads:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_74

    if-nez p2, :cond_74

    invoke-virtual {v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->wasDownloadSuccessful()Z

    move-result v3

    if-eqz v3, :cond_74

    .line 138
    sget-object v3, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v4, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$1;

    invoke-direct {v4, p0}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$1;-><init>(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;)V

    invoke-static {v3, v4}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V
    :try_end_74
    .catchall {:try_start_1 .. :try_end_74} :catchall_ac

    .line 144
    :cond_74
    monitor-exit p0

    return-void

    .line 117
    :cond_76
    :try_start_76
    #getter for: Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mArtworkExists:Z
    invoke-static {v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->access$100(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual {v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->wasDownloadSuccessful()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 119
    iget-boolean v3, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mIsExternalCacheDir:Z

    if-eqz v3, :cond_af

    const/4 v2, 0x2

    .line 121
    .local v2, storageType:I
    :goto_87
    iget-object v3, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v3

    #getter for: Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mAlbumId:Ljava/lang/Long;
    invoke-static {v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->access$200(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    #getter for: Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mLocalLocationRelativePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->access$300(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/google/android/music/store/Store;->saveArtwork(JLjava/lang/String;I)V

    .line 123
    #getter for: Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mAlbumId:Ljava/lang/Long;
    invoke-static {v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->access$200(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    #getter for: Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mLocalLocationFullPath:Ljava/io/File;
    invoke-static {v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->access$000(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Ljava/io/File;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->notifyArtworkDownload(JLjava/io/File;)V
    :try_end_ab
    .catchall {:try_start_76 .. :try_end_ab} :catchall_ac

    goto :goto_3a

    .line 109
    .end local v1           #downloadTask:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;
    .end local v2           #storageType:I
    :catchall_ac
    move-exception v3

    monitor-exit p0

    throw v3

    .line 119
    .restart local v1       #downloadTask:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;
    :cond_af
    const/4 v2, 0x1

    goto :goto_87
.end method

.method private notifyAlbumArtChanged(Landroid/content/Context;J)V
    .registers 6
    .parameter "context"
    .parameter "albumId"

    .prologue
    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.music.AlbumArtChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/store/MusicContent$Albums;->getAlbumsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 149
    const-string v1, "albumId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 150
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 151
    return-void
.end method

.method private notifyArtworkDownload(JLjava/io/File;)V
    .registers 5
    .parameter "albumId"
    .parameter "localLocation"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mDownloadQueueCompleteListener:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$DownloadQueueCompleteListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$DownloadQueueCompleteListener;->onDownloadArtworkFile(JLjava/io/File;)V

    .line 176
    return-void
.end method


# virtual methods
.method public addDownload(Ljava/lang/Long;)V
    .registers 3
    .parameter "albumId"

    .prologue
    .line 93
    monitor-enter p0

    .line 94
    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mFutureDownloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 95
    :cond_11
    monitor-exit p0

    .line 101
    :goto_12
    return-void

    .line 98
    :cond_13
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mFutureDownloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_22

    .line 100
    new-instance v0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;

    invoke-direct {v0, p0, p1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;-><init>(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;Ljava/lang/Long;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_12

    .line 99
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
    .line 105
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 106
    monitor-exit p0

    return-void

    .line 105
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
    .line 155
    monitor-enter p0

    :try_start_1
    move-object v0, p2

    check-cast v0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;

    move-object v1, v0

    .line 157
    .local v1, downloadTask:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;
    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    #getter for: Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mAlbumId:Ljava/lang/Long;
    invoke-static {v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->access$200(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mFutureDownloads:Ljava/util/List;

    #getter for: Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mAlbumId:Ljava/lang/Long;
    invoke-static {v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->access$200(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 159
    iget v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mRunningThreads:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mRunningThreads:I
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 164
    monitor-exit p0

    return-void

    .line 155
    .end local v1           #downloadTask:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;
    :catchall_1f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getCurrentNumberOfDownloads()I
    .registers 2

    .prologue
    .line 167
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
    .line 171
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mDownloadQueueCompleteListener:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$DownloadQueueCompleteListener;

    invoke-interface {v0}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$DownloadQueueCompleteListener;->onDownloadQueueCompleted()V

    .line 172
    return-void
.end method
