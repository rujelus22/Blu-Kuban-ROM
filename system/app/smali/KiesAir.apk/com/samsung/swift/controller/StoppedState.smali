.class Lcom/samsung/swift/controller/StoppedState;
.super Lcom/samsung/swift/controller/State;
.source "StoppedState.java"


# static fields
.field private static doScanning:Z

.field private static isShowingStartNetwork:Z


# instance fields
.field private networkState:Lcom/samsung/swift/controller/State;

.field private showTimeoutMessage:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 107
    sput-boolean v0, Lcom/samsung/swift/controller/StoppedState;->doScanning:Z

    .line 108
    sput-boolean v0, Lcom/samsung/swift/controller/StoppedState;->isShowingStartNetwork:Z

    return-void
.end method

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

    invoke-direct {p0, v0}, Lcom/samsung/swift/controller/StoppedState;-><init>(Lcom/samsung/swift/controller/State;)V

    .line 113
    return-void
.end method

.method protected constructor <init>(Lcom/samsung/swift/controller/State;)V
    .registers 3
    .parameter "networkState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/samsung/swift/controller/State;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/samsung/swift/controller/StoppedState;->networkState:Lcom/samsung/swift/controller/State;

    .line 119
    invoke-static {}, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->instance()Lcom/samsung/swift/notification/ServiceOnGoingNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->hide()V

    .line 120
    return-void
.end method

.method protected constructor <init>(Lcom/samsung/swift/controller/State;Z)V
    .registers 4
    .parameter "networkState"
    .parameter "timeoutReached"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/swift/controller/State;-><init>(Z)V

    .line 126
    iput-object p1, p0, Lcom/samsung/swift/controller/StoppedState;->networkState:Lcom/samsung/swift/controller/State;

    .line 127
    invoke-static {}, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->instance()Lcom/samsung/swift/notification/ServiceOnGoingNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->hide()V

    .line 128
    if-eqz p2, :cond_11

    .line 130
    iput-boolean p2, p0, Lcom/samsung/swift/controller/StoppedState;->showTimeoutMessage:Z

    .line 132
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/swift/controller/StoppedState;->updateDisplays()V

    .line 133
    return-void
.end method

.method protected constructor <init>(Z)V
    .registers 3
    .parameter "launchEasyConnection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/swift/controller/StoppedState;-><init>(Lcom/samsung/swift/controller/State;)V

    .line 140
    if-eqz p1, :cond_9

    .line 141
    invoke-direct {p0}, Lcom/samsung/swift/controller/StoppedState;->launchEasyConnection()V

    .line 142
    :cond_9
    return-void
.end method

