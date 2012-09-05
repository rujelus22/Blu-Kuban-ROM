.class public Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DispatcherServer"
.end annotation


# instance fields
.field protected final headerFlag:B

.field protected volatile serverAddress:Ljava/lang/String;

.field protected serverRequests:Ljava/util/Vector;

.field protected final supportedDataRequests:Ljava/util/Vector;

.field private tempRequests:Ljava/util/Vector;

.field final synthetic this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;


# direct methods
.method public constructor <init>(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;Ljava/util/Vector;B)V
    .registers 6

    iput-object p1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverRequests:Ljava/util/Vector;

    iput-object p2, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverAddress:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->supportedDataRequests:Ljava/util/Vector;

    iput-byte p4, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->headerFlag:B

    return-void
.end method

.method private checkNeedToActivate()Z
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v2

    :goto_a
    return v0

    :cond_b
    monitor-enter p0

    move v1, v2

    :goto_d
    :try_start_d
    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverRequests:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2d

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverRequests:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mobile/googlenav/datarequest/DataRequest;

    invoke-interface {v0}, Lcom/google/mobile/googlenav/datarequest/DataRequest;->isImmediate()Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_a

    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_26

    throw v0

    :cond_29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_2d
    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_26

    move v0, v2

    goto :goto_a
.end method

