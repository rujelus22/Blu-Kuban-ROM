.class public Lcom/samsung/sample/networkstate/StateDisconnected;
.super Ljava/lang/Object;
.source "StateDisconnected.java"

# interfaces
.implements Lcom/samsung/sample/networkstate/INetworkState;


# instance fields
.field mMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;


# direct methods
.method public constructor <init>(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)V
    .registers 2
    .parameter "machine"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/sample/networkstate/StateDisconnected;->mMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    .line 31
    return-void
.end method


# virtual methods
.method public getStateType()I
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public ipChanged()V
    .registers 1

    .prologue
    .line 34
    return-void
.end method

.method public notifyMessage()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 45
    const-string v0, "StateDisconnected notimessage"

    invoke-static {v1, v0}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/samsung/sample/networkstate/StateDisconnected;->mMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    invoke-virtual {v0, v1}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->sendMessage(I)V

    .line 47
    return-void
.end method

.method public wifiConnected()V
    .registers 3

    .prologue
    .line 37
    const/4 v0, 0x1

    const-string v1, "StateDisconnected wifiConnected"

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/samsung/sample/networkstate/StateDisconnected;->mMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    iget-object v1, p0, Lcom/samsung/sample/networkstate/StateDisconnected;->mMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    iget-object v1, v1, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mConnectedState:Lcom/samsung/sample/networkstate/INetworkState;

    invoke-virtual {v0, v1}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->setState(Lcom/samsung/sample/networkstate/INetworkState;)V

    .line 39
    return-void
.end method

.method public wifiDisconnected()V
    .registers 1

    .prologue
    .line 42
    return-void
.end method
