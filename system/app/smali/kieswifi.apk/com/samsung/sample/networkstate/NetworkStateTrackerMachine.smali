.class public Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;
.super Ljava/lang/Object;
.source "NetworkStateTrackerMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;
    }
.end annotation


# instance fields
.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private context:Landroid/content/Context;

.field private ipAddress:I

.field mConnectedState:Lcom/samsung/sample/networkstate/INetworkState;

.field mDisConnectedState:Lcom/samsung/sample/networkstate/INetworkState;

.field mEventListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/sample/networkstate/INetworstateEventListener;",
            ">;"
        }
    .end annotation
.end field

.field mInitializedState:Lcom/samsung/sample/networkstate/INetworkState;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIpaddress:I

.field private mRegisterdIntentfilter:Z

.field mState:Lcom/samsung/sample/networkstate/INetworkState;

.field mWaitForConnectState:Lcom/samsung/sample/networkstate/INetworkState;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field networkChecker:Landroid/os/Handler;

.field run:Z

.field private tempIpAddress:I

.field thread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mIpaddress:I

    .line 43
    iput v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->tempIpAddress:I

    .line 54
    iput-boolean v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mRegisterdIntentfilter:Z

    .line 59
    iput-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mState:Lcom/samsung/sample/networkstate/INetworkState;

    .line 61
    iput-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mEventListeners:Ljava/util/ArrayList;

    .line 63
    iput-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->thread:Landroid/os/HandlerThread;

    .line 64
    iput-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->networkChecker:Landroid/os/Handler;

    .line 65
    iput-boolean v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->run:Z

    .line 181
    new-instance v0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;

    invoke-direct {v0, p0}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;-><init>(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)V

    iput-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    iput-object p1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->context:Landroid/content/Context;

    .line 72
    iput-boolean v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mRegisterdIntentfilter:Z

    .line 73
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 74
    new-instance v0, Lcom/samsung/sample/networkstate/StateConnected;

    invoke-direct {v0, p0}, Lcom/samsung/sample/networkstate/StateConnected;-><init>(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)V

    iput-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mConnectedState:Lcom/samsung/sample/networkstate/INetworkState;

    .line 75
    new-instance v0, Lcom/samsung/sample/networkstate/StateDisconnected;

    invoke-direct {v0, p0}, Lcom/samsung/sample/networkstate/StateDisconnected;-><init>(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)V

    iput-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mDisConnectedState:Lcom/samsung/sample/networkstate/INetworkState;

    .line 76
    new-instance v0, Lcom/samsung/sample/networkstate/StateInit;

    invoke-direct {v0, p0}, Lcom/samsung/sample/networkstate/StateInit;-><init>(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)V

    iput-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mInitializedState:Lcom/samsung/sample/networkstate/INetworkState;

    .line 77
    new-instance v0, Lcom/samsung/sample/networkstate/StateWaitForConnecting;

    invoke-direct {v0, p0}, Lcom/samsung/sample/networkstate/StateWaitForConnecting;-><init>(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)V

    iput-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mWaitForConnectState:Lcom/samsung/sample/networkstate/INetworkState;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mEventListeners:Ljava/util/ArrayList;

    .line 79
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)Landroid/net/wifi/WifiManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->ipAddress:I

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->ipAddress:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->tempIpAddress:I

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->tempIpAddress:I

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mIpaddress:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mIpaddress:I

    return p1
.end method


# virtual methods
.method public addEventListener(Lcom/samsung/sample/networkstate/INetworstateEventListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 121
    monitor-enter p0

    .line 123
    :try_start_1
    iget-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 125
    iget-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_f
    monitor-exit p0

    .line 128
    return-void

    .line 127
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public getStateType()I
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mState:Lcom/samsung/sample/networkstate/INetworkState;

    invoke-interface {v0}, Lcom/samsung/sample/networkstate/INetworkState;->getStateType()I

    move-result v0

    return v0
.end method

.method public sendMessage(I)V
    .registers 5
    .parameter "what"

    .prologue
    .line 137
    monitor-enter p0

    .line 138
    :try_start_1
    iget-object v2, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/sample/networkstate/INetworstateEventListener;

    .line 139
    .local v1, listener:Lcom/samsung/sample/networkstate/INetworstateEventListener;
    invoke-interface {v1, p1}, Lcom/samsung/sample/networkstate/INetworstateEventListener;->eventOccured(I)V

    goto :goto_7

    .line 141
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/samsung/sample/networkstate/INetworstateEventListener;
    :catchall_17
    move-exception v2

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_17

    .line 144
    return-void
.end method

.method public setState(Lcom/samsung/sample/networkstate/INetworkState;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mState:Lcom/samsung/sample/networkstate/INetworkState;

    .line 164
    iget-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mState:Lcom/samsung/sample/networkstate/INetworkState;

    invoke-interface {v0}, Lcom/samsung/sample/networkstate/INetworkState;->notifyMessage()V

    .line 165
    return-void
.end method

.method public startWorker()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 83
    iget-object v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->thread:Landroid/os/HandlerThread;

    if-nez v1, :cond_48

    .line 84
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "network checker"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->thread:Landroid/os/HandlerThread;

    .line 85
    iput-boolean v3, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->run:Z

    .line 86
    iget-object v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mInitializedState:Lcom/samsung/sample/networkstate/INetworkState;

    invoke-virtual {p0, v1}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->setState(Lcom/samsung/sample/networkstate/INetworkState;)V

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    iput-boolean v3, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mRegisterdIntentfilter:Z

    .line 91
    iget-object v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 92
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->networkChecker:Landroid/os/Handler;

    .line 93
    iget-object v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->networkChecker:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;

    iget-object v3, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->networkChecker:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;-><init>(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;Landroid/os/Handler;)V

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_48
    return-void
.end method

.method public stopWorker()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    iget-object v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->thread:Landroid/os/HandlerThread;

    if-nez v1, :cond_7

    .line 118
    :goto_6
    return-void

    .line 101
    :cond_7
    iput-boolean v2, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->run:Z

    .line 102
    iget-object v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 103
    :goto_e
    iget-object v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-ne v1, v3, :cond_1a

    .line 104
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_e

    .line 107
    :cond_1a
    :try_start_1a
    iget-boolean v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mRegisterdIntentfilter:Z

    if-ne v1, v3, :cond_28

    .line 108
    iget-object v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 109
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mRegisterdIntentfilter:Z
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_28} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_28} :catch_31

    .line 117
    :cond_28
    :goto_28
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->thread:Landroid/os/HandlerThread;

    goto :goto_6

    .line 111
    :catch_2c
    move-exception v0

    .line 112
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_28

    .line 113
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_31
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28
.end method
