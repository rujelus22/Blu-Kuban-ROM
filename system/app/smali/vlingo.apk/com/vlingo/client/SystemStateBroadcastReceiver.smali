.class public Lcom/vlingo/client/SystemStateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemStateBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private startActivity(Landroid/content/Context;Ljava/lang/Class;)V
    .registers 5
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 103
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 104
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v7, 0xa

    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v2, 0x1

    .line 29
    if-eqz p2, :cond_27

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.vlingo.client.app.action.APPLICATION_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 35
    const-string v3, "com.vlingo.client.app.extra.STATE"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 38
    .local v1, newState:I
    if-ne v1, v2, :cond_28

    .line 39
    invoke-static {p1}, Lcom/vlingo/client/core/audio/AudioFocusManager;->getInstance(Landroid/content/Context;)Lcom/vlingo/client/core/audio/AudioFocusManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v6}, Lcom/vlingo/client/core/audio/AudioFocusManager;->requestAudioFocus(II)V

    .line 43
    invoke-static {}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->openBtProxy()V

    .line 98
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #newState:I
    :cond_27
    :goto_27
    return-void

    .line 45
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #newState:I
    :cond_28
    if-nez v1, :cond_27

    .line 46
    invoke-static {p1}, Lcom/vlingo/client/core/audio/AudioFocusManager;->getInstance(Landroid/content/Context;)Lcom/vlingo/client/core/audio/AudioFocusManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/core/audio/AudioFocusManager;->abandonAudioFocus()V

    .line 48
    invoke-static {}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->closeBtProxy()V

    goto :goto_27

    .line 51
    .end local v1           #newState:I
    :cond_35
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 52
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->updateCurrentLocale()V

    goto :goto_27

    .line 54
    :cond_41
    const-string v4, "com.vlingo.client.samsung.safereader.NOTIFICATION_CLICKED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 55
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isInCarMode()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 56
    const-class v2, Lcom/vlingo/client/car/CarActivity;

    invoke-direct {p0, p1, v2}, Lcom/vlingo/client/SystemStateBroadcastReceiver;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_27

    .line 59
    :cond_55
    const-class v2, Lcom/vlingo/client/home/HomeActivity;

    invoke-direct {p0, p1, v2}, Lcom/vlingo/client/SystemStateBroadcastReceiver;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_27

    .line 62
    :cond_5b
    const-string v4, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 63
    const-string v4, "android.bluetooth.headset.extra.STATE"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 66
    .restart local v1       #newState:I
    if-eq v1, v6, :cond_6d

    if-nez v1, :cond_27

    .line 67
    :cond_6d
    if-ne v1, v6, :cond_73

    :goto_6f
    invoke-static {v2}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->onHeadsetStateChanged(Z)V

    goto :goto_27

    :cond_73
    move v2, v3

    goto :goto_6f

    .line 70
    .end local v1           #newState:I
    :cond_75
    const-string v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_95

    .line 71
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_27

    .line 72
    const-string v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 73
    .restart local v1       #newState:I
    if-eq v1, v6, :cond_8d

    if-nez v1, :cond_27

    .line 74
    :cond_8d
    if-ne v1, v6, :cond_93

    :goto_8f
    invoke-static {v2}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->onHeadsetStateChanged(Z)V

    goto :goto_27

    :cond_93
    move v2, v3

    goto :goto_8f

    .line 78
    .end local v1           #newState:I
    :cond_95
    const-string v4, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b0

    .line 79
    const-string v4, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 82
    .restart local v1       #newState:I
    if-eq v1, v2, :cond_a7

    if-nez v1, :cond_27

    .line 83
    :cond_a7
    if-ne v1, v2, :cond_ae

    :goto_a9
    invoke-static {v2}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->onScoStateChanged(Z)V

    goto/16 :goto_27

    :cond_ae
    move v2, v3

    goto :goto_a9

    .line 86
    .end local v1           #newState:I
    :cond_b0
    const-string v4, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d5

    .line 87
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_27

    .line 88
    const-string v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 89
    .restart local v1       #newState:I
    const/16 v4, 0xc

    if-eq v1, v4, :cond_ca

    if-ne v1, v7, :cond_27

    .line 90
    :cond_ca
    const/16 v4, 0xc

    if-ne v1, v4, :cond_d3

    :goto_ce
    invoke-static {v2}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->onScoStateChanged(Z)V

    goto/16 :goto_27

    :cond_d3
    move v2, v3

    goto :goto_ce

    .line 94
    .end local v1           #newState:I
    :cond_d5
    const-string v2, "com.vlingo.client.samsung.DRIVING_MODE_SETTING_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 95
    invoke-static {p1}, Lcom/vlingo/client/samsung/DrivingModeUtil;->isDrivingModeEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-static {p1, v2}, Lcom/vlingo/client/widget/InCarWidget;->updateAllWidgets(Landroid/content/Context;Z)V

    goto/16 :goto_27
.end method
