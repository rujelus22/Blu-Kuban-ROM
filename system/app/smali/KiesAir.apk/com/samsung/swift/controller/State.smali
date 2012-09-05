.class abstract Lcom/samsung/swift/controller/State;
.super Ljava/lang/Object;
.source "State.java"


# instance fields
.field protected final LOGTAG:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/swift/controller/State;-><init>(Z)V

    .line 111
    return-void
.end method

.method protected constructor <init>(Z)V
    .registers 5
    .parameter "updateDisplay"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/swift/controller/State;->LOGTAG:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/samsung/swift/controller/State;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " constructor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    if-eqz p1, :cond_32

    .line 123
    invoke-virtual {p0}, Lcom/samsung/swift/controller/State;->updateDisplays()V

    .line 125
    :cond_32
    return-void
.end method

.method protected static transition(Lcom/samsung/swift/controller/State;Lcom/samsung/swift/controller/State;)Lcom/samsung/swift/controller/State;
    .registers 2
    .parameter "prevState"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 530
    :cond_0
    :goto_0
    if-eq p0, p1, :cond_a

    .line 532
    move-object p0, p1

    .line 533
    if-eqz p1, :cond_0

    .line 535
    invoke-virtual {p1}, Lcom/samsung/swift/controller/State;->onPostConstruct()Lcom/samsung/swift/controller/State;

    move-result-object p1

    goto :goto_0

    .line 538
    :cond_a
    return-object p1
.end method


# virtual methods
.method protected cancelTimer(Ljava/lang/Object;)V
    .registers 3
    .parameter "token"

    .prologue
    .line 483
    invoke-static {}, Lcom/samsung/swift/controller/Controller;->instance()Lcom/samsung/swift/controller/Controller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/swift/controller/Controller;->cancelPoll(Ljava/lang/Object;)V

    .line 484
    return-void
.end method

.method protected createTimer(Ljava/lang/Object;J)V
    .registers 5
    .parameter "token"
    .parameter "milliseconds"

    .prologue
    .line 474
    invoke-static {}, Lcom/samsung/swift/controller/Controller;->instance()Lcom/samsung/swift/controller/Controller;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/swift/controller/Controller;->postPoll(Ljava/lang/Object;J)V

    .line 475
    return-void
.end method

.method protected getServiceManager()Lcom/samsung/swift/service/SwiftServiceManagerBound;
    .registers 2

    .prologue
    .line 463
    invoke-static {}, Lcom/samsung/swift/controller/Controller;->instance()Lcom/samsung/swift/controller/Controller;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/swift/controller/Controller;->serviceManager:Lcom/samsung/swift/service/SwiftServiceManagerBound;

    return-object v0
.end method

.method protected guardedUpdateAppletDisplay()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-static {}, Lcom/samsung/swift/applet/AppletActivity;->instance()Lcom/samsung/swift/applet/AppletActivity;

    move-result-object v0

    .line 144
    .local v0, applet:Lcom/samsung/swift/applet/AppletActivity;
    if-eqz v0, :cond_21

    .line 146
    iget-object v1, p0, Lcom/samsung/swift/controller/State;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating applet display for state  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0, v0}, Lcom/samsung/swift/controller/State;->onUpdateAppletDisplay(Lcom/samsung/swift/applet/AppletActivity;)V

    .line 149
    :cond_21
    return-void
.end method

.method protected guardedUpdateInstallerDisplay()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {}, Lcom/samsung/swift/install/InstallActivity;->instance()Lcom/samsung/swift/install/InstallActivity;

    move-result-object v0

    .line 172
    .local v0, installActivity:Lcom/samsung/swift/install/InstallActivity;
    if-eqz v0, :cond_21

    .line 174
    iget-object v1, p0, Lcom/samsung/swift/controller/State;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating installer display for state  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p0, v0}, Lcom/samsung/swift/controller/State;->onUpdateInstallerDisplay(Lcom/samsung/swift/install/InstallActivity;)V

    .line 177
    :cond_21
    return-void
.end method

.method protected guardedUpdatePopupResetNetworkDisplay()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-static {}, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->instance()Lcom/samsung/swift/applet/PopupResetNetworkActivity;

    move-result-object v0

    .line 158
    .local v0, popupResetNetwork:Lcom/samsung/swift/applet/PopupResetNetworkActivity;
    if-eqz v0, :cond_22

    .line 160
    iget-object v1, p0, Lcom/samsung/swift/controller/State;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set focus to PopupResetNetwork activity for state  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->onWindowFocusChanged(Z)V

    .line 163
    :cond_22
    return-void
.end method

.method protected guardedUpdatePreferencesDisplay()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-static {}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->instance()Lcom/samsung/swift/security/SecurityPreferencesActivity;

    move-result-object v0

    .line 186
    .local v0, securityPreferencesActivity:Lcom/samsung/swift/security/SecurityPreferencesActivity;
    if-eqz v0, :cond_21

    .line 188
    iget-object v1, p0, Lcom/samsung/swift/controller/State;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating preferences display for state  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p0, v0}, Lcom/samsung/swift/controller/State;->onUpdatePreferencesDisplay(Lcom/samsung/swift/security/SecurityPreferencesActivity;)V

    .line 191
    :cond_21
    return-void
