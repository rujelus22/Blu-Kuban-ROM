.class public Lcom/google/android/gsf/login/SetupWirelessActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "SetupWirelessActivity.java"


# instance fields
.field private mLocalActivityManager:Landroid/app/LocalActivityManager;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    .line 48
    new-instance v0, Landroid/app/LocalActivityManager;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/google/android/gsf/login/SetupWirelessActivity;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 49
    return-void
.end method

.method private tryEnablingWifi()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 132
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/SetupWirelessActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 133
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_15

    .line 134
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 135
    .local v1, wifiState:I
    if-ne v1, v2, :cond_14

    .line 136
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 140
    .end local v1           #wifiState:I
    :cond_14
    :goto_14
    return v2

    :cond_15
    const/4 v2, 0x0

    goto :goto_14
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6
    .parameter "ev"

    .prologue
    const/4 v1, 0x1

    .line 120
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x52

    if-ne v2, v3, :cond_d

    move v0, v1

    .line 121
    .local v0, isMenuKey:Z
    :goto_a
    if-eqz v0, :cond_f

    .line 124
    :goto_c
    return v1

    .line 120
    .end local v0           #isMenuKey:Z
    :cond_d
    const/4 v0, 0x0

    goto :goto_a

    .line 124
    .restart local v0       #isMenuKey:Z
    :cond_f
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_c
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 74
    packed-switch p1, :pswitch_data_e

    .line 80
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/login/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 82
    :goto_6
    return-void

    .line 76
    :pswitch_7
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/login/SetupWirelessActivity;->setResult(I)V

    .line 77
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SetupWirelessActivity;->finish()V

    goto :goto_6

    .line 74
    :pswitch_data_e
    .packed-switch 0x3fd
        :pswitch_7
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    if-eqz p1, :cond_33

    const-string v3, "android:states"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 57
    .local v1, states:Landroid/os/Bundle;
    :goto_c
    iget-object v3, p0, Lcom/google/android/gsf/login/SetupWirelessActivity;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v3, v1}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-direct {p0}, Lcom/google/android/gsf/login/SetupWirelessActivity;->tryEnablingWifi()Z

    move-result v2

    .line 62
    .local v2, wifiEnabled:Z
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, launchWifi:Landroid/content/Intent;
    if-eqz v2, :cond_23

    .line 64
    const-string v3, "only_access_points"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    :cond_23
    const-string v3, "extra_prefs_show_button_bar"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    const-string v3, "wifi_enable_next_on_connect"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    const/16 v3, 0x3fd

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/SetupWirelessActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 71
    return-void

    .line 55
    .end local v0           #launchWifi:Landroid/content/Intent;
    .end local v1           #states:Landroid/os/Bundle;
    .end local v2           #wifiEnabled:Z
    :cond_33
    const/4 v1, 0x0

    goto :goto_c
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 113
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onDestroy()V

    .line 114
    iget-object v0, p0, Lcom/google/android/gsf/login/SetupWirelessActivity;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {p0}, Lcom/google/android/gsf/login/SetupWirelessActivity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchDestroy(Z)V

    .line 115
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 86
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onPause()V

    .line 87
    iget-object v0, p0, Lcom/google/android/gsf/login/SetupWirelessActivity;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {p0}, Lcom/google/android/gsf/login/SetupWirelessActivity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchPause(Z)V

    .line 88
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 92
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onResume()V

    .line 93
    iget-object v0, p0, Lcom/google/android/gsf/login/SetupWirelessActivity;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchResume()V

    .line 94
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 99
    iget-object v1, p0, Lcom/google/android/gsf/login/SetupWirelessActivity;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->saveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 100
    .local v0, state:Landroid/os/Bundle;
    if-eqz v0, :cond_10

    .line 101
    const-string v1, "android:states"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 103
    :cond_10
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 107
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onStop()V

    .line 108
    iget-object v0, p0, Lcom/google/android/gsf/login/SetupWirelessActivity;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchStop()V

    .line 109
    return-void
.end method
