.class public Lcom/samsung/swift/controller/WaitingNetworkOnlyState;
.super Lcom/samsung/swift/controller/WaitingNetworkState;
.source "WaitingNetworkOnlyState.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 103
    const-class v0, Lcom/samsung/swift/controller/WaitingNetworkOnlyState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/controller/WaitingNetworkOnlyState;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/swift/service/network/NetworkInterface;)V
    .registers 2
    .parameter "ni"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/samsung/swift/controller/WaitingNetworkState;-><init>(Lcom/samsung/swift/service/network/NetworkInterface;)V

    .line 112
    return-void
.end method


# virtual methods
.method protected onNetworkChange()Lcom/samsung/swift/controller/State;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v1, p0, Lcom/samsung/swift/controller/WaitingNetworkOnlyState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/samsung/swift/controller/WaitingNetworkOnlyState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    invoke-virtual {v1}, Lcom/samsung/swift/service/network/NetworkInterface;->isUpAndAssociated()Z

    move-result v1

    if-nez v1, :cond_d

    .line 169
    .end local p0
    :cond_c
    :goto_c
    return-object p0

    .line 165
    .restart local p0
    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/samsung/swift/applet/AppletActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 168
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 169
    new-instance v1, Lcom/samsung/swift/controller/StoppedState;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/samsung/swift/controller/StoppedState;-><init>(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/swift/controller/WaitingNetworkOnlyState;->moveTostate(Lcom/samsung/swift/controller/State;)Lcom/samsung/swift/controller/State;

    move-result-object p0

    goto :goto_c
.end method

.method protected onNetworkUp()Lcom/samsung/swift/controller/State;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/samsung/swift/controller/WaitingNetworkOnlyState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    invoke-virtual {v0}, Lcom/samsung/swift/service/network/NetworkInterface;->postConnection()V

    .line 154
    new-instance v0, Lcom/samsung/swift/controller/StoppedState;

    invoke-direct {v0}, Lcom/samsung/swift/controller/StoppedState;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/swift/controller/WaitingNetworkOnlyState;->moveTostate(Lcom/samsung/swift/controller/State;)Lcom/samsung/swift/controller/State;

    move-result-object v0

    return-object v0
.end method

.method protected onResume(Lcom/samsung/swift/controller/State;)Lcom/samsung/swift/controller/State;
    .registers 9
    .parameter "state"

    .prologue
    .line 117
    invoke-static {}, Lcom/samsung/swift/applet/AppletActivity;->instance()Lcom/samsung/swift/applet/AppletActivity;

    move-result-object v5

    if-eqz v5, :cond_20

    .line 120
    :try_start_6
    invoke-static {}, Lcom/samsung/swift/service/network/NetworkInterface;->getList()[Lcom/samsung/swift/service/network/NetworkInterface;

    move-result-object v0

    .local v0, arr$:[Lcom/samsung/swift/service/network/NetworkInterface;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_c
    if-ge v2, v3, :cond_24

    aget-object v4, v0, v2

    .line 121
    .local v4, nif:Lcom/samsung/swift/service/network/NetworkInterface;
    invoke-virtual {v4}, Lcom/samsung/swift/service/network/NetworkInterface;->isUpAndAssociated()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 123
    new-instance v5, Lcom/samsung/swift/controller/StoppedState;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/samsung/swift/controller/StoppedState;-><init>(Z)V

    invoke-virtual {p0, v5}, Lcom/samsung/swift/controller/WaitingNetworkOnlyState;->moveTostate(Lcom/samsung/swift/controller/State;)Lcom/samsung/swift/controller/State;

    move-result-object p0

    .line 135
    .end local v0           #arr$:[Lcom/samsung/swift/service/network/NetworkInterface;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #nif:Lcom/samsung/swift/service/network/NetworkInterface;
    .end local p0
    :cond_20
    :goto_20
    return-object p0

    .line 120
    .restart local v0       #arr$:[Lcom/samsung/swift/service/network/NetworkInterface;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #nif:Lcom/samsung/swift/service/network/NetworkInterface;
    .restart local p0
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 127
    .end local v4           #nif:Lcom/samsung/swift/service/network/NetworkInterface;
    :cond_24
    iget-object v5, p0, Lcom/samsung/swift/controller/WaitingNetworkOnlyState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    invoke-virtual {v5}, Lcom/samsung/swift/service/network/NetworkInterface;->disconnect()Z

    .line 129
    new-instance v5, Lcom/samsung/swift/controller/StoppedState;

    invoke-direct {v5}, Lcom/samsung/swift/controller/StoppedState;-><init>()V

    invoke-virtual {p0, v5}, Lcom/samsung/swift/controller/WaitingNetworkOnlyState;->moveTostate(Lcom/samsung/swift/controller/State;)Lcom/samsung/swift/controller/State;
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_31} :catch_33

    move-result-object p0

    goto :goto_20

    .line 130
    .end local v0           #arr$:[Lcom/samsung/swift/service/network/NetworkInterface;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :catch_33
    move-exception v1

    .line 131
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_20
.end method

.method protected onTimeout()Lcom/samsung/swift/controller/State;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 188
    new-instance v0, Lcom/samsung/swift/controller/StoppedState;

    invoke-direct {v0}, Lcom/samsung/swift/controller/StoppedState;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/swift/controller/WaitingNetworkOnlyState;->moveTostate(Lcom/samsung/swift/controller/State;)Lcom/samsung/swift/controller/State;

    move-result-object v0

    return-object v0
.end method

.method protected onUpdateAppletDisplay(Lcom/samsung/swift/applet/AppletActivity;)V
    .registers 3
    .parameter "applectActivity"

    .prologue
    .line 143
    if-eqz p1, :cond_6

    .line 146
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/swift/applet/AppletActivity;->setStopped(Z)V

    .line 148
    :cond_6
    return-void
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
    .line 179
    new-instance v0, Lcom/samsung/swift/controller/StoppedState;

    invoke-direct {v0}, Lcom/samsung/swift/controller/StoppedState;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/swift/controller/WaitingNetworkOnlyState;->moveTostate(Lcom/samsung/swift/controller/State;)Lcom/samsung/swift/controller/State;

    move-result-object v0

    return-object v0
.end method
