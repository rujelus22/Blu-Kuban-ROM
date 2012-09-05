.class public Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;
.super Landroid/app/Activity;
.source "NetworkWarningActivity.java"


# instance fields
.field final WIFI_DISCONNECTED:I

.field final WIFI_DISCONNECTED_INIT:I

.field final WIFI_SETTING_START_CODE:I

.field mIntentFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field networkDialog:Landroid/app/AlertDialog;

.field progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    const/16 v0, 0x3ec

    iput v0, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->WIFI_DISCONNECTED:I

    .line 58
    const/16 v0, 0x3ed

    iput v0, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->WIFI_DISCONNECTED_INIT:I

    .line 60
    const/16 v0, 0x3ef

    iput v0, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->WIFI_SETTING_START_CODE:I

    .line 63
    iput-object v1, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 67
    iput-object v1, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->networkDialog:Landroid/app/AlertDialog;

    .line 69
    iput-object v1, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 266
    new-instance v0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$7;-><init>(Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public finishSelf()V
    .registers 3

    .prologue
    .line 254
    const-string v0, "DLNA"

    const-string v1, "NetworkWarningActivity : finish self.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->isWifiSettingsLaunched()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 256
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->setWifiSettingsLaunched(Z)V

    .line 257
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->startActivity(Landroid/content/Intent;)V

    .line 262
    :cond_29
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->finish()V

    .line 263
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 231
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->setResult(I)V

    .line 232
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    const/16 v1, 0x2f1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->notifyToActivity(I)V

    .line 233
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->finish()V

    .line 234
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 235
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->requestWindowFeature(I)Z

    .line 75
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    iput-object p0, v0, Lcom/sec/android/app/dlna/DLNAManager;->warningActivity:Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;

    .line 77
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 9
    .parameter "id"

    .prologue
    .line 134
    packed-switch p1, :pswitch_data_90

    .line 227
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v4

    :goto_7
    return-object v4

    .line 137
    :pswitch_8
    const v4, 0x7f09004d

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, msg:Ljava/lang/String;
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 139
    .local v3, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 141
    .local v1, mWifiStatus:I
    const/4 v4, 0x3

    if-ne v1, v4, :cond_1e

    .line 144
    :cond_1e
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 145
    iget-object v4, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v4, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v5, 0x7f09000a

    invoke-virtual {p0, v5}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$1;-><init>(Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 156
    iget-object v4, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v5, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$2;-><init>(Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 165
    iget-object v4, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v5, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$3;

    invoke-direct {v5, p0}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$3;-><init>(Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 173
    iget-object v4, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->progressDialog:Landroid/app/ProgressDialog;

    goto :goto_7

    .line 178
    .end local v1           #mWifiStatus:I
    .end local v2           #msg:Ljava/lang/String;
    .end local v3           #wifiManager:Landroid/net/wifi/WifiManager;
    :pswitch_52
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 179
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f09000f

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090004

    invoke-virtual {p0, v5}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f09003f

    new-instance v6, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$6;

    invoke-direct {v6, p0}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$6;-><init>(Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$5;

    invoke-direct {v5, p0}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$5;-><init>(Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$4;

    invoke-direct {v5, p0}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$4;-><init>(Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 223
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->networkDialog:Landroid/app/AlertDialog;

    .line 224
    iget-object v4, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->networkDialog:Landroid/app/AlertDialog;

    goto/16 :goto_7

    .line 134
    :pswitch_data_90
    .packed-switch 0x3ec
        :pswitch_8
        :pswitch_52
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 242
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 244
    const-string v0, "DLNA"

    const-string v1, "NetworkWarningActivity : destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/16 v0, 0x3ef

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->finishActivity(I)V

    .line 246
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->finish()V

    .line 247
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/app/dlna/DLNAManager;->warningActivity:Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;

    .line 248
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 238
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 239
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 104
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getNetworkState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1e

    .line 106
    const/16 v1, 0x3ed

    :try_start_d
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->removeDialog(I)V

    .line 107
    const/16 v1, 0x3ed

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->showDialog(I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_19

    .line 130
    :goto_15
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 131
    return-void

    .line 108
    :catch_19
    move-exception v0

    .line 109
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    .line 111
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1e
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getNetworkState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_39

    .line 114
    const/16 v1, 0x3ed

    :try_start_2b
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->removeDialog(I)V

    .line 115
    const/16 v1, 0x3ed

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->showDialog(I)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_33} :catch_34

    goto :goto_15

    .line 116
    :catch_34
    move-exception v0

    .line 117
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    .line 119
    .end local v0           #e:Ljava/lang/Exception;
    :cond_39
    iget-object v1, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1, v2}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    iget-object v1, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1, v2}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 123
    const/16 v1, 0x3ed

    :try_start_5f
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->removeDialog(I)V

    .line 124
    const/16 v1, 0x3ed

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->showDialog(I)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_67} :catch_68

    goto :goto_15

    .line 125
    :catch_68
    move-exception v0

    .line 126
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    .line 129
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6d
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->finish()V

    goto :goto_15
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 101
    return-void
.end method