.method private getErrorRetryTime()J
    .registers 7

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    #getter for: Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->lastErrorCode:I
    invoke-static {v0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->access$1100(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)I

    move-result v0

    packed-switch v0, :pswitch_data_2c

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    #getter for: Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J
    invoke-static {v0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->access$1200(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)J

    move-result-wide v0

    :goto_f
    return-wide v0

    :pswitch_10
    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    #getter for: Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J
    invoke-static {v0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->access$1200(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)J

    move-result-wide v0

    const-wide/16 v2, 0x320

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    #getter for: Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->random:Ljava/util/Random;
    invoke-static {v2}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->access$1300(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    #getter for: Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J
    invoke-static {v4}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->access$1200(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)J

    move-result-wide v4

    rem-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_f

    :pswitch_data_2c
    .packed-switch 0x4
        :pswitch_10
    .end packed-switch
.end method

.method private networkAccessDenied(Ljava/lang/Exception;)V
    .registers 4

    const-string v0, "REQUEST"

    invoke-static {v0, p1}, Lcom/google/mobile/googlenav/common/ExceptionReporter;->logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->stop()V

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->maybeNotifyNetworkError(I)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized activate()V
    .registers 5
    .annotation build Lcom/google/mobile/common/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->canDispatchNow()Z

    move-result v0

    if-nez v0, :cond_40

    invoke-static {}, Lcom/google/mobile/googlenav/common/ConfigSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    iget-boolean v0, v0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->active:Z

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    #getter for: Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I
    invoke-static {v0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->access$200(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3e

    const/16 v0, 0x4e

    const-string v1, "drd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    #getter for: Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I
    invoke-static {v3}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->access$200(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/mobile/googlenav/common/UserEventReporter;->addEvent(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_8f

    :cond_3e
    :goto_3e
    monitor-exit p0

    return-void

    :cond_40
    :try_start_40
    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    #getter for: Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->threadDispatchLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->access$300(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_8f

    :try_start_47
    invoke-virtual {p0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->dequeuePendingRequests()Ljava/util/Vector;

    move-result-object v1

    iput-object v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->tempRequests:Ljava/util/Vector;

    iget-object v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->tempRequests:Ljava/util/Vector;

    if-eqz v1, :cond_8a

    iget-object v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->access$208(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)I

    iget-object v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->tempRequests:Ljava/util/Vector;

    invoke-static {v1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->containsForegroundRequest(Ljava/util/Vector;)Z

    move-result v1

    if-eqz v1, :cond_63

    iget-object v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->access$408(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)I

    :cond_63
    iget-object v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->tempRequests:Ljava/util/Vector;

    invoke-static {v1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->containsSubmissionRequest(Ljava/util/Vector;)Z

    move-result v1

    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->access$508(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)I

    :cond_70
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "DataRequestDispatcher"

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_7a
    iget-object v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->tempRequests:Ljava/util/Vector;
    :try_end_7c
    .catchall {:try_start_47 .. :try_end_7c} :catchall_8c

    if-eqz v1, :cond_8a

    :try_start_7e
    iget-object v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    #getter for: Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->threadDispatchLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->access$300(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_87
    .catchall {:try_start_7e .. :try_end_87} :catchall_8c
    .catch Ljava/lang/InterruptedException; {:try_start_7e .. :try_end_87} :catch_88

    goto :goto_7a

    :catch_88
    move-exception v1

    goto :goto_7a

    :cond_8a
    :try_start_8a
    monitor-exit v0

    goto :goto_3e

    :catchall_8c
    move-exception v1

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_8a .. :try_end_8e} :catchall_8c

    :try_start_8e
    throw v1
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8f

    :catchall_8f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected activateIfNeeded()V
    .registers 2

    invoke-direct {p0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->checkNeedToActivate()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->activate()V

    :cond_9
    return-void
.end method

.method public addDataRequest(Lcom/google/mobile/googlenav/datarequest/DataRequest;)V
    .registers 3

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverRequests:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/google/mobile/googlenav/datarequest/DataRequest;->isImmediate()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->isSuspended()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->activate()V

    :cond_16
    return-void
.end method

.method protected canHandle(I)Z
    .registers 4

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->supportedDataRequests:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->supportedDataRequests:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_15
    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method protected dequeuePendingRequests()Ljava/util/Vector;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverRequests:Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverRequests:Ljava/util/Vector;

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    #getter for: Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->threadDispatchLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->access$300(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->tempRequests:Ljava/util/Vector;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->tempRequests:Ljava/util/Vector;

    iget-object v2, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    iget-object v3, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    #getter for: Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->clock:Lcom/google/mobile/googlenav/common/Clock;
    invoke-static {v3}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->access$700(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)Lcom/google/mobile/googlenav/common/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/mobile/googlenav/common/Clock;->relativeTimeMillis()J

    move-result-wide v3

    #setter for: Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->lastActiveTime:J
    invoke-static {v2, v3, v4}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->access$602(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;J)J

    iget-object v2, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    #getter for: Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->threadDispatchLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->access$300(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_8f

    invoke-static {v1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->containsForegroundRequest(Ljava/util/Vector;)Z

    move-result v0

    invoke-static {v1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->containsSubmissionRequest(Ljava/util/Vector;)Z

    move-result v2

    :goto_2d
    :try_start_2d
    iget-object v3, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    iget-boolean v3, v3, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->active:Z

    if-eqz v3, :cond_bf

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_bf

    monitor-enter p0
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_6f

    :try_start_3a
    invoke-direct {p0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->getErrorRetryTime()J
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_92

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_47

    :try_start_44
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_92
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_47} :catch_e4

    :cond_47
    :goto_47
    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_92

    :try_start_48
    iget-object v3, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v3, v1, p0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->serviceRequests(Ljava/util/Vector;Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V

    iget-object v3, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    iget-object v3, v3, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Lcom/google/mobile/googlenav/common/io/HttpConnectionFactory;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/google/mobile/googlenav/common/io/HttpConnectionFactory;->registerNetworkSuccess(Z)Z

    iget-object v3, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    #calls: Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->clearNetworkError()V
    invoke-static {v3}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->access$800(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)V

    iget-object v3, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    iget-object v4, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    #getter for: Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->clock:Lcom/google/mobile/googlenav/common/Clock;
    invoke-static {v4}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->access$700(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)Lcom/google/mobile/googlenav/common/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/mobile/googlenav/common/Clock;->relativeTimeMillis()J

    move-result-wide v4

    #setter for: Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->lastSuccessTime:J
    invoke-static {v3, v4, v5}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->access$902(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;J)J
    :try_end_69
    .catchall {:try_start_48 .. :try_end_69} :catchall_6f
    .catch Ljava/lang/SecurityException; {:try_start_48 .. :try_end_69} :catch_6a
    .catch Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$GmmServerException; {:try_start_48 .. :try_end_69} :catch_95
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_69} :catch_9d
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_69} :catch_a5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_48 .. :try_end_69} :catch_b3

    goto :goto_2d

    :catch_6a
    move-exception v3

    :try_start_6b
    invoke-direct {p0, v3}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->networkAccessDenied(Ljava/lang/Exception;)V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6f

    goto :goto_2d

    :catchall_6f
    move-exception v1

    iget-object v3, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    #getter for: Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->threadDispatchLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->access$300(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_77
    iget-object v4, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v4}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->access$210(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)I

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->access$410(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)I

    :cond_83
    if-eqz v2, :cond_8a

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->access$510(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)I

    :cond_8a
    monitor-exit v3
    :try_end_8b
    .catchall {:try_start_77 .. :try_end_8b} :catchall_e1

    invoke-virtual {p0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->activateIfNeeded()V

    throw v1

    :catchall_8f
    move-exception v1

    :try_start_90
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    throw v1

    :catchall_92
    move-exception v1

    :try_start_93
    monitor-exit p0
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    :try_start_94
    throw v1

    :catch_95
    move-exception v3

    iget-object v4, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    const/4 v5, 0x4

    #calls: Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->handleError(ILjava/lang/Throwable;)V
    invoke-static {v4, v5, v3}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->access$1000(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;ILjava/lang/Throwable;)V

    goto :goto_2d

    :catch_9d
    move-exception v3

    iget-object v4, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    const/4 v5, 0x3

    #calls: Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->handleError(ILjava/lang/Throwable;)V
    invoke-static {v4, v5, v3}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->access$1000(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;ILjava/lang/Throwable;)V

    goto :goto_2d

    :catch_a5
    move-exception v3

    iget-object v4, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    const/4 v5, 0x5

    #calls: Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->handleError(ILjava/lang/Throwable;)V
    invoke-static {v4, v5, v3}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->access$1000(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;ILjava/lang/Throwable;)V

    const-string v4, "REQUEST"

    invoke-static {v4, v3}, Lcom/google/mobile/googlenav/common/ExceptionReporter;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    :catch_b3
    move-exception v3

    invoke-static {}, Lcom/google/mobile/googlenav/common/StaticUtil;->handleOutOfMemory()V

    iget-object v4, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    const/4 v5, 0x5

    #calls: Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->handleError(ILjava/lang/Throwable;)V
    invoke-static {v4, v5, v3}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->access$1000(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;ILjava/lang/Throwable;)V
    :try_end_bd
    .catchall {:try_start_94 .. :try_end_bd} :catchall_6f

    goto/16 :goto_2d

    :cond_bf
    iget-object v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    #getter for: Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->threadDispatchLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->access$300(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_c6
    iget-object v3, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v3}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->access$210(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)I

    if-eqz v0, :cond_d2

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->access$410(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)I

    :cond_d2
    if-eqz v2, :cond_d9

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->access$510(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)I

    :cond_d9
    monitor-exit v1
    :try_end_da
    .catchall {:try_start_c6 .. :try_end_da} :catchall_de

    invoke-virtual {p0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->activateIfNeeded()V

    return-void

    :catchall_de
    move-exception v0

    :try_start_df
    monitor-exit v1
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_de

    throw v0

    :catchall_e1
    move-exception v0

    :try_start_e2
    monitor-exit v3
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_e1

    throw v0

    :catch_e4
    move-exception v3

    goto/16 :goto_47
.end method

.method public start()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->activateIfNeeded()V

    return-void
.end method
