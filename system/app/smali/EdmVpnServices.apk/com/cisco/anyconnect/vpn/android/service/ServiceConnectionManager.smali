.class public Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;
.super Ljava/lang/Object;
.source "ServiceConnectionManager.java"


# instance fields
.field private mCallback:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsActivated:Z

.field private mIsVisible:Z

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceStateListener:Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;

.field private mSuppressConnectMsg:Z

.field private mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;


# direct methods
.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 206
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mSuppressConnectMsg:Z

    .line 49
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mServiceStateListener:Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;

    .line 75
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$2;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mHandler:Landroid/os/Handler;

    .line 87
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$3;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$3;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 207
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;

    .line 208
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;->GetContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mContext:Landroid/content/Context;

    .line 209
    return-void
.end method

.method static synthetic access$000(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;ZLjava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->deactivate(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    return-object p1
.end method

.method static synthetic access$402(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mSuppressConnectMsg:Z

    return p1
.end method

.method static synthetic access$500(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->stopTimer()V

    return-void
.end method

.method static synthetic access$600(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mServiceStateListener:Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mIsVisible:Z

    return v0
.end method

.method private deactivate(ZLjava/lang/String;)V
    .registers 7
    .parameter "isForcedShutdown"
    .parameter "shutdownMsg"

    .prologue
    .line 135
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    if-eqz v1, :cond_1c

    .line 140
    :try_start_4
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mServiceStateListener:Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;

    invoke-interface {v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterServiceStateListener(Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_23

    .line 147
    :goto_b
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-virtual {v1, v2, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;->OnServiceWillDisconnect(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;ZLjava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 149
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    .line 152
    :cond_1c
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->stopTimer()V

    .line 153
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mIsActivated:Z

    .line 154
    return-void

    .line 142
    :catch_23
    move-exception v0

    .line 144
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "VpnServiceConnection"

    const-string v3, "Unexpected RemoteException in unregistering RegisterServiceShutdownListener"

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method private startTimer()V
    .registers 5

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->stopTimer()V

    .line 193
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 194
    return-void
.end method

.method private stopTimer()V
    .registers 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 199
    return-void
.end method


# virtual methods
.method public Activate()Z
    .registers 2

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Activate(Z)Z

    move-result v0

    return v0
.end method

.method public Activate(Z)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 229
    const-string v2, "VpnServiceConnection"

    const-string v3, "Activate"

    invoke-static {v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;

    if-nez v2, :cond_17

    .line 232
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "VpnServiceConnection"

    const-string v3, "unexpected NULL ServiceConnectionCB"

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :goto_16
    return v0

    .line 236
    :cond_17
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    if-eqz p1, :cond_29

    .line 239
    const-string v3, "com.cisco.anyconnect.vpn.android.VPN_SERVICE_KEY_DISABLE_NOTIFICATIONS"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 242
    :cond_29
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v2, v4, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 243
    if-nez v2, :cond_3d

    .line 245
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "VpnServiceConnection"

    const-string v3, "bindService failed"

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 249
    :cond_3d
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->startTimer()V

    .line 250
    iput-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mIsActivated:Z

    move v0, v1

    .line 251
    goto :goto_16
.end method

.method public Deactivate()V
    .registers 3

    .prologue
    .line 259
    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->deactivate(ZLjava/lang/String;)V

    .line 260
    return-void
.end method

.method public GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    return-object v0
.end method
