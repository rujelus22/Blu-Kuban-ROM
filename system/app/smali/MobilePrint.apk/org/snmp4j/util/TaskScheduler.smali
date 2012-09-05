.class public Lorg/snmp4j/util/TaskScheduler;
.super Ljava/lang/Object;
.source "TaskScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEFAULT_SCHEDULER_TIMEOUT:J = 0x5L

.field static class$org$snmp4j$util$TaskScheduler:Ljava/lang/Class;


# instance fields
.field private logger:Lorg/snmp4j/log/LogAdapter;

.field protected schedulerTimeout:J

.field private stop:Z

.field private tasks:Ljava/util/LinkedList;

.field private threadPool:Lorg/snmp4j/util/ThreadPool;


# direct methods
.method public constructor <init>(Lorg/snmp4j/util/ThreadPool;)V
    .registers 4
    .parameter "threadPool"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lorg/snmp4j/util/TaskScheduler;->class$org$snmp4j$util$TaskScheduler:Ljava/lang/Class;

    if-nez v0, :cond_23

    const-string v0, "org.snmp4j.util.TaskScheduler"

    invoke-static {v0}, Lorg/snmp4j/util/TaskScheduler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/util/TaskScheduler;->class$org$snmp4j$util$TaskScheduler:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/snmp4j/log/LogFactory;->getLogger(Ljava/lang/Class;)Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/util/TaskScheduler;->logger:Lorg/snmp4j/log/LogAdapter;

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/util/TaskScheduler;->tasks:Ljava/util/LinkedList;

    .line 46
    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lorg/snmp4j/util/TaskScheduler;->schedulerTimeout:J

    .line 56
    iput-object p1, p0, Lorg/snmp4j/util/TaskScheduler;->threadPool:Lorg/snmp4j/util/ThreadPool;

    .line 57
    return-void

    .line 39
    :cond_23
    sget-object v0, Lorg/snmp4j/util/TaskScheduler;->class$org$snmp4j$util$TaskScheduler:Ljava/lang/Class;

    goto :goto_f
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 39
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public declared-synchronized addTask(Lorg/snmp4j/util/SchedulerTask;)V
    .registers 3
    .parameter "task"

    .prologue
    .line 65
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/util/TaskScheduler;->tasks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 67
    monitor-exit p0

    return-void

    .line 65
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .registers 2

    .prologue
    .line 84
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/util/TaskScheduler;->tasks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 85
    monitor-exit p0

    return-void

    .line 84
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isStop()Z
    .registers 2

    .prologue
    .line 160
    iget-boolean v0, p0, Lorg/snmp4j/util/TaskScheduler;->stop:Z

    return v0
.end method

