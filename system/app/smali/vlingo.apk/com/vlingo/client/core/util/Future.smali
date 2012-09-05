.class public Lcom/vlingo/client/core/util/Future;
.super Ljava/lang/Object;
.source "Future.java"


# instance fields
.field private alive:Z

.field private cancelled:Z

.field private complete:Z

.field private final run:Ljava/lang/Runnable;

.field private scheduleTask:Ljava/util/TimerTask;

.field private thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "run"

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean v0, p0, Lcom/vlingo/client/core/util/Future;->complete:Z

    .line 15
    iput-boolean v0, p0, Lcom/vlingo/client/core/util/Future;->cancelled:Z

    .line 16
    iput-boolean v0, p0, Lcom/vlingo/client/core/util/Future;->alive:Z

    .line 20
    iput-object p1, p0, Lcom/vlingo/client/core/util/Future;->run:Ljava/lang/Runnable;

    .line 21
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .registers 3

    .prologue
    .line 41
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/vlingo/client/core/util/Future;->complete:Z

    if-nez v0, :cond_29

    iget-boolean v0, p0, Lcom/vlingo/client/core/util/Future;->cancelled:Z

    if-nez v0, :cond_29

    .line 42
    iget-object v0, p0, Lcom/vlingo/client/core/util/Future;->scheduleTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_15

    .line 43
    iget-object v0, p0, Lcom/vlingo/client/core/util/Future;->scheduleTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/util/Future;->scheduleTask:Ljava/util/TimerTask;

    .line 46
    :cond_15
    iget-object v0, p0, Lcom/vlingo/client/core/util/Future;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_26

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/core/util/Future;->thread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_26

    .line 47
    iget-object v0, p0, Lcom/vlingo/client/core/util/Future;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 49
    :cond_26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/core/util/Future;->cancelled:Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 51
    :cond_29
    monitor-exit p0

    return-void

    .line 41
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized complete()V
    .registers 2

    .prologue
    .line 58
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/vlingo/client/core/util/Future;->complete:Z

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/core/util/Future;->alive:Z

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/util/Future;->thread:Ljava/lang/Thread;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    .line 61
    monitor-exit p0

    return-void

    .line 58
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getRunnable()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vlingo/client/core/util/Future;->run:Ljava/lang/Runnable;

    return-object v0
.end method

.method public declared-synchronized isAlive()Z
    .registers 2

    .prologue
    .line 37
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/vlingo/client/core/util/Future;->alive:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isCancelled()Z
    .registers 2

    .prologue
    .line 54
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/vlingo/client/core/util/Future;->cancelled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setScheduleTask(Ljava/util/TimerTask;)V
    .registers 3
    .parameter "scheduleTask"

    .prologue
    .line 28
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/vlingo/client/core/util/Future;->scheduleTask:Ljava/util/TimerTask;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 29
    monitor-exit p0

    return-void

    .line 28
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setThread(Ljava/lang/Thread;)V
    .registers 3
    .parameter "t"

    .prologue
    .line 32
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/vlingo/client/core/util/Future;->thread:Ljava/lang/Thread;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/core/util/Future;->alive:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 34
    monitor-exit p0

    return-void

    .line 32
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
