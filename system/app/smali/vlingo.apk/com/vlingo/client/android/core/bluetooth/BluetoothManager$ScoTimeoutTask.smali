.class Lcom/vlingo/client/android/core/bluetooth/BluetoothManager$ScoTimeoutTask;
.super Ljava/util/TimerTask;
.source "BluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScoTimeoutTask"
.end annotation


# instance fields
.field private mRetry:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2
    .parameter "retry"

    .prologue
    .line 404
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 405
    iput-boolean p1, p0, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager$ScoTimeoutTask;->mRetry:Z

    .line 406
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 408
    const-class v2, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;

    monitor-enter v2

    .line 411
    :try_start_3
    invoke-static {}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->access$500()Ljava/util/TimerTask;

    move-result-object v1

    if-nez v1, :cond_b

    .line 412
    monitor-exit v2

    .line 425
    :goto_a
    return-void

    .line 414
    :cond_b
    const/4 v1, 0x0

    #calls: Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->stopSCO(Z)V
    invoke-static {v1}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->access$600(Z)V

    .line 415
    iget-boolean v1, p0, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager$ScoTimeoutTask;->mRetry:Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1e

    if-eqz v1, :cond_1c

    .line 417
    const-wide/16 v3, 0x64

    :try_start_15
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 418
    const/4 v1, 0x0

    #calls: Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->startSCO(Z)V
    invoke-static {v1}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->access$300(Z)V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1c} :catch_21

    .line 424
    :cond_1c
    :goto_1c
    :try_start_1c
    monitor-exit v2

    goto :goto_a

    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_1e

    throw v1

    .line 420
    :catch_21
    move-exception v0

    .line 421
    .local v0, e:Ljava/lang/Exception;
    :try_start_22
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_1e

    goto :goto_1c
.end method
