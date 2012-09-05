.class public Lcom/vlingo/client/core/util/ThreadPoolExecutor;
.super Ljava/lang/Object;
.source "ThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/core/util/ThreadPoolExecutor$Worker;
    }
.end annotation


# instance fields
.field private volatile availWorkers:I

.field private volatile dynamic:Z

.field private volatile maxPoolSize:I

.field private volatile minPoolSize:I

.field private volatile nextThreadID:I

.field private volatile paused:Z

.field private volatile priority:I

.field private final queue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/util/Future;",
            ">;"
        }
    .end annotation
.end field

.field private volatile shutDown:Z

.field private final workerName:Ljava/lang/String;

.field private final workers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    const-string v0, "Worker"

    invoke-direct {p0, v0}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "workerName"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->queue:Ljava/util/Vector;

    .line 21
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->workers:Ljava/util/Vector;

    .line 22
    iput v1, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->availWorkers:I

    .line 23
    iput v2, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->maxPoolSize:I

    .line 24
    iput v2, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->minPoolSize:I

    .line 25
    iput-boolean v1, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->shutDown:Z

    .line 26
    const/4 v0, 0x5

    iput v0, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->priority:I

    .line 27
    iput-boolean v1, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->dynamic:Z

    .line 29
    iput v2, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->nextThreadID:I

    .line 31
    iput-boolean v1, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->paused:Z

    .line 38
    iput-object p1, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->workerName:Ljava/lang/String;

    .line 39
    return-void
.end method

.method static synthetic access$100(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)Ljava/util/Vector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->queue:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->minPoolSize:I

    return v0
.end method

