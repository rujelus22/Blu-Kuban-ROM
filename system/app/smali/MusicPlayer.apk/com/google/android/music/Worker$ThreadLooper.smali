.class Lcom/google/android/music/Worker$ThreadLooper;
.super Ljava/lang/Object;
.source "Worker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/Worker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadLooper"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 6
    .parameter "name"
    .parameter "priority"

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/Worker$ThreadLooper;->mLock:Ljava/lang/Object;

    .line 118
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 121
    .local v0, t:Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 122
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 123
    iget-object v2, p0, Lcom/google/android/music/Worker$ThreadLooper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 124
    :goto_21
    :try_start_21
    iget-object v1, p0, Lcom/google/android/music/Worker$ThreadLooper;->mLooper:Landroid/os/Looper;
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_32

    if-nez v1, :cond_2d

    .line 126
    :try_start_25
    iget-object v1, p0, Lcom/google/android/music/Worker$ThreadLooper;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_32
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_2a} :catch_2b

    goto :goto_21

    .line 127
    :catch_2b
    move-exception v1

    goto :goto_21

    .line 130
    :cond_2d
    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_32

    .line 132
    invoke-virtual {v0, p2}, Ljava/lang/Thread;->setPriority(I)V

    .line 133
    return-void

    .line 130
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/music/Worker$ThreadLooper;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public run()V
    .registers 3

    .prologue
    .line 139
    iget-object v1, p0, Lcom/google/android/music/Worker$ThreadLooper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    :try_start_3
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 141
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/Worker$ThreadLooper;->mLooper:Landroid/os/Looper;

    .line 142
    iget-object v0, p0, Lcom/google/android/music/Worker$ThreadLooper;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 143
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    .line 144
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 145
    return-void

    .line 143
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method
