.class public Lorg/snmp4j/util/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Lorg/snmp4j/util/WorkerPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/snmp4j/util/ThreadPool$TaskManager;
    }
.end annotation


# instance fields
.field protected name:Ljava/lang/String;

.field protected respawnThreads:Z

.field protected volatile stop:Z

.field protected taskManagers:Ljava/util/Vector;


# direct methods
.method protected constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "ThreadPool"

    iput-object v0, p0, Lorg/snmp4j/util/ThreadPool;->name:Ljava/lang/String;

    .line 39
    iput-boolean v1, p0, Lorg/snmp4j/util/ThreadPool;->stop:Z

    .line 40
    iput-boolean v1, p0, Lorg/snmp4j/util/ThreadPool;->respawnThreads:Z

    .line 43
    return-void
.end method

.method public static create(Ljava/lang/String;I)Lorg/snmp4j/util/ThreadPool;
    .registers 3
    .parameter "name"
    .parameter "size"

    .prologue
    .line 70
    new-instance v0, Lorg/snmp4j/util/ThreadPool;

    invoke-direct {v0}, Lorg/snmp4j/util/ThreadPool;-><init>()V

    .line 71
    .local v0, pool:Lorg/snmp4j/util/ThreadPool;
    invoke-virtual {v0, p0, p1}, Lorg/snmp4j/util/ThreadPool;->setup(Ljava/lang/String;I)V

    .line 72
    return-object v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .registers 4

    .prologue
    .line 185
    monitor-enter p0

    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lorg/snmp4j/util/ThreadPool;->stop:Z

    .line 186
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v2, p0, Lorg/snmp4j/util/ThreadPool;->taskManagers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1e

    .line 187
    iget-object v2, p0, Lorg/snmp4j/util/ThreadPool;->taskManagers:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/snmp4j/util/ThreadPool$TaskManager;

    .line 188
    .local v1, tm:Lorg/snmp4j/util/ThreadPool$TaskManager;
    invoke-virtual {v1}, Lorg/snmp4j/util/ThreadPool$TaskManager;->terminate()V

    .line 189
    invoke-virtual {v1}, Lorg/snmp4j/util/ThreadPool$TaskManager;->interrupt()V
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_20

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 191
    .end local v1           #tm:Lorg/snmp4j/util/ThreadPool$TaskManager;
    :cond_1e
    monitor-exit p0

    return-void

    .line 185
    .end local v0           #i:I
    :catchall_20
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized execute(Lorg/snmp4j/util/WorkerTask;)V
    .registers 6
    .parameter "task"

    .prologue
    .line 84
    monitor-enter p0

    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    :try_start_2
    iget-object v3, p0, Lorg/snmp4j/util/ThreadPool;->taskManagers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_35

    .line 85
    iget-object v3, p0, Lorg/snmp4j/util/ThreadPool;->taskManagers:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/snmp4j/util/ThreadPool$TaskManager;

    .line 86
    .local v2, tm:Lorg/snmp4j/util/ThreadPool$TaskManager;
    iget-boolean v3, p0, Lorg/snmp4j/util/ThreadPool;->respawnThreads:Z

    if-eqz v3, :cond_27

    invoke-virtual {v2}, Lorg/snmp4j/util/ThreadPool$TaskManager;->isAlive()Z

    move-result v3

    if-nez v3, :cond_27

    .line 87
    new-instance v2, Lorg/snmp4j/util/ThreadPool$TaskManager;

    .end local v2           #tm:Lorg/snmp4j/util/ThreadPool$TaskManager;
    iget-object v3, p0, Lorg/snmp4j/util/ThreadPool;->name:Ljava/lang/String;

    invoke-virtual {p0, v3, v1}, Lorg/snmp4j/util/ThreadPool;->getTaskManagerName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/snmp4j/util/ThreadPool$TaskManager;-><init>(Lorg/snmp4j/util/ThreadPool;Ljava/lang/String;)V

    .line 89
    .restart local v2       #tm:Lorg/snmp4j/util/ThreadPool$TaskManager;
    :cond_27
    invoke-virtual {v2}, Lorg/snmp4j/util/ThreadPool$TaskManager;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 90
    invoke-virtual {v2, p1}, Lorg/snmp4j/util/ThreadPool$TaskManager;->execute(Lorg/snmp4j/util/WorkerTask;)V
    :try_end_30
    .catchall {:try_start_2 .. :try_end_30} :catchall_42

    .line 91
    monitor-exit p0

    return-void

    .line 84
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 95
    .end local v2           #tm:Lorg/snmp4j/util/ThreadPool$TaskManager;
    :cond_35
    :try_start_35
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_42
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_1

    .line 97
    :catch_39
    move-exception v0

    .line 98
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_3a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_42

    goto :goto_1

    .line 84
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_42
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lorg/snmp4j/util/ThreadPool;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected getTaskManagerName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .parameter "prefix"
    .parameter "index"

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized interrupt()V
    .registers 4

    .prologue
    .line 198
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    :try_start_2
    iget-object v2, p0, Lorg/snmp4j/util/ThreadPool;->taskManagers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_18

    .line 199
    iget-object v2, p0, Lorg/snmp4j/util/ThreadPool;->taskManagers:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/snmp4j/util/ThreadPool$TaskManager;

    .line 200
    .local v1, tm:Lorg/snmp4j/util/ThreadPool$TaskManager;
    invoke-virtual {v1}, Lorg/snmp4j/util/ThreadPool$TaskManager;->interrupt()V
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_1a

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 202
    .end local v1           #tm:Lorg/snmp4j/util/ThreadPool$TaskManager;
    :cond_18
    monitor-exit p0

    return-void

    .line 198
    :catchall_1a
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized isIdle()Z
    .registers 4

    .prologue
    .line 211
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    :try_start_2
    iget-object v2, p0, Lorg/snmp4j/util/ThreadPool;->taskManagers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1e

    .line 212
    iget-object v2, p0, Lorg/snmp4j/util/ThreadPool;->taskManagers:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/snmp4j/util/ThreadPool$TaskManager;

    .line 213
    .local v1, tm:Lorg/snmp4j/util/ThreadPool$TaskManager;
    invoke-virtual {v1}, Lorg/snmp4j/util/ThreadPool$TaskManager;->isIdle()Z
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_20

    move-result v2

    if-nez v2, :cond_1b

    .line 214
    const/4 v2, 0x0

    .line 217
    .end local v1           #tm:Lorg/snmp4j/util/ThreadPool$TaskManager;
    :goto_19
    monitor-exit p0

    return v2

    .line 211
    .restart local v1       #tm:Lorg/snmp4j/util/ThreadPool$TaskManager;
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 217
    .end local v1           #tm:Lorg/snmp4j/util/ThreadPool$TaskManager;
    :cond_1e
    const/4 v2, 0x1

    goto :goto_19

    .line 211
    :catchall_20
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isRespawnThreads()Z
    .registers 2

    .prologue
    .line 134
    iget-boolean v0, p0, Lorg/snmp4j/util/ThreadPool;->respawnThreads:Z

    return v0