.method static synthetic access$200(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->paused:Z

    return v0
.end method

.method static synthetic access$300(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->shutDown:Z

    return v0
.end method

.method static synthetic access$400(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)Ljava/util/Vector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->workers:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$508(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->availWorkers:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->availWorkers:I

    return v0
.end method

.method static synthetic access$510(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->availWorkers:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->availWorkers:I

    return v0
.end method

.method static synthetic access$600(Ljava/lang/Runnable;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 13
    invoke-static {p0}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->isRunnableRetry(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljava/lang/Runnable;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 13
    invoke-static {p0}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->isRunnableOrdered(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Ljava/lang/Runnable;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 13
    invoke-static {p0}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->isRunnableHighPriority(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/vlingo/client/core/util/ThreadPoolExecutor;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->dynamic:Z

    return v0
.end method

.method private static isRunnableHighPriority(Ljava/lang/Runnable;)Z
    .registers 2
    .parameter "run"

    .prologue
    .line 266
    instance-of v0, p0, Lcom/vlingo/client/core/util/ThreadPoolRunnable;

    if-eqz v0, :cond_b

    .line 267
    check-cast p0, Lcom/vlingo/client/core/util/ThreadPoolRunnable;

    .end local p0
    invoke-interface {p0}, Lcom/vlingo/client/core/util/ThreadPoolRunnable;->isHighPriority()Z

    move-result v0

    .line 269
    :goto_a
    return v0

    .restart local p0
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static isRunnableOrdered(Ljava/lang/Runnable;)Z
    .registers 2
    .parameter "run"

    .prologue
    .line 273
    instance-of v0, p0, Lcom/vlingo/client/core/util/ThreadPoolRunnable;

    if-eqz v0, :cond_b

    .line 274
    check-cast p0, Lcom/vlingo/client/core/util/ThreadPoolRunnable;

    .end local p0
    invoke-interface {p0}, Lcom/vlingo/client/core/util/ThreadPoolRunnable;->isOrdered()Z

    move-result v0

    .line 276
    :goto_a
    return v0

    .restart local p0
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static isRunnableRetry(Ljava/lang/Runnable;)Z
    .registers 2
    .parameter "run"

    .prologue
    .line 280
    instance-of v0, p0, Lcom/vlingo/client/core/util/ThreadPoolRunnable;

    if-eqz v0, :cond_b

    .line 281
    check-cast p0, Lcom/vlingo/client/core/util/ThreadPoolRunnable;

    .end local p0
    invoke-interface {p0}, Lcom/vlingo/client/core/util/ThreadPoolRunnable;->isRetry()Z

    move-result v0

    .line 283
    :goto_a
    return v0

    .restart local p0
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    .line 161
    iget-object v1, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->queue:Ljava/util/Vector;

    monitor-enter v1

    .line 162
    :try_start_3
    iget-object v0, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->queue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 163
    iget-object v0, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->queue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 164
    monitor-exit v1

    .line 165
    return-void

    .line 164
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public execute(Ljava/lang/Runnable;)Lcom/vlingo/client/core/util/Future;
    .registers 15
    .parameter "run"

    .prologue
    .line 65
    iget-boolean v7, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->shutDown:Z

    if-eqz v7, :cond_a

    .line 66
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7

    .line 68
    :cond_a
    const/4 v1, 0x0

    .line 69
    .local v1, fut:Lcom/vlingo/client/core/util/Future;
    iget-object v8, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->queue:Ljava/util/Vector;

    monitor-enter v8

    .line 70
    :try_start_e
    iget-object v9, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->workers:Ljava/util/Vector;

    monitor-enter v9
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_95

    .line 74
    :try_start_11
    iget-object v7, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->workers:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    iget v10, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->maxPoolSize:I

    if-ge v7, v10, :cond_56

    iget v7, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->availWorkers:I

    if-nez v7, :cond_56

    .line 77
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/vlingo/client/core/util/ThreadPoolExecutor$Worker;

    const/4 v10, 0x0

    invoke-direct {v7, p0, v10}, Lcom/vlingo/client/core/util/ThreadPoolExecutor$Worker;-><init>(Lcom/vlingo/client/core/util/ThreadPoolExecutor;Lcom/vlingo/client/core/util/ThreadPoolExecutor$1;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->workerName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->nextThreadID:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->nextThreadID:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v7, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 78
    .local v6, thread:Ljava/lang/Thread;
    iget v7, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->priority:I

    invoke-virtual {v6, v7}, Ljava/lang/Thread;->setPriority(I)V

    .line 79
    iget-object v7, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->workers:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 80
    iget v7, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->availWorkers:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->availWorkers:I

    .line 81
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 83
    .end local v6           #thread:Ljava/lang/Thread;
    :cond_56
    monitor-exit v9
    :try_end_57
    .catchall {:try_start_11 .. :try_end_57} :catchall_92

    .line 84
    :try_start_57
    new-instance v2, Lcom/vlingo/client/core/util/Future;

    invoke-direct {v2, p1}, Lcom/vlingo/client/core/util/Future;-><init>(Ljava/lang/Runnable;)V
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_95

    .line 85
    .end local v1           #fut:Lcom/vlingo/client/core/util/Future;
    .local v2, fut:Lcom/vlingo/client/core/util/Future;
    :try_start_5c
    invoke-static {p1}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->isRunnableHighPriority(Ljava/lang/Runnable;)Z

    move-result v7

    if-eqz v7, :cond_9b

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, added:Z
    iget-object v7, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->queue:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v5

    .line 89
    .local v5, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_6a
    if-ge v3, v5, :cond_84

    .line 90
    iget-object v7, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->queue:Ljava/util/Vector;

    invoke-virtual {v7, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vlingo/client/core/util/Future;

    .line 91
    .local v4, queuedFuture:Lcom/vlingo/client/core/util/Future;
    invoke-virtual {v4}, Lcom/vlingo/client/core/util/Future;->getRunnable()Ljava/lang/Runnable;

    move-result-object v7

    invoke-static {v7}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->isRunnableHighPriority(Ljava/lang/Runnable;)Z

    move-result v7

    if-nez v7, :cond_98

    .line 92
    iget-object v7, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->queue:Ljava/util/Vector;

    invoke-virtual {v7, v2, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 93
    const/4 v0, 0x1

    .line 97
    .end local v4           #queuedFuture:Lcom/vlingo/client/core/util/Future;
    :cond_84
    if-nez v0, :cond_8b

    .line 98
    iget-object v7, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->queue:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 105
    .end local v0           #added:Z
    .end local v3           #i:I
    .end local v5           #size:I
    :cond_8b
    :goto_8b
    iget-object v7, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->queue:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 106
    monitor-exit v8
    :try_end_91
    .catchall {:try_start_5c .. :try_end_91} :catchall_a1

    .line 107
    return-object v2

    .line 83
    .end local v2           #fut:Lcom/vlingo/client/core/util/Future;
    .restart local v1       #fut:Lcom/vlingo/client/core/util/Future;
    :catchall_92
    move-exception v7

    :try_start_93
    monitor-exit v9
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    :try_start_94
    throw v7

    .line 106
    :catchall_95
    move-exception v7

    :goto_96
    monitor-exit v8
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_95

    throw v7

    .line 89
    .end local v1           #fut:Lcom/vlingo/client/core/util/Future;
    .restart local v0       #added:Z
    .restart local v2       #fut:Lcom/vlingo/client/core/util/Future;
    .restart local v3       #i:I
    .restart local v4       #queuedFuture:Lcom/vlingo/client/core/util/Future;
    .restart local v5       #size:I
    :cond_98
    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    .line 103
    .end local v0           #added:Z
    .end local v3           #i:I
    .end local v4           #queuedFuture:Lcom/vlingo/client/core/util/Future;
    .end local v5           #size:I
    :cond_9b
    :try_start_9b
    iget-object v7, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->queue:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_a0
    .catchall {:try_start_9b .. :try_end_a0} :catchall_a1

    goto :goto_8b

    .line 106
    :catchall_a1
    move-exception v7

    move-object v1, v2

    .end local v2           #fut:Lcom/vlingo/client/core/util/Future;
    .restart local v1       #fut:Lcom/vlingo/client/core/util/Future;
    goto :goto_96
.end method

.method public executeLater(Ljava/lang/Runnable;J)Lcom/vlingo/client/core/util/Future;
    .registers 7
    .parameter "runnable"
    .parameter "wait"

    .prologue
    .line 116
    new-instance v0, Lcom/vlingo/client/core/util/Future;

    invoke-direct {v0, p1}, Lcom/vlingo/client/core/util/Future;-><init>(Ljava/lang/Runnable;)V

    .line 117
    .local v0, fut:Lcom/vlingo/client/core/util/Future;
    invoke-static {}, Lcom/vlingo/client/core/util/TimerSingleton;->getTimer()Ljava/util/Timer;

    move-result-object v2

    .line 118
    .local v2, timer:Ljava/util/Timer;
    new-instance v1, Lcom/vlingo/client/core/util/ThreadPoolExecutor$1;

    invoke-direct {v1, p0, v0}, Lcom/vlingo/client/core/util/ThreadPoolExecutor$1;-><init>(Lcom/vlingo/client/core/util/ThreadPoolExecutor;Lcom/vlingo/client/core/util/Future;)V

    .line 124
    .local v1, task:Ljava/util/TimerTask;
    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/util/Future;->setScheduleTask(Ljava/util/TimerTask;)V

    .line 125
    invoke-virtual {v2, v1, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 126
    return-object v0
.end method

.method public isBusy()Z
    .registers 3

    .prologue
    .line 42
    iget v0, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->availWorkers:I

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->workers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->maxPoolSize:I

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    .line 137
    iget-object v1, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->queue:Ljava/util/Vector;

    monitor-enter v1

    .line 138
    :try_start_3
    iget-object v0, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->queue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 139
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public pause()V
    .registers 3

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->paused:Z

    if-nez v0, :cond_10

    .line 144
    iget-object v1, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->queue:Ljava/util/Vector;

    monitor-enter v1

    .line 145
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->paused:Z

    .line 146
    iget-object v0, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->queue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 147
    monitor-exit v1

    .line 149
    :cond_10
    return-void

    .line 147
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public resume()V
    .registers 3

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->paused:Z

    if-eqz v0, :cond_10

    .line 153
    iget-object v1, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->queue:Ljava/util/Vector;

    monitor-enter v1

    .line 154
    const/4 v0, 0x0

    :try_start_8
    iput-boolean v0, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->paused:Z

    .line 155
    iget-object v0, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->queue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 156
    monitor-exit v1

    .line 158
    :cond_10
    return-void

    .line 156
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public setDynamicSizing(Z)V
    .registers 2
    .parameter "dynamic"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->dynamic:Z

    .line 55
    return-void
.end method

.method public setMaxPoolSize(I)V
    .registers 2
    .parameter "s"

    .prologue
    .line 46
    iput p1, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->maxPoolSize:I

    .line 47
    return-void
.end method

.method public setMinPoolSize(I)V
    .registers 2
    .parameter "s"

    .prologue
    .line 50
    iput p1, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->minPoolSize:I

    .line 51
    return-void
.end method

.method public setThreadPriority(I)V
    .registers 2
    .parameter "priority"

    .prologue
    .line 58
    iput p1, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->priority:I

    .line 59
    return-void
.end method

.method public shutdown()V
    .registers 3

    .prologue
    .line 130
    iget-object v1, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->queue:Ljava/util/Vector;

    monitor-enter v1

    .line 131
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->shutDown:Z

    .line 132
    iget-object v0, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->queue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 133
    monitor-exit v1

    .line 134
    return-void

    .line 133
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method
