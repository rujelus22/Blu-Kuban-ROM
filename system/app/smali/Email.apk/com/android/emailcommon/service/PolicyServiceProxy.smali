.class public Lcom/android/emailcommon/service/PolicyServiceProxy;
.super Lcom/android/emailcommon/service/ServiceProxy;
.source "PolicyServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/IPolicyService;


# instance fields
.field private mReturn:Ljava/lang/Object;

.field private mService:Lcom/android/emailcommon/service/IPolicyService;


# direct methods
.method static synthetic access$002(Lcom/android/emailcommon/service/PolicyServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/emailcommon/service/PolicyServiceProxy;)Lcom/android/emailcommon/service/IPolicyService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mService:Lcom/android/emailcommon/service/IPolicyService;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public clearUnsupportedPolicies(Lcom/android/emailcommon/provider/Policy;)Lcom/android/emailcommon/provider/Policy;
    .registers 4
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$1;

    invoke-direct {v0, p0, p1}, Lcom/android/emailcommon/service/PolicyServiceProxy$1;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;Lcom/android/emailcommon/provider/Policy;)V

    const-string v1, "clearUnsupportedPolicies"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 58
    invoke-virtual {p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;->waitForCompletion()V

    .line 62
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_19

    .line 63
    new-instance v0, Lcom/android/emailcommon/service/ServiceUnavailableException;

    const-string v1, "clearUnsupportedPolicies"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/service/ServiceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_19
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Lcom/android/emailcommon/provider/Policy;

    return-object v0
.end method

.method public isActive(Lcom/android/emailcommon/provider/Policy;)Z
    .registers 4
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$2;

    invoke-direct {v0, p0, p1}, Lcom/android/emailcommon/service/PolicyServiceProxy$2;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;Lcom/android/emailcommon/provider/Policy;)V

    const-string v1, "isActive"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 76
    invoke-virtual {p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;->waitForCompletion()V

    .line 80
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_19

    .line 81
    new-instance v0, Lcom/android/emailcommon/service/ServiceUnavailableException;

    const-string v1, "isActive"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/service/ServiceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_19
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isActiveAdmin()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$3;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy$3;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;)V

    const-string v1, "isActiveAdmin"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 94
    invoke-virtual {p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;->waitForCompletion()V

    .line 98
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_19

    .line 99
    new-instance v0, Lcom/android/emailcommon/service/ServiceUnavailableException;

    const-string v1, "isActiveAdmin"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/service/ServiceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_19
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSupported(Lcom/android/emailcommon/provider/Policy;)Z
    .registers 4
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$4;

    invoke-direct {v0, p0, p1}, Lcom/android/emailcommon/service/PolicyServiceProxy$4;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;Lcom/android/emailcommon/provider/Policy;)V

    const-string v1, "isSupported"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 112
    invoke-virtual {p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;->waitForCompletion()V

    .line 116
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_19

    .line 117
    new-instance v0, Lcom/android/emailcommon/service/ServiceUnavailableException;

    const-string v1, "isSupported"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/service/ServiceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_19
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onConnected(Landroid/os/IBinder;)V
    .registers 3
    .parameter "binder"

    .prologue
    .line 44
    invoke-static {p1}, Lcom/android/emailcommon/service/IPolicyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IPolicyService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mService:Lcom/android/emailcommon/service/IPolicyService;

    .line 45
    return-void
.end method

.method public policiesRequired(J)V
    .registers 5
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/PolicyServiceProxy$5;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;J)V

    const-string v1, "policiesRequired"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 130
    return-void
.end method

.method public policiesUpdated(J)V
    .registers 5
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/PolicyServiceProxy$8;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;J)V

    const-string v1, "policiesUpdated"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 157
    return-void
.end method

.method public remoteWipe()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$6;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy$6;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;)V

    const-string v1, "remoteWipe"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 139
    return-void
.end method

.method public setAccountHoldFlag(JZ)V
    .registers 6
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/emailcommon/service/PolicyServiceProxy$7;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;JZ)V

    const-string v1, "setAccountHoldFlag"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 148
    return-void
.end method
