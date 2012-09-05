.class final Lcom/google/android/music/dl/DownloadManager$5;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/dl/DownloadManager;->updateDownloadQueue(Landroid/content/Context;Lcom/google/android/music/dl/DownloadManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$downloadManager:Lcom/google/android/music/dl/DownloadManager;

.field final synthetic val$serviceToken:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/DownloadManager;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 932
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadManager$5;->val$downloadManager:Lcom/google/android/music/dl/DownloadManager;

    iput-object p2, p0, Lcom/google/android/music/dl/DownloadManager$5;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/music/dl/DownloadManager$5;->val$serviceToken:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 935
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 937
    const-class v1, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 938
    invoke-static {p2}, Lcom/google/android/music/IMusicPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/IMusicPlaybackService;

    move-result-object v0

    .line 941
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v2, Lcom/google/android/music/dl/DownloadManager$5$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/music/dl/DownloadManager$5$1;-><init>(Lcom/google/android/music/dl/DownloadManager$5;Lcom/google/android/music/IMusicPlaybackService;)V

    invoke-static {v1, v2}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsyncWithCallback(Lcom/google/android/music/Worker;Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 1010
    :goto_1e
    return-void

    .line 1008
    :cond_1f
    const-string v0, "MusicDL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown connection to class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "componentName"

    .prologue
    .line 1013
    return-void
.end method
