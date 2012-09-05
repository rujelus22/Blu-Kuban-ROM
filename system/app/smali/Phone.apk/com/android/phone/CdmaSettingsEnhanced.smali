.class public Lcom/android/phone/CdmaSettingsEnhanced;
.super Landroid/preference/PreferenceActivity;
.source "CdmaSettingsEnhanced.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

.field private mButtonDataUsage:Landroid/preference/Preference;

.field private mDataUsageListener:Lcom/android/phone/DataUsageListener;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 146
    const-string v0, "NetworkSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CdmaSettingsEnhanced;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 96
    const v2, 0x7f06000e

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaSettingsEnhanced;->addPreferencesFromResource(I)V

    .line 99
    invoke-virtual {p0}, Lcom/android/phone/CdmaSettingsEnhanced;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 101
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "button_data_enabled_key"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaSettingsEnhanced;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    .line 102
    const-string v2, "button_data_usage_key"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CdmaSettingsEnhanced;->mButtonDataUsage:Landroid/preference/Preference;

    .line 104
    const-string v2, "throttle"

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaSettingsEnhanced;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ThrottleManager;

    .line 105
    .local v1, tm:Landroid/net/ThrottleManager;
    new-instance v2, Lcom/android/phone/DataUsageListener;

    iget-object v3, p0, Lcom/android/phone/CdmaSettingsEnhanced;->mButtonDataUsage:Landroid/preference/Preference;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/phone/DataUsageListener;-><init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/preference/PreferenceScreen;)V

    iput-object v2, p0, Lcom/android/phone/CdmaSettingsEnhanced;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    .line 106
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 128
    iget-object v0, p0, Lcom/android/phone/CdmaSettingsEnhanced;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v0}, Lcom/android/phone/DataUsageListener;->pause()V

    .line 129
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v2, p0, Lcom/android/phone/CdmaSettingsEnhanced;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1d

    .line 73
    const-string v1, "onPreferenceTreeClick: preference == mButtonDataEnabled."

    invoke-static {v1}, Lcom/android/phone/CdmaSettingsEnhanced;->log(Ljava/lang/String;)V

    .line 74
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaSettingsEnhanced;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 77
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/phone/CdmaSettingsEnhanced;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 78
    const/4 v1, 0x1

    .line 86
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :goto_1c
    return v1

    .line 84
    :cond_1d
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1c
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 110
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 114
    invoke-virtual {p0}, Lcom/android/phone/CdmaSettingsEnhanced;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 117
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaSettingsEnhanced;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 119
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/phone/CdmaSettingsEnhanced;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 122
    iget-object v1, p0, Lcom/android/phone/CdmaSettingsEnhanced;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v1}, Lcom/android/phone/DataUsageListener;->resume()V

    .line 123
    return-void
.end method
