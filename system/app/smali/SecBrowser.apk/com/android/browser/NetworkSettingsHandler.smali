.class public Lcom/android/browser/NetworkSettingsHandler;
.super Ljava/lang/Object;
.source "NetworkSettingsHandler.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBrowserActivity:Lcom/android/browser/BrowserActivity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .parameter "browser"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/browser/NetworkSettingsHandler;->mActivity:Landroid/app/Activity;

    .line 55
    check-cast p1, Lcom/android/browser/BrowserActivity;

    .end local p1
    iput-object p1, p0, Lcom/android/browser/NetworkSettingsHandler;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/NetworkSettingsHandler;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/browser/NetworkSettingsHandler;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/NetworkSettingsHandler;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/browser/NetworkSettingsHandler;->isRoamingArea()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/NetworkSettingsHandler;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/browser/NetworkSettingsHandler;->startRoamingSettingActivity()Z

    move-result v0

    return v0
.end method

.method private dataConnectionEnable()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 160
    invoke-direct {p0}, Lcom/android/browser/NetworkSettingsHandler;->isRoamingArea()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 161
    const-string v2, "NetworkSettingsHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dataConnectionEnable: in oversea = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/browser/NetworkSettingsHandler;->getDataOnRoamingEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-direct {p0}, Lcom/android/browser/NetworkSettingsHandler;->getDataOnRoamingEnabled()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 172
    :cond_30
    :goto_30
    return v0

    :cond_31
    move v0, v1

    .line 166
    goto :goto_30

    .line 169
    :cond_33
    invoke-direct {p0}, Lcom/android/browser/NetworkSettingsHandler;->dataConnectionPreference()Z

    move-result v2

    if-eq v2, v0, :cond_30

    move v0, v1

    .line 172
    goto :goto_30
.end method

.method private dataConnectionPreference()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 212
    iget-object v1, p0, Lcom/android/browser/NetworkSettingsHandler;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v1}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_28

    .line 214
    .local v0, mDataNetworkEnable:Z
    :goto_f
    const-string v1, "NetworkSettingsHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataConnectionPreference(): mDataNetworkEnable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return v0

    .line 212
    .end local v0           #mDataNetworkEnable:Z
    :cond_28
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private getDataOnRoamingEnabled()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 177
    :try_start_1
    iget-object v2, p0, Lcom/android/browser/NetworkSettingsHandler;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v2}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roaming"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_c} :catch_11

    move-result v2

    if-lez v2, :cond_10

    const/4 v1, 0x1

    .line 180
    :cond_10
    :goto_10
    return v1

    .line 179
    :catch_11
    move-exception v0

    .line 180
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_10
.end method

.method private isAirplaneModeOn()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 156
    iget-object v1, p0, Lcom/android/browser/NetworkSettingsHandler;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v1}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method private isRoamingArea()Ljava/lang/String;
    .registers 7

    .prologue
    .line 185
    const-string v3, "gsm.sim.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, operator:Ljava/lang/String;
    const-string v3, "ril.currentplmn"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, currentplmn:Ljava/lang/String;
    const-string v3, "gsm.operator.isroaming"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, roaming:Ljava/lang/String;
    if-eqz v1, :cond_4e

    if-eqz v0, :cond_4e

    .line 190
    const-string v3, "NetworkSettingsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRoamingArea(): operator "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " currentplmn "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string v3, "45005"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 193
    const-string v3, "oversea"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 194
    const-string v3, "true"

    .line 208
    :goto_4a
    return-object v3

    .line 196
    :cond_4b
    const-string v3, "false"

    goto :goto_4a

    .line 200
    :cond_4e
    if-eqz v2, :cond_6a

    .line 201
    const-string v3, "NetworkSettingsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRoamingArea(): roaming "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_68
    move-object v3, v2

    .line 208
    goto :goto_4a

    .line 204
    :cond_6a
    const-string v3, "NetworkSettingsHandler"

    const-string v4, "isRoamingArea(): roaming = null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v2, "false"

    goto :goto_68
