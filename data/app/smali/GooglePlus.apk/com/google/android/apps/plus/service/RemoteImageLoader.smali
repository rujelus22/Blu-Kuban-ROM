.class public Lcom/google/android/apps/plus/service/RemoteImageLoader;
.super Ljava/lang/Object;
.source "RemoteImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/service/RemoteImageLoader$1;,
        Lcom/google/android/apps/plus/service/RemoteImageLoader$DownloadProcessor;,
        Lcom/google/android/apps/plus/service/RemoteImageLoader$LoaderOperation;
    }
.end annotation


# static fields
.field private static sDownloadRequests:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/apps/plus/service/RemoteImageLoader$LoaderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private static sExecutorService:Ljava/util/concurrent/ExecutorService;

.field private static sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

.field private static sProcessor:Lcom/google/android/apps/plus/service/RemoteImageLoader$DownloadProcessor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/apps/plus/service/RemoteImageLoader$DownloadProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/service/RemoteImageLoader$DownloadProcessor;-><init>(Lcom/google/android/apps/plus/service/RemoteImageLoader$1;)V

    sput-object v0, Lcom/google/android/apps/plus/service/RemoteImageLoader;->sProcessor:Lcom/google/android/apps/plus/service/RemoteImageLoader$DownloadProcessor;

    .line 27
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/service/RemoteImageLoader;->sDownloadRequests:Ljava/util/Stack;

    return-void
.end method

.method static synthetic access$100()Ljava/util/Stack;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/android/apps/plus/service/RemoteImageLoader;->sDownloadRequests:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/android/apps/plus/service/ImageCache;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/android/apps/plus/service/RemoteImageLoader;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    return-object v0
.end method

.method public static downloadImage(Landroid/content/Context;Lcom/google/android/apps/plus/content/ImageRequest;)V
    .registers 5
    .parameter "context"
    .parameter "request"

    .prologue
    .line 91
    invoke-static {p0}, Lcom/google/android/apps/plus/service/RemoteImageLoader;->init(Landroid/content/Context;)V

    .line 93
    sget-object v1, Lcom/google/android/apps/plus/service/RemoteImageLoader;->sDownloadRequests:Ljava/util/Stack;

    monitor-enter v1

    .line 94
    :try_start_6
    sget-object v0, Lcom/google/android/apps/plus/service/RemoteImageLoader;->sDownloadRequests:Ljava/util/Stack;

    new-instance v2, Lcom/google/android/apps/plus/service/RemoteImageLoader$LoaderOperation;

    invoke-direct {v2, p0, p1}, Lcom/google/android/apps/plus/service/RemoteImageLoader$LoaderOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/ImageRequest;)V

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_19

    .line 97
    sget-object v0, Lcom/google/android/apps/plus/service/RemoteImageLoader;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lcom/google/android/apps/plus/service/RemoteImageLoader;->sProcessor:Lcom/google/android/apps/plus/service/RemoteImageLoader$DownloadProcessor;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 98
    return-void

    .line 95
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private static declared-synchronized init(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 78
    const-class v1, Lcom/google/android/apps/plus/service/RemoteImageLoader;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/apps/plus/service/RemoteImageLoader;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_14

    .line 79
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/RemoteImageLoader;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 80
    invoke-static {p0}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/RemoteImageLoader;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    .line 82
    :cond_14
    monitor-exit v1

    return-void

    .line 78
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method
