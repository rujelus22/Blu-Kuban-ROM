.class public Lcom/samsung/sample/networkstate/StateInit;
.super Ljava/lang/Object;
.source "StateInit.java"

# interfaces
.implements Lcom/samsung/sample/networkstate/INetworkState;


# instance fields
.field private mMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;


# direct methods
.method public constructor <init>(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)V
    .registers 2
    .parameter "networkStateTrackerMachine"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/samsung/sample/networkstate/StateInit;->mMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    .line 23
    return-void
.end method


# virtual methods
.method public getStateType()I
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x6

    return v0
.end method

.method public ipChanged()V
    .registers 1

    .prologue
    .line 26
    return-void
.end method

.method public notifyMessage()V
    .registers 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/sample/networkstate/StateInit;->mMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->sendMessage(I)V

    .line 30
    return-void
.end method

.method public wifiConnected()V
    .registers 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/sample/networkstate/StateInit;->mMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    iget-object v1, p0, Lcom/samsung/sample/networkstate/StateInit;->mMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    iget-object v1, v1, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mConnectedState:Lcom/samsung/sample/networkstate/INetworkState;

    invoke-virtual {v0, v1}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->setState(Lcom/samsung/sample/networkstate/INetworkState;)V

    .line 34
    return-void
.end method

.method public wifiDisconnected()V
    .registers 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/sample/networkstate/StateInit;->mMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    iget-object v1, p0, Lcom/samsung/sample/networkstate/StateInit;->mMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    iget-object v1, v1, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mWaitForConnectState:Lcom/samsung/sample/networkstate/INetworkState;

    invoke-virtual {v0, v1}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->setState(Lcom/samsung/sample/networkstate/INetworkState;)V

    .line 38
    return-void
.end method
