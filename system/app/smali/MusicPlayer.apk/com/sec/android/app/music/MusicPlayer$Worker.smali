.class public Lcom/sec/android/app/music/MusicPlayer$Worker;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/MusicPlayer;
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
    .line 3507
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3503
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$Worker;->mLock:Ljava/lang/Object;

    .line 3509
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

    .line 3510
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 3511
    .local v0, t:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 3512
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3514
    const-string v1, "Worker"

    const-string v2, "t.start();"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3515
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer$Worker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3516
    :goto_3f
    :try_start_3f
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$Worker;->mLooper:Landroid/os/Looper;
    :try_end_41
    .catchall {:try_start_3f .. :try_end_41} :catchall_54

    if-nez v1, :cond_52

    .line 3519
    :try_start_43
    const-string v1, "Worker"

    const-string v3, "Before mLock.wait();"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3520
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_4f
    .catchall {:try_start_43 .. :try_end_4f} :catchall_54
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_4f} :catch_50

    goto :goto_3f

    .line 3521
    :catch_50
    move-exception v1

    goto :goto_3f

    .line 3524
    :cond_52
    :try_start_52
    monitor-exit v2

    .line 3525
    return-void

    .line 3524
    :catchall_54
    move-exception v1

    monitor-exit v2
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_54

    throw v1
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .registers 2

    .prologue
    .line 3528
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$Worker;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public quit()V
    .registers 3

    .prologue
    .line 3551
    const-string v0, "Worker"

    const-string v1, "Worker:quit() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3552
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$Worker;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 3553
    return-void
.end method

.method public run()V
    .registers 4

    .prologue
    .line 3533
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$Worker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3535
    :try_start_3
    const-string v0, "Worker"

    const-string v2, "run();"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3536
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 3538
    const-string v0, "Worker"

    const-string v2, "Looper.prepare();"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3539
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$Worker;->mLooper:Landroid/os/Looper;

    .line 3541
    const-string v0, "Worker"

    const-string v2, "Looper.myLooper();"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3542
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3544
    const-string v0, "Worker"

    const-string v2, "Looper.notifyAll();"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3545
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_32

    .line 3546
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 3547
    return-void

    .line 3545
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0
.end method
