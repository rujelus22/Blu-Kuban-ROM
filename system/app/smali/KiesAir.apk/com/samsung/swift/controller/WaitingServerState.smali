.class Lcom/samsung/swift/controller/WaitingServerState;
.super Lcom/samsung/swift/controller/State;
.source "WaitingServerState.java"


# instance fields
.field private final ni:Lcom/samsung/swift/service/network/NetworkInterface;

.field private sdcardUnMounted:Z


# direct methods
.method protected constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/swift/controller/WaitingServerState;-><init>(Lcom/samsung/swift/service/network/NetworkInterface;)V

    .line 113
    return-void
.end method

.method protected constructor <init>(Lcom/samsung/swift/service/network/NetworkInterface;)V
    .registers 2
    .parameter "ni"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/samsung/swift/controller/State;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/samsung/swift/controller/WaitingServerState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    .line 105
    return-void
.end method


# virtual methods
.method protected onSdcardUnmounted()Lcom/samsung/swift/controller/State;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/swift/controller/WaitingServerState;->sdcardUnMounted:Z

    .line 137
    return-object p0
.end method

.method protected onUpdateAppletDisplay(Lcom/samsung/swift/applet/AppletActivity;)V
    .registers 3
    .parameter "applectActivity"

    .prologue
    .line 130
    invoke-static {}, Lcom/samsung/swift/applet/AppletActivity;->instance()Lcom/samsung/swift/applet/AppletActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/applet/AppletActivity;->setWaitingServer()V

    .line 131
    return-void
.end method

.method protected onWebServerStarted()Lcom/samsung/swift/controller/State;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lcom/samsung/swift/controller/RunningState;

    iget-object v1, p0, Lcom/samsung/swift/controller/WaitingServerState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    iget-boolean v2, p0, Lcom/samsung/swift/controller/WaitingServerState;->sdcardUnMounted:Z

    invoke-direct {v0, v1, v2}, Lcom/samsung/swift/controller/RunningState;-><init>(Lcom/samsung/swift/service/network/NetworkInterface;Z)V

    return-object v0
.end method
