.class Lcom/samsung/swift/controller/RunningState;
.super Lcom/samsung/swift/controller/State;
.source "RunningState.java"


# static fields
.field private static final ICON_TIMER_ID:Ljava/lang/String; = null

.field private static final LOGTAG:Ljava/lang/String; = null

.field private static final lastNetwork:Ljava/lang/String; = "lastNetwork"


# instance fields
.field private challangeActive:Z

.field private networkState:Lcom/samsung/swift/controller/NetworkState;

.field protected ni:Lcom/samsung/swift/service/network/NetworkInterface;

.field private savedNetworkName:Ljava/lang/String;

.field private timeoutReached:Z

.field private timeoutShutDown:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/swift/controller/RunningState;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "icon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/controller/RunningState;->ICON_TIMER_ID:Ljava/lang/String;

    .line 114
    const-class v0, Lcom/samsung/swift/controller/RunningState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/controller/RunningState;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/samsung/swift/service/network/NetworkInterface;Z)V
    .registers 4
    .parameter "ni"
    .parameter "stopNow"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/swift/controller/RunningState;-><init>(ZLcom/samsung/swift/service/network/NetworkInterface;Z)V

    .line 121
    return-void
.end method

.method private constructor <init>(ZLcom/samsung/swift/service/network/NetworkInterface;Z)V
    .registers 6
    .parameter "b"
    .parameter "ni"
    .parameter "stopNow"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/samsung/swift/controller/State;-><init>(Z)V

    .line 127
    new-instance v0, Lcom/samsung/swift/controller/NetworkState;

    invoke-direct {v0, p2}, Lcom/samsung/swift/controller/NetworkState;-><init>(Lcom/samsung/swift/service/network/NetworkInterface;)V

    iput-object v0, p0, Lcom/samsung/swift/controller/RunningState;->networkState:Lcom/samsung/swift/controller/NetworkState;

    .line 128
    iput-object p2, p0, Lcom/samsung/swift/controller/RunningState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    .line 130
    if-eqz p3, :cond_1c

    .line 132
    const-string v0, "UNMOUNT"

    const-string v1, "STOPPING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0}, Lcom/samsung/swift/controller/RunningState;->getServiceManager()Lcom/samsung/swift/service/SwiftServiceManagerBound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->stop()Z

    .line 135
    :cond_1c
    invoke-direct {p0}, Lcom/samsung/swift/controller/RunningState;->setTimeoutShutDownValue()V

    .line 136
    invoke-direct {p0}, Lcom/samsung/swift/controller/RunningState;->updateTimeoutShutDown()V

    .line 137
    invoke-static {}, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->instance()Lcom/samsung/swift/notification/ServiceOnGoingNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->show()V

    .line 138
    return-void
.end method

.method private checkNetworkChanged()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 211
    sget-boolean v1, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    if-eqz v1, :cond_5

    .line 232
    :cond_4
    :goto_4
    return-void

    .line 214
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/swift/controller/RunningState;->getServiceManager()Lcom/samsung/swift/service/SwiftServiceManagerBound;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->getCurrentNetworkName()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, curnetname:Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/swift/controller/RunningState;->savedNetworkName:Ljava/lang/String;

    if-nez v1, :cond_26

    .line 220
    sget-object v1, Lcom/samsung/swift/controller/RunningState;->LOGTAG:Ljava/lang/String;

    const-string v2, "checkNetworkChanged: retrieving network name from prefs"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "lastNetwork"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/swift/controller/RunningState;->savedNetworkName:Ljava/lang/String;

    .line 225
    :cond_26
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/swift/controller/RunningState;->savedNetworkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 228
    invoke-static {}, Lcom/samsung/swift/security/SecurityManager;->instance()Lcom/samsung/swift/security/SecurityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/security/SecurityManager;->reset()V

    .line 229
    iput-object v0, p0, Lcom/samsung/swift/controller/RunningState;->savedNetworkName:Ljava/lang/String;

    .line 230
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "lastNetwork"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4
.end method

