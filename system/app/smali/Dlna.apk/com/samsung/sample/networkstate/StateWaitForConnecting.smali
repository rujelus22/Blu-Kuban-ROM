.class public Lcom/samsung/sample/networkstate/StateWaitForConnecting;
.super Ljava/lang/Object;
.source "StateWaitForConnecting.java"

# interfaces
.implements Lcom/samsung/sample/networkstate/INetworkState;


# instance fields
.field mMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;


# direct methods
.method public constructor <init>(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)V
    .registers 2
    .parameter "machine"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/samsung/sample/networkstate/StateWaitForConnecting;->mMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    .line 22
    return-void
.end method


# virtual methods
.method public getStateType()I
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x5

    return v0
.end method

.method public ipChanged()V
    .registers 1

    .prologue
    .line 29
    return-void
.end method

.method public notifyMessage()V
    .registers 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/sample/networkstate/StateWaitForConnecting;->mMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->sendMessage(I)V

    .line 33
    return-void
.end method

.method public wifiConnected()V
    .registers 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/sample/networkstate/StateWaitForConnecting;->mMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->sendMessage(I)V

    .line 37
    iget-object v0, p0, Lcom/samsung/sample/networkstate/StateWaitForConnecting;->mMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    iget-object v1, p0, Lcom/samsung/sample/networkstate/StateWaitForConnecting;->mMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    iget-object v1, v1, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mConnectedState:Lcom/samsung/sample/networkstate/INetworkState;

    invoke-virtual {v0, v1}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->setState(Lcom/samsung/sample/networkstate/INetworkState;)V

    .line 38
    return-void
.end method

.method public wifiDisconnected()V
    .registers 1

    .prologue
    .line 41
    return-void
.end method