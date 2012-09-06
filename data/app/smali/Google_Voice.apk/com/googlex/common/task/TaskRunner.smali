.class public Lcom/googlex/common/task/TaskRunner;
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
.field protected final clock:Lcom/googlex/common/Clock;

.field private defaultPriority:I

.field protected factory:Lcom/googlex/common/lang/ThreadFactory;

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
.method public constructor <init>(Lcom/googlex/common/lang/ThreadFactory;)V
    .registers 4

    const-string v0, "TaskRunner"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/googlex/common/task/TaskRunner;-><init>(Lcom/googlex/common/lang/ThreadFactory;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlex/common/lang/ThreadFactory;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/googlex/common/task/TaskRunner;-><init>(Lcom/googlex/common/lang/ThreadFactory;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlex/common/lang/ThreadFactory;Ljava/lang/String;I)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/googlex/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/googlex/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/googlex/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    const/16 v0, 0x7f

    iput v0, p0, Lcom/googlex/common/task/TaskRunner;->defaultPriority:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/googlex/common/task/TaskRunner;->maxPriority:I

    iput v1, p0, Lcom/googlex/common/task/TaskRunner;->minPriority:I

    iput-boolean v1, p0, Lcom/googlex/common/task/TaskRunner;->running:Z

    iput-object p1, p0, Lcom/googlex/common/task/TaskRunner;->factory:Lcom/googlex/common/lang/ThreadFactory;

    iput-object p2, p0, Lcom/googlex/common/task/TaskRunner;->name:Ljava/lang/String;

    new-array v0, p3, [Ljava/lang/Thread;

    iput-object v0, p0, Lcom/googlex/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    invoke-static {}, Lcom/googlex/common/Config;->getInstance()Lcom/googlex/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlex/common/Config;->getClock()Lcom/googlex/common/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/googlex/common/task/TaskRunner;->clock:Lcom/googlex/common/Clock;

    iput-object v2, p0, Lcom/googlex/common/task/TaskRunner;->taskMap:Ljava/util/Hashtable;

    iput-object v2, p0, Lcom/googlex/common/task/TaskRunner;->runningTaskMap:Ljava/util/Hashtable;

    return-void
.end method

.method private logFinishedTask(Lcom/googlex/common/task/AbstractTask;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    return-object v0
.end method

.method private logScheduleTask(Lcom/googlex/common/task/AbstractTask;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    return-object v0
.end method

.method private logStartingTask(Lcom/googlex/common/task/AbstractTask;)Ljava/lang/String;
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
.method public cancelTask(Lcom/googlex/common/task/AbstractTask;)I
    .registers 4

    iget-object v1, p0, Lcom/googlex/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p1}, Lcom/googlex/common/task/AbstractTask;->cancelInternal()I

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

.method cancelTaskInternal(Lcom/googlex/common/task/AbstractTask;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/googlex/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    invoke-virtual {p1}, Lcom/googlex/common/task/AbstractTask;->getState()I

    move-result v3

    packed-switch v3, :pswitch_data_3a

    monitor-exit v2

    move v0, v1

    :goto_e
    return v0

    :pswitch_f
    iget-object v1, p0, Lcom/googlex/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/googlex/common/task/AbstractTask;->setState(I)V

    iget-object v1, p0, Lcom/googlex/common/task/TaskRunner;->mutex:Ljava/lang/Object;

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
    iget-object v1, p0, Lcom/googlex/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/googlex/common/task/AbstractTask;->setState(I)V

    iget-object v1, p0, Lcom/googlex/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_e

    :pswitch_32
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/googlex/common/task/AbstractTask;->setState(I)V

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

    iget v0, p0, Lcom/googlex/common/task/TaskRunner;->defaultPriority:I

    return v0
.end method

.method protected getLogInfo()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskRunner ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlex/common/task/TaskRunner;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Running = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlex/common/task/TaskRunner;->runningTaskMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",idle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlex/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    array-length v2, v2

    iget-object v3, p0, Lcom/googlex/common/task/TaskRunner;->runningTaskMap:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMaxPriority()I
    .registers 2

    iget v0, p0, Lcom/googlex/common/task/TaskRunner;->maxPriority:I

    return v0
.end method

.method getMinPriority()I
    .registers 2

    iget v0, p0, Lcom/googlex/common/task/TaskRunner;->minPriority:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/googlex/common/task/TaskRunner;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected getNextTaskToRun()Lcom/googlex/common/task/Task;
    .registers 8

    const/4 v6, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v0, p0, Lcom/googlex/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/googlex/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlex/common/task/TimerTask;

    invoke-virtual {v0}, Lcom/googlex/common/task/TimerTask;->getScheduledTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/googlex/common/task/TaskRunner;->clock:Lcom/googlex/common/Clock;

    invoke-interface {v4}, Lcom/googlex/common/Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2c

    iget-object v2, p0, Lcom/googlex/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v2, v6}, Ljava/util/Vector;->removeElementAt(I)V

    invoke-virtual {p0, v0}, Lcom/googlex/common/task/TaskRunner;->schedulePriorityTaskInternal(Lcom/googlex/common/task/Task;)V

    goto :goto_2

    :cond_2c
    iget-object v0, p0, Lcom/googlex/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/googlex/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlex/common/task/Task;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/googlex/common/task/Task;->setState(I)V

    iget-object v1, p0, Lcom/googlex/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->removeElementAt(I)V

    :goto_45
    return-object v0

    :cond_46
    move-object v0, v1

    goto :goto_45
.end method

.method public getPriorityQueueLength()I
    .registers 3

    iget-object v1, p0, Lcom/googlex/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/googlex/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

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

    iget-object v1, p0, Lcom/googlex/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/googlex/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

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

    iget-object v3, p0, Lcom/googlex/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v3

    move v1, v0

    :goto_9
    :try_start_9
    iget-object v4, p0, Lcom/googlex/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    array-length v4, v4

    if-ge v1, v4, :cond_1a

    iget-object v4, p0, Lcom/googlex/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

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
    .registers 5

    const/4 v0, 0x0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/googlex/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v1

    if-eqz v0, :cond_14

    :try_start_6
    invoke-virtual {v0}, Lcom/googlex/common/task/Task;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1c

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/googlex/common/task/Task;->setState(I)V

    invoke-virtual {v0}, Lcom/googlex/common/task/Task;->scheduleInternal()V

    :cond_14
    :goto_14
    invoke-virtual {p0}, Lcom/googlex/common/task/TaskRunner;->waitForSomethingToDo()Z

    move-result v0

    if-nez v0, :cond_2b

    monitor-exit v1

    return-void

    :cond_1c
    invoke-virtual {v0}, Lcom/googlex/common/task/Task;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_14

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/googlex/common/task/Task;->setState(I)V

    goto :goto_14

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_28

    throw v0

    :cond_2b
    :try_start_2b
    invoke-virtual {p0}, Lcom/googlex/common/task/TaskRunner;->getNextTaskToRun()Lcom/googlex/common/task/Task;

    move-result-object v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_28

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/googlex/common/task/Task;->updateStartTimestamp()V

    :try_start_35
    invoke-virtual {v0}, Lcom/googlex/common/task/Task;->runInternal()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_38} :catch_3c

    :goto_38
    invoke-virtual {v0}, Lcom/googlex/common/task/Task;->updateFinishTimestamp()V

    goto :goto_1

    :catch_3c
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runtime exception thrown by task ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/googlex/debug/Log;->logThrowable(Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_38
.end method

.method schedulePriorityTaskInternal(Lcom/googlex/common/task/Task;)V
    .registers 9

    iget-object v4, p0, Lcom/googlex/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    invoke-virtual {p1}, Lcom/googlex/common/task/Task;->getPriority()I

    move-result v5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/googlex/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    :goto_e
    if-ge v3, v1, :cond_2d

    add-int v0, v3, v1

    div-int/lit8 v2, v0, 0x2

    iget-object v0, p0, Lcom/googlex/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlex/common/task/Task;

    invoke-virtual {v0}, Lcom/googlex/common/task/Task;->getPriority()I

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
    iget-object v0, p0, Lcom/googlex/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    invoke-virtual {p1}, Lcom/googlex/common/task/Task;->updateRunnableTimestamp()V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/googlex/common/task/Task;->setState(I)V

    iget-object v0, p0, Lcom/googlex/common/task/TaskRunner;->mutex:Ljava/lang/Object;

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

.method scheduleTask(Lcom/googlex/common/task/AbstractTask;)V
    .registers 4

    invoke-virtual {p1}, Lcom/googlex/common/task/AbstractTask;->updateScheduleTimestamp()V

    iget-object v1, p0, Lcom/googlex/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    invoke-virtual {p1}, Lcom/googlex/common/task/AbstractTask;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    :goto_d
    :pswitch_d
    monitor-exit v1

    return-void

    :pswitch_f
    invoke-virtual {p1}, Lcom/googlex/common/task/AbstractTask;->scheduleInternal()V

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
    invoke-virtual {p1, v0}, Lcom/googlex/common/task/AbstractTask;->setState(I)V
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

.method scheduleTimerTaskInternal(Lcom/googlex/common/task/TimerTask;)V
    .registers 12

    iget-object v4, p0, Lcom/googlex/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    invoke-virtual {p1}, Lcom/googlex/common/task/TimerTask;->getScheduledTime()J

    move-result-wide v5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/googlex/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    :goto_e
    if-ge v3, v1, :cond_2f

    add-int v0, v3, v1

    div-int/lit8 v2, v0, 0x2

    iget-object v0, p0, Lcom/googlex/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlex/common/task/TimerTask;

    invoke-virtual {v0}, Lcom/googlex/common/task/TimerTask;->getScheduledTime()J

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
    iget-object v0, p0, Lcom/googlex/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/googlex/common/task/TimerTask;->setState(I)V

    iget-object v0, p0, Lcom/googlex/common/task/TaskRunner;->mutex:Ljava/lang/Object;

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

    iget-object v1, p0, Lcom/googlex/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/googlex/common/task/TaskRunner;->running:Z

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlex/common/task/TaskRunner;->running:Z

    const/4 v0, 0x0

    :goto_b
    iget-object v2, p0, Lcom/googlex/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    array-length v2, v2

    if-ge v0, v2, :cond_3d

    iget-object v2, p0, Lcom/googlex/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    iget-object v3, p0, Lcom/googlex/common/task/TaskRunner;->factory:Lcom/googlex/common/lang/ThreadFactory;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/googlex/common/task/TaskRunner;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p0}, Lcom/googlex/common/lang/ThreadFactory;->createThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/googlex/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

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

    iget-object v1, p0, Lcom/googlex/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-boolean v2, p0, Lcom/googlex/common/task/TaskRunner;->running:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/googlex/common/task/TaskRunner;->running:Z

    :goto_c
    iget-object v2, p0, Lcom/googlex/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    array-length v2, v2

    if-ge v0, v2, :cond_19

    iget-object v2, p0, Lcom/googlex/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_19
    iget-object v0, p0, Lcom/googlex/common/task/TaskRunner;->mutex:Ljava/lang/Object;

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

    iget-object v1, p0, Lcom/googlex/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-boolean v2, p0, Lcom/googlex/common/task/TaskRunner;->running:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/googlex/common/task/TaskRunner;->running:Z

    iget-object v2, p0, Lcom/googlex/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    :cond_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_3b

    :goto_12
    :try_start_12
    iget-object v1, p0, Lcom/googlex/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    array-length v1, v1

    if-ge v0, v1, :cond_48

    iget-object v1, p0, Lcom/googlex/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/googlex/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    aget-object v1, v1, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_3e

    iget-object v1, p0, Lcom/googlex/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/googlex/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_38} :catch_44

    :goto_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v0

    :cond_3e
    :try_start_3e
    iget-object v1, p0, Lcom/googlex/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    const/4 v2, 0x0

    aput-object v2, v1, v0
    :try_end_43
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_43} :catch_44

    goto :goto_38

    :catch_44
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_48
    return-void
.end method

.method protected waitForSomethingToDo()Z
    .registers 5

    iget-boolean v0, p0, Lcom/googlex/common/task/TaskRunner;->running:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/googlex/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    :try_start_c
    iget-object v0, p0, Lcom/googlex/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/googlex/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_19} :catch_3c

    :cond_19
    :goto_19
    iget-boolean v0, p0, Lcom/googlex/common/task/TaskRunner;->running:Z

    return v0

    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/googlex/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlex/common/task/TimerTask;

    invoke-virtual {v0}, Lcom/googlex/common/task/TimerTask;->getScheduledTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/googlex/common/task/TaskRunner;->clock:Lcom/googlex/common/Clock;

    invoke-interface {v2}, Lcom/googlex/common/Clock;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_19

    iget-object v2, p0, Lcom/googlex/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_3b} :catch_3c

    goto :goto_19

    :catch_3c
    move-exception v0

    goto :goto_19
.end method
