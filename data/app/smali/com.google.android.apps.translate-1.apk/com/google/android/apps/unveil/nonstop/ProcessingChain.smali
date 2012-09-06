.class public Lcom/google/android/apps/unveil/nonstop/ProcessingChain;
.super Ljava/lang/Object;
.source "ProcessingChain.java"


# static fields
.field protected static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private volatile isProcessing:Z

.field private final nextChain:Lcom/google/android/apps/unveil/nonstop/ProcessingChain;

.field private final previewProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/nonstop/FrameProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final readyLock:Ljava/lang/Object;

.field private volatile stopNow:Z

.field private final stopwatch:Lcom/google/android/apps/unveil/env/Stopwatch;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 20
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "ProcessingChain"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/unveil/nonstop/ProcessingChain;)V
    .registers 3
    .parameter "nextThread"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->readyLock:Ljava/lang/Object;

    .line 35
    iput-object p1, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->nextChain:Lcom/google/android/apps/unveil/nonstop/ProcessingChain;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->isProcessing:Z

    .line 38
    new-instance v0, Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/Stopwatch;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->stopwatch:Lcom/google/android/apps/unveil/env/Stopwatch;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->previewProcessors:Ljava/util/List;

    .line 41
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->stopwatch:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/Stopwatch;->start()V

    .line 42
    return-void
.end method


# virtual methods
.method public addProcessor(Lcom/google/android/apps/unveil/nonstop/FrameProcessor;)V
    .registers 3
    .parameter "handler"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->previewProcessors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public blockUntilReadyForFrame()V
    .registers 2

    .prologue
    .line 111
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->isProcessing:Z

    if-eqz v0, :cond_8

    .line 112
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->waitForNotification()V

    goto :goto_0

    .line 114
    :cond_8
    return-void
.end method

.method public getProcessors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/nonstop/FrameProcessor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->previewProcessors:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected isReady()Z
    .registers 2

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->isProcessing:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected pollRunnables(Ljava/util/Collection;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, runnables:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Runnable;>;"
    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->previewProcessors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;

    .line 50
    .local v1, processor:Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
    invoke-virtual {v1, p1}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->pollRunnables(Ljava/util/Collection;)V

    goto :goto_6

    .line 52
    .end local v1           #processor:Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
    :cond_16
    return-void
.end method

.method protected processFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V
    .registers 5
    .parameter "frame"

    .prologue
    .line 58
    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->stopwatch:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/Stopwatch;->reset()V

    .line 66
    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->previewProcessors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;

    .line 68
    .local v1, processor:Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
    iget-boolean v2, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->stopNow:Z

    if-eqz v2, :cond_33

    .line 81
    .end local v1           #processor:Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
    :cond_1b
    iget-boolean v2, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->stopNow:Z

    if-nez v2, :cond_2b

    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->nextChain:Lcom/google/android/apps/unveil/nonstop/ProcessingChain;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->nextChain:Lcom/google/android/apps/unveil/nonstop/ProcessingChain;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->isReady()Z

    move-result v2

    if-nez v2, :cond_37

    .line 83
    :cond_2b
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->removeReference()V

    .line 88
    :goto_2e
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->setReady(Z)V

    .line 89
    return-void

    .line 72
    .restart local v1       #processor:Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
    :cond_33
    invoke-virtual {v1, p1}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->processFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V

    goto :goto_b

    .line 85
    .end local v1           #processor:Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
    :cond_37
    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->nextChain:Lcom/google/android/apps/unveil/nonstop/ProcessingChain;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->sendFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V

    goto :goto_2e
.end method

.method protected sendFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V
    .registers 3
    .parameter "previewFrame"

    .prologue
    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->isProcessing:Z

    .line 133
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->processFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V

    .line 134
    return-void
.end method

.method protected setReady(Z)V
    .registers 4
    .parameter "ready"

    .prologue
    .line 92
    if-nez p1, :cond_11

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->isProcessing:Z

    .line 94
    if-eqz p1, :cond_10

    .line 96
    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->readyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_a
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->readyLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 98
    monitor-exit v1

    .line 100
    :cond_10
    return-void

    .line 92
    :cond_11
    const/4 v0, 0x0

    goto :goto_3

    .line 98
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_13

    throw v0
.end method

.method protected shutdown()V
    .registers 2

    .prologue
    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->stopNow:Z

    .line 126
    :goto_3
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->isProcessing:Z

    if-eqz v0, :cond_b

    .line 127
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->waitForNotification()V

    goto :goto_3

    .line 129
    :cond_b
    return-void
.end method

.method protected start()V
    .registers 2

    .prologue
    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->stopNow:Z

    .line 118
    return-void
.end method

.method protected stopSoon()V
    .registers 2

    .prologue
    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->stopNow:Z

    .line 122
    return-void
.end method

.method protected waitForNotification()V
    .registers 6

    .prologue
    .line 137
    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->readyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 139
    :try_start_3
    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->readyLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_16
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_8} :catch_a

    .line 143
    :goto_8
    :try_start_8
    monitor-exit v2

    .line 144
    return-void

    .line 140
    :catch_a
    move-exception v0

    .line 141
    .local v0, e:Ljava/lang/InterruptedException;
    sget-object v1, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Exception!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 143
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_16
    move-exception v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw v1
.end method