.end method

.method protected onAccess(Lcom/samsung/swift/security/SecurityManager$Response;)Lcom/samsung/swift/controller/State;
    .registers 2
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 444
    return-object p0
.end method

.method protected onInstallerSetWorldReadable(Lcom/samsung/swift/install/InstallActivity;Z)Lcom/samsung/swift/controller/State;
    .registers 3
    .parameter "instance"
    .parameter "worldReadable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 397
    return-object p0
.end method

.method protected onInstallerState(ILjava/lang/String;S)Lcom/samsung/swift/controller/State;
    .registers 4
    .parameter "state"
    .parameter "file"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 385
    return-object p0
.end method

.method protected onNetworkChange()Lcom/samsung/swift/controller/State;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 247
    return-object p0
.end method

.method protected onPostConstruct()Lcom/samsung/swift/controller/State;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 294
    return-object p0
.end method

.method protected onResume(Lcom/samsung/swift/controller/State;)Lcom/samsung/swift/controller/State;
    .registers 2
    .parameter "state"

    .prologue
    .line 494
    return-object p0
.end method

.method protected onSdcardMounted()Lcom/samsung/swift/controller/State;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 512
    return-object p0
.end method

.method protected onSdcardUnmounted()Lcom/samsung/swift/controller/State;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 503
    return-object p0
.end method

.method protected onSecurityManagerChallangeBegin()Lcom/samsung/swift/controller/State;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 421
    return-object p0
.end method

.method protected onSecurityManagerChallangeEnd()Lcom/samsung/swift/controller/State;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 432
    return-object p0
.end method

.method protected onServiceReady()Lcom/samsung/swift/controller/State;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 212
    return-object p0
.end method

.method protected onStartNetworkOnly(Lcom/samsung/swift/applet/AppletActivity;)Lcom/samsung/swift/controller/State;
    .registers 2
    .parameter "appletActivity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 330
    return-object p0
.end method

.method protected onTimeoutChange()Lcom/samsung/swift/controller/State;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 455
    return-object p0
.end method

.method protected onTimer(Ljava/lang/Object;)Lcom/samsung/swift/controller/State;
    .registers 2
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 371
    return-object p0
.end method

.method protected onUpdateAppletDisplay(Lcom/samsung/swift/applet/AppletActivity;)V
    .registers 2
    .parameter "appletActivity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 353
    return-void
.end method

.method protected onUpdateInstallerDisplay(Lcom/samsung/swift/install/InstallActivity;)V
    .registers 2
    .parameter "installActivity"

    .prologue
    .line 362
    return-void
.end method

.method protected onUpdatePreferencesDisplay(Lcom/samsung/swift/security/SecurityPreferencesActivity;)V
    .registers 2
    .parameter "activity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 201
    return-void
.end method

.method protected onUserClickButton(Lcom/samsung/swift/applet/AppletActivity;)Lcom/samsung/swift/controller/State;
    .registers 2
    .parameter "appletActivity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 269
    return-object p0
.end method

.method protected onUserClickExplicitInstall(Lcom/samsung/swift/install/InstallActivity;)Lcom/samsung/swift/controller/State;
    .registers 2
    .parameter "instance"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 409
    return-object p0
.end method

.method protected onUserClickLeaveNetwork(Lcom/samsung/swift/applet/AppletActivity;)Lcom/samsung/swift/controller/State;
    .registers 2
    .parameter "appletActivity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 319
    return-object p0
.end method

.method protected onUserClickNetwork(Lcom/samsung/swift/applet/AppletActivity;Ljava/lang/String;)Lcom/samsung/swift/controller/State;
    .registers 3
    .parameter "appletActivity"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 282
    return-object p0
.end method

.method protected onUserClickRestartNetwork(Lcom/samsung/swift/applet/AppletActivity;)Lcom/samsung/swift/controller/State;
    .registers 2
    .parameter "appletActivity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 258
    return-object p0
.end method

.method protected onUserClickStopNetwork(Lcom/samsung/swift/applet/AppletActivity;)Lcom/samsung/swift/controller/State;
    .registers 2
    .parameter "appletActivity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 306
    return-object p0
.end method

.method protected onUserDismissStartNetwork(Lcom/samsung/swift/applet/AppletActivity;)Lcom/samsung/swift/controller/State;
    .registers 2
    .parameter "appletActivity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 340
    return-object p0
.end method

.method protected onUserSelectNetworkOnly(Lcom/samsung/swift/applet/AppletActivity;Ljava/lang/String;)Lcom/samsung/swift/controller/State;
    .registers 3
    .parameter "appletActivity"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 335
    return-object p0
.end method

.method protected onWebServerStarted()Lcom/samsung/swift/controller/State;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 234
    return-object p0
.end method

.method protected onWebServerStopped()Lcom/samsung/swift/controller/State;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 223
    return-object p0
.end method

.method protected shutdownServerIfNetworkAbsent()Lcom/samsung/swift/controller/State;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 543
    return-object p0
.end method

.method protected updateDisplays()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/samsung/swift/controller/State;->guardedUpdateAppletDisplay()V

    .line 134
    invoke-virtual {p0}, Lcom/samsung/swift/controller/State;->guardedUpdatePreferencesDisplay()V

    .line 135
    return-void
.end method
