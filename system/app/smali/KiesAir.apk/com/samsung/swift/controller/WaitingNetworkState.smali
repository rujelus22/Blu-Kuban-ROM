.class abstract Lcom/samsung/swift/controller/WaitingNetworkState;
.super Lcom/samsung/swift/controller/NetworkState;
.source "WaitingNetworkState.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = null

.field private static final POLLDELAY:J = 0x3e8L

.field private static final TIMEOUT_LENGTH:J = 0xea60L


# instance fields
.field protected final isPolling:Z

.field private final waitUntil:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 103
    const-class v0, Lcom/samsung/swift/controller/WaitingNetworkState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/controller/WaitingNetworkState;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/swift/service/network/NetworkInterface;)V
    .registers 6
    .parameter "ni"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/samsung/swift/controller/NetworkState;-><init>(Lcom/samsung/swift/service/network/NetworkInterface;)V

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/swift/controller/WaitingNetworkState;->waitUntil:J

    .line 114
    if-nez p1, :cond_16

    .line 116
    sget-object v0, Lcom/samsung/swift/controller/WaitingNetworkState;->LOGTAG:Ljava/lang/String;

    const-string v1, "ERROR: WaitingNetworkState waiting for a null network. This is not good. Investigate it."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_16
    invoke-virtual {p1}, Lcom/samsung/swift/service/network/NetworkInterface;->isHotspot()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/swift/controller/WaitingNetworkState;->isPolling:Z

    .line 125
    invoke-virtual {p0}, Lcom/samsung/swift/controller/WaitingNetworkState;->requestPoll()V

    .line 132
    :goto_22
    return-void

    .line 129
    :cond_23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/swift/controller/WaitingNetworkState;->isPolling:Z

    .line 130
    invoke-virtual {p0}, Lcom/samsung/swift/controller/WaitingNetworkState;->requestTimeout()V

    goto :goto_22
.end method


# virtual methods
.method protected moveTostate(Lcom/samsung/swift/controller/State;)Lcom/samsung/swift/controller/State;
    .registers 2
    .parameter "state"

    .prologue
    .line 220
    invoke-virtual {p0, p0}, Lcom/samsung/swift/controller/WaitingNetworkState;->cancelTimer(Ljava/lang/Object;)V

    .line 221
    return-object p1
.end method

.method protected onNetworkChange()Lcom/samsung/swift/controller/State;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/samsung/swift/controller/WaitingNetworkState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    if-nez v0, :cond_5

    .line 155
    .end local p0
    :cond_4
    :goto_4
    return-object p0

    .line 143
    .restart local p0
    :cond_5
    iget-object v0, p0, Lcom/samsung/swift/controller/WaitingNetworkState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    invoke-virtual {v0}, Lcom/samsung/swift/service/network/NetworkInterface;->isUpAndAssociated()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 150
    iget-object v0, p0, Lcom/samsung/swift/controller/WaitingNetworkState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    invoke-virtual {v0}, Lcom/samsung/swift/service/network/NetworkInterface;->postConnection()V

    .line 152
    invoke-virtual {p0}, Lcom/samsung/swift/controller/WaitingNetworkState;->guardedUpdatePopupResetNetworkDisplay()V

    .line 153
    invoke-virtual {p0}, Lcom/samsung/swift/controller/WaitingNetworkState;->guardedUpdateAppletDisplay()V

    .line 155
    invoke-virtual {p0}, Lcom/samsung/swift/controller/WaitingNetworkState;->onNetworkUp()Lcom/samsung/swift/controller/State;

    move-result-object p0

    goto :goto_4
.end method

.method protected abstract onNetworkUp()Lcom/samsung/swift/controller/State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected abstract onTimeout()Lcom/samsung/swift/controller/State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected onTimer(Ljava/lang/Object;)Lcom/samsung/swift/controller/State;
    .registers 6
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/samsung/swift/controller/WaitingNetworkState;->isPolling:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    .line 177
    iget-object v0, p0, Lcom/samsung/swift/controller/WaitingNetworkState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    invoke-virtual {v0}, Lcom/samsung/swift/service/network/NetworkInterface;->isUpAndAssociated()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 179
    invoke-virtual {p0}, Lcom/samsung/swift/controller/WaitingNetworkState;->onNetworkChange()Lcom/samsung/swift/controller/State;

    move-result-object p0

    .line 192
    .end local p0
    :goto_11
    return-object p0

    .line 181
    .restart local p0
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/swift/controller/WaitingNetworkState;->waitUntil:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_21

    .line 183
    invoke-virtual {p0}, Lcom/samsung/swift/controller/WaitingNetworkState;->onTimeout()Lcom/samsung/swift/controller/State;

    move-result-object p0

    goto :goto_11

    .line 185
    :cond_21
    invoke-virtual {p0}, Lcom/samsung/swift/controller/WaitingNetworkState;->requestPoll()V

    goto :goto_11

    .line 189
    :cond_25
    invoke-virtual {p0}, Lcom/samsung/swift/controller/WaitingNetworkState;->onTimeout()Lcom/samsung/swift/controller/State;

    move-result-object p0

    goto :goto_11
.end method

.method protected onUpdateAppletDisplay(Lcom/samsung/swift/applet/AppletActivity;)V
    .registers 3
    .parameter "applectActivity"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/samsung/swift/controller/WaitingNetworkState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    invoke-virtual {v0}, Lcom/samsung/swift/service/network/NetworkInterface;->isHotspot()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/swift/applet/AppletActivity;->setWaitingNetwork(Z)V

    .line 201
    return-void
.end method

.method protected onWebServerStopped()Lcom/samsung/swift/controller/State;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Lcom/samsung/swift/controller/StoppedState;

    invoke-direct {v0}, Lcom/samsung/swift/controller/StoppedState;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/swift/controller/WaitingNetworkState;->moveTostate(Lcom/samsung/swift/controller/State;)Lcom/samsung/swift/controller/State;

    move-result-object v0

    return-object v0
.end method

.method protected requestPoll()V
    .registers 3

    .prologue
    .line 205
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p0, v0, v1}, Lcom/samsung/swift/controller/WaitingNetworkState;->createTimer(Ljava/lang/Object;J)V

    .line 206
    return-void
.end method

.method protected requestTimeout()V
    .registers 3

    .prologue
    .line 210
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p0, v0, v1}, Lcom/samsung/swift/controller/WaitingNetworkState;->createTimer(Ljava/lang/Object;J)V

    .line 211
    return-void
.end method

.method protected stopPolling()V
    .registers 1

    .prologue
    .line 215
    invoke-virtual {p0, p0}, Lcom/samsung/swift/controller/WaitingNetworkState;->cancelTimer(Ljava/lang/Object;)V

    .line 216
    return-void
.end method
