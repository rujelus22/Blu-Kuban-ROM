.class public Lcom/vlingo/client/vvs/handlers/LPActionHandler;
.super Ljava/lang/Object;
.source "LPActionHandler.java"

# interfaces
.implements Lcom/vlingo/client/vvs/VVSActionHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private showToast(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4
    .parameter "text"
    .parameter "context"

    .prologue
    .line 71
    new-instance v0, Lcom/vlingo/client/vvs/handlers/LPActionHandler$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/vlingo/client/vvs/handlers/LPActionHandler$1;-><init>(Lcom/vlingo/client/vvs/handlers/LPActionHandler;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method


# virtual methods
.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 8
    .parameter "action"
    .parameter "dispatcher"

    .prologue
    .line 24
    const-string v3, "Action"

    invoke-virtual {p1, v3}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, actionName:Ljava/lang/String;
    const-string v3, "safereader:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 34
    const-string v3, "safereader:enable"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 35
    invoke-static {p2}, Lcom/vlingo/client/samsung/DrivingModeUtil;->enableDrivingMode(Lcom/vlingo/client/vvs/VVSDispatcher;)V

    .line 67
    :cond_19
    :goto_19
    const/4 v1, 0x0

    :goto_1a
    return-object v1

    .line 37
    :cond_1b
    const-string v3, "safereader:disable"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 38
    invoke-static {p2}, Lcom/vlingo/client/samsung/DrivingModeUtil;->disableDrivingMode(Lcom/vlingo/client/vvs/VVSDispatcher;)V

    goto :goto_19

    .line 40
    :cond_27
    const-string v3, "safereader:toggle"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 41
    invoke-static {p2}, Lcom/vlingo/client/samsung/DrivingModeUtil;->toggleDrivingMode(Lcom/vlingo/client/vvs/VVSDispatcher;)V

    goto :goto_19

    .line 45
    :cond_33
    const-string v3, "carmode:start"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 46
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/vlingo/client/car/CarActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v1, intent:Landroid/content/Intent;
    goto :goto_1a

    .line 49
    .end local v1           #intent:Landroid/content/Intent;
    :cond_47
    const-string v3, "bluetooth:enable"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 50
    invoke-static {}, Lcom/vlingo/client/util/BluetoothUtil;->enableBluetooth()Z

    .line 51
    const-string v3, "Turning Bluetooth On"

    invoke-virtual {p2}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/vlingo/client/vvs/handlers/LPActionHandler;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_19

    .line 53
    :cond_5c
    const-string v3, "bluetooth:disable"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 54
    invoke-static {}, Lcom/vlingo/client/util/BluetoothUtil;->disableBluetooth()Z

    .line 55
    const-string v3, "Turning Bluetooth Off"

    invoke-virtual {p2}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/vlingo/client/vvs/handlers/LPActionHandler;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_19

    .line 57
    :cond_71
    const-string v3, "bluetooth:toggle"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 58
    invoke-static {}, Lcom/vlingo/client/util/BluetoothUtil;->toggleBluetooth()I

    move-result v2

    .line 59
    .local v2, result:I
    const/16 v3, 0xd

    if-ne v2, v3, :cond_8b

    .line 60
    const-string v3, "Turning Bluetooth Off"

    invoke-virtual {p2}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/vlingo/client/vvs/handlers/LPActionHandler;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_19

    .line 62
    :cond_8b
    const/16 v3, 0xb

    if-ne v2, v3, :cond_19

    .line 63
    const-string v3, "Turning Bluetooth On"

    invoke-virtual {p2}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/vlingo/client/vvs/handlers/LPActionHandler;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_19
.end method