.method public declared-synchronized removeTask(Lorg/snmp4j/util/SchedulerTask;)Z
    .registers 3
    .parameter "task"

    .prologue
    .line 77
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/util/TaskScheduler;->tasks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 92
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lorg/snmp4j/util/TaskScheduler;->stop:Z

    if-nez v5, :cond_b9

    .line 93
    const/4 v3, 0x0

    .line 94
    .local v3, readyToRun:Z
    monitor-enter p0

    .line 95
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    :try_start_8
    iget-object v5, p0, Lorg/snmp4j/util/TaskScheduler;->tasks:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v2, v5, :cond_83

    .line 96
    iget-object v5, p0, Lorg/snmp4j/util/TaskScheduler;->tasks:Ljava/util/LinkedList;

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/snmp4j/util/SchedulerTask;

    .line 97
    .local v4, task:Lorg/snmp4j/util/SchedulerTask;
    invoke-interface {v4}, Lorg/snmp4j/util/SchedulerTask;->isDone()Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 98
    iget-object v5, p0, Lorg/snmp4j/util/TaskScheduler;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v5}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_44

    .line 99
    iget-object v5, p0, Lorg/snmp4j/util/TaskScheduler;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Task \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\' is done"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 101
    :cond_44
    iget-object v5, p0, Lorg/snmp4j/util/TaskScheduler;->tasks:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 95
    :cond_49
    :goto_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 104
    :cond_4c
    invoke-interface {v4}, Lorg/snmp4j/util/SchedulerTask;->isReadyToRun()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 105
    const/4 v3, 0x1

    .line 106
    :goto_53
    iget-object v5, p0, Lorg/snmp4j/util/TaskScheduler;->threadPool:Lorg/snmp4j/util/ThreadPool;

    invoke-virtual {v5, v4}, Lorg/snmp4j/util/ThreadPool;->tryToExecute(Lorg/snmp4j/util/WorkerTask;)Z
    :try_end_58
    .catchall {:try_start_8 .. :try_end_58} :catchall_a6

    move-result v5

    if-nez v5, :cond_75

    .line 108
    :try_start_5b
    iget-object v6, p0, Lorg/snmp4j/util/TaskScheduler;->threadPool:Lorg/snmp4j/util/ThreadPool;

    monitor-enter v6
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_a6
    .catch Ljava/lang/InterruptedException; {:try_start_5b .. :try_end_5e} :catch_6a

    .line 109
    :try_start_5e
    iget-object v5, p0, Lorg/snmp4j/util/TaskScheduler;->threadPool:Lorg/snmp4j/util/ThreadPool;

    iget-wide v7, p0, Lorg/snmp4j/util/TaskScheduler;->schedulerTimeout:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 110
    monitor-exit v6

    goto :goto_53

    :catchall_67
    move-exception v5

    monitor-exit v6
    :try_end_69
    .catchall {:try_start_5e .. :try_end_69} :catchall_67

    :try_start_69
    throw v5
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_a6
    .catch Ljava/lang/InterruptedException; {:try_start_69 .. :try_end_6a} :catch_6a

    .line 112
    :catch_6a
    move-exception v0

    .line 113
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_6b
    iget-object v5, p0, Lorg/snmp4j/util/TaskScheduler;->logger:Lorg/snmp4j/log/LogAdapter;

    const-string v6, "Scheduler interrupted, aborting..."

    invoke-interface {v5, v6}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    .line 114
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/snmp4j/util/TaskScheduler;->stop:Z

    .line 118
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :cond_75
    iget-object v5, p0, Lorg/snmp4j/util/TaskScheduler;->tasks:Ljava/util/LinkedList;

    iget-object v6, p0, Lorg/snmp4j/util/TaskScheduler;->tasks:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 119
    add-int/lit8 v2, v2, -0x1

    goto :goto_49

    .line 122
    .end local v4           #task:Lorg/snmp4j/util/SchedulerTask;
    :cond_83
    monitor-exit p0
    :try_end_84
    .catchall {:try_start_6b .. :try_end_84} :catchall_a6

    .line 123
    if-nez v3, :cond_1

    .line 125
    :try_start_86
    iget-object v5, p0, Lorg/snmp4j/util/TaskScheduler;->threadPool:Lorg/snmp4j/util/ThreadPool;

    invoke-virtual {v5}, Lorg/snmp4j/util/ThreadPool;->isIdle()Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 126
    monitor-enter p0
    :try_end_8f
    .catch Ljava/lang/InterruptedException; {:try_start_86 .. :try_end_8f} :catch_9a

    .line 127
    :try_start_8f
    iget-wide v5, p0, Lorg/snmp4j/util/TaskScheduler;->schedulerTimeout:J

    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 128
    monitor-exit p0

    goto/16 :goto_1

    :catchall_97
    move-exception v5

    monitor-exit p0
    :try_end_99
    .catchall {:try_start_8f .. :try_end_99} :catchall_97

    :try_start_99
    throw v5
    :try_end_9a
    .catch Ljava/lang/InterruptedException; {:try_start_99 .. :try_end_9a} :catch_9a

    .line 136
    :catch_9a
    move-exception v1

    .line 137
    .local v1, ex1:Ljava/lang/InterruptedException;
    iget-object v5, p0, Lorg/snmp4j/util/TaskScheduler;->logger:Lorg/snmp4j/log/LogAdapter;

    const-string v6, "Scheduler interrupted, aborting..."

    invoke-interface {v5, v6}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    .line 138
    iput-boolean v9, p0, Lorg/snmp4j/util/TaskScheduler;->stop:Z

    goto/16 :goto_1

    .line 122
    .end local v1           #ex1:Ljava/lang/InterruptedException;
    :catchall_a6
    move-exception v5

    :try_start_a7
    monitor-exit p0
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    throw v5

    .line 131
    :cond_a9
    :try_start_a9
    iget-object v6, p0, Lorg/snmp4j/util/TaskScheduler;->threadPool:Lorg/snmp4j/util/ThreadPool;

    monitor-enter v6
    :try_end_ac
    .catch Ljava/lang/InterruptedException; {:try_start_a9 .. :try_end_ac} :catch_9a

    .line 132
    :try_start_ac
    iget-object v5, p0, Lorg/snmp4j/util/TaskScheduler;->threadPool:Lorg/snmp4j/util/ThreadPool;

    iget-wide v7, p0, Lorg/snmp4j/util/TaskScheduler;->schedulerTimeout:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 133
    monitor-exit v6

    goto/16 :goto_1

    :catchall_b6
    move-exception v5

    monitor-exit v6
    :try_end_b8
    .catchall {:try_start_ac .. :try_end_b8} :catchall_b6

    :try_start_b8
    throw v5
    :try_end_b9
    .catch Ljava/lang/InterruptedException; {:try_start_b8 .. :try_end_b9} :catch_9a

    .line 142
    .end local v2           #i:I
    .end local v3           #readyToRun:Z
    :cond_b9
    iget-object v5, p0, Lorg/snmp4j/util/TaskScheduler;->logger:Lorg/snmp4j/log/LogAdapter;

    const-string v6, "Scheduler stopped."

    invoke-interface {v5, v6}, Lorg/snmp4j/log/LogAdapter;->info(Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public setStop(Z)V
    .registers 2
    .parameter "stop"

    .prologue
    .line 151
    iput-boolean p1, p0, Lorg/snmp4j/util/TaskScheduler;->stop:Z

    .line 152
    return-void
.end method
