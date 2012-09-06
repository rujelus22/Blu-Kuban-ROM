.class Lcom/google/android/music/download/DownloadQueueManagerImpl$1;
.super Ljava/lang/Thread;
.source "DownloadQueueManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/download/DownloadQueueManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/download/DownloadQueueManagerImpl;


# direct methods
.method constructor <init>(Lcom/google/android/music/download/DownloadQueueManagerImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/google/android/music/download/DownloadQueueManagerImpl$1;->this$0:Lcom/google/android/music/download/DownloadQueueManagerImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 28
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/google/android/music/download/DownloadQueueManagerImpl$1;->this$0:Lcom/google/android/music/download/DownloadQueueManagerImpl;

    #getter for: Lcom/google/android/music/download/DownloadQueueManagerImpl;->mShutdown:Z
    invoke-static {v3}, Lcom/google/android/music/download/DownloadQueueManagerImpl;->access$000(Lcom/google/android/music/download/DownloadQueueManagerImpl;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 31
    :try_start_8
    iget-object v3, p0, Lcom/google/android/music/download/DownloadQueueManagerImpl$1;->this$0:Lcom/google/android/music/download/DownloadQueueManagerImpl;

    #getter for: Lcom/google/android/music/download/DownloadQueueManagerImpl;->mDownloadQueue:Lcom/google/android/music/download/DownloadQueue;
    invoke-static {v3}, Lcom/google/android/music/download/DownloadQueueManagerImpl;->access$100(Lcom/google/android/music/download/DownloadQueueManagerImpl;)Lcom/google/android/music/download/DownloadQueue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/download/DownloadQueue;->clearCurrentTask()V

    .line 34
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_14} :catch_68

    .line 37
    const/4 v2, 0x0

    .line 39
    .local v2, task:Lcom/google/android/music/download/DownloadTask;
    :try_start_15
    iget-object v3, p0, Lcom/google/android/music/download/DownloadQueueManagerImpl$1;->this$0:Lcom/google/android/music/download/DownloadQueueManagerImpl;

    #getter for: Lcom/google/android/music/download/DownloadQueueManagerImpl;->mDownloadQueue:Lcom/google/android/music/download/DownloadQueue;
    invoke-static {v3}, Lcom/google/android/music/download/DownloadQueueManagerImpl;->access$100(Lcom/google/android/music/download/DownloadQueueManagerImpl;)Lcom/google/android/music/download/DownloadQueue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/download/DownloadQueue;->getNextTask()Lcom/google/android/music/download/DownloadTask;
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_1e} :catch_59
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1e} :catch_68

    move-result-object v2

    .line 47
    :cond_1f
    :goto_1f
    :try_start_1f
    iget-object v3, p0, Lcom/google/android/music/download/DownloadQueueManagerImpl$1;->this$0:Lcom/google/android/music/download/DownloadQueueManagerImpl;

    #getter for: Lcom/google/android/music/download/DownloadQueueManagerImpl;->mShutdown:Z
    invoke-static {v3}, Lcom/google/android/music/download/DownloadQueueManagerImpl;->access$000(Lcom/google/android/music/download/DownloadQueueManagerImpl;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 48
    invoke-static {}, Lcom/google/android/music/download/DownloadQueueManagerImpl;->access$200()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 49
    const-string v3, "DownloadQueueManagerImpl"

    const-string v4, "Shutting down"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_34} :catch_68

    .line 80
    .end local v2           #task:Lcom/google/android/music/download/DownloadTask;
    :cond_34
    :goto_34
    invoke-static {}, Lcom/google/android/music/download/DownloadQueueManagerImpl;->access$200()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 81
    const-string v3, "DownloadQueueManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Download thread finished: mShutdown="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/download/DownloadQueueManagerImpl$1;->this$0:Lcom/google/android/music/download/DownloadQueueManagerImpl;

    #getter for: Lcom/google/android/music/download/DownloadQueueManagerImpl;->mShutdown:Z
    invoke-static {v5}, Lcom/google/android/music/download/DownloadQueueManagerImpl;->access$000(Lcom/google/android/music/download/DownloadQueueManagerImpl;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_58
    return-void

    .line 40
    .restart local v2       #task:Lcom/google/android/music/download/DownloadTask;
    :catch_59
    move-exception v0

    .line 41
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_5a
    invoke-static {}, Lcom/google/android/music/download/DownloadQueueManagerImpl;->access$200()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 42
    const-string v3, "DownloadQueueManagerImpl"

    const-string v4, "Interrupted:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_67} :catch_68

    goto :goto_1f

    .line 76
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v2           #task:Lcom/google/android/music/download/DownloadTask;
    :catch_68
    move-exception v1

    .line 77
    .local v1, t:Ljava/lang/Throwable;
    const-string v3, "DownloadQueueManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 55
    .end local v1           #t:Ljava/lang/Throwable;
    .restart local v2       #task:Lcom/google/android/music/download/DownloadTask;
    :cond_87
    if-eqz v2, :cond_0

    .line 60
    :try_start_89
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 62
    iget-object v3, p0, Lcom/google/android/music/download/DownloadQueueManagerImpl$1;->this$0:Lcom/google/android/music/download/DownloadQueueManagerImpl;

    #getter for: Lcom/google/android/music/download/DownloadQueueManagerImpl;->mShutdown:Z
    invoke-static {v3}, Lcom/google/android/music/download/DownloadQueueManagerImpl;->access$000(Lcom/google/android/music/download/DownloadQueueManagerImpl;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 63
    invoke-static {}, Lcom/google/android/music/download/DownloadQueueManagerImpl;->access$200()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 64
    const-string v3, "DownloadQueueManagerImpl"

    const-string v4, "We have a task but need to shutdown"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 68
    :cond_a5
    iget-object v3, p0, Lcom/google/android/music/download/DownloadQueueManagerImpl$1;->this$0:Lcom/google/android/music/download/DownloadQueueManagerImpl;

    #getter for: Lcom/google/android/music/download/DownloadQueueManagerImpl;->mDownloadQueue:Lcom/google/android/music/download/DownloadQueue;
    invoke-static {v3}, Lcom/google/android/music/download/DownloadQueueManagerImpl;->access$100(Lcom/google/android/music/download/DownloadQueueManagerImpl;)Lcom/google/android/music/download/DownloadQueue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/download/DownloadQueue;->clearCurrentTask()V

    goto/16 :goto_0

    .line 74
    :cond_b0
    iget-object v3, p0, Lcom/google/android/music/download/DownloadQueueManagerImpl$1;->this$0:Lcom/google/android/music/download/DownloadQueueManagerImpl;

    #calls: Lcom/google/android/music/download/DownloadQueueManagerImpl;->runTask(Lcom/google/android/music/download/DownloadTask;)V
    invoke-static {v3, v2}, Lcom/google/android/music/download/DownloadQueueManagerImpl;->access$300(Lcom/google/android/music/download/DownloadQueueManagerImpl;Lcom/google/android/music/download/DownloadTask;)V
    :try_end_b5
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_b5} :catch_68

    goto/16 :goto_0
.end method
