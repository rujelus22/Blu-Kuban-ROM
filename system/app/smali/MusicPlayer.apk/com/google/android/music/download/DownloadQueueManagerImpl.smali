.class public Lcom/google/android/music/download/DownloadQueueManagerImpl;
.super Lcom/google/android/music/download/IDownloadQueueManager$Stub;
.source "DownloadQueueManagerImpl.java"


# static fields
.field private static final LOGV:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDownloadQueue:Lcom/google/android/music/download/DownloadQueue;

.field private final mDownloadThread:Ljava/lang/Thread;

.field private volatile mShutdown:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-string v0, "DownloadQueueManagerImpl"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/download/DownloadQueueManagerImpl;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/android/music/download/IDownloadQueueManager$Stub;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/download/DownloadQueueManagerImpl;->mShutdown:Z

    .line 25
    new-instance v0, Lcom/google/android/music/download/DownloadQueueManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/download/DownloadQueueManagerImpl$1;-><init>(Lcom/google/android/music/download/DownloadQueueManagerImpl;)V

    iput-object v0, p0, Lcom/google/android/music/download/DownloadQueueManagerImpl;->mDownloadThread:Ljava/lang/Thread;

    .line 88
    iput-object p1, p0, Lcom/google/android/music/download/DownloadQueueManagerImpl;->mContext:Landroid/content/Context;

    .line 89
    new-instance v0, Lcom/google/android/music/download/DownloadQueue;

    iget-object v1, p0, Lcom/google/android/music/download/DownloadQueueManagerImpl;->mDownloadThread:Ljava/lang/Thread;

    invoke-direct {v0, v1}, Lcom/google/android/music/download/DownloadQueue;-><init>(Ljava/lang/Thread;)V

    iput-object v0, p0, Lcom/google/android/music/download/DownloadQueueManagerImpl;->mDownloadQueue:Lcom/google/android/music/download/DownloadQueue;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/download/DownloadQueueManagerImpl;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/android/music/download/DownloadQueueManagerImpl;->mShutdown:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/music/download/DownloadQueueManagerImpl;)Lcom/google/android/music/download/DownloadQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/music/download/DownloadQueueManagerImpl;->mDownloadQueue:Lcom/google/android/music/download/DownloadQueue;

    return-object v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/google/android/music/download/DownloadQueueManagerImpl;->LOGV:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/music/download/DownloadQueueManagerImpl;Lcom/google/android/music/download/DownloadTask;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/music/download/DownloadQueueManagerImpl;->runTask(Lcom/google/android/music/download/DownloadTask;)V

    return-void
.end method

.method private afterExecute(Lcom/google/android/music/download/DownloadTask;Z)V
    .registers 3
    .parameter "task"
    .parameter "success"

    .prologue
    .line 129
    return-void
.end method

.method private beforeExecute(Lcom/google/android/music/download/DownloadTask;)V
    .registers 2
    .parameter "task"

    .prologue
    .line 125
    return-void
.end method

.method private runTask(Lcom/google/android/music/download/DownloadTask;)V
    .registers 4
    .parameter "task"

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 115
    .local v0, success:Z
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/music/download/DownloadQueueManagerImpl;->beforeExecute(Lcom/google/android/music/download/DownloadTask;)V

    .line 116
    invoke-interface {p1}, Lcom/google/android/music/download/DownloadTask;->run()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_c

    .line 117
    const/4 v0, 0x1

    .line 119
    invoke-direct {p0, p1, v0}, Lcom/google/android/music/download/DownloadQueueManagerImpl;->afterExecute(Lcom/google/android/music/download/DownloadTask;Z)V

    .line 121
    return-void

    .line 119
    :catchall_c
    move-exception v1

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/download/DownloadQueueManagerImpl;->afterExecute(Lcom/google/android/music/download/DownloadTask;Z)V

    throw v1
.end method


# virtual methods
.method public download(Ljava/util/List;Lcom/google/android/music/download/IDownloadProgressListener;I)V
    .registers 4
    .parameter
    .parameter "progressListener"
    .parameter "purgePolicy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/download/DownloadRequest;",
            ">;",
            "Lcom/google/android/music/download/IDownloadProgressListener;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 95
    .local p1, requests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/download/DownloadRequest;>;"
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 105
    sget-boolean v0, Lcom/google/android/music/download/DownloadQueueManagerImpl;->LOGV:Z

    if-eqz v0, :cond_b

    .line 106
    const-string v0, "DownloadQueueManagerImpl"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/download/DownloadQueueManagerImpl;->mShutdown:Z

    .line 109
    iget-object v0, p0, Lcom/google/android/music/download/DownloadQueueManagerImpl;->mDownloadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 110
    return-void
.end method
