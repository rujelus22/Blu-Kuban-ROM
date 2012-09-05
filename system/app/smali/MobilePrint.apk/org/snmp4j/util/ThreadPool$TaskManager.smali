.class Lorg/snmp4j/util/ThreadPool$TaskManager;
.super Ljava/lang/Thread;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/util/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskManager"
.end annotation


# instance fields
.field private volatile run:Z

.field private task:Lorg/snmp4j/util/WorkerTask;

.field private final this$0:Lorg/snmp4j/util/ThreadPool;


# direct methods
.method public constructor <init>(Lorg/snmp4j/util/ThreadPool;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "name"

    .prologue
    .line 232
    iput-object p1, p0, Lorg/snmp4j/util/ThreadPool$TaskManager;->this$0:Lorg/snmp4j/util/ThreadPool;

    .line 233
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/snmp4j/util/ThreadPool$TaskManager;->task:Lorg/snmp4j/util/WorkerTask;

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/snmp4j/util/ThreadPool$TaskManager;->run:Z

    .line 234
    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Lorg/snmp4j/util/WorkerTask;)V
    .registers 4
    .parameter "task"

    .prologue
    .line 274
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/util/ThreadPool$TaskManager;->task:Lorg/snmp4j/util/WorkerTask;

    if-nez v0, :cond_c

    .line 275
    iput-object p1, p0, Lorg/snmp4j/util/ThreadPool$TaskManager;->task:Lorg/snmp4j/util/WorkerTask;

    .line 276
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_14

    .line 281
    monitor-exit p0

    return-void

    .line 279
    :cond_c
    :try_start_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TaskManager is not idle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_14

    .line 274
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isIdle()Z
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lorg/snmp4j/util/ThreadPool$TaskManager;->task:Lorg/snmp4j/util/WorkerTask;

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lorg/snmp4j/util/ThreadPool$TaskManager;->run:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isStopped()Z
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lorg/snmp4j/util/ThreadPool$TaskManager;->this$0:Lorg/snmp4j/util/ThreadPool;

    iget-boolean v0, v0, Lorg/snmp4j/util/ThreadPool;->stop:Z

    return v0
.end method

.method public declared-synchronized run()V
    .registers 4

    .prologue
    .line 237
    monitor-enter p0

    :goto_1
    :try_start_1
    iget-object v1, p0, Lorg/snmp4j/util/ThreadPool$TaskManager;->this$0:Lorg/snmp4j/util/ThreadPool;

    iget-boolean v1, v1, Lorg/snmp4j/util/ThreadPool;->stop:Z

    if-nez v1, :cond_32

    iget-boolean v1, p0, Lorg/snmp4j/util/ThreadPool$TaskManager;->run:Z

    if-eqz v1, :cond_32

    .line 238
    iget-object v1, p0, Lorg/snmp4j/util/ThreadPool$TaskManager;->task:Lorg/snmp4j/util/WorkerTask;

    if-eqz v1, :cond_27

    .line 239
    iget-object v1, p0, Lorg/snmp4j/util/ThreadPool$TaskManager;->task:Lorg/snmp4j/util/WorkerTask;

    invoke-interface {v1}, Lorg/snmp4j/util/WorkerTask;->run()V

    .line 240
    iget-object v2, p0, Lorg/snmp4j/util/ThreadPool$TaskManager;->this$0:Lorg/snmp4j/util/ThreadPool;

    monitor-enter v2
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_24

    .line 241
    const/4 v1, 0x0

    :try_start_18
    iput-object v1, p0, Lorg/snmp4j/util/ThreadPool$TaskManager;->task:Lorg/snmp4j/util/WorkerTask;

    .line 242
    iget-object v1, p0, Lorg/snmp4j/util/ThreadPool$TaskManager;->this$0:Lorg/snmp4j/util/ThreadPool;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 243
    monitor-exit v2

    goto :goto_1

    :catchall_21
    move-exception v1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    :try_start_23
    throw v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    .line 237
    :catchall_24
    move-exception v1

    monitor-exit p0

    throw v1

    .line 247
    :cond_27
    :try_start_27
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_24
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_1

    .line 249
    :catch_2b
    move-exception v0

    .line 250
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2c
    iget-object v1, p0, Lorg/snmp4j/util/ThreadPool$TaskManager;->this$0:Lorg/snmp4j/util/ThreadPool;

    iget-boolean v1, v1, Lorg/snmp4j/util/ThreadPool;->respawnThreads:Z

    iput-boolean v1, p0, Lorg/snmp4j/util/ThreadPool$TaskManager;->run:Z
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_24

    .line 255
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :cond_32
    monitor-exit p0

    return-void
.end method

.method public terminate()V
    .registers 4

    .prologue
    .line 266
    iget-object v1, p0, Lorg/snmp4j/util/ThreadPool$TaskManager;->this$0:Lorg/snmp4j/util/ThreadPool;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/snmp4j/util/ThreadPool;->stop:Z

    .line 268
    iget-object v0, p0, Lorg/snmp4j/util/ThreadPool$TaskManager;->task:Lorg/snmp4j/util/WorkerTask;

    .local v0, t:Lorg/snmp4j/util/WorkerTask;
    if-eqz v0, :cond_c

    .line 269
    invoke-interface {v0}, Lorg/snmp4j/util/WorkerTask;->terminate()V

    .line 271
    :cond_c
    return-void
.end method
