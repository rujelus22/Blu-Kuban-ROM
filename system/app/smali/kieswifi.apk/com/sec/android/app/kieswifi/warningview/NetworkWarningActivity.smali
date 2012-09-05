.class public Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;
.super Landroid/app/Activity;
.source "NetworkWarningActivity.java"


# instance fields
.field mIntentFilter:Landroid/content/IntentFilter;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field networkDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 55
    iput-object v0, p0, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->networkDialog:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public finishSelf()V
    .registers 3

    .prologue
    .line 196
    const/4 v0, 0x1

    const-string v1, "NetworkWarningActivity : finish self.."

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/UpnpManager;->isWifiSettingsLaunched()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 198
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/kieswifi/UpnpManager;->setWifiSettingsLaunched(Z)V

    .line 200
    :cond_18
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->finish()V

    .line 201
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 178
    const/4 v0, 0x1

    const-string v1, "NetworkWarningActivity : setResult -1"

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 179
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->setResult(I)V

    .line 180
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v0

    const/16 v1, 0x2f1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/kieswifi/UpnpManager;->notifyToActivity(I)V

    .line 181
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->finish()V

    .line 182
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->requestWindowFeature(I)Z

    .line 61
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v0

    iput-object p0, v0, Lcom/sec/android/app/kieswifi/UpnpManager;->warningActivity:Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;

    .line 62
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 116
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 117
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_56

    .line 172
    :goto_8
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->networkDialog:Landroid/app/AlertDialog;

    .line 173
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->networkDialog:Landroid/app/AlertDialog;

    return-object v2

    .line 119
    :pswitch_11
    new-instance v1, Lcom/sec/android/app/kieswifi/view/PopupView;

    invoke-direct {v1, p0}, Lcom/sec/android/app/kieswifi/view/PopupView;-><init>(Landroid/content/Context;)V

    .line 120
    .local v1, dialogView:Lcom/sec/android/app/kieswifi/view/PopupView;
    const v2, 0x7f070008

    invoke-virtual {p0, v2}, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/kieswifi/view/PopupView;->setPopupMessage(Ljava/lang/String;)V

    .line 121
    const v2, 0x7f07001d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 122
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 123
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 124
    const v2, 0x7f070009

    new-instance v3, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity$1;-><init>(Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 144
    const v2, 0x7f070006

    new-instance v3, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity$2;-><init>(Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 152
    new-instance v2, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity$3;-><init>(Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 159
    new-instance v2, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity$4;-><init>(Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_8

    .line 117
    :pswitch_data_56
    .packed-switch 0x3ed
        :pswitch_11
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 190
    const/4 v0, 0x1

    const-string v1, "NetworkWarningActivity : destroy"

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 191
    const/16 v0, 0x3ef

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->finishActivity(I)V

    .line 192
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/app/kieswifi/UpnpManager;->warningActivity:Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;

    .line 193
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 186
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 75
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/kieswifi/UpnpManager;->getNetworkState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1e

    .line 77
    const/16 v1, 0x3ed

    :try_start_d
    invoke-virtual {p0, v1}, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->removeDialog(I)V

    .line 78
    const/16 v1, 0x3ed

    invoke-virtual {p0, v1}, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->showDialog(I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_19

    .line 112
    :goto_15
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 113
    return-void

    .line 79
    :catch_19
    move-exception v0

    .line 80
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    .line 82
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1e
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/kieswifi/UpnpManager;->getNetworkState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_39

    .line 85
    const/16 v1, 0x3ed

    :try_start_2b
    invoke-virtual {p0, v1}, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->removeDialog(I)V

    .line 86
    const/16 v1, 0x3ed

    invoke-virtual {p0, v1}, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->showDialog(I)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_33} :catch_34

    goto :goto_15

    .line 87
    :catch_34
    move-exception v0

    .line 88
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    .line 92
    .end local v0           #e:Ljava/lang/Exception;
    :cond_39
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1, v2}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    iget-object v1, p0, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1, v2}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 95
    :cond_5d
    const/16 v1, 0x3ed

    :try_start_5f
    invoke-virtual {p0, v1}, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->removeDialog(I)V

    .line 96
    const/16 v1, 0x3ed

    invoke-virtual {p0, v1}, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->showDialog(I)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_67} :catch_68

    goto :goto_15

    .line 97
    :catch_68
    move-exception v0

    .line 98
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    .line 101
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6d
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1, v2}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a3

    iget-object v1, p0, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1, v2}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a3

    .line 104
    const/16 v1, 0x3ed

    :try_start_93
    invoke-virtual {p0, v1}, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->removeDialog(I)V

    .line 105
    const/16 v1, 0x3ed

    invoke-virtual {p0, v1}, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->showDialog(I)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_9b} :catch_9d

    goto/16 :goto_15

    .line 106
    :catch_9d
    move-exception v0

    .line 107
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_15

    .line 111
    .end local v0           #e:Ljava/lang/Exception;
    :cond_a3
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->finish()V

    goto/16 :goto_15
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 72
    return-void
.end method
