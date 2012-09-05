.class Lcom/samsung/swift/controller/WaitingForServiceConnection;
.super Lcom/samsung/swift/controller/State;
.source "WaitingForServiceConnection.java"


# direct methods
.method protected constructor <init>()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/samsung/swift/controller/State;-><init>()V

    .line 94
    return-void
.end method


# virtual methods
.method protected onServiceReady()Lcom/samsung/swift/controller/State;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {}, Lcom/samsung/swift/service/Installer;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 107
    new-instance v0, Lcom/samsung/swift/controller/StoppedState;

    invoke-direct {v0}, Lcom/samsung/swift/controller/StoppedState;-><init>()V

    .line 111
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/samsung/swift/controller/InstallState;

    invoke-direct {v0}, Lcom/samsung/swift/controller/InstallState;-><init>()V

    goto :goto_b
.end method

.method protected onUpdateAppletDisplay(Lcom/samsung/swift/applet/AppletActivity;)V
    .registers 3
    .parameter "appletActivity"

    .prologue
    .line 99
    invoke-static {}, Lcom/samsung/swift/applet/AppletActivity;->instance()Lcom/samsung/swift/applet/AppletActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/applet/AppletActivity;->setInitializing()V

    .line 100
    return-void
.end method
