.class Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$2;
.super Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub;
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
.method constructor <init>(Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;)V
    .registers 2
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$2;->this$0:Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public ClientCertificateCB(Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;)V
    .registers 5
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 95
    const-string v0, "EnterpriseVpnAnyconnect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientCertificateCB got certificates, size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;->GetClientCerts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$2;->this$0:Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;

    #getter for: Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mCertListLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->access$400(Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 97
    :try_start_27
    iget-object v0, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$2;->this$0:Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;

    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;->GetClientCerts()Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mCertList:Ljava/util/List;
    invoke-static {v0, v2}, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->access$502(Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;Ljava/util/List;)Ljava/util/List;

    .line 98
    iget-object v0, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$2;->this$0:Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;

    #getter for: Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mCertListLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->access$400(Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 99
    monitor-exit v1

    .line 100
    return-void

    .line 99
    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_27 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method public ImportPKCS12CompleteCB(ZLjava/lang/String;)V
    .registers 6
    .parameter "isSuccess"
    .parameter "error"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    const-string v0, "EnterpriseVpnAnyconnect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImportPKCS12CompleteCB success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$2;->this$0:Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;

    #getter for: Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mCertInstallLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->access$200(Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 89
    :try_start_29
    iget-object v0, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$2;->this$0:Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;

    #setter for: Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mCertSuccess:Z
    invoke-static {v0, p1}, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->access$302(Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;Z)Z

    .line 90
    iget-object v0, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$2;->this$0:Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;

    #getter for: Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mCertInstallLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->access$200(Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 91
    monitor-exit v1

    .line 92
    return-void

    .line 91
    :catchall_39
    move-exception v0

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_29 .. :try_end_3b} :catchall_39

    throw v0
.end method

.method public SCEPEnrollExitCB()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 103
    return-void
.end method

.method public SCEPEnrollStartCB()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    return-void
.end method
