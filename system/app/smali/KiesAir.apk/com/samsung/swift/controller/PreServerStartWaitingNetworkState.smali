.class public Lcom/samsung/swift/controller/PreServerStartWaitingNetworkState;
.super Lcom/samsung/swift/controller/WaitingNetworkState;
.source "PreServerStartWaitingNetworkState.java"


# direct methods
.method public constructor <init>(Lcom/samsung/swift/service/network/NetworkInterface;)V
    .registers 2
    .parameter "ni"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/samsung/swift/controller/WaitingNetworkState;-><init>(Lcom/samsung/swift/service/network/NetworkInterface;)V

    .line 108
    return-void
.end method


# virtual methods
.method protected onNetworkUp()Lcom/samsung/swift/controller/State;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 118
    invoke-virtual {p0}, Lcom/samsung/swift/controller/PreServerStartWaitingNetworkState;->getServiceManager()Lcom/samsung/swift/service/SwiftServiceManagerBound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->start()Z

    .line 119
    new-instance v0, Lcom/samsung/swift/controller/WaitingServerState;

    iget-object v1, p0, Lcom/samsung/swift/controller/PreServerStartWaitingNetworkState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    invoke-direct {v0, v1}, Lcom/samsung/swift/controller/WaitingServerState;-><init>(Lcom/samsung/swift/service/network/NetworkInterface;)V

    invoke-virtual {p0, v0}, Lcom/samsung/swift/controller/PreServerStartWaitingNetworkState;->moveTostate(Lcom/samsung/swift/controller/State;)Lcom/samsung/swift/controller/State;

    move-result-object v0

    .line 122
    :goto_1e
    return-object v0

    :cond_1f
    new-instance v0, Lcom/samsung/swift/controller/StoppedState;

    invoke-direct {v0}, Lcom/samsung/swift/controller/StoppedState;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/swift/controller/PreServerStartWaitingNetworkState;->moveTostate(Lcom/samsung/swift/controller/State;)Lcom/samsung/swift/controller/State;

    move-result-object v0

    goto :goto_1e
.end method

.method protected onTimeout()Lcom/samsung/swift/controller/State;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Lcom/samsung/swift/controller/StoppedState;

    invoke-direct {v0}, Lcom/samsung/swift/controller/StoppedState;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/swift/controller/PreServerStartWaitingNetworkState;->moveTostate(Lcom/samsung/swift/controller/State;)Lcom/samsung/swift/controller/State;

    move-result-object v0

    return-object v0
.end method

.method protected onUserClickButton(Lcom/samsung/swift/applet/AppletActivity;)Lcom/samsung/swift/controller/State;
    .registers 3
    .parameter "applectActivity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lcom/samsung/swift/controller/StoppedState;

    invoke-direct {v0}, Lcom/samsung/swift/controller/StoppedState;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/swift/controller/PreServerStartWaitingNetworkState;->moveTostate(Lcom/samsung/swift/controller/State;)Lcom/samsung/swift/controller/State;

    move-result-object v0

    return-object v0
.end method