.method private launchEasyConnection()V
    .registers 7

    .prologue
    .line 185
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/swift/controller/StoppedState$1;

    invoke-direct {v1, p0}, Lcom/samsung/swift/controller/StoppedState$1;-><init>(Lcom/samsung/swift/controller/StoppedState;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x12c

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 196
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
    .line 201
    sget-boolean v5, Lcom/samsung/swift/controller/StoppedState;->doScanning:Z

    if-eqz v5, :cond_23

    .line 203
    const/4 v5, 0x0

    sput-boolean v5, Lcom/samsung/swift/controller/StoppedState;->doScanning:Z

    .line 205
    invoke-static {}, Lcom/samsung/swift/service/network/NetworkInterface;->getList()[Lcom/samsung/swift/service/network/NetworkInterface;

    move-result-object v1

    .local v1, arr$:[Lcom/samsung/swift/service/network/NetworkInterface;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_d
    if-ge v2, v3, :cond_23

    aget-object v4, v1, v2

    .line 206
    .local v4, nif:Lcom/samsung/swift/service/network/NetworkInterface;
    invoke-virtual {v4}, Lcom/samsung/swift/service/network/NetworkInterface;->isUpAndAssociated()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 208
    invoke-static {}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->instance()Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    move-result-object v0

    .line 209
    .local v0, activity:Lcom/samsung/swift/applet/PopupEasyConnectActivity;
    if-nez v0, :cond_20

    .line 211
    invoke-direct {p0}, Lcom/samsung/swift/controller/StoppedState;->launchEasyConnection()V

    .line 205
    .end local v0           #activity:Lcom/samsung/swift/applet/PopupEasyConnectActivity;
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 217
    .end local v1           #arr$:[Lcom/samsung/swift/service/network/NetworkInterface;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #nif:Lcom/samsung/swift/service/network/NetworkInterface;
    :cond_23
    return-object p0
.end method

.method protected onSdcardMounted()Lcom/samsung/swift/controller/State;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/samsung/swift/controller/StoppedState;->LOGTAG:Ljava/lang/String;

    const-string v1, "*****onSdcardMounted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {p0}, Lcom/samsung/swift/controller/StoppedState;->updateDisplays()V

    .line 384
    return-object p0
.end method

.method protected onSdcardUnmounted()Lcom/samsung/swift/controller/State;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lcom/samsung/swift/controller/StoppedState;->LOGTAG:Ljava/lang/String;

    const-string v1, "*****onSdcardUnmounted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {p0}, Lcom/samsung/swift/controller/StoppedState;->updateDisplays()V

    .line 393
    return-object p0
.end method

.method protected onStartNetworkOnly(Lcom/samsung/swift/applet/AppletActivity;)Lcom/samsung/swift/controller/State;
    .registers 3
    .parameter "appletActivity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 223
    if-eqz p1, :cond_6

    sget-boolean v0, Lcom/samsung/swift/controller/StoppedState;->isShowingStartNetwork:Z

    if-eqz v0, :cond_7

    .line 230
    :cond_6
    :goto_6
    return-object p0

    .line 228
    :cond_7
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/swift/controller/StoppedState;->isShowingStartNetwork:Z

    .line 229
    invoke-virtual {p1}, Lcom/samsung/swift/applet/AppletActivity;->showStartNetworkOnlyDialog()V

    goto :goto_6
.end method

.method protected onUpdateAppletDisplay(Lcom/samsung/swift/applet/AppletActivity;)V
    .registers 7
    .parameter "appletActivity"

    .prologue
    const/4 v4, 0x1

    .line 264
    const/4 v0, 0x1

    .line 266
    .local v0, buttonEnabled:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "shared"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 268
    const/4 v0, 0x0

    .line 270
    iget-boolean v2, p1, Lcom/samsung/swift/applet/AppletActivity;->isToastAllowed:Z

    if-ne v2, v4, :cond_29

    .line 272
    sget v2, Lcom/samsung/swift/R$string;->applet_cant_start_when_unmounted:I

    invoke-static {v2}, Lcom/samsung/swift/Swift;->getString(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 273
    .local v1, toast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 279
    .end local v1           #toast:Landroid/widget/Toast;
    :cond_22
    :goto_22
    invoke-virtual {p1, v0}, Lcom/samsung/swift/applet/AppletActivity;->setStopped(Z)V

    .line 280
    invoke-virtual {p0, p1}, Lcom/samsung/swift/controller/StoppedState;->showTimeoutMessage(Landroid/app/Activity;)V

    .line 281
    return-void

    .line 276
    :cond_29
    iput-boolean v4, p1, Lcom/samsung/swift/applet/AppletActivity;->isToastAllowed:Z

    goto :goto_22
.end method

.method protected onUpdateInstallerDisplay(Lcom/samsung/swift/install/InstallActivity;)V
    .registers 4
    .parameter "installActivity"

    .prologue
    .line 324
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/samsung/swift/install/InstallActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/swift/controller/StoppedState$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/swift/controller/StoppedState$2;-><init>(Lcom/samsung/swift/controller/StoppedState;Lcom/samsung/swift/install/InstallActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 333
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
    .line 287
    invoke-virtual {p0, p1}, Lcom/samsung/swift/controller/StoppedState;->showTimeoutMessage(Landroid/app/Activity;)V

    .line 288
    return-void
.end method

.method protected onUserClickButton(Lcom/samsung/swift/applet/AppletActivity;)Lcom/samsung/swift/controller/State;
    .registers 10
    .parameter "appletActivity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 148
    if-nez p1, :cond_c

    .line 150
    iget-object v4, p0, Lcom/samsung/swift/controller/StoppedState;->LOGTAG:Ljava/lang/String;

    const-string v5, "Applet Activity is NULL... Returning StoppedState"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .end local p0
    :goto_b
    return-object p0

    .line 153
    .restart local p0
    :cond_c
    invoke-static {}, Lcom/samsung/swift/service/network/NetworkInterface;->getList()[Lcom/samsung/swift/service/network/NetworkInterface;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_20

    .line 155
    invoke-virtual {p0}, Lcom/samsung/swift/controller/StoppedState;->getServiceManager()Lcom/samsung/swift/service/SwiftServiceManagerBound;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->start()Z

    .line 156
    new-instance p0, Lcom/samsung/swift/controller/WaitingServerState;

    .end local p0
    invoke-direct {p0}, Lcom/samsung/swift/controller/WaitingServerState;-><init>()V

    goto :goto_b

    .line 159
    .restart local p0
    :cond_20
    invoke-virtual {p1}, Lcom/samsung/swift/applet/AppletActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "connectivity_mode"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_39

    .line 161
    sget v4, Lcom/samsung/swift/R$string;->hardwareDataKeyOff:I

    invoke-static {p1, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 162
    invoke-virtual {p1, v6}, Lcom/samsung/swift/applet/AppletActivity;->setStopped(Z)V

    goto :goto_b

    .line 166
    :cond_39
    invoke-static {}, Lcom/samsung/swift/service/network/NetworkInterface;->getList()[Lcom/samsung/swift/service/network/NetworkInterface;

    move-result-object v0

    .local v0, arr$:[Lcom/samsung/swift/service/network/NetworkInterface;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3f
    if-ge v1, v2, :cond_60

    aget-object v3, v0, v1

    .line 167
    .local v3, nif:Lcom/samsung/swift/service/network/NetworkInterface;
    invoke-virtual {v3}, Lcom/samsung/swift/service/network/NetworkInterface;->isUpAndAssociated()Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 169
    iget-object v4, p0, Lcom/samsung/swift/controller/StoppedState;->LOGTAG:Ljava/lang/String;

    const-string v5, "Network already up, starting server"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0}, Lcom/samsung/swift/controller/StoppedState;->getServiceManager()Lcom/samsung/swift/service/SwiftServiceManagerBound;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->start()Z

    .line 171
    new-instance p0, Lcom/samsung/swift/controller/WaitingServerState;

    .end local p0
    invoke-direct {p0}, Lcom/samsung/swift/controller/WaitingServerState;-><init>()V

    goto :goto_b

    .line 166
    .restart local p0
    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 177
    .end local v3           #nif:Lcom/samsung/swift/service/network/NetworkInterface;
    :cond_60
    sput-boolean v6, Lcom/samsung/swift/controller/StoppedState;->isShowingStartNetwork:Z

    .line 178
    invoke-virtual {p1}, Lcom/samsung/swift/applet/AppletActivity;->showStartNetworkDialog()V

    goto :goto_b
.end method

.method protected onUserClickNetwork(Lcom/samsung/swift/applet/AppletActivity;Ljava/lang/String;)Lcom/samsung/swift/controller/State;
    .registers 9
    .parameter "appletActivity"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 337
    const/4 v5, 0x0

    sput-boolean v5, Lcom/samsung/swift/controller/StoppedState;->isShowingStartNetwork:Z

    .line 339
    if-nez p2, :cond_12

    .line 342
    invoke-virtual {p0}, Lcom/samsung/swift/controller/StoppedState;->getServiceManager()Lcom/samsung/swift/service/SwiftServiceManagerBound;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->start()Z

    .line 343
    new-instance v5, Lcom/samsung/swift/controller/WaitingServerState;

    invoke-direct {v5}, Lcom/samsung/swift/controller/WaitingServerState;-><init>()V

    .line 356
    :goto_11
    return-object v5

    .line 346
    :cond_12
    invoke-static {}, Lcom/samsung/swift/service/network/NetworkInterface;->getList()[Lcom/samsung/swift/service/network/NetworkInterface;

    move-result-object v0

    .local v0, arr$:[Lcom/samsung/swift/service/network/NetworkInterface;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_18
    if-ge v1, v2, :cond_3c

    aget-object v4, v0, v1

    .line 347
    .local v4, nif:Lcom/samsung/swift/service/network/NetworkInterface;
    invoke-virtual {v4}, Lcom/samsung/swift/service/network/NetworkInterface;->isUpAndAssociated()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-virtual {v4}, Lcom/samsung/swift/service/network/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 349
    invoke-virtual {p0}, Lcom/samsung/swift/controller/StoppedState;->getServiceManager()Lcom/samsung/swift/service/SwiftServiceManagerBound;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->start()Z

    .line 350
    new-instance v5, Lcom/samsung/swift/controller/WaitingServerState;

    invoke-direct {v5}, Lcom/samsung/swift/controller/WaitingServerState;-><init>()V

    goto :goto_11

    .line 346
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 354
    .end local v4           #nif:Lcom/samsung/swift/service/network/NetworkInterface;
    :cond_3c
    invoke-static {p2}, Lcom/samsung/swift/service/network/NetworkInterface;->selectByName(Ljava/lang/String;)Lcom/samsung/swift/service/network/NetworkInterface;

    move-result-object v3

    .line 355
    .local v3, ni:Lcom/samsung/swift/service/network/NetworkInterface;
    invoke-virtual {v3}, Lcom/samsung/swift/service/network/NetworkInterface;->connect()Z

    .line 356
    new-instance v5, Lcom/samsung/swift/controller/PreServerStartWaitingNetworkState;

    invoke-direct {v5, v3}, Lcom/samsung/swift/controller/PreServerStartWaitingNetworkState;-><init>(Lcom/samsung/swift/service/network/NetworkInterface;)V

    goto :goto_11
.end method

.method protected onUserClickStopNetwork(Lcom/samsung/swift/applet/AppletActivity;)Lcom/samsung/swift/controller/State;
    .registers 4
    .parameter "appletActivity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 370
    iget-object v0, p0, Lcom/samsung/swift/controller/StoppedState;->networkState:Lcom/samsung/swift/controller/State;

    if-nez v0, :cond_c

    .line 372
    iget-object v0, p0, Lcom/samsung/swift/controller/StoppedState;->LOGTAG:Ljava/lang/String;

    const-string v1, "onUserClickStopNetwork: networkState is not supposed to be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :goto_b
    return-object p0

    .line 375
    :cond_c
    iget-object v0, p0, Lcom/samsung/swift/controller/StoppedState;->networkState:Lcom/samsung/swift/controller/State;

    iget-object v1, p0, Lcom/samsung/swift/controller/StoppedState;->networkState:Lcom/samsung/swift/controller/State;

    invoke-virtual {v1, p1}, Lcom/samsung/swift/controller/State;->onUserClickStopNetwork(Lcom/samsung/swift/applet/AppletActivity;)Lcom/samsung/swift/controller/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/swift/controller/StoppedState;->transition(Lcom/samsung/swift/controller/State;Lcom/samsung/swift/controller/State;)Lcom/samsung/swift/controller/State;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/swift/controller/StoppedState;->networkState:Lcom/samsung/swift/controller/State;

    goto :goto_b
.end method

.method protected onUserDismissStartNetwork(Lcom/samsung/swift/applet/AppletActivity;)Lcom/samsung/swift/controller/State;
    .registers 3
    .parameter "appletActivity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 361
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/swift/controller/StoppedState;->isShowingStartNetwork:Z

    .line 362
    return-object p0
.end method

.method protected onUserSelectNetworkOnly(Lcom/samsung/swift/applet/AppletActivity;Ljava/lang/String;)Lcom/samsung/swift/controller/State;
    .registers 10
    .parameter "appletActivity"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 236
    const/4 v5, 0x1

    sput-boolean v5, Lcom/samsung/swift/controller/StoppedState;->doScanning:Z

    .line 237
    sput-boolean v6, Lcom/samsung/swift/controller/StoppedState;->isShowingStartNetwork:Z

    .line 239
    if-nez p2, :cond_9

    .line 256
    .end local p0
    :goto_8
    return-object p0

    .line 244
    .restart local p0
    :cond_9
    invoke-static {}, Lcom/samsung/swift/service/network/NetworkInterface;->getList()[Lcom/samsung/swift/service/network/NetworkInterface;

    move-result-object v0

    .local v0, arr$:[Lcom/samsung/swift/service/network/NetworkInterface;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_f
    if-ge v1, v2, :cond_2c

    aget-object v4, v0, v1

    .line 245
    .local v4, nif:Lcom/samsung/swift/service/network/NetworkInterface;
    invoke-virtual {v4}, Lcom/samsung/swift/service/network/NetworkInterface;->isUpAndAssociated()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-virtual {v4}, Lcom/samsung/swift/service/network/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 247
    sput-boolean v6, Lcom/samsung/swift/controller/StoppedState;->doScanning:Z

    .line 248
    invoke-direct {p0}, Lcom/samsung/swift/controller/StoppedState;->launchEasyConnection()V

    goto :goto_8

    .line 244
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 253
    .end local v4           #nif:Lcom/samsung/swift/service/network/NetworkInterface;
    :cond_2c
    invoke-static {p2}, Lcom/samsung/swift/service/network/NetworkInterface;->selectByName(Ljava/lang/String;)Lcom/samsung/swift/service/network/NetworkInterface;

    move-result-object v3

    .line 254
    .local v3, ni:Lcom/samsung/swift/service/network/NetworkInterface;
    invoke-virtual {v3}, Lcom/samsung/swift/service/network/NetworkInterface;->connect()Z

    .line 256
    new-instance p0, Lcom/samsung/swift/controller/WaitingNetworkOnlyState;

    .end local p0
    invoke-direct {p0, v3}, Lcom/samsung/swift/controller/WaitingNetworkOnlyState;-><init>(Lcom/samsung/swift/service/network/NetworkInterface;)V

    goto :goto_8
.end method

.method protected showTimeoutMessage(Landroid/app/Activity;)V
    .registers 7
    .parameter "activity"

    .prologue
    .line 296
    iget-boolean v3, p0, Lcom/samsung/swift/controller/StoppedState;->showTimeoutMessage:Z

    if-eqz v3, :cond_10

    .line 297
    invoke-static {}, Lcom/samsung/swift/applet/AppletActivity;->instance()Lcom/samsung/swift/applet/AppletActivity;

    move-result-object v0

    .line 298
    .local v0, applet:Lcom/samsung/swift/applet/AppletActivity;
    if-eqz v0, :cond_11

    .line 300
    invoke-virtual {v0}, Lcom/samsung/swift/applet/AppletActivity;->showShutDownTimeoutDialog()V

    .line 303
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/swift/controller/StoppedState;->showTimeoutMessage:Z

    .line 317
    .end local v0           #applet:Lcom/samsung/swift/applet/AppletActivity;
    :cond_10
    :goto_10
    return-void

    .line 307
    .restart local v0       #applet:Lcom/samsung/swift/applet/AppletActivity;
    :cond_11
    invoke-static {}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->instance()Lcom/samsung/swift/security/SecurityPreferencesActivity;

    move-result-object v2

    .line 308
    .local v2, securityPreference:Lcom/samsung/swift/security/SecurityPreferencesActivity;
    if-eqz v2, :cond_10

    .line 311
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/swift/applet/AppletActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 312
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 313
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_10
.end method