.end method

.method public setRespawnThreads(Z)V
    .registers 2
    .parameter "respawnThreads"

    .prologue
    .line 144
    iput-boolean p1, p0, Lorg/snmp4j/util/ThreadPool;->respawnThreads:Z

    .line 145
    return-void
.end method

.method protected setup(Ljava/lang/String;I)V
    .registers 6
    .parameter "name"
    .parameter "size"

    .prologue
    .line 50
    iput-object p1, p0, Lorg/snmp4j/util/ThreadPool;->name:Ljava/lang/String;

    .line 51
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2, p2}, Ljava/util/Vector;-><init>(I)V

    iput-object v2, p0, Lorg/snmp4j/util/ThreadPool;->taskManagers:Ljava/util/Vector;

    .line 52
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, p2, :cond_20

    .line 53
    new-instance v1, Lorg/snmp4j/util/ThreadPool$TaskManager;

    invoke-virtual {p0, p1, v0}, Lorg/snmp4j/util/ThreadPool;->getTaskManagerName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/snmp4j/util/ThreadPool$TaskManager;-><init>(Lorg/snmp4j/util/ThreadPool;Ljava/lang/String;)V

    .line 54
    .local v1, tm:Lorg/snmp4j/util/ThreadPool$TaskManager;
    iget-object v2, p0, Lorg/snmp4j/util/ThreadPool;->taskManagers:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {v1}, Lorg/snmp4j/util/ThreadPool$TaskManager;->start()V

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 57
    .end local v1           #tm:Lorg/snmp4j/util/ThreadPool$TaskManager;
    :cond_20
    return-void
.end method

