.class abstract Ljava/lang/Daemons$Daemon;
.super Ljava/lang/Object;
.source "Daemons.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Daemons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Daemon"
.end annotation


# instance fields
.field private thread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Daemons$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Daemons$Daemon;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getStackTrace()[Ljava/lang/StackTraceElement;
    .registers 2

    .prologue
    .line 111
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/lang/Daemons$Daemon;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_d

    iget-object v0, p0, Ljava/lang/Daemons$Daemon;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_10

    move-result-object v0

    :goto_b
    monitor-exit p0

    return-object v0

    :cond_d
    :try_start_d
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_10

    goto :goto_b

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized interrupt()V
    .registers 3

    .prologue
    .line 77
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/lang/Daemons$Daemon;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_10

    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 77
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 80
    :cond_10
    :try_start_10
    iget-object v0, p0, Ljava/lang/Daemons$Daemon;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_d

    .line 81
    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized isRunning()Z
    .registers 2

    .prologue
    .line 73
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/lang/Daemons$Daemon;->thread:Ljava/lang/Thread;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract run()V
.end method

.method public declared-synchronized start()V
    .registers 3

    .prologue
    .line 58
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/lang/Daemons$Daemon;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_10

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 58
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 61
    :cond_10
    :try_start_10
    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/lang/Daemons$Daemon;->thread:Ljava/lang/Thread;

    .line 62
    iget-object v0, p0, Ljava/lang/Daemons$Daemon;->thread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 63
    iget-object v0, p0, Ljava/lang/Daemons$Daemon;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_d

    .line 64
    monitor-exit p0

    return-void
.end method

.method public stop()V
    .registers 4

    .prologue
    .line 89
    monitor-enter p0

    .line 90
    :try_start_1
    iget-object v0, p0, Ljava/lang/Daemons$Daemon;->thread:Ljava/lang/Thread;

    .line 91
    .local v0, threadToStop:Ljava/lang/Thread;
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/Daemons$Daemon;->thread:Ljava/lang/Thread;

    .line 92
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_11

    .line 93
    if-nez v0, :cond_14

    .line 94
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "not running"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    .end local v0           #threadToStop:Ljava/lang/Thread;
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1

    .line 96
    .restart local v0       #threadToStop:Ljava/lang/Thread;
    :cond_14
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 99
    :goto_17
    :try_start_17
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 100
    return-void

    .line 101
    :catch_1b
    move-exception v1

    goto :goto_17
.end method
