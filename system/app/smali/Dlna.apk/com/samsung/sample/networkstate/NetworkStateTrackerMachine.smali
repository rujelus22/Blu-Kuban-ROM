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
.field private bAutoIPEnable:Z

.field bReceiveAutoIpCompleted:Z

.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private context:Landroid/content/Context;

.field private ipAddress:I

.field private mConnManager:Landroid/net/ConnectivityManager;

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

.field private timeInterval:I

.field private uploadedFilecnt:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mIpaddress:I

    .line 47
    iput v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->tempIpAddress:I

    .line 53
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->timeInterval:I

    .line 69
    iput-boolean v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mRegisterdIntentfilter:Z

    .line 79
    iput-object v2, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mState:Lcom/samsung/sample/networkstate/INetworkState;

    .line 81
    iput-object v2, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mEventListeners:Ljava/util/ArrayList;

    .line 83
    iput-object v2, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->thread:Landroid/os/HandlerThread;

    .line 85
    iput-object v2, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->networkChecker:Landroid/os/Handler;

    .line 87
    iput-boolean v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->run:Z

    .line 222
    iput-boolean v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->bReceiveAutoIpCompleted:Z

    .line 228
    new-instance v0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;

    invoke-direct {v0, p0}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;-><init>(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)V

    iput-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 261
    iput-boolean v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->bAutoIPEnable:Z

    .line 263
    iput-boolean v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->uploadedFilecnt:Z

    .line 94
    iput-object p1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->context:Landroid/content/Context;

    .line 95
    iput-boolean v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mRegisterdIntentfilter:Z

    .line 96
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 97
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mConnManager:Landroid/net/ConnectivityManager;

    .line 98
    new-instance v0, Lcom/samsung/sample/networkstate/StateConnected;

    invoke-direct {v0, p0}, Lcom/samsung/sample/networkstate/StateConnected;-><init>(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)V

    iput-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mConnectedState:Lcom/samsung/sample/networkstate/INetworkState;

    .line 99
    new-instance v0, Lcom/samsung/sample/networkstate/StateDisconnected;

    invoke-direct {v0, p0}, Lcom/samsung/sample/networkstate/StateDisconnected;-><init>(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)V

    iput-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mDisConnectedState:Lcom/samsung/sample/networkstate/INetworkState;

    .line 100
    new-instance v0, Lcom/samsung/sample/networkstate/StateInit;

    invoke-direct {v0, p0}, Lcom/samsung/sample/networkstate/StateInit;-><init>(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)V

    iput-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mInitializedState:Lcom/samsung/sample/networkstate/INetworkState;

    .line 101
    new-instance v0, Lcom/samsung/sample/networkstate/StateWaitForConnecting;

    invoke-direct {v0, p0}, Lcom/samsung/sample/networkstate/StateWaitForConnecting;-><init>(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)V

    iput-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mWaitForConnectState:Lcom/samsung/sample/networkstate/INetworkState;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mEventListeners:Ljava/util/ArrayList;

    .line 103
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 105
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
    iget v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->timeInterval:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->timeInterval:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mIpaddress:I

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mIpaddress:I

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->uploadedFilecnt:Z

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->uploadedFilecnt:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->bAutoIPEnable:Z

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public DisableAutoIP()V
    .registers 3

    .prologue
    .line 273
    const-string v0, "DLNA"

    const-string v1, "===== disable AUTO-Ip (0715)======"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v0, "ipv4ll.enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->bAutoIPEnable:Z

    .line 277
    return-void
.end method

.method public EnableAutoIP()V
    .registers 3

    .prologue
    .line 266
    const-string v0, "DLNA"

    const-string v1, "===== enable AUTO-Ip (0715)======"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const-string v0, "ipv4ll.enable"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->bAutoIPEnable:Z

    .line 270
    return-void
.end method

.method public addEventListener(Lcom/samsung/sample/networkstate/INetworstateEventListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 153
    monitor-enter p0

    .line 154
    :try_start_1
    iget-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    monitor-exit p0

    .line 156
    return-void

    .line 155
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public getStateType()I
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mState:Lcom/samsung/sample/networkstate/INetworkState;

    invoke-interface {v0}, Lcom/samsung/sample/networkstate/INetworkState;->getStateType()I

    move-result v0

    return v0
.end method

.method public sendMessage(I)V
    .registers 5
    .parameter "what"

    .prologue
    .line 165
    monitor-enter p0

    .line 166
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

    .line 167
    .local v1, listener:Lcom/samsung/sample/networkstate/INetworstateEventListener;
    invoke-interface {v1, p1}, Lcom/samsung/sample/networkstate/INetworstateEventListener;->eventOccured(I)V

    goto :goto_7

    .line 169
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

    .line 172
    return-void
.end method

.method public setState(Lcom/samsung/sample/networkstate/INetworkState;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mState:Lcom/samsung/sample/networkstate/INetworkState;

    .line 192
    iget-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mState:Lcom/samsung/sample/networkstate/INetworkState;

    invoke-interface {v0}, Lcom/samsung/sample/networkstate/INetworkState;->notifyMessage()V

    .line 193
    return-void
.end method

.method public startWorker()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 108
    iget-object v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->thread:Landroid/os/HandlerThread;

    if-nez v1, :cond_46

    .line 109
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "network checker"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->thread:Landroid/os/HandlerThread;

    .line 110
    iput-boolean v3, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->run:Z

    .line 111
    iget-object v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mInitializedState:Lcom/samsung/sample/networkstate/INetworkState;

    invoke-virtual {p0, v1}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->setState(Lcom/samsung/sample/networkstate/INetworkState;)V

    .line 112
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    iput-boolean v3, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mRegisterdIntentfilter:Z

    .line 116
    iget-object v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 117
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->networkChecker:Landroid/os/Handler;

    .line 118
    iget-object v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->networkChecker:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;

    iget-object v3, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->networkChecker:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;-><init>(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_46
    return-void
.end method

.method public stopWorker()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-object v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->thread:Landroid/os/HandlerThread;

    if-nez v1, :cond_6

    .line 150
    :goto_5
    return-void

    .line 126
    :cond_6
    iput-boolean v2, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->run:Z

    .line 127
    iget-object v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 139
    :try_start_d
    iget-boolean v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mRegisterdIntentfilter:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    .line 140
    iget-object v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 141
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mRegisterdIntentfilter:Z
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_1c} :catch_20
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1c} :catch_25

    .line 149
    :cond_1c
    :goto_1c
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->thread:Landroid/os/HandlerThread;

    goto :goto_5

    .line 143
    :catch_20
    move-exception v0

    .line 144
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1c

    .line 145
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_25
    move-exception v0

    .line 146
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c
.end method
