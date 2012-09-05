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
.field private static sDownloadRequests:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/apps/plus/api/DownloadImageOperation;",
            ">;"
        }
    .end annotation
.end field

.field private static sExecutorService:Ljava/util/concurrent/ExecutorService;

.field private static sMainThreadHandler:Landroid/os/Handler;

.field private static sProcessor:Lcom/google/android/apps/plus/service/ImageDownloader$DownloadProcessor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 60
    new-instance v0, Lcom/google/android/apps/plus/service/ImageDownloader$DownloadProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/service/ImageDownloader$DownloadProcessor;-><init>(Lcom/google/android/apps/plus/service/ImageDownloader$1;)V

    sput-object v0, Lcom/google/android/apps/plus/service/ImageDownloader;->sProcessor:Lcom/google/android/apps/plus/service/ImageDownloader$DownloadProcessor;

    .line 61
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/service/ImageDownloader;->sDownloadRequests:Ljava/util/Stack;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method static synthetic access$000()Ljava/util/Stack;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/android/apps/plus/service/ImageDownloader;->sDownloadRequests:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/android/apps/plus/service/ImageDownloader;->sMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static downloadImage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "url"
    .parameter "type"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v7, 0x0

    .line 86
    invoke-static {}, Lcom/google/android/apps/plus/service/ImageDownloader;->init()V

    .line 88
    new-instance v0, Lcom/google/android/apps/plus/api/DownloadImageOperation;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p5

    move-object v6, p3

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/plus/api/DownloadImageOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;IILjava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 90
    .local v0, op:Lcom/google/android/apps/plus/api/DownloadImageOperation;
    sget-object v2, Lcom/google/android/apps/plus/service/ImageDownloader;->sDownloadRequests:Ljava/util/Stack;

    monitor-enter v2

    .line 91
    :try_start_13
    sget-object v1, Lcom/google/android/apps/plus/service/ImageDownloader;->sDownloadRequests:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_21

    .line 94
    sget-object v1, Lcom/google/android/apps/plus/service/ImageDownloader;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    sget-object v2, Lcom/google/android/apps/plus/service/ImageDownloader;->sProcessor:Lcom/google/android/apps/plus/service/ImageDownloader$DownloadProcessor;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 95
    return-void

    .line 92
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private static declared-synchronized init()V
    .registers 3

    .prologue
    .line 66
    const-class v1, Lcom/google/android/apps/plus/service/ImageDownloader;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/apps/plus/service/ImageDownloader;->sExecutorService:Ljava/util/concurrent/ExecutorService;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1c

    if-eqz v0, :cond_9

    .line 72
    :goto_7
    monitor-exit v1

    return-void

    .line 70
    :cond_9
    const/4 v0, 0x2

    :try_start_a
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/ImageDownloader;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/apps/plus/service/ImageDownloader;->sMainThreadHandler:Landroid/os/Handler;
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_1c

    goto :goto_7

    .line 66
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method
