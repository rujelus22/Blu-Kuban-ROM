.class public Lcom/samsung/util/Mutex;
.super Ljava/lang/Object;
.source "Mutex.java"


# instance fields
.field private syncLock:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/util/Mutex;->syncLock:Z

    .line 37
    return-void
.end method


# virtual methods
.method public declared-synchronized lock()V
    .registers 3

    .prologue
    .line 45
    monitor-enter p0

    :goto_1
    :try_start_1
    iget-boolean v1, p0, Lcom/samsung/util/Mutex;->syncLock:Z

    if-nez v1, :cond_a

    .line 53
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/util/Mutex;->syncLock:Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_13

    .line 54
    monitor-exit p0

    return-void

    .line 47
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_1

    .line 49
    :catch_e
    move-exception v0

    .line 50
    .local v0, e:Ljava/lang/Exception;
    :try_start_f
    invoke-static {v0}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/Exception;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_13

    goto :goto_1

    .line 45
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized unlock()V
    .registers 2

    .prologue
    .line 58
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/samsung/util/Mutex;->syncLock:Z

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 60
    monitor-exit p0

    return-void

    .line 58
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
