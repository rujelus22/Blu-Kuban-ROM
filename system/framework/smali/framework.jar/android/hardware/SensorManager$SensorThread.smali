.class Landroid/hardware/SensorManager$SensorThread;
.super Ljava/lang/Object;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SensorThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
    }
.end annotation


# instance fields
.field mSensorsReady:Z

.field mThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 447
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 448
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 1

    .prologue
    .line 452
    return-void
.end method

.method startLocked()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 457
    :try_start_1
    iget-object v3, p0, Landroid/hardware/SensorManager$SensorThread;->mThread:Ljava/lang/Thread;

    if-nez v3, :cond_30

    .line 458
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/hardware/SensorManager$SensorThread;->mSensorsReady:Z

    .line 459
    new-instance v0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;

    invoke-direct {v0, p0}, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;-><init>(Landroid/hardware/SensorManager$SensorThread;)V

    .line 460
    .local v0, runnable:Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
    new-instance v1, Ljava/lang/Thread;

    const-class v3, Landroid/hardware/SensorManager$SensorThread;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 461
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 462
    const-string v3, "SensorManager"

    const-string/jumbo v4, "thread start"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    monitor-enter v0
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_24} :catch_2f

    .line 464
    :goto_24
    :try_start_24
    iget-boolean v3, p0, Landroid/hardware/SensorManager$SensorThread;->mSensorsReady:Z

    if-nez v3, :cond_35

    .line 465
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_24

    .line 467
    :catchall_2c
    move-exception v3

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v3
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_2f} :catch_2f

    .line 470
    .end local v0           #runnable:Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
    .end local v1           #thread:Ljava/lang/Thread;
    :catch_2f
    move-exception v3

    .line 472
    :cond_30
    :goto_30
    iget-object v3, p0, Landroid/hardware/SensorManager$SensorThread;->mThread:Ljava/lang/Thread;

    if-nez v3, :cond_39

    :goto_34
    return v2

    .line 467
    .restart local v0       #runnable:Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
    .restart local v1       #thread:Ljava/lang/Thread;
    :cond_35
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_2c

    .line 468
    :try_start_36
    iput-object v1, p0, Landroid/hardware/SensorManager$SensorThread;->mThread:Ljava/lang/Thread;
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_38} :catch_2f

    goto :goto_30

    .line 472
    .end local v0           #runnable:Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
    .end local v1           #thread:Ljava/lang/Thread;
    :cond_39
    const/4 v2, 0x1

    goto :goto_34
.end method
