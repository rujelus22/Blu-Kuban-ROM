.class Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$3;
.super Ljava/lang/Object;
.source "ServiceConnectionManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)V
    .registers 2
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter "className"
    .parameter "service"

    .prologue
    .line 92
    const-string v1, "VpnServiceConnection"

    const-string v2, "onServiceConnected"

    invoke-static {v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    #setter for: Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;
    invoke-static {v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->access$302(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    .line 98
    :try_start_10
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    #getter for: Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->access$300(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    #getter for: Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mServiceStateListener:Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->access$600(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterServiceStateListener(Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 100
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "VpnServiceConnection"

    const-string v3, "failed to register the service state listener, vpn service is probably shutting down"

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_2b} :catch_2c

    .line 107
    :cond_2b
    :goto_2b
    return-void

    .line 103
    :catch_2c
    move-exception v0

    .line 105
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "VpnServiceConnection"

    const-string v3, "Unexpected RemoteException in registering RegisterServiceShutdownListener"

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2b
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "className"

    .prologue
    .line 113
    const-string v0, "VpnServiceConnection"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    const/4 v1, 0x0

    #setter for: Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->access$302(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    .line 115
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    #getter for: Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->access$200(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 117
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    #getter for: Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->access$200(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;->OnServiceDisconnected()V

    .line 118
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    #getter for: Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mIsVisible:Z
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->access$700(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 120
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    #getter for: Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->access$200(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;->ShowConnectingMessage()V

    .line 123
    :cond_2f
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    #calls: Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->stopTimer()V
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->access$500(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)V

    .line 124
    return-void
.end method
