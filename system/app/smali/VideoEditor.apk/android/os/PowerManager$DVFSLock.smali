.class public Landroid/os/PowerManager$DVFSLock;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DVFSLock"
.end annotation


# instance fields
.field mFrequency:I

.field mHeld:Z

.field mReleaser:Ljava/lang/Runnable;

.field mTag:Ljava/lang/String;

.field mTimeoutMs:I

.field mToken:Landroid/os/IBinder;

.field mType:I

.field final synthetic this$0:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Landroid/os/PowerManager;IILjava/lang/String;)V
    .registers 10
    .parameter
    .parameter "type"
    .parameter "frequency"
    .parameter "tag"

    .prologue
    .line 613
    iput-object p1, p0, Landroid/os/PowerManager$DVFSLock;->this$0:Landroid/os/PowerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    new-instance v3, Landroid/os/PowerManager$DVFSLock$1;

    invoke-direct {v3, p0}, Landroid/os/PowerManager$DVFSLock$1;-><init>(Landroid/os/PowerManager$DVFSLock;)V

    iput-object v3, p0, Landroid/os/PowerManager$DVFSLock;->mReleaser:Ljava/lang/Runnable;

    .line 611
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/os/PowerManager$DVFSLock;->mHeld:Z

    .line 614
    packed-switch p2, :pswitch_data_4e

    .line 619
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "PowerManager : DVFSLock : invalid type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 622
    :pswitch_1a
    invoke-virtual {p1}, Landroid/os/PowerManager;->getSupportedFrequency()[I

    move-result-object v2

    .line 623
    .local v2, supportedFrequency:[I
    if-nez v2, :cond_28

    .line 624
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "PowerManager : DVFSLock : getSupportedFrequency : null"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 627
    :cond_28
    const/4 v0, 0x0

    .line 628
    .local v0, bFound:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2a
    array-length v3, v2

    if-ge v1, v3, :cond_35

    .line 629
    aget v3, v2, v1

    if-ne p3, v3, :cond_32

    .line 630
    const/4 v0, 0x1

    .line 628
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 633
    :cond_35
    if-nez v0, :cond_3f

    .line 634
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "PowerManager : DVFSLock : invalid frequency"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 637
    :cond_3f
    iput p2, p0, Landroid/os/PowerManager$DVFSLock;->mType:I

    .line 638
    iput p3, p0, Landroid/os/PowerManager$DVFSLock;->mFrequency:I

    .line 639
    iput-object p4, p0, Landroid/os/PowerManager$DVFSLock;->mTag:Ljava/lang/String;

    .line 640
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iput-object v3, p0, Landroid/os/PowerManager$DVFSLock;->mToken:Landroid/os/IBinder;

    .line 641
    return-void

    .line 614
    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method


# virtual methods
.method public acquire()V
    .registers 7

    .prologue
    .line 645
    iget-object v1, p0, Landroid/os/PowerManager$DVFSLock;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 647
    :try_start_3
    iget-object v0, p0, Landroid/os/PowerManager$DVFSLock;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget v2, p0, Landroid/os/PowerManager$DVFSLock;->mType:I

    iget v3, p0, Landroid/os/PowerManager$DVFSLock;->mFrequency:I

    iget-object v4, p0, Landroid/os/PowerManager$DVFSLock;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/os/PowerManager$DVFSLock;->mTag:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/os/IPowerManager;->acquireDVFSLock(IILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_17
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_12} :catch_1a

    .line 650
    :goto_12
    const/4 v0, 0x1

    :try_start_13
    iput-boolean v0, p0, Landroid/os/PowerManager$DVFSLock;->mHeld:Z

    .line 651
    monitor-exit v1

    .line 652
    return-void

    .line 651
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_17

    throw v0

    .line 648
    :catch_1a
    move-exception v0

    goto :goto_12
.end method

.method public acquire(J)V
    .registers 6
    .parameter "timeout"

    .prologue
    .line 655
    const-string v0, "PowerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DVFSLock :  acquire : timeout : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-virtual {p0}, Landroid/os/PowerManager$DVFSLock;->acquire()V

    .line 657
    iget-object v0, p0, Landroid/os/PowerManager$DVFSLock;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/os/PowerManager$DVFSLock;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 658
    return-void
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 682
    iget-object v1, p0, Landroid/os/PowerManager$DVFSLock;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 683
    :try_start_3
    iget-boolean v0, p0, Landroid/os/PowerManager$DVFSLock;->mHeld:Z

    if-eqz v0, :cond_2a

    .line 684
    const-string v0, "PowerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DVFSLock finalized while still held: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/PowerManager$DVFSLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_2c

    .line 686
    :try_start_21
    iget-object v0, p0, Landroid/os/PowerManager$DVFSLock;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v2, p0, Landroid/os/PowerManager$DVFSLock;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v2}, Landroid/os/IPowerManager;->releaseDVFSLock(Landroid/os/IBinder;)V
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2c
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2a} :catch_2f

    .line 690
    :cond_2a
    :goto_2a
    :try_start_2a
    monitor-exit v1

    .line 691
    return-void

    .line 690
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    throw v0

    .line 687
    :catch_2f
    move-exception v0

    goto :goto_2a
.end method

.method public isHeld()Z
    .registers 3

    .prologue
    .line 674
    iget-object v1, p0, Landroid/os/PowerManager$DVFSLock;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 675
    :try_start_3
    iget-boolean v0, p0, Landroid/os/PowerManager$DVFSLock;->mHeld:Z

    monitor-exit v1

    return v0

    .line 676
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public release()V
    .registers 4

    .prologue
    .line 662
    iget-object v1, p0, Landroid/os/PowerManager$DVFSLock;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 664
    :try_start_3
    iget-object v0, p0, Landroid/os/PowerManager$DVFSLock;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/PowerManager$DVFSLock;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 665
    iget-object v0, p0, Landroid/os/PowerManager$DVFSLock;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v2, p0, Landroid/os/PowerManager$DVFSLock;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v2}, Landroid/os/IPowerManager;->releaseDVFSLock(Landroid/os/IBinder;)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_15} :catch_1d

    .line 668
    :goto_15
    const/4 v0, 0x0

    :try_start_16
    iput-boolean v0, p0, Landroid/os/PowerManager$DVFSLock;->mHeld:Z

    .line 669
    monitor-exit v1

    .line 670
    return-void

    .line 669
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_1a

    throw v0

    .line 666
    :catch_1d
    move-exception v0

    goto :goto_15
.end method
