.class public Lcom/samsung/swift/controller/NetworkState;
.super Lcom/samsung/swift/controller/State;
.source "NetworkState.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field protected final ni:Lcom/samsung/swift/service/network/NetworkInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 105
    const-class v0, Lcom/samsung/swift/controller/NetworkState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/controller/NetworkState;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/swift/controller/NetworkState;-><init>(Lcom/samsung/swift/service/network/NetworkInterface;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/samsung/swift/service/network/NetworkInterface;)V
    .registers 4
    .parameter "ni"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/swift/controller/State;-><init>(Z)V

    .line 122
    iput-object p1, p0, Lcom/samsung/swift/controller/NetworkState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    .line 124
    sget-object v0, Lcom/samsung/swift/controller/NetworkState;->LOGTAG:Ljava/lang/String;

    const-string v1, "NetworkState constructor, no saved network name"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0}, Lcom/samsung/swift/controller/NetworkState;->guardedUpdateAppletDisplay()V

    .line 126
    return-void
.end method


# virtual methods
.method protected onNetworkChange()Lcom/samsung/swift/controller/State;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v4, p0, Lcom/samsung/swift/controller/NetworkState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    if-eqz v4, :cond_2c

    .line 185
    iget-object v4, p0, Lcom/samsung/swift/controller/NetworkState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    invoke-virtual {v4}, Lcom/samsung/swift/service/network/NetworkInterface;->isUpAndAssociated()Z

    move-result v4

    if-nez v4, :cond_2c

    .line 188
    invoke-static {}, Lcom/samsung/swift/service/network/NetworkInterface;->getList()[Lcom/samsung/swift/service/network/NetworkInterface;

    move-result-object v0

    .local v0, arr$:[Lcom/samsung/swift/service/network/NetworkInterface;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_12
    if-ge v1, v2, :cond_2c

    aget-object v3, v0, v1

    .line 190
    .local v3, ni:Lcom/samsung/swift/service/network/NetworkInterface;
    invoke-virtual {v3}, Lcom/samsung/swift/service/network/NetworkInterface;->isUpAndAssociated()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 193
    sget-object v4, Lcom/samsung/swift/controller/NetworkState;->LOGTAG:Ljava/lang/String;

    const-string v5, "onNetworkChange: Network changed: giving up managing network"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance p0, Lcom/samsung/swift/controller/NetworkState;

    .end local p0
    invoke-direct {p0}, Lcom/samsung/swift/controller/NetworkState;-><init>()V

    .line 203
    .end local v0           #arr$:[Lcom/samsung/swift/service/network/NetworkInterface;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #ni:Lcom/samsung/swift/service/network/NetworkInterface;
    :goto_28
    return-object p0

    .line 188
    .restart local v0       #arr$:[Lcom/samsung/swift/service/network/NetworkInterface;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #ni:Lcom/samsung/swift/service/network/NetworkInterface;
    .restart local p0
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 200
    .end local v0           #arr$:[Lcom/samsung/swift/service/network/NetworkInterface;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #ni:Lcom/samsung/swift/service/network/NetworkInterface;
    :cond_2c
    invoke-virtual {p0}, Lcom/samsung/swift/controller/NetworkState;->guardedUpdatePopupResetNetworkDisplay()V

    .line 201
    invoke-virtual {p0}, Lcom/samsung/swift/controller/NetworkState;->guardedUpdateAppletDisplay()V

    goto :goto_28
.end method

.method protected onShutdownTimeout()Lcom/samsung/swift/controller/State;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/samsung/swift/controller/NetworkState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    instance-of v0, v0, Lcom/samsung/swift/service/network/MobileAp21NetworkInterface;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/samsung/swift/controller/NetworkState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    if-eqz v0, :cond_14

    .line 213
    iget-object v0, p0, Lcom/samsung/swift/controller/NetworkState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    invoke-virtual {v0}, Lcom/samsung/swift/service/network/NetworkInterface;->disconnect()Z

    .line 214
    new-instance p0, Lcom/samsung/swift/controller/NetworkState;

    .end local p0
    invoke-direct {p0}, Lcom/samsung/swift/controller/NetworkState;-><init>()V

    .line 216
    :cond_14
    return-object p0
.end method

.method protected onUpdateAppletDisplay(Lcom/samsung/swift/applet/AppletActivity;)V
    .registers 5
    .parameter "appletActivity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 135
    if-eqz p1, :cond_24

    .line 137
    iget-object v1, p0, Lcom/samsung/swift/controller/NetworkState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    if-nez v1, :cond_25

    :cond_7
    :goto_7
    iget-object v1, p0, Lcom/samsung/swift/controller/NetworkState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    if-nez v1, :cond_2f

    const/4 v1, 0x0

    :goto_c
    iget-object v2, p0, Lcom/samsung/swift/controller/NetworkState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/swift/applet/AppletActivity;->showRestartNetwork(ZLjava/lang/String;Lcom/samsung/swift/service/network/NetworkInterface;)V

    .line 138
    invoke-virtual {p0}, Lcom/samsung/swift/controller/NetworkState;->getServiceManager()Lcom/samsung/swift/service/SwiftServiceManagerBound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->getRootUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/swift/controller/NetworkState;->getServiceManager()Lcom/samsung/swift/service/SwiftServiceManagerBound;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->getCurrentNetworkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/swift/applet/AppletActivity;->updateUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_24
    return-void

    .line 137
    :cond_25
    iget-object v1, p0, Lcom/samsung/swift/controller/NetworkState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    invoke-virtual {v1}, Lcom/samsung/swift/service/network/NetworkInterface;->isUpAndAssociated()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :cond_2f
    iget-object v1, p0, Lcom/samsung/swift/controller/NetworkState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    invoke-virtual {v1}, Lcom/samsung/swift/service/network/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    goto :goto_c
.end method

.method protected onUserClickButton(Lcom/samsung/swift/applet/AppletActivity;)Lcom/samsung/swift/controller/State;
    .registers 3
    .parameter "appletActivity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/swift/controller/NetworkState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/samsung/swift/controller/NetworkState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    invoke-virtual {v0}, Lcom/samsung/swift/service/network/NetworkInterface;->isUpAndAssociated()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 150
    if-eqz p1, :cond_17

    .line 152
    iget-object v0, p0, Lcom/samsung/swift/controller/NetworkState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    invoke-virtual {v0}, Lcom/samsung/swift/service/network/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/swift/applet/AppletActivity;->showStopNetworkDialog(Ljava/lang/String;)V

    .line 155
    :cond_17
    return-object p0
.end method

.method protected onUserClickRestartNetwork(Lcom/samsung/swift/applet/AppletActivity;)Lcom/samsung/swift/controller/State;
    .registers 4
    .parameter "appletActivity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/samsung/swift/controller/NetworkState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/swift/controller/NetworkState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    invoke-virtual {v0}, Lcom/samsung/swift/service/network/NetworkInterface;->connect()Z

    .line 165
    :cond_9
    new-instance v0, Lcom/samsung/swift/controller/PostServerStartWaitingNetworkstate;

    iget-object v1, p0, Lcom/samsung/swift/controller/NetworkState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    invoke-direct {v0, v1}, Lcom/samsung/swift/controller/PostServerStartWaitingNetworkstate;-><init>(Lcom/samsung/swift/service/network/NetworkInterface;)V

    return-object v0
.end method

.method protected onUserClickStopNetwork(Lcom/samsung/swift/applet/AppletActivity;)Lcom/samsung/swift/controller/State;
    .registers 3
    .parameter "appletActivity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/samsung/swift/controller/NetworkState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/swift/controller/NetworkState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    invoke-virtual {v0}, Lcom/samsung/swift/service/network/NetworkInterface;->disconnect()Z

    .line 174
    :cond_9
    new-instance v0, Lcom/samsung/swift/controller/NetworkState;

    invoke-direct {v0}, Lcom/samsung/swift/controller/NetworkState;-><init>()V

    return-object v0
.end method
