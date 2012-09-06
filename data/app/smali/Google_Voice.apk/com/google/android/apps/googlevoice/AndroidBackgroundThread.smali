.class public Lcom/google/android/apps/googlevoice/AndroidBackgroundThread;
.super Ljava/lang/Thread;
.source "AndroidBackgroundThread.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/BackgroundThread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/AndroidBackgroundThread$1;,
        Lcom/google/android/apps/googlevoice/AndroidBackgroundThread$QuitRunnable;
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private onQuitRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 23
    return-void
.end method

.method private declared-synchronized setHandler(Landroid/os/Handler;)V
    .registers 3
    .parameter "handler"

    .prologue
    .line 58
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/AndroidBackgroundThread;->handler:Landroid/os/Handler;

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 60
    monitor-exit p0

    return-void

    .line 58
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 64
    monitor-enter p0

    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidBackgroundThread;->handler:Landroid/os/Handler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_21

    if-nez v0, :cond_1d

    .line 66
    :try_start_5
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_e

    .line 67
    const-string v0, "getHandler(): waiting for handler"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 69
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 70
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_1

    .line 71
    const-string v0, "getHandler(): waited for handler, checking again"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_21
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_1a} :catch_1b

    goto :goto_1

    .line 73
    :catch_1b
    move-exception v0

    goto :goto_1

    .line 77
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidBackgroundThread;->handler:Landroid/os/Handler;
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-object v0

    .line 64
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized quitAfterProcessingQueue(Ljava/lang/Runnable;)V
    .registers 4
    .parameter "onQuit"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 88
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/AndroidBackgroundThread;->onQuitRunnable:Ljava/lang/Runnable;

    .line 89
    new-instance v0, Lcom/google/android/apps/googlevoice/AndroidBackgroundThread$QuitRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/AndroidBackgroundThread$QuitRunnable;-><init>(Lcom/google/android/apps/googlevoice/AndroidBackgroundThread;Lcom/google/android/apps/googlevoice/AndroidBackgroundThread$1;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/AndroidBackgroundThread;->runInBackground(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 90
    monitor-exit p0

    return-void

    .line 88
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized quitImmediately(Ljava/lang/Runnable;)V
    .registers 5
    .parameter "onQuit"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/AndroidBackgroundThread;->onQuitRunnable:Ljava/lang/Runnable;

    .line 83
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidBackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/AndroidBackgroundThread$QuitRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/googlevoice/AndroidBackgroundThread$QuitRunnable;-><init>(Lcom/google/android/apps/googlevoice/AndroidBackgroundThread;Lcom/google/android/apps/googlevoice/AndroidBackgroundThread$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 84
    monitor-exit p0

    return-void

    .line 82
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 4

    .prologue
    .line 38
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_1e

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting background thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidBackgroundThread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 42
    :cond_1e
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 43
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/AndroidBackgroundThread;->setHandler(Landroid/os/Handler;)V

    .line 44
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, r:Ljava/lang/Runnable;
    monitor-enter p0

    .line 49
    :try_start_2e
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidBackgroundThread;->onQuitRunnable:Ljava/lang/Runnable;

    .line 50
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_37

    .line 51
    if-eqz v0, :cond_36

    .line 52
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 54
    :cond_36
    return-void

    .line 50
    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public runInBackground(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "runnable"

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidBackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    return-void
.end method
