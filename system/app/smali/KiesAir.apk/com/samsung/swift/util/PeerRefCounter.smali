.class public Lcom/samsung/swift/util/PeerRefCounter;
.super Ljava/lang/Object;
.source "PeerRefCounter.java"


# instance fields
.field private counter:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/swift/util/PeerRefCounter;->counter:I

    return-void
.end method


# virtual methods
.method public declared-synchronized dec()V
    .registers 2

    .prologue
    .line 100
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/samsung/swift/util/PeerRefCounter;->counter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/swift/util/PeerRefCounter;->counter:I

    .line 101
    iget v0, p0, Lcom/samsung/swift/util/PeerRefCounter;->counter:I

    if-gez v0, :cond_14

    .line 103
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_11

    .line 100
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    .line 105
    :cond_14
    monitor-exit p0

    return-void
.end method

.method public garbageCollectPeers()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 112
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/swift/util/PeerRefCounter;->get()I

    move-result v0

    if-eqz v0, :cond_f

    .line 114
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 117
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 119
    :cond_f
    return-void
.end method

.method public declared-synchronized get()I
    .registers 2

    .prologue
    .line 108
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/samsung/swift/util/PeerRefCounter;->counter:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized inc()V
    .registers 2

    .prologue
    .line 96
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/samsung/swift/util/PeerRefCounter;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/swift/util/PeerRefCounter;->counter:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 97
    monitor-exit p0

    return-void

    .line 96
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
