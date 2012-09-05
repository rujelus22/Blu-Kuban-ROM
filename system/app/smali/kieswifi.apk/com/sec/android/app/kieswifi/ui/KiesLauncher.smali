.class public Lcom/sec/android/app/kieswifi/ui/KiesLauncher;
.super Landroid/app/Activity;
.source "KiesLauncher.java"


# static fields
.field static checkAirMode:Z

.field static checkWifi:Z

.field static checkWifiAp:Z


# instance fields
.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private final mCheckUSBConnected:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private timer:Ljava/util/Timer;

.field private uConstants:Lcom/sec/android/app/kieswifi/UpnpConstants;

.field wifiIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 37
    sput-boolean v0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->checkWifiAp:Z

    .line 38
    sput-boolean v0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->checkWifi:Z

    .line 39
    sput-boolean v0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->checkAirMode:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 42
    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 43
    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 44
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->timer:Ljava/util/Timer;

    .line 45
    new-instance v0, Lcom/sec/android/app/kieswifi/UpnpConstants;

    invoke-direct {v0}, Lcom/sec/android/app/kieswifi/UpnpConstants;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->uConstants:Lcom/sec/android/app/kieswifi/UpnpConstants;

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->wifiIntent:Landroid/content/Intent;

    .line 206
    new-instance v0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$6;-><init>(Lcom/sec/android/app/kieswifi/ui/KiesLauncher;)V

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->mCheckUSBConnected:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/kieswifi/ui/KiesLauncher;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/kieswifi/ui/KiesLauncher;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/kieswifi/ui/KiesLauncher;)Landroid/net/wifi/p2p/WifiP2pManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/kieswifi/ui/KiesLauncher;)Landroid/net/wifi/WifiManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method


# virtual methods
.method public enableNetwork(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/16 v3, 0x44e

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 232
    const-string v0, "enableNetwork"

    invoke-static {v1, v0}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 234
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 235
    const-string v0, "wifip2p"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->checkWifiAp:Z

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-ne v2, v0, :cond_5a

    :cond_35
    move v0, v1

    :goto_36
    sput-boolean v0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->checkWifi:Z

    .line 239
    invoke-virtual {p0, p1}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->checkAirMode:Z

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->uConstants:Lcom/sec/android/app/kieswifi/UpnpConstants;

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/UpnpConstants;->getDevice()I

    move-result v0

    if-ne v0, v1, :cond_60

    .line 243
    sget-boolean v0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->checkAirMode:Z

    if-nez v0, :cond_56

    sget-boolean v0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->checkWifiAp:Z

    if-nez v0, :cond_56

    sget-boolean v0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->checkWifi:Z

    if-nez v0, :cond_56

    sget-boolean v0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->appStart:Z

    if-eqz v0, :cond_5c

    .line 245
    :cond_56
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->finishSelf()V

    .line 263
    :cond_59
    :goto_59
    return-void

    .line 238
    :cond_5a
    const/4 v0, 0x0

    goto :goto_36

    .line 249
    :cond_5c
    invoke-virtual {p0, v3}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->showDialog(I)V

    goto :goto_59

    .line 252
    :cond_60
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->uConstants:Lcom/sec/android/app/kieswifi/UpnpConstants;

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/UpnpConstants;->getDevice()I

    move-result v0

    if-ne v0, v2, :cond_59

    .line 254
    sget-boolean v0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->checkAirMode:Z

    if-nez v0, :cond_80

    sget-boolean v0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->checkWifiAp:Z

    if-nez v0, :cond_80

    sget-boolean v0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->checkWifi:Z

    if-nez v0, :cond_80

    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->uConstants:Lcom/sec/android/app/kieswifi/UpnpConstants;

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/UpnpConstants;->getWLanHotspotSupport()Z

    move-result v0

    if-eqz v0, :cond_80

    sget-boolean v0, Lcom/sec/android/app/kieswifi/ui/MainActivity;->appStart:Z

    if-eqz v0, :cond_84

    .line 256
    :cond_80
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->finishSelfTablet()V

    goto :goto_59

    .line 260
    :cond_84
    invoke-virtual {p0, v3}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->showDialog(I)V

    goto :goto_59
.end method

.method public finishSelf()V
    .registers 3

    .prologue
    .line 58
    const/4 v0, 0x1

    const-string v1, "finishSelf"

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/kieswifi/ui/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->startActivity(Landroid/content/Intent;)V

    .line 61
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->finish()V

    .line 62
    return-void
.end method

.method public finishSelfTablet()V
    .registers 3

    .prologue
    .line 66
    const/4 v0, 0x1

    const-string v1, "finishSelfTablet"

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->startActivity(Landroid/content/Intent;)V

    .line 69
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->finish()V

    .line 70
    return-void
.end method

.method public isAirplaneModeOn(Landroid/content/Context;)Z
    .registers 5
    .parameter "mContext"

    .prologue
    const/4 v0, 0x0

    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0, v1}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->requestWindowFeature(I)Z

    .line 53
    const-string v0, "RD120112"

    invoke-static {v1, v0}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 54
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 74
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 76
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const v2, 0x7f070018

    invoke-virtual {p0, v2}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const v3, 0x7f070019

    invoke-virtual {p0, v3}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 78
    .local v1, listItems:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_74

    .line 172
    :goto_1f
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 81
    :pswitch_24
    const v2, 0x7f070015

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070016

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070005

    new-instance v4, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$2;-><init>(Lcom/sec/android/app/kieswifi/ui/KiesLauncher;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$1;-><init>(Lcom/sec/android/app/kieswifi/ui/KiesLauncher;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1f

    .line 113
    :pswitch_4e
    const v2, 0x7f070014

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$5;

    invoke-direct {v3, p0}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$5;-><init>(Lcom/sec/android/app/kieswifi/ui/KiesLauncher;)V

    invoke-virtual {v2, v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070006

    new-instance v4, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$4;

    invoke-direct {v4, p0}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$4;-><init>(Lcom/sec/android/app/kieswifi/ui/KiesLauncher;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$3;-><init>(Lcom/sec/android/app/kieswifi/ui/KiesLauncher;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1f

    .line 78
    nop

    :pswitch_data_74
    .packed-switch 0x44d
        :pswitch_24
        :pswitch_4e
    .end packed-switch
.end method

.method protected onPause()V
    .registers 5

    .prologue
    .line 191
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 192
    const/4 v1, 0x1

    const-string v2, "KiesLauncher onPause"

    invoke-static {v1, v2}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 197
    :try_start_9
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->mCheckUSBConnected:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_e} :catch_f

    .line 203
    :goto_e
    return-void

    .line 199
    :catch_f
    move-exception v0

    .line 201
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiver Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_e
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 178
    const/4 v1, 0x1

    const-string v2, "KiesLauncher OnResume"

    invoke-static {v1, v2}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->mCheckUSBConnected:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USB_CONNECTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 181
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->mCheckUSBConnected:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USB_NOT_CONNECTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHECK_USB_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, checkUSBConnected:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->sendBroadcast(Landroid/content/Intent;)V

    .line 187
    return-void
.end method
