.class public Lcom/android/emailcommon/service/AccountServiceProxy;
.super Lcom/android/emailcommon/service/ServiceProxy;
.source "AccountServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/IAccountService;


# instance fields
.field private mReturn:Ljava/lang/Object;

.field private mService:Lcom/android/emailcommon/service/IAccountService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "_context"

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.email.ACCOUNT_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/emailcommon/service/ServiceProxy;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mService:Lcom/android/emailcommon/service/IAccountService;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/android/emailcommon/service/AccountServiceProxy;)Lcom/android/emailcommon/service/IAccountService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mService:Lcom/android/emailcommon/service/IAccountService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/emailcommon/service/AccountServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccountColor(J)I
    .registers 5
    .parameter "accountId"

    .prologue
    .line 82
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/AccountServiceProxy$4;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;J)V

    const-string v1, "getAccountColor"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 88
    invoke-virtual {p0}, Lcom/android/emailcommon/service/AccountServiceProxy;->waitForCompletion()V

    .line 89
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_15

    .line 90
    const v0, -0xffff01

    .line 92
    :goto_14
    return v0

    :cond_15
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_14
.end method

.method public getConfigurationData(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4
    .parameter "accountType"

    .prologue
    .line 99
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$5;

    invoke-direct {v0, p0, p1}, Lcom/android/emailcommon/service/AccountServiceProxy$5;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;Ljava/lang/String;)V

    const-string v1, "getConfigurationData"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 105
    invoke-virtual {p0}, Lcom/android/emailcommon/service/AccountServiceProxy;->waitForCompletion()V

    .line 106
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_13

    .line 107
    const/4 v0, 0x0

    .line 109
    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    goto :goto_12
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 116
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$6;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/AccountServiceProxy$6;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;)V

    const-string v1, "getDeviceId"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 122
    invoke-virtual {p0}, Lcom/android/emailcommon/service/AccountServiceProxy;->waitForCompletion()V

    .line 123
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_13

    .line 124
    const/4 v0, 0x0

    .line 126
    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_12
.end method

.method public notifyLoginFailed(J)V
    .registers 5
    .parameter "accountId"

    .prologue
    .line 49
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/AccountServiceProxy$1;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;J)V

    const-string v1, "notifyLoginFailed"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 55
    return-void
.end method

.method public notifyLoginSucceeded(J)V
    .registers 5
    .parameter "accountId"

    .prologue
    .line 59
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/AccountServiceProxy$2;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;J)V

    const-string v1, "notifyLoginSucceeded"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 65
    return-void
.end method

.method public onConnected(Landroid/os/IBinder;)V
    .registers 3
    .parameter "binder"

    .prologue
    .line 39
    invoke-static {p1}, Lcom/android/emailcommon/service/IAccountService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IAccountService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mService:Lcom/android/emailcommon/service/IAccountService;

    .line 40
    return-void
.end method

.method public reconcileAccounts(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "protocol"
    .parameter "accountManagerType"

    .prologue
    .line 70
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/AccountServiceProxy$3;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "reconcileAccounts"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 76
    invoke-virtual {p0}, Lcom/android/emailcommon/service/AccountServiceProxy;->waitForCompletion()V

    .line 77
    return-void
.end method
