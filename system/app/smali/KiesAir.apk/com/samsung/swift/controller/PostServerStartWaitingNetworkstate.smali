.class public Lcom/samsung/swift/controller/PostServerStartWaitingNetworkstate;
.super Lcom/samsung/swift/controller/WaitingNetworkState;
.source "PostServerStartWaitingNetworkstate.java"


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
    .line 112
    new-instance v0, Lcom/samsung/swift/controller/NetworkState;

    iget-object v1, p0, Lcom/samsung/swift/controller/PostServerStartWaitingNetworkstate;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    invoke-direct {v0, v1}, Lcom/samsung/swift/controller/NetworkState;-><init>(Lcom/samsung/swift/service/network/NetworkInterface;)V

    invoke-virtual {p0, v0}, Lcom/samsung/swift/controller/PostServerStartWaitingNetworkstate;->moveTostate(Lcom/samsung/swift/controller/State;)Lcom/samsung/swift/controller/State;

    move-result-object v0

    return-object v0
.end method

.method protected onTimeout()Lcom/samsung/swift/controller/State;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Lcom/samsung/swift/controller/NetworkState;

    invoke-direct {v0}, Lcom/samsung/swift/controller/NetworkState;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/swift/controller/PostServerStartWaitingNetworkstate;->moveTostate(Lcom/samsung/swift/controller/State;)Lcom/samsung/swift/controller/State;

    move-result-object v0

    return-object v0
.end method
