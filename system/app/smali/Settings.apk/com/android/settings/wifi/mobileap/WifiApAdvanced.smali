.class public Lcom/android/settings/wifi/mobileap/WifiApAdvanced;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiApAdvanced.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLanSettings:Landroid/preference/Preference;

.field private mMaxClient:Landroid/preference/ListPreference;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private tempMaxClient:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApAdvanced;)Landroid/net/wifi/WifiConfiguration;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApAdvanced;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mMaxClient:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/mobileap/WifiApAdvanced;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->tempMaxClient:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/mobileap/WifiApAdvanced;)Landroid/net/wifi/WifiManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/mobileap/WifiApAdvanced;Landroid/net/wifi/WifiConfiguration;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->setWifiApConfig(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method private setWifiApConfig(Landroid/net/wifi/WifiConfiguration;)V
    .registers 5
    .parameter "config"

    .prologue
    .line 144
    if-eqz p1, :cond_1e

    .line 145
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1f

    .line 146
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 147
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 148
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 153
    :cond_1e
    :goto_1e
    return-void

    .line 150
    :cond_1f
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_1e
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mContext:Landroid/content/Context;

    .line 87
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 88
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 92
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    const-string v1, "wifi_ap_maxclient"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mMaxClient:Landroid/preference/ListPreference;

    .line 93
    const-string v1, "wifiap_lan_settings_preference"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mLanSettings:Landroid/preference/Preference;

    .line 96
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mMaxClient:Landroid/preference/ListPreference;

    if-eqz v1, :cond_53

    .line 97
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mMaxClient:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mMaxClient:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 101
    :cond_53
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mMaxClient:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 102
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mLanSettings:Landroid/preference/Preference;

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApAdvanced$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApAdvanced$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAdvanced;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 113
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f05004e

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->addPreferencesFromResource(I)V

    .line 79
    const-string v0, "WifiApAdvanced"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 117
    if-nez p1, :cond_2d

    .line 118
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0945

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0019

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApAdvanced$3;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApAdvanced$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAdvanced;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b001a

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApAdvanced$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApAdvanced$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAdvanced;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 139
    :goto_2c
    return-object v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 11
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/16 v7, 0xd

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 157
    const-string v3, "WifiApAdvanced"

    const-string v6, "mLanSettings.onPreferenceChange"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v6, "wifi_ap_maxclient"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    move-object v3, p2

    .line 159
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->tempMaxClient:I

    .line 162
    iget v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->tempMaxClient:I

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-ne v3, v6, :cond_2a

    move v3, v4

    .line 192
    .end local p2
    :goto_29
    return v3

    .line 166
    .restart local p2
    :cond_2a
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    .line 167
    .local v2, wifiApState:I
    const/4 v0, 0x0

    .line 169
    .local v0, ClientNum:I
    if-ne v2, v7, :cond_41

    .line 170
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 171
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v1, Landroid/os/Message;->what:I

    .line 172
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 175
    .end local v1           #msg:Landroid/os/Message;
    :cond_41
    if-ne v2, v7, :cond_4a

    if-lez v0, :cond_4a

    .line 178
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->showDialog(I)V

    move v3, v4

    .line 179
    goto :goto_29

    .line 182
    :cond_4a
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->tempMaxClient:I

    iput v5, v3, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 184
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->setWifiApConfig(Landroid/net/wifi/WifiConfiguration;)V

    move v3, v4

    .line 189
    goto :goto_29

    .end local v0           #ClientNum:I
    .end local v2           #wifiApState:I
    .restart local p2
    :cond_5c
    move v3, v5

    .line 192
    goto :goto_29
.end method
