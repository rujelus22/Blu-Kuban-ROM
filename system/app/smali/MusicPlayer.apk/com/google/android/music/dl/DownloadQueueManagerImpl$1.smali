.class Lcom/google/android/music/dl/DownloadQueueManagerImpl$1;
.super Ljava/lang/Thread;
.source "DownloadQueueManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/DownloadQueueManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/DownloadQueueManagerImpl;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/DownloadQueueManagerImpl;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl$1;->this$0:Lcom/google/android/music/dl/DownloadQueueManagerImpl;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 86
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl$1;->this$0:Lcom/google/android/music/dl/DownloadQueueManagerImpl;

    #getter for: Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mShutdown:Z
    invoke-static {v2}, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->access$000(Lcom/google/android/music/dl/DownloadQueueManagerImpl;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 89
    :try_start_8
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl$1;->this$0:Lcom/google/android/music/dl/DownloadQueueManagerImpl;

    #getter for: Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mDownloadQueue:Lcom/google/android/music/dl/DownloadQueue;
    invoke-static {v2}, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->access$100(Lcom/google/android/music/dl/DownloadQueueManagerImpl;)Lcom/google/android/music/dl/DownloadQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadQueue;->clearCurrentTask()V

    .line 92
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 95
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl$1;->this$0:Lcom/google/android/music/dl/DownloadQueueManagerImpl;

    #getter for: Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mDownloadQueue:Lcom/google/android/music/dl/DownloadQueue;
    invoke-static {v2}, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->access$100(Lcom/google/android/music/dl/DownloadQueueManagerImpl;)Lcom/google/android/music/dl/DownloadQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 96
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl$1;->this$0:Lcom/google/android/music/dl/DownloadQueueManagerImpl;

    #calls: Lcom/google/android/music/dl/DownloadQueueManagerImpl;->notifyEmptyQueue()V
    invoke-static {v2}, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->access$200(Lcom/google/android/music/dl/DownloadQueueManagerImpl;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_25} :catch_88

    .line 100
    :cond_25
    const/4 v1, 0x0

    .line 102
    .local v1, task:Lcom/google/android/music/dl/DownloadTask;
    :try_start_26
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl$1;->this$0:Lcom/google/android/music/dl/DownloadQueueManagerImpl;

    #getter for: Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mDownloadQueue:Lcom/google/android/music/dl/DownloadQueue;
    invoke-static {v2}, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->access$100(Lcom/google/android/music/dl/DownloadQueueManagerImpl;)Lcom/google/android/music/dl/DownloadQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadQueue;->getNextTask()Lcom/google/android/music/dl/DownloadTask;
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_2f} :catch_b9
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_2f} :catch_88

    move-result-object v1

    .line 107
    :goto_30
    :try_start_30
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl$1;->this$0:Lcom/google/android/music/dl/DownloadQueueManagerImpl;

    #getter for: Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mShutdown:Z
    invoke-static {v2}, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->access$000(Lcom/google/android/music/dl/DownloadQueueManagerImpl;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 108
    invoke-static {}, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->access$300()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 109
    const-string v2, "DownloadQueueManagerImpl"

    const-string v3, "Shutting down"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_45} :catch_88

    .line 140
    .end local v1           #task:Lcom/google/android/music/dl/DownloadTask;
    :cond_45
    :goto_45
    invoke-static {}, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->access$300()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 141
    const-string v2, "DownloadQueueManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download thread finished: mShutdown="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl$1;->this$0:Lcom/google/android/music/dl/DownloadQueueManagerImpl;

    #getter for: Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mShutdown:Z
    invoke-static {v4}, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->access$000(Lcom/google/android/music/dl/DownloadQueueManagerImpl;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_69
    return-void

    .line 115
    .restart local v1       #task:Lcom/google/android/music/dl/DownloadTask;
    :cond_6a
    if-eqz v1, :cond_0

    .line 120
    :try_start_6c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 122
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl$1;->this$0:Lcom/google/android/music/dl/DownloadQueueManagerImpl;

    #getter for: Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mShutdown:Z
    invoke-static {v2}, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->access$000(Lcom/google/android/music/dl/DownloadQueueManagerImpl;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 123
    invoke-static {}, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->access$300()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 124
    const-string v2, "DownloadQueueManagerImpl"

    const-string v3, "We have a task but need to shutdown"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_87} :catch_88

    goto :goto_45

    .line 136
    .end local v1           #task:Lcom/google/android/music/dl/DownloadTask;
    :catch_88
    move-exception v0

    .line 137
    .local v0, t:Ljava/lang/Throwable;
    const-string v2, "DownloadQueueManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 128
    .end local v0           #t:Ljava/lang/Throwable;
    .restart local v1       #task:Lcom/google/android/music/dl/DownloadTask;
    :cond_a7
    :try_start_a7
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl$1;->this$0:Lcom/google/android/music/dl/DownloadQueueManagerImpl;

    #getter for: Lcom/google/android/music/dl/DownloadQueueManagerImpl;->mDownloadQueue:Lcom/google/android/music/dl/DownloadQueue;
    invoke-static {v2}, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->access$100(Lcom/google/android/music/dl/DownloadQueueManagerImpl;)Lcom/google/android/music/dl/DownloadQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadQueue;->clearCurrentTask()V

    goto/16 :goto_0

    .line 134
    :cond_b2
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadQueueManagerImpl$1;->this$0:Lcom/google/android/music/dl/DownloadQueueManagerImpl;

    #calls: Lcom/google/android/music/dl/DownloadQueueManagerImpl;->runTask(Lcom/google/android/music/dl/DownloadTask;)V
    invoke-static {v2, v1}, Lcom/google/android/music/dl/DownloadQueueManagerImpl;->access$400(Lcom/google/android/music/dl/DownloadQueueManagerImpl;Lcom/google/android/music/dl/DownloadTask;)V
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_a7 .. :try_end_b7} :catch_88

    goto/16 :goto_0

    .line 103
    :catch_b9
    move-exception v2

    goto/16 :goto_30
.end method
