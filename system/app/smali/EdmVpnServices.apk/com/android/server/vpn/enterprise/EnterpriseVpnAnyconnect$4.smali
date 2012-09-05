.class Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$4;
.super Landroid/app/enterprise/IEnterpriseVpnInterface$Stub;
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
    .line 343
    iput-object p1, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$4;->this$0:Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;

    invoke-direct {p0}, Landroid/app/enterprise/IEnterpriseVpnInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public createConnection(Landroid/app/enterprise/EnterpriseVpnConnection;Ljava/lang/String;)Z
    .registers 4
    .parameter "conn"
    .parameter "oldName"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$4;->this$0:Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->createConnection(Landroid/app/enterprise/EnterpriseVpnConnection;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAllConnections()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/EnterpriseVpnConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$4;->this$0:Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;

    invoke-virtual {v0}, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->getAllConnections()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCertificates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$4;->this$0:Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;

    invoke-virtual {v0}, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->getCertificates()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnection(Ljava/lang/String;)Landroid/app/enterprise/EnterpriseVpnConnection;
    .registers 3
    .parameter "connName"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$4;->this$0:Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;

    invoke-virtual {v0, p1}, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->getConnection(Ljava/lang/String;)Landroid/app/enterprise/EnterpriseVpnConnection;

    move-result-object v0

    return-object v0
.end method

.method public installCertificate([BLjava/lang/String;)Z
    .registers 4
    .parameter "pkcs12Blob"
    .parameter "password"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$4;->this$0:Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->installCertificate([BLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeConnection(Ljava/lang/String;)Z
    .registers 3
    .parameter "name"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$4;->this$0:Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;

    invoke-virtual {v0, p1}, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->removeConnection(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
