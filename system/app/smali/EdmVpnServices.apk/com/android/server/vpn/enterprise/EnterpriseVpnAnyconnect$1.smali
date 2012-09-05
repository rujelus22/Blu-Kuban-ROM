.class Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$1;
.super Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;
.source "EnterpriseVpnAnyconnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;


# direct methods
.method constructor <init>(Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$1;->this$0:Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;

    invoke-direct {p0, p2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public OnServiceConnected(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
    .registers 5
    .parameter "vpnService"

    .prologue
    .line 52
    const-string v1, "EnterpriseVpnAnyconnect"

    const-string v2, "Service Anyconnect got connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :try_start_7
    iget-object v1, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$1;->this$0:Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;

    #getter for: Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mCertHandler:Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;
    invoke-static {v1}, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->access$000(Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;)Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 55
    const-string v1, "EnterpriseVpnAnyconnect"

    const-string v2, "RegisterCertificateListener failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1a} :catch_1b

    .line 63
    :goto_1a
    return-void

    .line 58
    :catch_1b
    move-exception v0

    .line 59
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EnterpriseVpnAnyconnect"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    .line 62
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_24
    iget-object v1, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$1;->this$0:Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;

    #getter for: Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mLoadServiceSem:Ljava/util/concurrent/Semaphore;
    invoke-static {v1}, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->access$100(Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_1a
.end method

.method public OnServiceDisconnected()V
    .registers 3

    .prologue
    .line 79
    const-string v0, "EnterpriseVpnAnyconnect"

    const-string v1, "OnServiceDisconnected entry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$1;->this$0:Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;

    #getter for: Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mLoadServiceSem:Ljava/util/concurrent/Semaphore;
    invoke-static {v0}, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->access$100(Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 81
    return-void
.end method

.method public OnServiceWillDisconnect(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;ZLjava/lang/String;)V
    .registers 7
    .parameter "vpnService"
    .parameter "isForcedShutdown"
    .parameter "shutdownMsg"

    .prologue
    .line 67
    const-string v1, "EnterpriseVpnAnyconnect"

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :try_start_5
    iget-object v1, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$1;->this$0:Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;

    #getter for: Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mCertHandler:Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;
    invoke-static {v1}, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->access$000(Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;)Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 70
    const-string v1, "EnterpriseVpnAnyconnect"

    const-string v2, "UnregisterCertificateListener failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_18} :catch_22

    .line 75
    :cond_18
    :goto_18
    iget-object v1, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$1;->this$0:Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;

    #getter for: Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mLoadServiceSem:Ljava/util/concurrent/Semaphore;
    invoke-static {v1}, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->access$100(Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 76
    return-void

    .line 72
    :catch_22
    move-exception v0

    .line 73
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EnterpriseVpnAnyconnect"

    const-string v2, "RemoteException occurred while unregistering callbacks"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method
