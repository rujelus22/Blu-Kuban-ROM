.class final Ltwitter4j/internal/async/DispatcherImpl;
.super Ljava/lang/Object;
.source "DispatcherImpl.java"

# interfaces
.implements Ltwitter4j/internal/async/Dispatcher;


# instance fields
.field private active:Z

.field private final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private threads:[Ltwitter4j/internal/async/ExecuteThread;

.field final ticket:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ltwitter4j/conf/Configuration;)V
    .registers 7
    .parameter "conf"

    .prologue
    const/4 v4, 0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Ltwitter4j/internal/async/DispatcherImpl;->q:Ljava/util/List;

    .line 57
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ltwitter4j/internal/async/DispatcherImpl;->ticket:Ljava/lang/Object;

    .line 79
    iput-boolean v4, p0, Ltwitter4j/internal/async/DispatcherImpl;->active:Z

    .line 33
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getAsyncNumThreads()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/internal/async/ExecuteThread;

    iput-object v1, p0, Ltwitter4j/internal/async/DispatcherImpl;->threads:[Ltwitter4j/internal/async/ExecuteThread;

    .line 34
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1d
    iget-object v1, p0, Ltwitter4j/internal/async/DispatcherImpl;->threads:[Ltwitter4j/internal/async/ExecuteThread;

    array-length v1, v1

    if-ge v0, v1, :cond_3e

    .line 35
    iget-object v1, p0, Ltwitter4j/internal/async/DispatcherImpl;->threads:[Ltwitter4j/internal/async/ExecuteThread;

    new-instance v2, Ltwitter4j/internal/async/ExecuteThread;

    const-string v3, "Twitter4J Async Dispatcher"

    invoke-direct {v2, v3, p0, v0}, Ltwitter4j/internal/async/ExecuteThread;-><init>(Ljava/lang/String;Ltwitter4j/internal/async/DispatcherImpl;I)V

    aput-object v2, v1, v0

    .line 36
    iget-object v1, p0, Ltwitter4j/internal/async/DispatcherImpl;->threads:[Ltwitter4j/internal/async/ExecuteThread;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Ltwitter4j/internal/async/ExecuteThread;->setDaemon(Z)V

    .line 37
    iget-object v1, p0, Ltwitter4j/internal/async/DispatcherImpl;->threads:[Ltwitter4j/internal/async/ExecuteThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ltwitter4j/internal/async/ExecuteThread;->start()V

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 39
    :cond_3e
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ltwitter4j/internal/async/DispatcherImpl$1;

    invoke-direct {v2, p0}, Ltwitter4j/internal/async/DispatcherImpl$1;-><init>(Ltwitter4j/internal/async/DispatcherImpl;)V

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 46
    return-void
.end method

.method static access$000(Ltwitter4j/internal/async/DispatcherImpl;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Ltwitter4j/internal/async/DispatcherImpl;->active:Z

    return v0
.end method


# virtual methods
.method public declared-synchronized invokeLater(Ljava/lang/Runnable;)V
    .registers 4
    .parameter "task"

    .prologue
    .line 49
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Ltwitter4j/internal/async/DispatcherImpl;->q:Ljava/util/List;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_18

    .line 50
    :try_start_4
    iget-object v0, p0, Ltwitter4j/internal/async/DispatcherImpl;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_15

    .line 52
    :try_start_a
    iget-object v1, p0, Ltwitter4j/internal/async/DispatcherImpl;->ticket:Ljava/lang/Object;

    monitor-enter v1
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_18

    .line 53
    :try_start_d
    iget-object v0, p0, Ltwitter4j/internal/async/DispatcherImpl;->ticket:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 54
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_1b

    .line 55
    monitor-exit p0

    return-void

    .line 51
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    :try_start_17
    throw v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    .line 49
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0

    .line 54
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_18
.end method

.method public poll()Ljava/lang/Runnable;
    .registers 5

    .prologue
    .line 60
    :goto_0
    iget-boolean v1, p0, Ltwitter4j/internal/async/DispatcherImpl;->active:Z

    if-eqz v1, :cond_2d

    .line 61
    iget-object v2, p0, Ltwitter4j/internal/async/DispatcherImpl;->q:Ljava/util/List;

    monitor-enter v2

    .line 62
    :try_start_7
    iget-object v1, p0, Ltwitter4j/internal/async/DispatcherImpl;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1c

    .line 63
    iget-object v1, p0, Ltwitter4j/internal/async/DispatcherImpl;->q:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 64
    .local v0, task:Ljava/lang/Runnable;
    if-eqz v0, :cond_1c

    .line 65
    monitor-exit v2

    .line 76
    .end local v0           #task:Ljava/lang/Runnable;
    :goto_1b
    return-object v0

    .line 68
    :cond_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_2a

    .line 69
    iget-object v2, p0, Ltwitter4j/internal/async/DispatcherImpl;->ticket:Ljava/lang/Object;

    monitor-enter v2

    .line 71
    :try_start_20
    iget-object v1, p0, Ltwitter4j/internal/async/DispatcherImpl;->ticket:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_27
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_25} :catch_2f

    .line 74
    :goto_25
    :try_start_25
    monitor-exit v2

    goto :goto_0

    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_27

    throw v1

    .line 68
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1

    .line 76
    :cond_2d
    const/4 v0, 0x0

    goto :goto_1b

    .line 72
    :catch_2f
    move-exception v1

    goto :goto_25
.end method

.method public declared-synchronized shutdown()V
    .registers 7

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    iget-boolean v4, p0, Ltwitter4j/internal/async/DispatcherImpl;->active:Z

    if-eqz v4, :cond_1f

    .line 83
    const/4 v4, 0x0

    iput-boolean v4, p0, Ltwitter4j/internal/async/DispatcherImpl;->active:Z

    .line 84
    iget-object v0, p0, Ltwitter4j/internal/async/DispatcherImpl;->threads:[Ltwitter4j/internal/async/ExecuteThread;

    .local v0, arr$:[Ltwitter4j/internal/async/ExecuteThread;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_c
    if-ge v1, v2, :cond_16

    aget-object v3, v0, v1

    .line 85
    .local v3, thread:Ltwitter4j/internal/async/ExecuteThread;
    invoke-virtual {v3}, Ltwitter4j/internal/async/ExecuteThread;->shutdown()V

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 87
    .end local v3           #thread:Ltwitter4j/internal/async/ExecuteThread;
    :cond_16
    iget-object v5, p0, Ltwitter4j/internal/async/DispatcherImpl;->ticket:Ljava/lang/Object;

    monitor-enter v5
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_24

    .line 88
    :try_start_19
    iget-object v4, p0, Ltwitter4j/internal/async/DispatcherImpl;->ticket:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 89
    monitor-exit v5
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_21

    .line 91
    .end local v0           #arr$:[Ltwitter4j/internal/async/ExecuteThread;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :cond_1f
    monitor-exit p0

    return-void

    .line 89
    .restart local v0       #arr$:[Ltwitter4j/internal/async/ExecuteThread;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    :catchall_21
    move-exception v4

    :try_start_22
    monitor-exit v5
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    throw v4
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    .line 82
    .end local v0           #arr$:[Ltwitter4j/internal/async/ExecuteThread;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_24
    move-exception v4

    monitor-exit p0

    throw v4
.end method
