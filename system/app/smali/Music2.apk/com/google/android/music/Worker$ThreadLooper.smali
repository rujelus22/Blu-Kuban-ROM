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

    .line 119
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0, p2}, Ljava/lang/Thread;->setPriority(I)V

    .line 120
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 121
    iget-object v2, p0, Lcom/google/android/music/Worker$ThreadLooper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 122
    :goto_19
    :try_start_19
    iget-object v1, p0, Lcom/google/android/music/Worker$ThreadLooper;->mLooper:Landroid/os/Looper;
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_27

    if-nez v1, :cond_25

    .line 124
    :try_start_1d
    iget-object v1, p0, Lcom/google/android/music/Worker$ThreadLooper;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_27
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_22} :catch_23

    goto :goto_19

    .line 125
    :catch_23
    move-exception v1

    goto :goto_19

    .line 128
    :cond_25
    :try_start_25
    monitor-exit v2

    .line 129
    return-void

    .line 128
    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_27

    throw v1
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/music/Worker$ThreadLooper;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public run()V
    .registers 3

    .prologue
    .line 135
    iget-object v1, p0, Lcom/google/android/music/Worker$ThreadLooper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_3
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 137
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/Worker$ThreadLooper;->mLooper:Landroid/os/Looper;

    .line 138
    iget-object v0, p0, Lcom/google/android/music/Worker$ThreadLooper;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 139
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    .line 140
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 141
    return-void

    .line 139
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method
