.class public Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEFAULT_WORKER_COUNT:I = 0x1

.field private static final DEFAULT_WORKER_NAME:Ljava/lang/String; = "TaskRunner"


# instance fields
.field protected final clock:Lcom/google/android/apps/uploader/googlemobile/common/Clock;

.field private defaultPriority:I

.field protected factory:Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;

.field private maxPriority:I

.field private minPriority:I

.field protected mutex:Ljava/lang/Object;

.field protected name:Ljava/lang/String;

.field protected priorityTaskQueue:Ljava/util/Vector;

.field protected running:Z

.field protected timerTaskQueue:Ljava/util/Vector;

.field protected workers:[Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;)V
    .registers 4

    const-string v0, "TaskRunner"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;Ljava/lang/String;I)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    const/16 v0, 0x7f

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->defaultPriority:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->maxPriority:I

    iput v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->minPriority:I

    iput-boolean v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->running:Z

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->factory:Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;

    iput-object p2, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->name:Ljava/lang/String;

    new-array v0, p3, [Ljava/lang/Thread;

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getInstance()Lcom/google/android/apps/uploader/googlemobile/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getClock()Lcom/google/android/apps/uploader/googlemobile/common/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->clock:Lcom/google/android/apps/uploader/googlemobile/common/Clock;

    return-void
.end method


# virtual methods
.method public cancelTask(Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;)I
    .registers 4

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;->cancelInternal()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method cancelTaskInternal(Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;)Z
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    invoke-virtual {p1}, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    monitor-exit v0

    move v0, v2

    :goto_e
    return v0

    :pswitch_f
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;->setState(I)V

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    move v0, v3

    goto :goto_e

    :pswitch_20
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;->setState(I)V

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    move v0, v3

    goto :goto_e

    :pswitch_31
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;->setState(I)V

    monitor-exit v0

    move v0, v2

    goto :goto_e

    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_38

    throw v1

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_f
        :pswitch_20
        :pswitch_31
        :pswitch_31
    .end packed-switch
.end method

.method getDefaultPriority()I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->defaultPriority:I

    return v0
.end method

.method getMaxPriority()I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->maxPriority:I

    return v0
.end method

.method getMinPriority()I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->minPriority:I

    return v0
.end method

.method protected getNextTaskToRun()Lcom/google/android/apps/uploader/googlemobile/common/task/Task;
    .registers 8

    const/4 v6, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->getScheduledTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->clock:Lcom/google/android/apps/uploader/googlemobile/common/Clock;

    invoke-interface {v4}, Lcom/google/android/apps/uploader/googlemobile/common/Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2c

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v2, v6}, Ljava/util/Vector;->removeElementAt(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->schedulePriorityTaskInternal(Lcom/google/android/apps/uploader/googlemobile/common/task/Task;)V

    goto :goto_2

    :cond_2c
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/googlemobile/common/task/Task;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/task/Task;->setState(I)V

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->removeElementAt(I)V

    :goto_45
    return-object v0

    :cond_46
    move-object v0, v1

    goto :goto_45
.end method

.method public getPriorityQueueLength()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getTimerQueueLength()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public run()V
    .registers 5

    const/4 v0, 0x0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v1

    if-eqz v0, :cond_10

    :try_start_6
    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/task/Task;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_18

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/task/Task;->scheduleInternal()V

    :cond_10
    :goto_10
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->waitForSomethingToDo()Z

    move-result v0

    if-nez v0, :cond_20

    monitor-exit v1

    return-void

    :cond_18
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/uploader/googlemobile/common/task/Task;->setState(I)V

    goto :goto_10

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw v0

    :cond_20
    :try_start_20
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->getNextTaskToRun()Lcom/google/android/apps/uploader/googlemobile/common/task/Task;

    move-result-object v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_1d

    if-eqz v0, :cond_1

    :try_start_27
    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/task/Task;->runInternal()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_1

    :catch_2b
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

    invoke-static {v2, v1}, Lcom/google/android/apps/uploader/googlemobile/debug/Log;->logThrowable(Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method schedulePriorityTaskInternal(Lcom/google/android/apps/uploader/googlemobile/common/task/Task;)V
    .registers 9

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/apps/uploader/googlemobile/common/task/Task;->getPriority()I

    move-result v2

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    move v4, v0

    :goto_f
    if-ge v4, v3, :cond_2e

    add-int v0, v4, v3

    div-int/lit8 v5, v0, 0x2

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/googlemobile/common/task/Task;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/task/Task;->getPriority()I

    move-result v0

    if-gt v2, v0, :cond_2b

    add-int/lit8 v0, v5, 0x1

    move v6, v3

    move v3, v0

    move v0, v6

    :goto_28
    move v4, v3

    move v3, v0

    goto :goto_f

    :cond_2b
    move v0, v5

    move v3, v4

    goto :goto_28

    :cond_2e
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/task/Task;->setState(I)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_3e
    move-exception v0

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v0
.end method

.method scheduleTask(Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_18

    :goto_a
    :pswitch_a
    monitor-exit v0

    return-void

    :pswitch_c
    invoke-virtual {p1}, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;->scheduleInternal()V

    goto :goto_a

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1

    :pswitch_13
    const/4 v1, 0x4

    :try_start_14
    invoke-virtual {p1, v1}, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;->setState(I)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_10

    goto :goto_a

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_c
        :pswitch_a
        :pswitch_a
        :pswitch_13
    .end packed-switch
.end method

.method scheduleTimerTaskInternal(Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;)V
    .registers 12

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->getScheduledTime()J

    move-result-wide v2

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    move v5, v0

    :goto_f
    if-ge v5, v4, :cond_30

    add-int v0, v5, v4

    div-int/lit8 v6, v0, 0x2

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->getScheduledTime()J

    move-result-wide v7

    cmp-long v0, v2, v7

    if-ltz v0, :cond_2d

    add-int/lit8 v0, v6, 0x1

    move v9, v4

    move v4, v0

    move v0, v9

    :goto_2a
    move v5, v4

    move v4, v0

    goto :goto_f

    :cond_2d
    move v0, v6

    move v4, v5

    goto :goto_2a

    :cond_30
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1, v5}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->setState(I)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_40
    move-exception v0

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v0
.end method

.method public start()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->running:Z

    if-nez v1, :cond_3d

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->running:Z

    const/4 v1, 0x0

    :goto_b
    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    array-length v2, v2

    if-ge v1, v2, :cond_3d

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    iget-object v3, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->factory:Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p0}, Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;->createThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_3d
    monitor-exit v0

    return-void

    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public stop()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4
    iget-boolean v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->running:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->running:Z

    move v1, v3

    :goto_d
    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    array-length v2, v2

    if-ge v1, v2, :cond_1a

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1a
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_21

    throw v1
.end method

.method protected waitForSomethingToDo()Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    :try_start_8
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_15} :catch_38

    :cond_15
    :goto_15
    iget-boolean v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->running:Z

    return v0

    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->getScheduledTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->clock:Lcom/google/android/apps/uploader/googlemobile/common/Clock;

    invoke-interface {v2}, Lcom/google/android/apps/uploader/googlemobile/common/Clock;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_15

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_37} :catch_38

    goto :goto_15

    :catch_38
    move-exception v0

    goto :goto_15
.end method