.method public stop()V
    .registers 6

    .prologue
    .line 162
    monitor-enter p0

    .line 163
    const/4 v4, 0x1

    :try_start_2
    iput-boolean v4, p0, Lorg/snmp4j/util/ThreadPool;->stop:Z

    .line 164
    iget-object v4, p0, Lorg/snmp4j/util/ThreadPool;->taskManagers:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 165
    .local v3, tms:Ljava/util/List;
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_28

    .line 166
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_37

    .line 167
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/snmp4j/util/ThreadPool$TaskManager;

    .line 168
    .local v2, tm:Lorg/snmp4j/util/ThreadPool$TaskManager;
    invoke-virtual {v2}, Lorg/snmp4j/util/ThreadPool$TaskManager;->terminate()V

    .line 169
    monitor-enter v2

    .line 170
    :try_start_1e
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 171
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_2b

    .line 173
    :try_start_22
    invoke-virtual {v2}, Lorg/snmp4j/util/ThreadPool$TaskManager;->join()V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_2e

    .line 166
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 165
    .end local v1           #i:I
    .end local v2           #tm:Lorg/snmp4j/util/ThreadPool$TaskManager;
    .end local v3           #tms:Ljava/util/List;
    :catchall_28
    move-exception v4

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v4

    .line 171
    .restart local v1       #i:I
    .restart local v2       #tm:Lorg/snmp4j/util/ThreadPool$TaskManager;
    .restart local v3       #tms:Ljava/util/List;
    :catchall_2b
    move-exception v4

    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v4

    .line 175
    :catch_2e
    move-exception v0

    .line 176
    .local v0, ex:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    goto :goto_25

    .line 179
    .end local v0           #ex:Ljava/lang/InterruptedException;
    .end local v2           #tm:Lorg/snmp4j/util/ThreadPool$TaskManager;
    :cond_37
    return-void
.end method

.method public declared-synchronized tryToExecute(Lorg/snmp4j/util/WorkerTask;)Z
    .registers 5
    .parameter "task"

    .prologue
    .line 114
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    :try_start_2
    iget-object v2, p0, Lorg/snmp4j/util/ThreadPool;->taskManagers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_36

    .line 115
    iget-object v2, p0, Lorg/snmp4j/util/ThreadPool;->taskManagers:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/snmp4j/util/ThreadPool$TaskManager;

    .line 116
    .local v1, tm:Lorg/snmp4j/util/ThreadPool$TaskManager;
    iget-boolean v2, p0, Lorg/snmp4j/util/ThreadPool;->respawnThreads:Z

    if-eqz v2, :cond_27

    invoke-virtual {v1}, Lorg/snmp4j/util/ThreadPool$TaskManager;->isAlive()Z

    move-result v2

    if-nez v2, :cond_27

    .line 117
    new-instance v1, Lorg/snmp4j/util/ThreadPool$TaskManager;

    .end local v1           #tm:Lorg/snmp4j/util/ThreadPool$TaskManager;
    iget-object v2, p0, Lorg/snmp4j/util/ThreadPool;->name:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lorg/snmp4j/util/ThreadPool;->getTaskManagerName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/snmp4j/util/ThreadPool$TaskManager;-><init>(Lorg/snmp4j/util/ThreadPool;Ljava/lang/String;)V

    .line 119
    .restart local v1       #tm:Lorg/snmp4j/util/ThreadPool$TaskManager;
    :cond_27
    invoke-virtual {v1}, Lorg/snmp4j/util/ThreadPool$TaskManager;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 120
    invoke-virtual {v1, p1}, Lorg/snmp4j/util/ThreadPool$TaskManager;->execute(Lorg/snmp4j/util/WorkerTask;)V
    :try_end_30
    .catchall {:try_start_2 .. :try_end_30} :catchall_38

    .line 121
    const/4 v2, 0x1

    .line 124
    .end local v1           #tm:Lorg/snmp4j/util/ThreadPool$TaskManager;
    :goto_31
    monitor-exit p0

    return v2

    .line 114
    .restart local v1       #tm:Lorg/snmp4j/util/ThreadPool$TaskManager;
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 124
    .end local v1           #tm:Lorg/snmp4j/util/ThreadPool$TaskManager;
    :cond_36
    const/4 v2, 0x0

    goto :goto_31

    .line 114
    :catchall_38
    move-exception v2

    monitor-exit p0

    throw v2
.end method
