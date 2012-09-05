.class Lcom/google/android/music/dl/DownloadManager$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/dl/DownloadManager;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/DownloadManager;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/DownloadManager;)V
    .registers 2
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadManager$1;->this$0:Lcom/google/android/music/dl/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 146
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager$1;->this$0:Lcom/google/android/music/dl/DownloadManager;

    #getter for: Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v1}, Lcom/google/android/music/dl/DownloadManager;->access$000(Lcom/google/android/music/dl/DownloadManager;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    monitor-enter v2

    .line 147
    :try_start_7
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager$1;->this$0:Lcom/google/android/music/dl/DownloadManager;

    #getter for: Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v1}, Lcom/google/android/music/dl/DownloadManager;->access$000(Lcom/google/android/music/dl/DownloadManager;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/stream/StreamingHttpServer;

    .line 148
    .local v0, streamingServer:Lcom/google/android/music/dl/stream/StreamingHttpServer;
    if-eqz v0, :cond_22

    .line 149
    invoke-virtual {v0}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->shutdown()V

    .line 150
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager$1;->this$0:Lcom/google/android/music/dl/DownloadManager;

    #getter for: Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v1}, Lcom/google/android/music/dl/DownloadManager;->access$000(Lcom/google/android/music/dl/DownloadManager;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 152
    :cond_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_2d

    .line 154
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager$1;->this$0:Lcom/google/android/music/dl/DownloadManager;

    #getter for: Lcom/google/android/music/dl/DownloadManager;->mOrderHandlerCreator:Lcom/google/android/music/dl/OrderHandlerCreator;
    invoke-static {v1}, Lcom/google/android/music/dl/DownloadManager;->access$100(Lcom/google/android/music/dl/DownloadManager;)Lcom/google/android/music/dl/OrderHandlerCreator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/dl/OrderHandlerCreator;->onDestroy()V

    .line 155
    return-void

    .line 152
    .end local v0           #streamingServer:Lcom/google/android/music/dl/stream/StreamingHttpServer;
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method
