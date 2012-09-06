.class public Lcom/google/android/apps/plus/service/ImageDownloader;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/service/ImageDownloader$1;,
        Lcom/google/android/apps/plus/service/ImageDownloader$DownloadProcessor;
    }
.end annotation


# static fields
.field private static sAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private static sContext:Landroid/content/Context;

.field private static sDownloadRequests:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/apps/plus/content/MediaImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static sExecutorService:Ljava/util/concurrent/ExecutorService;

.field private static sProcessor:Lcom/google/android/apps/plus/service/ImageDownloader$DownloadProcessor;

.field private static sQueuedRequest:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/apps/plus/content/MediaImageRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 29
    new-instance v0, Lcom/google/android/apps/plus/service/ImageDownloader$DownloadProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/service/ImageDownloader$DownloadProcessor;-><init>(Lcom/google/android/apps/plus/service/ImageDownloader$1;)V

    sput-object v0, Lcom/google/android/apps/plus/service/ImageDownloader;->sProcessor:Lcom/google/android/apps/plus/service/ImageDownloader$DownloadProcessor;

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/service/ImageDownloader;->sQueuedRequest:Ljava/util/HashSet;

    .line 31
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/service/ImageDownloader;->sDownloadRequests:Ljava/util/Stack;

    return-void
.end method

.method static synthetic access$100()Ljava/util/Stack;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/android/apps/plus/service/ImageDownloader;->sDownloadRequests:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/android/apps/plus/service/ImageDownloader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/android/apps/plus/service/ImageDownloader;->sAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/HashSet;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/android/apps/plus/service/ImageDownloader;->sQueuedRequest:Ljava/util/HashSet;

    return-object v0
.end method

.method public static downloadImage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/content/MediaImageRequest;)V
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "request"

    .prologue
    .line 79
    invoke-static {p0}, Lcom/google/android/apps/plus/service/ImageDownloader;->init(Landroid/content/Context;)V

    .line 81
    sget-object v1, Lcom/google/android/apps/plus/service/ImageDownloader;->sDownloadRequests:Ljava/util/Stack;

    monitor-enter v1

    .line 82
    :try_start_6
    sget-object v0, Lcom/google/android/apps/plus/service/ImageDownloader;->sAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/content/EsAccount;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 83
    sget-object v0, Lcom/google/android/apps/plus/service/ImageDownloader;->sDownloadRequests:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 86
    :cond_13
    sput-object p1, Lcom/google/android/apps/plus/service/ImageDownloader;->sAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 88
    sget-object v0, Lcom/google/android/apps/plus/service/ImageDownloader;->sQueuedRequest:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 89
    sget-object v0, Lcom/google/android/apps/plus/service/ImageDownloader;->sQueuedRequest:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/google/android/apps/plus/service/ImageDownloader;->sDownloadRequests:Ljava/util/Stack;

    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_30

    .line 94
    sget-object v0, Lcom/google/android/apps/plus/service/ImageDownloader;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lcom/google/android/apps/plus/service/ImageDownloader;->sProcessor:Lcom/google/android/apps/plus/service/ImageDownloader$DownloadProcessor;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 95
    return-void

    .line 92
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method private static declared-synchronized init(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 63
    const-class v1, Lcom/google/android/apps/plus/service/ImageDownloader;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/apps/plus/service/ImageDownloader;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_14

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/ImageDownloader;->sContext:Landroid/content/Context;

    .line 66
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/ImageDownloader;->sExecutorService:Ljava/util/concurrent/ExecutorService;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    .line 68
    :cond_14
    monitor-exit v1

    return-void

    .line 63
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method
