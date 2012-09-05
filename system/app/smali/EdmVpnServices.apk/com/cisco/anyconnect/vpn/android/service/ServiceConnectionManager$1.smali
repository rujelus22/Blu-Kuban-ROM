.class Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1;
.super Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener$Stub;
.source "ServiceConnectionManager.java"


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
    .line 50
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public ServiceReadyCB()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 64
    const-string v0, "VpnServiceConnection"

    const-string v1, "ServiceReadyCB()"

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    #getter for: Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->access$200(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 67
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    #getter for: Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->access$200(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    #getter for: Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->access$300(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;->OnServiceConnected(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V

    .line 69
    :cond_1e
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    const/4 v1, 0x0

    #setter for: Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mSuppressConnectMsg:Z
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->access$402(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;Z)Z

    .line 70
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    #calls: Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->stopTimer()V
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->access$500(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)V

    .line 71
    return-void
.end method

.method public ServiceShutdownCB(Ljava/lang/String;)V
    .registers 4
    .parameter "shutdownMsg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    #getter for: Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->access$100(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1$1;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1$1;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    return-void
.end method
