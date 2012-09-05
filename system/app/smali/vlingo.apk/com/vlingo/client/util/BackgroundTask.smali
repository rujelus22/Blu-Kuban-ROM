.class public abstract Lcom/vlingo/client/util/BackgroundTask;
.super Ljava/lang/Object;
.source "BackgroundTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field volatile m_isCancelled:Z

.field volatile m_isRunning:Z

.field private m_thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean v0, p0, Lcom/vlingo/client/util/BackgroundTask;->m_isCancelled:Z

    .line 16
    iput-boolean v0, p0, Lcom/vlingo/client/util/BackgroundTask;->m_isRunning:Z

    .line 20
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vlingo/client/util/BackgroundTask;->m_thread:Ljava/lang/Thread;

    .line 21
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .registers 2

    .prologue
    .line 41
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/vlingo/client/util/BackgroundTask;->setCancelled(Z)V

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    .line 43
    monitor-exit p0

    return-void

    .line 41
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract doWork()V
.end method

.method public declared-synchronized isCancelled()Z
    .registers 2

    .prologue
    .line 93
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/vlingo/client/util/BackgroundTask;->m_isCancelled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRunning()Z
    .registers 2

    .prologue
    .line 89
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/vlingo/client/util/BackgroundTask;->m_isRunning:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 2

    .prologue
    .line 58
    monitor-enter p0

    .line 59
    :try_start_1
    invoke-virtual {p0}, Lcom/vlingo/client/util/BackgroundTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 63
    monitor-exit p0

    .line 79
    :goto_b
    return-void

    .line 66
    :cond_c
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vlingo/client/util/BackgroundTask;->setRunning(Z)V

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 69
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_24

    .line 71
    invoke-virtual {p0}, Lcom/vlingo/client/util/BackgroundTask;->doWork()V

    .line 73
    monitor-enter p0

    .line 74
    const/4 v0, 0x0

    :try_start_19
    invoke-virtual {p0, v0}, Lcom/vlingo/client/util/BackgroundTask;->setRunning(Z)V

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 78
    monitor-exit p0

    goto :goto_b

    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_21

    throw v0

    .line 69
    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public declared-synchronized setCancelled(Z)V
    .registers 3
    .parameter "isCancelled"

    .prologue
    .line 101
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/vlingo/client/util/BackgroundTask;->m_isCancelled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 102
    monitor-exit p0

    return-void

    .line 101
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRunning(Z)V
    .registers 3
    .parameter "isRunning"

    .prologue
    .line 97
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/vlingo/client/util/BackgroundTask;->m_isRunning:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 98
    monitor-exit p0

    return-void

    .line 97
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .registers 4

    .prologue
    .line 26
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/vlingo/client/util/BackgroundTask;->isRunning()Z

    move-result v1

    if-nez v1, :cond_32

    invoke-virtual {p0}, Lcom/vlingo/client/util/BackgroundTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_32

    .line 27
    iget-object v1, p0, Lcom/vlingo/client/util/BackgroundTask;->m_thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 30
    :goto_12
    invoke-virtual {p0}, Lcom/vlingo/client/util/BackgroundTask;->isRunning()Z

    move-result v1

    if-nez v1, :cond_32

    invoke-virtual {p0}, Lcom/vlingo/client/util/BackgroundTask;->isCancelled()Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_2f

    move-result v1

    if-nez v1, :cond_32

    .line 32
    const-wide/16 v1, 0x1f4

    :try_start_20
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_2f
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_12

    .line 33
    :catch_24
    move-exception v0

    .line 34
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_25
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_2f

    goto :goto_12

    .line 26
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_2f
    move-exception v1

    monitor-exit p0

    throw v1

    .line 38
    :cond_32
    monitor-exit p0

    return-void
.end method
