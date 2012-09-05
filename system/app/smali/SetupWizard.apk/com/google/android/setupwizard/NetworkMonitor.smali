.class public Lcom/google/android/setupwizard/NetworkMonitor;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupwizard/NetworkMonitor$Callback;
    }
.end annotation


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/google/android/setupwizard/NetworkMonitor$Callback;

.field private mCheckinSucceeded:Z

.field private mContext:Landroid/content/Context;

.field private mLastReported:Z

.field private mLoginService:Lcom/google/android/gsf/IGoogleLoginService;

.field private mNetworkConnected:Z

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/setupwizard/NetworkMonitor$Callback;)V
    .registers 7
    .parameter "context"
    .parameter "callback"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v2, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mContext:Landroid/content/Context;

    .line 59
    iput-object v2, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mCallback:Lcom/google/android/setupwizard/NetworkMonitor$Callback;

    .line 61
    iput-object v2, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mLoginService:Lcom/google/android/gsf/IGoogleLoginService;

    .line 62
    iput-boolean v1, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mNetworkConnected:Z

    .line 63
    iput-boolean v1, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mCheckinSucceeded:Z

    .line 64
    iput-boolean v1, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mLastReported:Z

    .line 130
    new-instance v1, Lcom/google/android/setupwizard/NetworkMonitor$2;

    invoke-direct {v1, p0}, Lcom/google/android/setupwizard/NetworkMonitor$2;-><init>(Lcom/google/android/setupwizard/NetworkMonitor;)V

    iput-object v1, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 153
    new-instance v1, Lcom/google/android/setupwizard/NetworkMonitor$3;

    invoke-direct {v1, p0}, Lcom/google/android/setupwizard/NetworkMonitor$3;-><init>(Lcom/google/android/setupwizard/NetworkMonitor;)V

    iput-object v1, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 77
    iput-object p1, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mCallback:Lcom/google/android/setupwizard/NetworkMonitor$Callback;

    .line 79
    const-string v1, "NetworkMonitor"

    const-string v2, "Starting NetworkMonitor"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 82
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string v1, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    sget-object v1, Lcom/google/android/gsf/GoogleLoginServiceConstants;->SERVICE_INTENT:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 90
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/google/android/setupwizard/NetworkMonitor$1;

    invoke-direct {v2, p0}, Lcom/google/android/setupwizard/NetworkMonitor$1;-><init>(Lcom/google/android/setupwizard/NetworkMonitor;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/setupwizard/NetworkMonitor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/setupwizard/NetworkMonitor;->onStateChanged()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/setupwizard/NetworkMonitor;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mNetworkConnected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/setupwizard/NetworkMonitor;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mCheckinSucceeded:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/setupwizard/NetworkMonitor;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mCheckinSucceeded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/setupwizard/NetworkMonitor;)Lcom/google/android/gsf/IGoogleLoginService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mLoginService:Lcom/google/android/gsf/IGoogleLoginService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/setupwizard/NetworkMonitor;Lcom/google/android/gsf/IGoogleLoginService;)Lcom/google/android/gsf/IGoogleLoginService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mLoginService:Lcom/google/android/gsf/IGoogleLoginService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/setupwizard/NetworkMonitor;)Lcom/google/android/setupwizard/NetworkMonitor$Callback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mCallback:Lcom/google/android/setupwizard/NetworkMonitor$Callback;

    return-object v0
.end method

.method private onStateChanged()V
    .registers 5

    .prologue
    .line 112
    const-string v2, "NetworkMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v1, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mNetworkConnected:Z

    if-eqz v1, :cond_6a

    const-string v1, "UP"

    :goto_13
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", Checkin "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v1, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mCheckinSucceeded:Z

    if-eqz v1, :cond_6d

    const-string v1, "HAS"

    :goto_23
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " succeeded, GLS "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mLoginService:Lcom/google/android/gsf/IGoogleLoginService;

    if-eqz v1, :cond_70

    const-string v1, "IS"

    :goto_33
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " connected"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-boolean v1, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mNetworkConnected:Z

    if-eqz v1, :cond_73

    iget-boolean v1, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mCheckinSucceeded:Z

    if-eqz v1, :cond_73

    iget-object v1, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mLoginService:Lcom/google/android/gsf/IGoogleLoginService;

    if-eqz v1, :cond_73

    const/4 v0, 0x1

    .line 119
    .local v0, up:Z
    :goto_51
    iget-boolean v1, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mLastReported:Z

    if-eq v0, v1, :cond_69

    iget-object v1, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mCallback:Lcom/google/android/setupwizard/NetworkMonitor$Callback;

    if-eqz v1, :cond_69

    .line 120
    iput-boolean v0, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mLastReported:Z

    if-eqz v0, :cond_75

    .line 121
    const-string v1, "NetworkMonitor"

    const-string v2, "Reporting network CONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v1, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mCallback:Lcom/google/android/setupwizard/NetworkMonitor$Callback;

    invoke-interface {v1}, Lcom/google/android/setupwizard/NetworkMonitor$Callback;->onNetworkConnected()V

    .line 128
    :cond_69
    :goto_69
    return-void

    .line 112
    .end local v0           #up:Z
    :cond_6a
    const-string v1, "DOWN"

    goto :goto_13

    :cond_6d
    const-string v1, "has NOT"

    goto :goto_23

    :cond_70
    const-string v1, "is NOT"

    goto :goto_33

    .line 118
    :cond_73
    const/4 v0, 0x0

    goto :goto_51

    .line 124
    .restart local v0       #up:Z
    :cond_75
    const-string v1, "NetworkMonitor"

    const-string v2, "Reporting network DISCONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mCallback:Lcom/google/android/setupwizard/NetworkMonitor$Callback;

    invoke-interface {v1}, Lcom/google/android/setupwizard/NetworkMonitor$Callback;->onNetworkDisconnected()V

    goto :goto_69
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 97
    iget-object v0, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 104
    :goto_5
    return-void

    .line 99
    :cond_6
    iget-object v0, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    iget-object v0, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 101
    iput-object v2, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mContext:Landroid/content/Context;

    .line 102
    iput-object v2, p0, Lcom/google/android/setupwizard/NetworkMonitor;->mCallback:Lcom/google/android/setupwizard/NetworkMonitor$Callback;

    .line 103
    const-string v0, "NetworkMonitor"

    const-string v1, "Stopped NetworkMonitor"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method
