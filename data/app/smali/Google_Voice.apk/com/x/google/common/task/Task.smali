.class public Lcom/x/google/common/task/Task;
.super Lcom/x/google/common/task/AbstractTask;


# instance fields
.field private priority:I


# direct methods
.method public constructor <init>(Lcom/x/google/common/task/TaskRunner;)V
    .registers 4

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1}, Lcom/x/google/common/task/TaskRunner;->getDefaultPriority()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/x/google/common/task/Task;-><init>(Lcom/x/google/common/task/TaskRunner;Ljava/lang/Runnable;I)V

    return-void
.end method

.method public constructor <init>(Lcom/x/google/common/task/TaskRunner;Ljava/lang/Runnable;)V
    .registers 4

    invoke-virtual {p1}, Lcom/x/google/common/task/TaskRunner;->getDefaultPriority()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/x/google/common/task/Task;-><init>(Lcom/x/google/common/task/TaskRunner;Ljava/lang/Runnable;I)V

    return-void
.end method

.method public constructor <init>(Lcom/x/google/common/task/TaskRunner;Ljava/lang/Runnable;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/x/google/common/task/Task;-><init>(Lcom/x/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/x/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p1}, Lcom/x/google/common/task/TaskRunner;->getDefaultPriority()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/x/google/common/task/Task;-><init>(Lcom/x/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/x/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/x/google/common/task/AbstractTask;-><init>(Lcom/x/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/x/google/common/task/Task;->setPriorityInternal(I)V

    return-void
.end method

.method private setPriorityInternal(I)V
    .registers 2

    iput p1, p0, Lcom/x/google/common/task/Task;->priority:I

    return-void
.end method


# virtual methods
.method cancelInternal()I
    .registers 2

    iget-object v0, p0, Lcom/x/google/common/task/Task;->runner:Lcom/x/google/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Lcom/x/google/common/task/TaskRunner;->cancelTaskInternal(Lcom/x/google/common/task/AbstractTask;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getDefaultPriority()I
    .registers 2

    iget-object v0, p0, Lcom/x/google/common/task/Task;->runner:Lcom/x/google/common/task/TaskRunner;

    invoke-virtual {v0}, Lcom/x/google/common/task/TaskRunner;->getDefaultPriority()I

    move-result v0

    return v0
.end method

.method public getMaxPriority()I
    .registers 2

    iget-object v0, p0, Lcom/x/google/common/task/Task;->runner:Lcom/x/google/common/task/TaskRunner;

    invoke-virtual {v0}, Lcom/x/google/common/task/TaskRunner;->getMaxPriority()I

    move-result v0

    return v0
.end method

.method public getMinPriority()I
    .registers 2

    iget-object v0, p0, Lcom/x/google/common/task/Task;->runner:Lcom/x/google/common/task/TaskRunner;

    invoke-virtual {v0}, Lcom/x/google/common/task/TaskRunner;->getMinPriority()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getPriority()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/x/google/common/task/Task;->priority:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method scheduleInternal()V
    .registers 2

    iget-object v0, p0, Lcom/x/google/common/task/Task;->runner:Lcom/x/google/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Lcom/x/google/common/task/TaskRunner;->schedulePriorityTaskInternal(Lcom/x/google/common/task/Task;)V

    return-void
.end method

.method public declared-synchronized setPriority(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/x/google/common/task/Task;->setPriorityInternal(I)V

    iget-object v0, p0, Lcom/x/google/common/task/Task;->runner:Lcom/x/google/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Lcom/x/google/common/task/TaskRunner;->cancelTask(Lcom/x/google/common/task/AbstractTask;)I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/x/google/common/task/Task;->runner:Lcom/x/google/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Lcom/x/google/common/task/TaskRunner;->scheduleTask(Lcom/x/google/common/task/AbstractTask;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method
