.class public Lorg/columba/ristretto/concurrency/Mutex;
.super Ljava/lang/Object;
.source "Mutex.java"


# instance fields
.field private mutex:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/columba/ristretto/concurrency/Mutex;->mutex:Z

    .line 52
    return-void
.end method


# virtual methods
.method public declared-synchronized lock()V
    .registers 3

    .prologue
    .line 61
    monitor-enter p0

    :cond_1
    :goto_1
    :try_start_1
    iget-boolean v1, p0, Lorg/columba/ristretto/concurrency/Mutex;->mutex:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1a

    if-eqz v1, :cond_1d

    .line 64
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_1a
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_1

    .line 65
    :catch_9
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_1a

    .line 61
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1

    .line 73
    :cond_1d
    const/4 v1, 0x1

    :try_start_1e
    iput-boolean v1, p0, Lorg/columba/ristretto/concurrency/Mutex;->mutex:Z
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_1a

    .line 74
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized release()V
    .registers 2

    .prologue
    .line 82
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lorg/columba/ristretto/concurrency/Mutex;->mutex:Z

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 85
    monitor-exit p0

    return-void

    .line 82
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
