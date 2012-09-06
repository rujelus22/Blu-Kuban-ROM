.class Lcom/google/android/music/athome/AtHomeDevicePlayback$15;
.super Landroid/support/place/api/broker/BrokerManager$ConnectionListener;
.source "AtHomeDevicePlayback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeDevicePlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V
    .registers 2
    .parameter

    .prologue
    .line 2729
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$15;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-direct {p0}, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBrokerConnected(Landroid/support/place/connector/Broker;)V
    .registers 4
    .parameter "broker"

    .prologue
    .line 2732
    invoke-static {}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2733
    const-string v0, "aah.Music"

    const-string v1, "AtHomeDevicePlayback onBrokerConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    :cond_d
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$15;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #setter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mBroker:Landroid/support/place/connector/Broker;
    invoke-static {v0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$7802(Lcom/google/android/music/athome/AtHomeDevicePlayback;Landroid/support/place/connector/Broker;)Landroid/support/place/connector/Broker;

    .line 2736
    return-void
.end method

.method public onBrokerDisconnected()V
    .registers 3

    .prologue
    .line 2739
    invoke-static {}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2740
    const-string v0, "aah.Music"

    const-string v1, "AtHomeDevicePlayback onBrokerDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2743
    :cond_d
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$15;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mBroker:Landroid/support/place/connector/Broker;
    invoke-static {v0, v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$7802(Lcom/google/android/music/athome/AtHomeDevicePlayback;Landroid/support/place/connector/Broker;)Landroid/support/place/connector/Broker;

    .line 2744
    return-void
.end method

.method public onPlaceConnected(Landroid/support/place/connector/PlaceInfo;)V
    .registers 4
    .parameter "place"

    .prologue
    .line 2747
    invoke-static {}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2748
    const-string v0, "aah.Music"

    const-string v1, "AtHomeDevicePlayback onPlaceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    :cond_d
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$15;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->isActive()Z
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$7900(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2751
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$15;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->setupMusicClient()V
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$8000(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    .line 2753
    :cond_1a
    return-void
.end method

.method public onPlaceDisconnected()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 2756
    invoke-static {}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2757
    const-string v0, "aah.Music"

    const-string v1, "AtHomeDevicePlayback onPlaceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    :cond_e
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$15;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #setter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeError:Z
    invoke-static {v0, v2}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$1102(Lcom/google/android/music/athome/AtHomeDevicePlayback;Z)Z

    .line 2760
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$15;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    const/16 v1, 0x1389

    #setter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeErrorType:I
    invoke-static {v0, v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$1202(Lcom/google/android/music/athome/AtHomeDevicePlayback;I)I

    .line 2762
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$15;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->isActive()Z
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$8100(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2763
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$15;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$8200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 2764
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$15;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyFailure()V

    .line 2773
    :cond_33
    :goto_33
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$15;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    monitor-enter v1

    .line 2774
    :try_start_3a
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$15;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->disconnectFromMusicConnectorLocked()V
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$8400(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    .line 2775
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$15;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mBroker:Landroid/support/place/connector/Broker;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$7800(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Landroid/support/place/connector/Broker;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 2776
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$15;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mBroker:Landroid/support/place/connector/Broker;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$7800(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Landroid/support/place/connector/Broker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/place/connector/Broker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$15;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mRetryError:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$8500(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2778
    :cond_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_3a .. :try_end_5b} :catchall_62

    .line 2780
    return-void

    .line 2769
    :cond_5c
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$15;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #setter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPendingNotifyFailure:Z
    invoke-static {v0, v2}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$8302(Lcom/google/android/music/athome/AtHomeDevicePlayback;Z)Z

    goto :goto_33

    .line 2778
    :catchall_62
    move-exception v0

    :try_start_63
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v0
.end method
