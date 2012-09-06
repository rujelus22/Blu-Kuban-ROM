.class Lcom/google/android/picasastore/UrlDownloader;
.super Ljava/lang/Object;
.source "UrlDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasastore/UrlDownloader$PriorityThreadFactory;,
        Lcom/google/android/picasastore/UrlDownloader$SharedInputStream;,
        Lcom/google/android/picasastore/UrlDownloader$DownloadTask;,
        Lcom/google/android/picasastore/UrlDownloader$Controller;
    }
.end annotation


# instance fields
.field private final mController:Lcom/google/android/picasastore/UrlDownloader$Controller;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/picasastore/UrlDownloader$DownloadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/picasastore/UrlDownloader$Controller;)V
    .registers 12
    .parameter "controller"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/picasastore/UrlDownloader;->mTaskMap:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/picasastore/UrlDownloader;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 65
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/google/android/picasastore/UrlDownloader;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v7, Lcom/google/android/picasastore/UrlDownloader$PriorityThreadFactory;

    const-string v8, "download-manager"

    const/16 v9, 0xa

    invoke-direct {v7, v8, v9}, Lcom/google/android/picasastore/UrlDownloader$PriorityThreadFactory;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/google/android/picasastore/UrlDownloader;->mExecutor:Ljava/util/concurrent/Executor;

    .line 85
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasastore/UrlDownloader$Controller;

    iput-object v0, p0, Lcom/google/android/picasastore/UrlDownloader;->mController:Lcom/google/android/picasastore/UrlDownloader$Controller;

    .line 86
    return-void
.end method

.method static synthetic access$000(Ljava/io/File;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-static {p0}, Lcom/google/android/picasastore/UrlDownloader;->deleteSilently(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/picasastore/UrlDownloader;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/picasastore/UrlDownloader;->mTaskMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/picasastore/UrlDownloader;)Lcom/google/android/picasastore/UrlDownloader$Controller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/picasastore/UrlDownloader;->mController:Lcom/google/android/picasastore/UrlDownloader$Controller;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/picasastore/UrlDownloader;)Ljava/util/concurrent/LinkedBlockingQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/picasastore/UrlDownloader;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method private static deleteSilently(Ljava/io/File;)V
    .registers 4
    .parameter "file"

    .prologue
    .line 218
    if-eqz p0, :cond_24

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_24

    .line 219
    const-string v0, "UrlDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot delete temp file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_24
    return-void
.end method


# virtual methods
.method public declared-synchronized openInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .parameter "downloadUrl"

    .prologue
    .line 224
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/picasastore/UrlDownloader;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;

    .line 225
    .local v0, task:Lcom/google/android/picasastore/UrlDownloader$DownloadTask;
    if-nez v0, :cond_1a

    .line 226
    new-instance v0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;

    .end local v0           #task:Lcom/google/android/picasastore/UrlDownloader$DownloadTask;
    invoke-direct {v0, p0, p1}, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;-><init>(Lcom/google/android/picasastore/UrlDownloader;Ljava/lang/String;)V

    .line 227
    .restart local v0       #task:Lcom/google/android/picasastore/UrlDownloader$DownloadTask;
    iget-object v1, p0, Lcom/google/android/picasastore/UrlDownloader;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v1, p0, Lcom/google/android/picasastore/UrlDownloader;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 230
    :cond_1a
    new-instance v1, Lcom/google/android/picasastore/UrlDownloader$SharedInputStream;

    invoke-direct {v1, p0, v0}, Lcom/google/android/picasastore/UrlDownloader$SharedInputStream;-><init>(Lcom/google/android/picasastore/UrlDownloader;Lcom/google/android/picasastore/UrlDownloader$DownloadTask;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-object v1

    .line 224
    .end local v0           #task:Lcom/google/android/picasastore/UrlDownloader$DownloadTask;
    :catchall_21
    move-exception v1

    monitor-exit p0

    throw v1
.end method
