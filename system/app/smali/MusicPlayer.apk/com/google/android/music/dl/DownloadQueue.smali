.class public Lcom/google/android/music/dl/DownloadQueue;
.super Ljava/lang/Object;
.source "DownloadQueue.java"


# static fields
.field private static final LOGV:Z


# instance fields
.field private mCurrentTask:Lcom/google/android/music/dl/DownloadTask;

.field private final mDownloadThread:Ljava/lang/Thread;

.field private final mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/dl/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueueLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-string v0, "DownloadQueue"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/DownloadQueue;->LOGV:Z

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueueLock:Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueue:Ljava/util/List;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadQueue;->mDownloadThread:Ljava/lang/Thread;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread;)V
    .registers 4
    .parameter "downloadThread"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-nez p1, :cond_d

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The downlaod thread passed is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_d
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueueLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueue:Ljava/util/List;

    .line 54
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadQueue;->mDownloadThread:Ljava/lang/Thread;

    .line 55
    return-void
.end method

.method static queueToString(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/dl/DownloadTask;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/dl/DownloadTask;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 296
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 297
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_25

    .line 298
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 301
    :cond_28
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addDownloadTask(Lcom/google/android/music/dl/DownloadTask;)Z
    .registers 10
    .parameter "task"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 131
    invoke-interface {p1}, Lcom/google/android/music/dl/DownloadTask;->getDownloadOrder()Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->hasPlaybackPurpose()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 132
    const-string v2, "DownloadQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This is a streaming order. Skipping it:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_24
    return v1

    .line 137
    :cond_25
    iget-object v3, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    .line 138
    :try_start_28
    invoke-interface {p1}, Lcom/google/android/music/dl/DownloadTask;->getDownloadOrder()Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadOrder;->hasKeeponPurpose()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 140
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueue:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    :goto_37
    sget-boolean v1, Lcom/google/android/music/dl/DownloadQueue;->LOGV:Z

    if-eqz v1, :cond_52

    .line 156
    const-string v1, "DownloadQueue"

    const-string v4, "download: queue=%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueue:Ljava/util/List;

    invoke-static {v7}, Lcom/google/android/music/dl/DownloadQueue;->queueToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_52
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueueLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 159
    monitor-exit v3

    move v1, v2

    .line 160
    goto :goto_24

    .line 141
    :cond_5a
    invoke-interface {p1}, Lcom/google/android/music/dl/DownloadTask;->getDownloadOrder()Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadOrder;->hasRingtonePurpose()Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 143
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 144
    .local v0, index:I
    :goto_6a
    if-lez v0, :cond_83

    .line 145
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueue:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/dl/DownloadTask;

    invoke-interface {v1}, Lcom/google/android/music/dl/DownloadTask;->getDownloadOrder()Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadOrder;->hasKeeponPurpose()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 146
    add-int/lit8 v0, v0, -0x1

    goto :goto_6a

    .line 151
    :cond_83
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueue:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_37

    .line 159
    .end local v0           #index:I
    :catchall_89
    move-exception v1

    monitor-exit v3
    :try_end_8b
    .catchall {:try_start_28 .. :try_end_8b} :catchall_89

    throw v1

    .line 153
    :cond_8c
    :try_start_8c
    const-string v1, "DownloadQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This order is skipped as neither ringtone nor keepon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catchall {:try_start_8c .. :try_end_a4} :catchall_89

    goto :goto_37
.end method

.method public addStreamingTask(Lcom/google/android/music/dl/DownloadTask;Ljava/util/List;)Z
    .registers 16
    .parameter "streamTask"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/dl/DownloadTask;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/dl/DownloadTask;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, prefetchList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/dl/DownloadTask;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 66
    invoke-interface {p1}, Lcom/google/android/music/dl/DownloadTask;->getDownloadOrder()Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->hasPlaybackPurpose()Z

    move-result v8

    if-nez v8, :cond_25

    .line 67
    const-string v7, "DownloadQueue"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "This is not a streaming order:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_24
    return v6

    .line 72
    :cond_25
    iget-object v8, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    .line 74
    :try_start_28
    iget-object v6, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueue:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 75
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadTask;>;"
    :cond_2e
    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 76
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/dl/DownloadTask;

    .line 77
    .local v5, task:Lcom/google/android/music/dl/DownloadTask;
    invoke-interface {v5}, Lcom/google/android/music/dl/DownloadTask;->getDownloadOrder()Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/music/dl/DownloadOrder;->hasPlaybackPurpose()Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 78
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_2e

    .line 121
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadTask;>;"
    .end local v5           #task:Lcom/google/android/music/dl/DownloadTask;
    :catchall_48
    move-exception v6

    monitor-exit v8
    :try_end_4a
    .catchall {:try_start_28 .. :try_end_4a} :catchall_48

    throw v6

    .line 81
    .restart local v3       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadTask;>;"
    :cond_4b
    :try_start_4b
    iget-object v6, p0, Lcom/google/android/music/dl/DownloadQueue;->mCurrentTask:Lcom/google/android/music/dl/DownloadTask;

    if-eqz v6, :cond_e1

    .line 82
    iget-object v6, p0, Lcom/google/android/music/dl/DownloadQueue;->mCurrentTask:Lcom/google/android/music/dl/DownloadTask;

    invoke-interface {v6}, Lcom/google/android/music/dl/DownloadTask;->getDownloadOrder()Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v0

    .line 83
    .local v0, currentOrder:Lcom/google/android/music/dl/DownloadOrder;
    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v6

    invoke-interface {p1}, Lcom/google/android/music/dl/DownloadTask;->getDownloadOrder()Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/google/android/music/dl/ContentIdentifier;->equals(Lcom/google/android/music/dl/ContentIdentifier;)Z

    move-result v6

    if-eqz v6, :cond_6d

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->hasExplicitPlaybackPurpose()Z

    move-result v6

    if-nez v6, :cond_bb

    .line 85
    :cond_6d
    sget-boolean v6, Lcom/google/android/music/dl/DownloadQueue;->LOGV:Z

    if-eqz v6, :cond_8b

    .line 86
    const-string v6, "DownloadQueue"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CANCELLING "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/music/dl/DownloadQueue;->mCurrentTask:Lcom/google/android/music/dl/DownloadTask;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_8b
    iget-object v6, p0, Lcom/google/android/music/dl/DownloadQueue;->mCurrentTask:Lcom/google/android/music/dl/DownloadTask;

    invoke-interface {v6}, Lcom/google/android/music/dl/DownloadTask;->cancel()V

    .line 89
    iget-object v6, p0, Lcom/google/android/music/dl/DownloadQueue;->mDownloadThread:Ljava/lang/Thread;

    if-eqz v6, :cond_99

    .line 90
    iget-object v6, p0, Lcom/google/android/music/dl/DownloadQueue;->mDownloadThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 92
    :cond_99
    sget-boolean v6, Lcom/google/android/music/dl/DownloadQueue;->LOGV:Z

    if-eqz v6, :cond_b5

    .line 93
    const-string v6, "DownloadQueue"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "queue: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_b5
    iget-object v6, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueue:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v6, v9, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 107
    .end local v0           #currentOrder:Lcom/google/android/music/dl/DownloadOrder;
    :cond_bb
    :goto_bb
    if-eqz p2, :cond_104

    .line 108
    const/4 v2, 0x0

    .line 109
    .local v2, insertIndex:I
    iget-object v6, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueue:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_c7

    .line 110
    const/4 v2, 0x1

    .line 112
    :cond_c7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_cb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_104

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/dl/DownloadTask;

    .line 113
    .local v4, r:Ljava/lang/Runnable;
    iget-object v6, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueue:Ljava/util/List;

    check-cast v4, Lcom/google/android/music/dl/DownloadTask;

    .end local v4           #r:Ljava/lang/Runnable;
    invoke-interface {v6, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_cb

    .line 99
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #insertIndex:I
    :cond_e1
    sget-boolean v6, Lcom/google/android/music/dl/DownloadQueue;->LOGV:Z

    if-eqz v6, :cond_fd

    .line 100
    const-string v6, "DownloadQueue"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "queue: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_fd
    iget-object v6, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueue:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v6, v9, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_bb

    .line 117
    :cond_104
    sget-boolean v6, Lcom/google/android/music/dl/DownloadQueue;->LOGV:Z

    if-eqz v6, :cond_11f

    .line 118
    const-string v6, "DownloadQueue"

    const-string v9, "stream: queue=%s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueue:Ljava/util/List;

    invoke-static {v12}, Lcom/google/android/music/dl/DownloadQueue;->queueToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_11f
    iget-object v6, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueueLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 121
    monitor-exit v8
    :try_end_125
    .catchall {:try_start_4b .. :try_end_125} :catchall_48

    move v6, v7

    .line 123
    goto/16 :goto_24
.end method

.method public cancelAllTasks()V
    .registers 3

    .prologue
    .line 210
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 211
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueue;->mCurrentTask:Lcom/google/android/music/dl/DownloadTask;

    if-eqz v0, :cond_c

    .line 212
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueue;->mCurrentTask:Lcom/google/android/music/dl/DownloadTask;

    invoke-interface {v0}, Lcom/google/android/music/dl/DownloadTask;->cancel()V

    .line 214
    :cond_c
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 215
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1c

    .line 216
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueue;->mDownloadThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1b

    .line 217
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueue;->mDownloadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 219
    :cond_1b
    return-void

    .line 215
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public clearCurrentTask()V
    .registers 3

    .prologue
    .line 234
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 235
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/google/android/music/dl/DownloadQueue;->mCurrentTask:Lcom/google/android/music/dl/DownloadTask;

    .line 236
    monitor-exit v1

    .line 237
    return-void

    .line 236
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public findDownload(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadOrder;
    .registers 7
    .parameter "trackId"

    .prologue
    .line 245
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 246
    :try_start_3
    iget-object v3, p0, Lcom/google/android/music/dl/DownloadQueue;->mCurrentTask:Lcom/google/android/music/dl/DownloadTask;

    if-eqz v3, :cond_19

    .line 247
    iget-object v3, p0, Lcom/google/android/music/dl/DownloadQueue;->mCurrentTask:Lcom/google/android/music/dl/DownloadTask;

    invoke-interface {v3}, Lcom/google/android/music/dl/DownloadTask;->getDownloadOrder()Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v1

    .line 248
    .local v1, order:Lcom/google/android/music/dl/DownloadOrder;
    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/music/dl/ContentIdentifier;->equals(Lcom/google/android/music/dl/ContentIdentifier;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 249
    monitor-exit v4

    .line 260
    .end local v1           #order:Lcom/google/android/music/dl/DownloadOrder;
    :goto_18
    return-object v1

    .line 253
    :cond_19
    iget-object v3, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/dl/DownloadTask;

    .line 254
    .local v2, task:Lcom/google/android/music/dl/DownloadTask;
    invoke-interface {v2}, Lcom/google/android/music/dl/DownloadTask;->getDownloadOrder()Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v1

    .line 255
    .restart local v1       #order:Lcom/google/android/music/dl/DownloadOrder;
    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/music/dl/ContentIdentifier;->equals(Lcom/google/android/music/dl/ContentIdentifier;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 256
    monitor-exit v4

    goto :goto_18

    .line 259
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #order:Lcom/google/android/music/dl/DownloadOrder;
    .end local v2           #task:Lcom/google/android/music/dl/DownloadTask;
    :catchall_3b
    move-exception v3

    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3e
    :try_start_3e
    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3b

    .line 260
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public getCurrentDownloads()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/dl/DownloadOrder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 265
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/dl/DownloadOrder;>;"
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 266
    :try_start_8
    iget-object v3, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/dl/DownloadTask;

    .line 267
    .local v2, task:Lcom/google/android/music/dl/DownloadTask;
    invoke-interface {v2}, Lcom/google/android/music/dl/DownloadTask;->getDownloadOrder()Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 273
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #task:Lcom/google/android/music/dl/DownloadTask;
    :catchall_22
    move-exception v3

    monitor-exit v4
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_22

    throw v3

    .line 270
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_25
    :try_start_25
    iget-object v3, p0, Lcom/google/android/music/dl/DownloadQueue;->mCurrentTask:Lcom/google/android/music/dl/DownloadTask;

    if-eqz v3, :cond_33

    .line 271
    const/4 v3, 0x0

    iget-object v5, p0, Lcom/google/android/music/dl/DownloadQueue;->mCurrentTask:Lcom/google/android/music/dl/DownloadTask;

    invoke-interface {v5}, Lcom/google/android/music/dl/DownloadTask;->getDownloadOrder()Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 273
    :cond_33
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_22

    .line 274
    return-object v1
.end method

.method public getNextTask()Lcom/google/android/music/dl/DownloadTask;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1f

    .line 192
    sget-boolean v0, Lcom/google/android/music/dl/DownloadQueue;->LOGV:Z

    if-eqz v0, :cond_16

    .line 193
    const-string v0, "DownloadQueue"

    const-string v2, "getNextTask(): wait"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_16
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueueLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_3

    .line 204
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0

    .line 198
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueue:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/DownloadTask;

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadQueue;->mCurrentTask:Lcom/google/android/music/dl/DownloadTask;

    .line 200
    sget-boolean v0, Lcom/google/android/music/dl/DownloadQueue;->LOGV:Z

    if-eqz v0, :cond_57

    .line 201
    const-string v0, "DownloadQueue"

    const-string v2, "currentTask=%s mQueue.size=%d queue=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/music/dl/DownloadQueue;->mCurrentTask:Lcom/google/android/music/dl/DownloadTask;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueue:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueue:Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/music/dl/DownloadQueue;->queueToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_57
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_1f .. :try_end_58} :catchall_1c

    .line 206
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueue;->mCurrentTask:Lcom/google/android/music/dl/DownloadTask;

    return-object v0
.end method

.method public isDone()Z
    .registers 3

    .prologue
    .line 228
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 229
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueue;->mCurrentTask:Lcom/google/android/music/dl/DownloadTask;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_10
    monitor-exit v1

    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_10

    .line 230
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    .line 222
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 223
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 224
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public replaceCurrentTask(Lcom/google/android/music/dl/DownloadTask;)V
    .registers 6
    .parameter "task"

    .prologue
    .line 172
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 173
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueue;->mCurrentTask:Lcom/google/android/music/dl/DownloadTask;

    if-eqz v0, :cond_33

    .line 174
    sget-boolean v0, Lcom/google/android/music/dl/DownloadQueue;->LOGV:Z

    if-eqz v0, :cond_25

    .line 175
    const-string v0, "DownloadQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CANCELLING "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/dl/DownloadQueue;->mCurrentTask:Lcom/google/android/music/dl/DownloadTask;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_25
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueue;->mCurrentTask:Lcom/google/android/music/dl/DownloadTask;

    invoke-interface {v0}, Lcom/google/android/music/dl/DownloadTask;->cancel()V

    .line 178
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueue;->mDownloadThread:Ljava/lang/Thread;

    if-eqz v0, :cond_33

    .line 179
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueue;->mDownloadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 183
    :cond_33
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueue:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadQueue;->mQueueLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 186
    monitor-exit v1

    .line 187
    return-void

    .line 186
    :catchall_40
    move-exception v0

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v0
.end method
