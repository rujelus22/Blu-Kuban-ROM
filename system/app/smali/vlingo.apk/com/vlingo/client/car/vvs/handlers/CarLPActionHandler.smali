.class public Lcom/vlingo/client/car/vvs/handlers/CarLPActionHandler;
.super Ljava/lang/Object;
.source "CarLPActionHandler.java"

# interfaces
.implements Lcom/vlingo/client/car/vvs/CarVVSActionHandler;


# instance fields
.field private final delegate:Lcom/vlingo/client/car/CarActivityDelegate;

.field private final responderChain:Lcom/vlingo/client/car/asr/RecoResponderChain;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/car/CarActivityDelegate;Lcom/vlingo/client/car/asr/RecoResponderChain;)V
    .registers 3
    .parameter "delegate"
    .parameter "responderChain"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/vlingo/client/car/vvs/handlers/CarLPActionHandler;->responderChain:Lcom/vlingo/client/car/asr/RecoResponderChain;

    .line 30
    iput-object p1, p0, Lcom/vlingo/client/car/vvs/handlers/CarLPActionHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    .line 31
    return-void
.end method


# virtual methods
.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 4
    .parameter "action"
    .parameter "dispacher"

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleAction(Lcom/vlingo/client/core/vlservice/response/Action;)Z
    .registers 6
    .parameter "action"

    .prologue
    const/4 v1, 0x1

    .line 34
    const-string v2, "Action"

    invoke-virtual {p1, v2}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, actionName:Ljava/lang/String;
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v2

    const-string v3, "car-reco-lpaction"

    invoke-virtual {v2, v3}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 38
    const-string v2, "safereader"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 39
    iget-object v2, p0, Lcom/vlingo/client/car/vvs/handlers/CarLPActionHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-static {v2}, Lcom/vlingo/client/car/safereader/SafeReaderController;->startSafeReaderHomeTask(Lcom/vlingo/client/car/CarActivityDelegate;)V

    .line 70
    :goto_1d
    return v1

    .line 42
    :cond_1e
    const-string v2, "safereader:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 43
    const-string v2, "safereader:enable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 44
    iget-object v2, p0, Lcom/vlingo/client/car/vvs/handlers/CarLPActionHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-static {v2}, Lcom/vlingo/client/samsung/DrivingModeUtil;->enableDrivingMode(Lcom/vlingo/client/car/CarActivityDelegate;)V

    goto :goto_1d

    .line 47
    :cond_34
    const-string v2, "safereader:disable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 48
    iget-object v2, p0, Lcom/vlingo/client/car/vvs/handlers/CarLPActionHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-static {v2}, Lcom/vlingo/client/samsung/DrivingModeUtil;->disableDrivingMode(Lcom/vlingo/client/car/CarActivityDelegate;)V

    goto :goto_1d

    .line 51
    :cond_42
    const-string v2, "safereader:toggle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 52
    iget-object v2, p0, Lcom/vlingo/client/car/vvs/handlers/CarLPActionHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-static {v2}, Lcom/vlingo/client/samsung/DrivingModeUtil;->toggleDrivingMode(Lcom/vlingo/client/car/CarActivityDelegate;)V

    goto :goto_1d

    .line 56
    :cond_50
    const-string v2, "navigate:home"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    const/16 v2, 0xf

    invoke-static {v2}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 57
    new-instance v2, Lcom/vlingo/client/car/nav/NavController;

    iget-object v3, p0, Lcom/vlingo/client/car/vvs/handlers/CarLPActionHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-direct {v2, v3}, Lcom/vlingo/client/car/nav/NavController;-><init>(Lcom/vlingo/client/car/CarActivityDelegate;)V

    invoke-virtual {v2}, Lcom/vlingo/client/car/nav/NavController;->onGoHome()V

    goto :goto_1d

    .line 60
    :cond_6b
    const-string v2, "bluetooth:enable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 61
    iget-object v2, p0, Lcom/vlingo/client/car/vvs/handlers/CarLPActionHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    sget-object v3, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->BLUETOOTH_ON:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-interface {v2, v3}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 62
    invoke-static {}, Lcom/vlingo/client/util/BluetoothUtil;->enableBluetooth()Z

    goto :goto_1d

    .line 65
    :cond_7e
    const-string v2, "bluetooth:disable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 66
    iget-object v2, p0, Lcom/vlingo/client/car/vvs/handlers/CarLPActionHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    sget-object v3, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->BLUETOOTH_OFF:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-interface {v2, v3}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 67
    invoke-static {}, Lcom/vlingo/client/util/BluetoothUtil;->disableBluetooth()Z

    goto :goto_1d

    .line 70
    :cond_91
    iget-object v1, p0, Lcom/vlingo/client/car/vvs/handlers/CarLPActionHandler;->responderChain:Lcom/vlingo/client/car/asr/RecoResponderChain;

    invoke-virtual {v1, v0}, Lcom/vlingo/client/car/asr/RecoResponderChain;->handleLPAction(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1d
.end method
