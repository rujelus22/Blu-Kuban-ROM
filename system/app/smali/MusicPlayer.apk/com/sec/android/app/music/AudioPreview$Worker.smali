.class public Lcom/sec/android/app/music/AudioPreview$Worker;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Worker"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 6
    .parameter "name"

    .prologue
    .line 3952
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3948
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/music/AudioPreview$Worker;->mLock:Ljava/lang/Object;

    .line 3954
    const-string v1, "Worker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Worker("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is called"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3955
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 3956
    .local v0, t:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 3957
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3958
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$Worker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3959
    :goto_38
    :try_start_38
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$Worker;->mLooper:Landroid/os/Looper;
    :try_end_3a
    .catchall {:try_start_38 .. :try_end_3a} :catchall_4d

    if-nez v1, :cond_4b

    .line 3962
    :try_start_3c
    const-string v1, "Worker"

    const-string v3, "Before mLock.wait();"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3963
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_4d
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_48} :catch_49

    goto :goto_38

    .line 3964
    :catch_49
    move-exception v1

    goto :goto_38

    .line 3967
    :cond_4b
    :try_start_4b
    monitor-exit v2

    .line 3968
    return-void

    .line 3967
    :catchall_4d
    move-exception v1

    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_4d

    throw v1
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .registers 2

    .prologue
    .line 3971
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$Worker;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public quit()V
    .registers 2

    .prologue
    .line 3992
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$Worker;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 3993
    return-void
.end method

.method public run()V
    .registers 4

    .prologue
    .line 3976
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$Worker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3978
    :try_start_3
    const-string v0, "Worker"

    const-string v2, "Worker:run() is called"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3979
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 3981
    const-string v0, "Worker"

    const-string v2, "Looper.prepare();"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3982
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview$Worker;->mLooper:Landroid/os/Looper;

    .line 3983
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3985
    const-string v0, "Worker"

    const-string v2, "mLock.notifyAll();"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3986
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_2b

    .line 3987
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 3988
    return-void

    .line 3986
    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0
.end method