.method private setTimeoutShutDownValue()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 145
    sget v1, Lcom/samsung/swift/R$string;->serverShutdownTimeoutDefault:I

    invoke-static {v1}, Lcom/samsung/swift/Swift;->getString(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/swift/controller/RunningState;->timeoutShutDown:I

    .line 146
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "timeoutShutDown"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 147
    .local v0, timeoutShutDownNewValue:I
    if-eq v0, v3, :cond_1d

    .line 149
    iput v0, p0, Lcom/samsung/swift/controller/RunningState;->timeoutShutDown:I

    .line 151
    :cond_1d
    return-void
.end method

.method private startChallange(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 365
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/swift/controller/RunningState$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/swift/controller/RunningState$1;-><init>(Lcom/samsung/swift/controller/RunningState;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 373
    return-void
.end method

.method private transitionNetworkState(Lcom/samsung/swift/controller/State;)V
    .registers 3
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lcom/samsung/swift/controller/RunningState;->networkState:Lcom/samsung/swift/controller/NetworkState;

    invoke-static {v0, p1}, Lcom/samsung/swift/controller/State;->transition(Lcom/samsung/swift/controller/State;Lcom/samsung/swift/controller/State;)Lcom/samsung/swift/controller/State;

    move-result-object v0

    check-cast v0, Lcom/samsung/swift/controller/NetworkState;

    iput-object v0, p0, Lcom/samsung/swift/controller/RunningState;->networkState:Lcom/samsung/swift/controller/NetworkState;

    .line 378
    return-void
.end method

.method private updateTimeoutShutDown()V
    .registers 3

    .prologue
    .line 345
    invoke-virtual {p0, p0}, Lcom/samsung/swift/controller/RunningState;->cancelTimer(Ljava/lang/Object;)V

    .line 346
    iget v0, p0, Lcom/samsung/swift/controller/RunningState;->timeoutShutDown:I

    if-lez v0, :cond_d

    .line 348
    iget v0, p0, Lcom/samsung/swift/controller/RunningState;->timeoutShutDown:I

    int-to-long v0, v0

    invoke-virtual {p0, p0, v0, v1}, Lcom/samsung/swift/controller/RunningState;->createTimer(Ljava/lang/Object;J)V

    .line 350
    :cond_d
    return-void
.end method


# virtual methods
.method protected onAccess(Lcom/samsung/swift/security/SecurityManager$Response;)Lcom/samsung/swift/controller/State;
    .registers 5
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-static {}, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->instance()Lcom/samsung/swift/notification/ServiceOnGoingNotification;

    move-result-object v0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/samsung/swift/controller/RunningState;->challangeActive:Z

    invoke-virtual {v0, v1, v2}, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->set(ZZ)V

    .line 331
    sget-object v0, Lcom/samsung/swift/controller/RunningState;->ICON_TIMER_ID:Ljava/lang/String;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/swift/controller/RunningState;->createTimer(Ljava/lang/Object;J)V

    .line 333
    sget-object v0, Lcom/samsung/swift/security/SecurityManager$Response;->AUTHORIZED:Lcom/samsung/swift/security/SecurityManager$Response;

    if-ne p1, v0, :cond_18

    .line 335
    invoke-direct {p0}, Lcom/samsung/swift/controller/RunningState;->updateTimeoutShutDown()V

    .line 337
    :cond_18
    return-object p0
.end method

.method protected onNetworkChange()Lcom/samsung/swift/controller/State;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/samsung/swift/controller/RunningState;->checkNetworkChanged()V

    .line 201
    iget-object v0, p0, Lcom/samsung/swift/controller/RunningState;->networkState:Lcom/samsung/swift/controller/NetworkState;

    invoke-virtual {v0}, Lcom/samsung/swift/controller/NetworkState;->onNetworkChange()Lcom/samsung/swift/controller/State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/swift/controller/RunningState;->transitionNetworkState(Lcom/samsung/swift/controller/State;)V

    .line 205
    iget-object v0, p0, Lcom/samsung/swift/controller/RunningState;->networkState:Lcom/samsung/swift/controller/NetworkState;

    iget-object v0, v0, Lcom/samsung/swift/controller/NetworkState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    iput-object v0, p0, Lcom/samsung/swift/controller/RunningState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    .line 206
    return-object p0
.end method

.method protected onPostConstruct()Lcom/samsung/swift/controller/State;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/samsung/swift/controller/RunningState;->networkState:Lcom/samsung/swift/controller/NetworkState;

    invoke-virtual {v0}, Lcom/samsung/swift/controller/NetworkState;->onPostConstruct()Lcom/samsung/swift/controller/State;

    move-result-object v0

    check-cast v0, Lcom/samsung/swift/controller/NetworkState;

    iput-object v0, p0, Lcom/samsung/swift/controller/RunningState;->networkState:Lcom/samsung/swift/controller/NetworkState;

    .line 156
    return-object p0
.end method

.method protected onSdcardUnmounted()Lcom/samsung/swift/controller/State;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/samsung/swift/controller/RunningState;->getServiceManager()Lcom/samsung/swift/service/SwiftServiceManagerBound;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->stop()Z

    .line 384
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "unmounted_media_shutdown"

    invoke-static {v2}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 385
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 386
    iget-boolean v1, p0, Lcom/samsung/swift/controller/RunningState;->challangeActive:Z

    if-eqz v1, :cond_35

    .line 388
    invoke-static {}, Lcom/samsung/swift/security/SecurityManager;->instance()Lcom/samsung/swift/security/SecurityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/security/SecurityManager;->forgetCurrentChallange()V

    .line 389
    invoke-static {}, Lcom/samsung/swift/security/SecurityManagerChallange;->instance()Lcom/samsung/swift/security/SecurityManagerChallange;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 392
    invoke-static {}, Lcom/samsung/swift/security/SecurityManagerChallange;->instance()Lcom/samsung/swift/security/SecurityManagerChallange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/security/SecurityManagerChallange;->finish()V

    .line 394
    :cond_32
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/swift/controller/RunningState;->challangeActive:Z

    .line 396
    :cond_35
    return-object p0
.end method

.method protected onSecurityManagerChallangeBegin()Lcom/samsung/swift/controller/State;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 285
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/swift/controller/RunningState;->challangeActive:Z

    .line 286
    invoke-static {}, Lcom/samsung/swift/notification/SecurityChallengeNotification;->instance()Lcom/samsung/swift/notification/SecurityChallengeNotification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/notification/SecurityChallengeNotification;->showChallenge()V

    .line 289
    invoke-static {}, Lcom/samsung/swift/applet/AppletActivity;->instance()Lcom/samsung/swift/applet/AppletActivity;

    move-result-object v0

    .line 290
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_14

    .line 292
    invoke-static {}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->instance()Lcom/samsung/swift/security/SecurityPreferencesActivity;

    move-result-object v0

    .line 294
    :cond_14
    if-eqz v0, :cond_19

    .line 296
    invoke-direct {p0, v0}, Lcom/samsung/swift/controller/RunningState;->startChallange(Landroid/app/Activity;)V

    .line 298
    :cond_19
    return-object p0
.end method

.method protected onSecurityManagerChallangeEnd()Lcom/samsung/swift/controller/State;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 306
    iput-boolean v1, p0, Lcom/samsung/swift/controller/RunningState;->challangeActive:Z

    .line 307
    invoke-static {}, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->instance()Lcom/samsung/swift/notification/ServiceOnGoingNotification;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->set(ZZ)V

    .line 308
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
    .line 358
    invoke-direct {p0}, Lcom/samsung/swift/controller/RunningState;->setTimeoutShutDownValue()V

    .line 359
    invoke-direct {p0}, Lcom/samsung/swift/controller/RunningState;->updateTimeoutShutDown()V

    .line 360
    return-object p0
.end method

.method protected onTimer(Ljava/lang/Object;)Lcom/samsung/swift/controller/State;
    .registers 5
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 263
    invoke-virtual {p0}, Lcom/samsung/swift/controller/RunningState;->getServiceManager()Lcom/samsung/swift/service/SwiftServiceManagerBound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->stop()Z

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/swift/controller/RunningState;->timeoutReached:Z

    .line 265
    iget-object v0, p0, Lcom/samsung/swift/controller/RunningState;->networkState:Lcom/samsung/swift/controller/NetworkState;

    invoke-virtual {v0}, Lcom/samsung/swift/controller/NetworkState;->onShutdownTimeout()Lcom/samsung/swift/controller/State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/swift/controller/RunningState;->transitionNetworkState(Lcom/samsung/swift/controller/State;)V

    .line 276
    :goto_19
    return-object p0

    .line 267
    :cond_1a
    sget-object v0, Lcom/samsung/swift/controller/RunningState;->ICON_TIMER_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 270
    invoke-static {}, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->instance()Lcom/samsung/swift/notification/ServiceOnGoingNotification;

    move-result-object v0

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/samsung/swift/controller/RunningState;->challangeActive:Z

    invoke-virtual {v0, v1, v2}, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->set(ZZ)V

    goto :goto_19

    .line 274
    :cond_2d
    iget-object v0, p0, Lcom/samsung/swift/controller/RunningState;->networkState:Lcom/samsung/swift/controller/NetworkState;

    invoke-virtual {v0, p1}, Lcom/samsung/swift/controller/NetworkState;->onTimer(Ljava/lang/Object;)Lcom/samsung/swift/controller/State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/swift/controller/RunningState;->transitionNetworkState(Lcom/samsung/swift/controller/State;)V

    goto :goto_19
.end method

.method protected onUpdateAppletDisplay(Lcom/samsung/swift/applet/AppletActivity;)V
    .registers 3
    .parameter "appletActivity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/samsung/swift/controller/RunningState;->challangeActive:Z

    if-eqz v0, :cond_8

    .line 186
    invoke-direct {p0, p1}, Lcom/samsung/swift/controller/RunningState;->startChallange(Landroid/app/Activity;)V

    .line 195
    :goto_7
    return-void

    .line 189
    :cond_8
    iget-object v0, p0, Lcom/samsung/swift/controller/RunningState;->networkState:Lcom/samsung/swift/controller/NetworkState;

    if-eqz v0, :cond_11

    .line 191
    iget-object v0, p0, Lcom/samsung/swift/controller/RunningState;->networkState:Lcom/samsung/swift/controller/NetworkState;

    invoke-virtual {v0, p1}, Lcom/samsung/swift/controller/NetworkState;->onUpdateAppletDisplay(Lcom/samsung/swift/applet/AppletActivity;)V

    .line 193
    :cond_11
    invoke-direct {p0}, Lcom/samsung/swift/controller/RunningState;->checkNetworkChanged()V

    .line 194
    invoke-virtual {p1}, Lcom/samsung/swift/applet/AppletActivity;->setRunning()V

    goto :goto_7
.end method

.method protected onUpdatePreferencesDisplay(Lcom/samsung/swift/security/SecurityPreferencesActivity;)V
    .registers 3
    .parameter "activity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/samsung/swift/controller/RunningState;->challangeActive:Z

    if-eqz v0, :cond_7

    .line 319
    invoke-direct {p0, p1}, Lcom/samsung/swift/controller/RunningState;->startChallange(Landroid/app/Activity;)V

    .line 321
    :cond_7
    return-void
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
    .line 163
    iget-object v0, p0, Lcom/samsung/swift/controller/RunningState;->networkState:Lcom/samsung/swift/controller/NetworkState;

    invoke-virtual {v0, p1}, Lcom/samsung/swift/controller/NetworkState;->onUserClickButton(Lcom/samsung/swift/applet/AppletActivity;)Lcom/samsung/swift/controller/State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/swift/controller/RunningState;->transitionNetworkState(Lcom/samsung/swift/controller/State;)V

    .line 164
    invoke-virtual {p0}, Lcom/samsung/swift/controller/RunningState;->getServiceManager()Lcom/samsung/swift/service/SwiftServiceManagerBound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->stop()Z

    .line 165
    return-object p0
.end method

.method protected onUserClickRestartNetwork(Lcom/samsung/swift/applet/AppletActivity;)Lcom/samsung/swift/controller/State;
    .registers 3
    .parameter "appletActivity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/samsung/swift/controller/RunningState;->networkState:Lcom/samsung/swift/controller/NetworkState;

    invoke-virtual {v0, p1}, Lcom/samsung/swift/controller/NetworkState;->onUserClickRestartNetwork(Lcom/samsung/swift/applet/AppletActivity;)Lcom/samsung/swift/controller/State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/swift/controller/RunningState;->transitionNetworkState(Lcom/samsung/swift/controller/State;)V

    .line 241
    return-object p0
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
    .line 249
    iget-object v0, p0, Lcom/samsung/swift/controller/RunningState;->networkState:Lcom/samsung/swift/controller/NetworkState;

    invoke-virtual {v0, p1}, Lcom/samsung/swift/controller/NetworkState;->onUserClickStopNetwork(Lcom/samsung/swift/applet/AppletActivity;)Lcom/samsung/swift/controller/State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/swift/controller/RunningState;->transitionNetworkState(Lcom/samsung/swift/controller/State;)V

    .line 250
    return-object p0
.end method

.method protected onWebServerStopped()Lcom/samsung/swift/controller/State;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-static {}, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->instance()Lcom/samsung/swift/applet/PopupResetNetworkActivity;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 174
    invoke-static {}, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->instance()Lcom/samsung/swift/applet/PopupResetNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->clearDialog()V

    .line 176
    :cond_d
    sget-object v0, Lcom/samsung/swift/controller/RunningState;->ICON_TIMER_ID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/swift/controller/RunningState;->cancelTimer(Ljava/lang/Object;)V

    .line 177
    invoke-virtual {p0, p0}, Lcom/samsung/swift/controller/RunningState;->cancelTimer(Ljava/lang/Object;)V

    .line 178
    new-instance v0, Lcom/samsung/swift/controller/StoppedState;

    iget-object v1, p0, Lcom/samsung/swift/controller/RunningState;->networkState:Lcom/samsung/swift/controller/NetworkState;

    iget-boolean v2, p0, Lcom/samsung/swift/controller/RunningState;->timeoutReached:Z

    invoke-direct {v0, v1, v2}, Lcom/samsung/swift/controller/StoppedState;-><init>(Lcom/samsung/swift/controller/State;Z)V

    return-object v0
.end method

.method protected shutdownServerIfNetworkAbsent()Lcom/samsung/swift/controller/State;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 406
    const/4 v1, 0x0

    .line 407
    .local v1, shutdown:Z
    iget-object v2, p0, Lcom/samsung/swift/controller/RunningState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    if-nez v2, :cond_40

    .line 410
    invoke-virtual {p0}, Lcom/samsung/swift/controller/RunningState;->getServiceManager()Lcom/samsung/swift/service/SwiftServiceManagerBound;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->getRootUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/swift/applet/AppletActivity;->URL_LOCAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 413
    const/4 v1, 0x1

    .line 424
    :cond_16
    :goto_16
    if-eqz v1, :cond_3f

    sget-boolean v2, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    if-nez v2, :cond_3f

    .line 426
    const-string v2, "server_shut_down"

    invoke-static {v2}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, serverShutDown:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 428
    invoke-virtual {p0}, Lcom/samsung/swift/controller/RunningState;->getServiceManager()Lcom/samsung/swift/service/SwiftServiceManagerBound;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->stop()Z

    .line 429
    new-instance v2, Lcom/samsung/swift/controller/StoppedState;

    invoke-direct {v2, p0}, Lcom/samsung/swift/controller/StoppedState;-><init>(Lcom/samsung/swift/controller/State;)V

    invoke-static {p0, v2}, Lcom/samsung/swift/controller/RunningState;->transition(Lcom/samsung/swift/controller/State;Lcom/samsung/swift/controller/State;)Lcom/samsung/swift/controller/State;

    move-result-object p0

    .line 431
    .end local v0           #serverShutDown:Ljava/lang/String;
    .end local p0
    :cond_3f
    return-object p0

    .line 416
    .restart local p0
    :cond_40
    iget-object v2, p0, Lcom/samsung/swift/controller/RunningState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    invoke-virtual {v2}, Lcom/samsung/swift/service/network/NetworkInterface;->isUpAndAssociated()Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/samsung/swift/controller/RunningState;->ni:Lcom/samsung/swift/service/network/NetworkInterface;

    invoke-virtual {v2}, Lcom/samsung/swift/service/network/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_16

    .line 421
    const/4 v1, 0x1

    goto :goto_16
.end method
