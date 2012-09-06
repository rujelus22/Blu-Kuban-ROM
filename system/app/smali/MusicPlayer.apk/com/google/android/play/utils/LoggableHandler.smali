.class public Lcom/google/android/play/utils/LoggableHandler;
.super Landroid/os/Handler;
.source "LoggableHandler.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 28
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/play/utils/LoggableHandler;-><init>(Ljava/lang/String;I)V

    .line 29
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter "name"
    .parameter "priority"

    .prologue
    .line 32
    invoke-static {p1, p2}, Lcom/google/android/play/utils/LoggableHandler;->startHandlerThread(Ljava/lang/String;I)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 33
    return-void
.end method

.method private static startHandlerThread(Ljava/lang/String;I)Landroid/os/HandlerThread;
    .registers 5
    .parameter "name"
    .parameter "priority"

    .prologue
    .line 39
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 40
    .local v1, looperPrepared:Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v0, Lcom/google/android/play/utils/LoggableHandler$1;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/play/utils/LoggableHandler$1;-><init>(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicBoolean;)V

    .line 50
    .local v0, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 52
    monitor-enter v1

    .line 53
    :goto_f
    :try_start_f
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_1d

    move-result v2

    if-nez v2, :cond_1b

    .line 55
    :try_start_15
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1d
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_f

    .line 56
    :catch_19
    move-exception v2

    goto :goto_f

    .line 60
    :cond_1b
    :try_start_1b
    monitor-exit v1

    .line 61
    return-object v0

    .line 60
    :catchall_1d
    move-exception v2

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1d

    throw v2
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 84
    return-void
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .registers 5
    .parameter "msg"
    .parameter "uptimeMillis"

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method
