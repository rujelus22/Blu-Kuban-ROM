.class public abstract Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;
.super Ljava/lang/Object;
.source "ServiceConnectionCB.java"


# instance fields
.field private mParent:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "parent"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;->mParent:Landroid/content/Context;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;->mParent:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method GetContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;->mParent:Landroid/content/Context;

    return-object v0
.end method

.method public OnBindTimeout()V
    .registers 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;->mParent:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2f

    .line 49
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;->mParent:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;->mParent:Landroid/content/Context;

    const v2, 0x7f05000b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Failed to bind to VpnService"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB$1;

    invoke-direct {v2, p0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB$1;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 61
    :cond_2f
    return-void
.end method

.method public abstract OnServiceConnected(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
.end method

.method public OnServiceDisconnected()V
    .registers 1

    .prologue
    .line 89
    return-void
.end method

.method public OnServiceWillDisconnect(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;ZLjava/lang/String;)V
    .registers 4
    .parameter "vpnService"
    .parameter "isForcedShutdown"
    .parameter "shutdownMsg"

    .prologue
    .line 79
    return-void
.end method

.method public ShowConnectingMessage()V
    .registers 4

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;->mParent:Landroid/content/Context;

    const-string v1, "Connecting to VPN Service. Please Wait..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 99
    return-void
.end method