.end method

.method private showDialogSelectMessage()V
    .registers 6

    .prologue
    .line 84
    iget-object v2, p0, Lcom/android/browser/NetworkSettingsHandler;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_13

    .line 85
    const-string v2, "NetworkSettingsHandler"

    const-string v3, "showDialogSelectMessage: mAlertDialog is NOT null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v2, p0, Lcom/android/browser/NetworkSettingsHandler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->cancel()V

    .line 88
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/browser/NetworkSettingsHandler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 91
    :cond_13
    iget-object v2, p0, Lcom/android/browser/NetworkSettingsHandler;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    iget-object v3, p0, Lcom/android/browser/NetworkSettingsHandler;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 92
    .local v1, wifimanager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 94
    .local v0, mWifiStatus:I
    const-string v2, "NetworkSettingsHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showDialogSelectMessage: Wifi Avail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/browser/NetworkSettingsHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c01cf

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c01cd

    new-instance v4, Lcom/android/browser/NetworkSettingsHandler$2;

    invoke-direct {v4, p0}, Lcom/android/browser/NetworkSettingsHandler$2;-><init>(Lcom/android/browser/NetworkSettingsHandler;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c01ce

    new-instance v4, Lcom/android/browser/NetworkSettingsHandler$1;

    invoke-direct {v4, p0, v1}, Lcom/android/browser/NetworkSettingsHandler$1;-><init>(Lcom/android/browser/NetworkSettingsHandler;Landroid/net/wifi/WifiManager;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/NetworkSettingsHandler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 133
    return-void
.end method

.method private startRoamingSettingActivity()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 136
    const-string v2, "NetworkSettingsHandler"

    const-string v3, "startRoamingSettingActivity: Roaming area"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 142
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.Settings"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 143
    const-string v2, "enable_roaming"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    :try_start_1e
    iget-object v2, p0, Lcom/android/browser/NetworkSettingsHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_23
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1e .. :try_end_23} :catch_24

    .line 152
    :goto_23
    return v5

    .line 149
    :catch_24
    move-exception v0

    .line 150
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "NetworkSettingsHandler"

    const-string v3, "startRoamingSettingActivity: There is no Activity, ROAMING_SETTING"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method


# virtual methods
.method public startWiFiSettingInAirplaneMode()V
    .registers 4

    .prologue
    .line 59
    const-string v1, "NetworkSettingsHandler"

    const-string v2, "startWiFiSettingInAirplaneMode: start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v1, p0, Lcom/android/browser/NetworkSettingsHandler;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    iget-object v2, p0, Lcom/android/browser/NetworkSettingsHandler;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 67
    .local v0, wm:Landroid/net/wifi/WifiManager;
    invoke-direct {p0}, Lcom/android/browser/NetworkSettingsHandler;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 68
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    if-eqz v1, :cond_2a

    .line 81
    :cond_29
    :goto_29
    return-void

    .line 70
    :cond_2a
    invoke-direct {p0}, Lcom/android/browser/NetworkSettingsHandler;->showDialogSelectMessage()V

    goto :goto_29

    .line 72
    :cond_2e
    invoke-direct {p0}, Lcom/android/browser/NetworkSettingsHandler;->dataConnectionEnable()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 73
    const-string v1, "NetworkSettingsHandler"

    const-string v2, "startWiFiSettingInAirplaneMode: DataNetworkEnable // enable"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 75
    :cond_3c
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    if-nez v1, :cond_29

    .line 77
    :cond_4c
    const-string v1, "NetworkSettingsHandler"

    const-string v2, "startWiFiSettingInAirplaneMode: showDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-direct {p0}, Lcom/android/browser/NetworkSettingsHandler;->showDialogSelectMessage()V

    goto :goto_29
.end method
