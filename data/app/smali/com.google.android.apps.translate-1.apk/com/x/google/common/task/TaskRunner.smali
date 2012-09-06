.class public Lcom/x/google/common/task/TaskRunner;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final DEFAULT_PRIORITY:I = 0x7f

.field private static final DEFAULT_WORKER_COUNT:I = 0x1

.field private static final DEFAULT_WORKER_NAME:Ljava/lang/String; = "TaskRunner"

.field public static final MAX_PRIORITY:I = 0xff

.field public static final MIN_PRIORITY:I


# instance fields
.field protected final clock:Lcom/x/google/common/Clock;

.field private defaultPriority:I

.field protected factory:Lcom/x/google/common/lang/ThreadFactory;

.field private final logger:Lcom/x/google/debug/LogSource;

.field private maxPriority:I

.field private minPriority:I

.field protected mutex:Ljava/lang/Object;

.field protected name:Ljava/lang/String;

.field protected priorityTaskQueue:Ljava/util/Vector;

.field protected running:Z

.field private final runningTaskMap:Ljava/util/Hashtable;

.field private final taskMap:Ljava/util/Hashtable;

.field protected timerTaskQueue:Ljava/util/Vector;

.field protected workers:[Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/x/google/common/lang/ThreadFactory;)V
    .registers 4

    const-string v0, "TaskRunner"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/x/google/common/task/TaskRunner;-><init>(Lcom/x/google/common/lang/ThreadFactory;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/x/google/common/lang/ThreadFactory;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/x/google/common/task/TaskRunner;-><init>(Lcom/x/google/common/lang/ThreadFactory;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/x/google/common/lang/ThreadFactory;Ljava/lang/String;I)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/x/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/x/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    const/16 v0, 0x7f

    iput v0, p0, Lcom/x/google/common/task/TaskRunner;->defaultPriority:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/x/google/common/task/TaskRunner;->maxPriority:I

    iput v1, p0, Lcom/x/google/common/task/TaskRunner;->minPriority:I

    iput-boolean v1, p0, Lcom/x/google/common/task/TaskRunner;->running:Z

    iput-object p1, p0, Lcom/x/google/common/task/TaskRunner;->factory:Lcom/x/google/common/lang/ThreadFactory;

    iput-object p2, p0, Lcom/x/google/common/task/TaskRunner;->name:Ljava/lang/String;

    new-array v0, p3, [Ljava/lang/Thread;

    iput-object v0, p0, Lcom/x/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/x/google/common/Config;->getClock()Lcom/x/google/common/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/common/task/TaskRunner;->clock:Lcom/x/google/common/Clock;

    iput-object v2, p0, Lcom/x/google/common/task/TaskRunner;->taskMap:Ljava/util/Hashtable;

    iput-object v2, p0, Lcom/x/google/common/task/TaskRunner;->runningTaskMap:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/debug/LogSource;->getLogSource(Ljava/lang/Class;)Lcom/x/google/debug/LogSource;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    return-void
.end method

.method private logFinishedTask(Lcom/x/google/common/task/AbstractTask;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    return-object v0
.end method

.method private logScheduleTask(Lcom/x/google/common/task/AbstractTask;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    return-object v0
.end method

.method private logStartingTask(Lcom/x/google/common/task/AbstractTask;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    return-object v0
.end method

.method private printTaskSources()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public cancelTask(Lcom/x/google/common/task/AbstractTask;)I
    .registers 4

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p1}, Lcom/x/google/common/task/AbstractTask;->cancelInternal()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method cancelTaskInternal(Lcom/x/google/common/task/AbstractTask;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    invoke-virtual {p1}, Lcom/x/google/common/task/AbstractTask;->getState()I

    move-result v3

    packed-switch v3, :pswitch_data_3a

    monitor-exit v2

    move v0, v1

    :goto_e
    return v0

    :pswitch_f
    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/x/google/common/task/AbstractTask;->setState(I)V

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_e

    :catchall_1f
    move-exception v0

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_1f

    throw v0

    :pswitch_22
    :try_start_22
    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/x/google/common/task/AbstractTask;->setState(I)V

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_e

    :pswitch_32
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/x/google/common/task/AbstractTask;->setState(I)V

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_22 .. :try_end_37} :catchall_1f

    move v0, v1

    goto :goto_e

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_f
        :pswitch_22
        :pswitch_32
        :pswitch_32
    .end packed-switch
.end method

.method getDefaultPriority()I
    .registers 2

    iget v0, p0, Lcom/x/google/common/task/TaskRunner;->defaultPriority:I

    return v0
.end method

.method protected getLogInfo()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method getMaxPriority()I
    .registers 2

    iget v0, p0, Lcom/x/google/common/task/TaskRunner;->maxPriority:I

    return v0
.end method

.method getMinPriority()I
    .registers 2

    iget v0, p0, Lcom/x/google/common/task/TaskRunner;->minPriority:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected getNextTaskToRun()Lcom/x/google/common/task/Task;
    .registers 11

    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    invoke-virtual {v0, v8}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextTaskToRun(): moving expired tasks @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/x/google/common/task/TaskRunner;->clock:Lcom/x/google/common/Clock;

    invoke-interface {v3}, Lcom/x/google/common/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextTaskToRun(): timer queue length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/x/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextTaskToRun(): priority queue length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/x/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :cond_65
    :goto_65
    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_101

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/common/task/TimerTask;

    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    invoke-virtual {v2, v8}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_84

    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    const-string v3, "getNextTaskToRun(): timerTask = "

    invoke-virtual {v2, v3, v0}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_84
    invoke-virtual {v0}, Lcom/x/google/common/task/TimerTask;->getScheduledTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/x/google/common/task/TaskRunner;->clock:Lcom/x/google/common/Clock;

    invoke-interface {v4}, Lcom/x/google/common/Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    invoke-virtual {v4, v8}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_d1

    iget-object v4, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNextTaskToRun(): current = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/x/google/common/task/TaskRunner;->clock:Lcom/x/google/common/Clock;

    invoke-interface {v6}, Lcom/x/google/common/Clock;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNextTaskToRun(): scheduled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/x/google/common/task/TimerTask;->getScheduledTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :cond_d1
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_101

    iget-object v4, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    invoke-virtual {v4, v8}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_f7

    iget-object v4, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gettNextTaskToRun(): #2 delta = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :cond_f7
    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v2, v9}, Ljava/util/Vector;->removeElementAt(I)V

    invoke-virtual {p0, v0}, Lcom/x/google/common/task/TaskRunner;->schedulePriorityTaskInternal(Lcom/x/google/common/task/Task;)V

    goto/16 :goto_65

    :cond_101
    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    invoke-virtual {v0, v8}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_127

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextTask(): getting available task @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/x/google/common/task/TaskRunner;->clock:Lcom/x/google/common/Clock;

    invoke-interface {v3}, Lcom/x/google/common/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :cond_127
    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_140

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/common/task/Task;

    invoke-virtual {v0, v8}, Lcom/x/google/common/task/Task;->setState(I)V

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v1, v9}, Ljava/util/Vector;->removeElementAt(I)V

    :goto_13f
    return-object v0

    :cond_140
    move-object v0, v1

    goto :goto_13f
.end method

.method public getPriorityQueueLength()I
    .registers 3

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public getTimerQueueLength()I
    .registers 3

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public isWorker()Z
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v3

    move v1, v0

    :goto_9
    :try_start_9
    iget-object v4, p0, Lcom/x/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    array-length v4, v4

    if-ge v1, v4, :cond_1a

    iget-object v4, p0, Lcom/x/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    aget-object v4, v4, v1

    if-ne v2, v4, :cond_17

    const/4 v0, 0x1

    monitor-exit v3

    :goto_16
    return v0

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1a
    monitor-exit v3

    goto :goto_16

    :catchall_1c
    move-exception v0

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public run()V
    .registers 7

    const/4 v5, 0x3

    const/4 v0, 0x0

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    invoke-virtual {v1, v5}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run(): loop [running="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/x/google/common/task/TaskRunner;->running:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :cond_2a
    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v1

    if-eqz v0, :cond_4d

    :try_start_2f
    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    const-string v3, "run(): clean up"

    invoke-virtual {v2, v3}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :cond_3f
    invoke-virtual {v0}, Lcom/x/google/common/task/Task;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_78

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/x/google/common/task/Task;->setState(I)V

    invoke-virtual {v0}, Lcom/x/google/common/task/Task;->scheduleInternal()V

    :cond_4d
    :goto_4d
    invoke-virtual {p0}, Lcom/x/google/common/task/TaskRunner;->waitForSomethingToDo()Z

    move-result v0

    if-nez v0, :cond_86

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    const-string v2, "run(): exiting loop"

    invoke-virtual {v0, v2}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :cond_63
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_2f .. :try_end_64} :catchall_83

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    invoke-virtual {v0, v5}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    const-string v1, "run(): end "

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_77
    return-void

    :cond_78
    :try_start_78
    invoke-virtual {v0}, Lcom/x/google/common/task/Task;->getState()I

    move-result v2

    if-ne v2, v5, :cond_4d

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/x/google/common/task/Task;->setState(I)V

    goto :goto_4d

    :catchall_83
    move-exception v0

    monitor-exit v1
    :try_end_85
    .catchall {:try_start_78 .. :try_end_85} :catchall_83

    throw v0

    :cond_86
    :try_start_86
    invoke-virtual {p0}, Lcom/x/google/common/task/TaskRunner;->getNextTaskToRun()Lcom/x/google/common/task/Task;

    move-result-object v0

    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_9c

    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    invoke-direct {p0, v0}, Lcom/x/google/common/task/TaskRunner;->logStartingTask(Lcom/x/google/common/task/AbstractTask;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :cond_9c
    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_86 .. :try_end_9d} :catchall_83

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    invoke-virtual {v1, v5}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_c3

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run(): running task @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/x/google/common/task/TaskRunner;->clock:Lcom/x/google/common/Clock;

    invoke-interface {v3}, Lcom/x/google/common/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :cond_c3
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/x/google/common/task/Task;->updateStartTimestamp()V

    :try_start_c8
    invoke-virtual {v0}, Lcom/x/google/common/task/Task;->runInternal()V
    :try_end_cb
    .catch Ljava/lang/Throwable; {:try_start_c8 .. :try_end_cb} :catch_e1

    :goto_cb
    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    invoke-virtual {v1, v5}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_dc

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    invoke-direct {p0, v0}, Lcom/x/google/common/task/TaskRunner;->logFinishedTask(Lcom/x/google/common/task/AbstractTask;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :cond_dc
    invoke-virtual {v0}, Lcom/x/google/common/task/Task;->updateFinishTimestamp()V

    goto/16 :goto_2

    :catch_e1
    move-exception v1

    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runtime exception thrown by task ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/x/google/debug/LogSource;->severe(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_cb
.end method

.method schedulePriorityTaskInternal(Lcom/x/google/common/task/Task;)V
    .registers 9

    iget-object v4, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    invoke-virtual {p1}, Lcom/x/google/common/task/Task;->getPriority()I

    move-result v5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    :goto_e
    if-ge v3, v1, :cond_2d

    add-int v0, v3, v1

    div-int/lit8 v2, v0, 0x2

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/common/task/Task;

    invoke-virtual {v0}, Lcom/x/google/common/task/Task;->getPriority()I

    move-result v0

    if-gt v5, v0, :cond_2a

    add-int/lit8 v0, v2, 0x1

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_27
    move v3, v1

    move v1, v0

    goto :goto_e

    :cond_2a
    move v0, v2

    move v1, v3

    goto :goto_27

    :cond_2d
    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    invoke-virtual {p1}, Lcom/x/google/common/task/Task;->updateRunnableTimestamp()V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/x/google/common/task/Task;->setState(I)V

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4

    return-void

    :catchall_40
    move-exception v0

    monitor-exit v4
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v0
.end method

.method scheduleTask(Lcom/x/google/common/task/AbstractTask;)V
    .registers 4

    invoke-virtual {p1}, Lcom/x/google/common/task/AbstractTask;->updateScheduleTimestamp()V

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    invoke-virtual {p1}, Lcom/x/google/common/task/AbstractTask;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    :goto_d
    :pswitch_d
    monitor-exit v1

    return-void

    :pswitch_f
    invoke-virtual {p1}, Lcom/x/google/common/task/AbstractTask;->scheduleInternal()V

    goto :goto_d

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v0

    :pswitch_16
    const/4 v0, 0x4

    :try_start_17
    invoke-virtual {p1, v0}, Lcom/x/google/common/task/AbstractTask;->setState(I)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_13

    goto :goto_d

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_f
        :pswitch_d
        :pswitch_d
        :pswitch_16
    .end packed-switch
.end method

.method scheduleTimerTaskInternal(Lcom/x/google/common/task/TimerTask;)V
    .registers 12

    iget-object v4, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    invoke-virtual {p1}, Lcom/x/google/common/task/TimerTask;->getScheduledTime()J

    move-result-wide v5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    :goto_e
    if-ge v3, v1, :cond_2f

    add-int v0, v3, v1

    div-int/lit8 v2, v0, 0x2

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/common/task/TimerTask;

    invoke-virtual {v0}, Lcom/x/google/common/task/TimerTask;->getScheduledTime()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-ltz v0, :cond_2c

    add-int/lit8 v0, v2, 0x1

    move v9, v1

    move v1, v0

    move v0, v9

    :goto_29
    move v3, v1

    move v1, v0

    goto :goto_e

    :cond_2c
    move v0, v2

    move v1, v3

    goto :goto_29

    :cond_2f
    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/x/google/common/task/TimerTask;->setState(I)V

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4

    return-void

    :catchall_3f
    move-exception v0

    monitor-exit v4
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method public start()V
    .registers 7

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/x/google/common/task/TaskRunner;->running:Z

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/x/google/common/task/TaskRunner;->running:Z

    const/4 v0, 0x0

    :goto_b
    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    array-length v2, v2

    if-ge v0, v2, :cond_3d

    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    iget-object v3, p0, Lcom/x/google/common/task/TaskRunner;->factory:Lcom/x/google/common/lang/ThreadFactory;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/x/google/common/task/TaskRunner;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p0}, Lcom/x/google/common/lang/ThreadFactory;->createThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_3d
    monitor-exit v1

    return-void

    :catchall_3f
    move-exception v0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method public stop()V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-boolean v2, p0, Lcom/x/google/common/task/TaskRunner;->running:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/x/google/common/task/TaskRunner;->running:Z

    :goto_c
    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    array-length v2, v2

    if-ge v0, v2, :cond_19

    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_19
    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_1e
    monitor-exit v1

    return-void

    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public stopAndWait()V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    const-string v2, "#stopAndWait"

    invoke-virtual {v1, v2}, Lcom/x/google/debug/LogSource;->info(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    iget-boolean v2, p0, Lcom/x/google/common/task/TaskRunner;->running:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/x/google/common/task/TaskRunner;->running:Z

    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    :cond_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_4d

    :goto_19
    :try_start_19
    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    array-length v1, v1

    if-ge v0, v1, :cond_5a

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    aget-object v1, v1, v0

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    aget-object v1, v1, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_50

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    const-string v2, "#stopAndWait - waiting for thread to die "

    iget-object v3, p0, Lcom/x/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/x/google/debug/LogSource;->info(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_4a} :catch_56

    :goto_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :catchall_4d
    move-exception v0

    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v0

    :cond_50
    :try_start_50
    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    const/4 v2, 0x0

    aput-object v2, v1, v0
    :try_end_55
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_55} :catch_56

    goto :goto_4a

    :catch_56
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_5a
    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    const-string v1, "#stopAndWait - done"

    invoke-virtual {v0, v1}, Lcom/x/google/debug/LogSource;->info(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected waitForSomethingToDo()Z
    .registers 6

    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/x/google/common/task/TaskRunner;->running:Z

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    invoke-virtual {v0, v1}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitForSomethingToDo(): task queue empty @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->clock:Lcom/x/google/common/Clock;

    invoke-interface {v2}, Lcom/x/google/common/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :cond_33
    :try_start_33
    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    const-string v1, "waitForSomethingToDo(): timer task queue empty"

    invoke-virtual {v0, v1}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :cond_4b
    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_50} :catch_b9

    :cond_50
    :goto_50
    iget-boolean v0, p0, Lcom/x/google/common/task/TaskRunner;->running:Z

    return v0

    :cond_53
    :try_start_53
    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/common/task/TimerTask;

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_81

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitForSomethingToDo(): scheduled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/x/google/common/task/TimerTask;->getScheduledTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :cond_81
    invoke-virtual {v0}, Lcom/x/google/common/task/TimerTask;->getScheduledTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->clock:Lcom/x/google/common/Clock;

    invoke-interface {v2}, Lcom/x/google/common/Clock;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_ad

    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waitForSomethingToDo(): #1 delta = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :cond_ad
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_50

    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_b8
    .catch Ljava/lang/InterruptedException; {:try_start_53 .. :try_end_b8} :catch_b9

    goto :goto_50

    :catch_b9
    move-exception v0

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    const-string v2, "exception thrown while waiting"

    invoke-virtual {v1, v2, v0}, Lcom/x/google/debug/LogSource;->severe(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_50
.end method
