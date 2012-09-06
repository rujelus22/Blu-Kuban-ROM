.class public Lcom/google/android/music/download/DownloadQueue;
.super Ljava/lang/Object;
.source "DownloadQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/download/DownloadQueue$1;,
        Lcom/google/android/music/download/DownloadQueue$DownloadTaskComparator;
    }
.end annotation


# static fields
.field private static final LOGV:Z


# instance fields
.field private mCurrentTask:Lcom/google/android/music/download/DownloadTask;

.field private final mDownloadThread:Ljava/lang/Thread;

.field private final mQueue:Ljava/util/AbstractQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractQueue",
            "<",
            "Lcom/google/android/music/download/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueueLock:Ljava/lang/Object;

.field private final mTaskSubmissionOrderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/music/download/DownloadTask;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-string v0, "DownloadQueue"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/download/DownloadQueue;->LOGV:Z

    return-void
.end method

.method constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/download/DownloadQueue;->mQueueLock:Ljava/lang/Object;

    .line 77
    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v1, 0xa

    new-instance v2, Lcom/google/android/music/download/DownloadQueue$DownloadTaskComparator;

    invoke-direct {v2, p0, v3}, Lcom/google/android/music/download/DownloadQueue$DownloadTaskComparator;-><init>(Lcom/google/android/music/download/DownloadQueue;Lcom/google/android/music/download/DownloadQueue$1;)V

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/google/android/music/download/DownloadQueue;->mQueue:Ljava/util/AbstractQueue;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/download/DownloadQueue;->mTaskSubmissionOrderMap:Ljava/util/Map;

    .line 79
    iput-object v3, p0, Lcom/google/android/music/download/DownloadQueue;->mDownloadThread:Ljava/lang/Thread;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread;)V
    .registers 6
    .parameter "downloadThread"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    if-nez p1, :cond_d

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The download thread passed is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_d
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/download/DownloadQueue;->mQueueLock:Ljava/lang/Object;

    .line 94
    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v1, 0xa

    new-instance v2, Lcom/google/android/music/download/DownloadQueue$DownloadTaskComparator;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/music/download/DownloadQueue$DownloadTaskComparator;-><init>(Lcom/google/android/music/download/DownloadQueue;Lcom/google/android/music/download/DownloadQueue$1;)V

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/google/android/music/download/DownloadQueue;->mQueue:Ljava/util/AbstractQueue;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/download/DownloadQueue;->mTaskSubmissionOrderMap:Ljava/util/Map;

    .line 96
    iput-object p1, p0, Lcom/google/android/music/download/DownloadQueue;->mDownloadThread:Ljava/lang/Thread;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/download/DownloadQueue;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/music/download/DownloadQueue;->mTaskSubmissionOrderMap:Ljava/util/Map;

    return-object v0
.end method

.method static queueToString(Ljava/util/AbstractQueue;)Ljava/lang/String;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractQueue",
            "<",
            "Lcom/google/android/music/download/DownloadTask;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, queue:Ljava/util/AbstractQueue;,"Ljava/util/AbstractQueue<Lcom/google/android/music/download/DownloadTask;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p0}, Ljava/util/AbstractQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/download/DownloadTask;

    .line 246
    .local v3, task:Lcom/google/android/music/download/DownloadTask;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 247
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 249
    .end local v3           #task:Lcom/google/android/music/download/DownloadTask;
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 250
    .local v2, length:I
    const/4 v4, 0x2

    if-le v2, v4, :cond_2f

    .line 251
    add-int/lit8 v4, v2, -0x2

    invoke-virtual {v0, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 253
    :cond_2f
    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method clearCurrentTask()V
    .registers 3

    .prologue
    .line 202
    sget-boolean v0, Lcom/google/android/music/download/DownloadQueue;->LOGV:Z

    if-eqz v0, :cond_b

    .line 203
    const-string v0, "DownloadQueue"

    const-string v1, "clearCurrentTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_b
    iget-object v1, p0, Lcom/google/android/music/download/DownloadQueue;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 206
    const/4 v0, 0x0

    :try_start_f
    iput-object v0, p0, Lcom/google/android/music/download/DownloadQueue;->mCurrentTask:Lcom/google/android/music/download/DownloadTask;

    .line 207
    monitor-exit v1

    .line 208
    return-void

    .line 207
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    throw v0
.end method

.method getNextTask()Lcom/google/android/music/download/DownloadTask;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v1, p0, Lcom/google/android/music/download/DownloadQueue;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/download/DownloadQueue;->mQueue:Ljava/util/AbstractQueue;

    invoke-virtual {v0}, Ljava/util/AbstractQueue;->size()I

    move-result v0

    if-nez v0, :cond_1f

    .line 179
    sget-boolean v0, Lcom/google/android/music/download/DownloadQueue;->LOGV:Z

    if-eqz v0, :cond_16

    .line 180
    const-string v0, "DownloadQueue"

    const-string v2, "getNextTask(): wait"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_16
    iget-object v0, p0, Lcom/google/android/music/download/DownloadQueue;->mQueueLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_3

    .line 192
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0

    .line 185
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/google/android/music/download/DownloadQueue;->mQueue:Ljava/util/AbstractQueue;

    invoke-virtual {v0}, Ljava/util/AbstractQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/download/DownloadTask;

    iput-object v0, p0, Lcom/google/android/music/download/DownloadQueue;->mCurrentTask:Lcom/google/android/music/download/DownloadTask;

    .line 186
    iget-object v0, p0, Lcom/google/android/music/download/DownloadQueue;->mTaskSubmissionOrderMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/music/download/DownloadQueue;->mCurrentTask:Lcom/google/android/music/download/DownloadTask;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-boolean v0, Lcom/google/android/music/download/DownloadQueue;->LOGV:Z

    if-eqz v0, :cond_5d

    .line 189
    const-string v0, "DownloadQueue"

    const-string v2, "currentTask=%s mQueue.size=%d queue=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/music/download/DownloadQueue;->mCurrentTask:Lcom/google/android/music/download/DownloadTask;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/music/download/DownloadQueue;->mQueue:Ljava/util/AbstractQueue;

    invoke-virtual {v5}, Ljava/util/AbstractQueue;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/android/music/download/DownloadQueue;->mQueue:Ljava/util/AbstractQueue;

    invoke-static {v5}, Lcom/google/android/music/download/DownloadQueue;->queueToString(Ljava/util/AbstractQueue;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_1f .. :try_end_5e} :catchall_1c

    .line 194
    iget-object v0, p0, Lcom/google/android/music/download/DownloadQueue;->mCurrentTask:Lcom/google/android/music/download/DownloadTask;

    return-object v0
.end method
