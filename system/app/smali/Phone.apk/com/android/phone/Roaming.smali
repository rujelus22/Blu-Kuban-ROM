.class public Lcom/android/phone/Roaming;
.super Landroid/preference/PreferenceActivity;
.source "Roaming.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Roaming$1;,
        Lcom/android/phone/Roaming$MyHandler;
    }
.end annotation


# instance fields
.field private mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

.field private mButtonSystemSelect:Landroid/preference/ListPreference;

.field private mHandler:Lcom/android/phone/Roaming$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRoamingGuard:Landroid/preference/PreferenceScreen;

.field private mRoamingSettings:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 298
    return-void
.end method

.method private UpdatePreferredNetworkModeSummary(I)V
    .registers 4
    .parameter "NetworkMode"

    .prologue
    .line 524
    packed-switch p1, :pswitch_data_44

    .line 549
    iget-object v0, p0, Lcom/android/phone/Roaming;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: Global"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 551
    :goto_a
    return-void

    .line 527
    :pswitch_b
    iget-object v0, p0, Lcom/android/phone/Roaming;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: WCDMA pref"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 530
    :pswitch_13
    iget-object v0, p0, Lcom/android/phone/Roaming;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: GSM only"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 533
    :pswitch_1b
    iget-object v0, p0, Lcom/android/phone/Roaming;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: WCDMA only"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 536
    :pswitch_23
    iget-object v0, p0, Lcom/android/phone/Roaming;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: GSM/WCDMA"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 539
    :pswitch_2b
    iget-object v0, p0, Lcom/android/phone/Roaming;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: CDMA / EvDo"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 542
    :pswitch_33
    iget-object v0, p0, Lcom/android/phone/Roaming;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: CDMA only"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 545
    :pswitch_3b
    iget-object v0, p0, Lcom/android/phone/Roaming;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: EvDo only"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 524
    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_b
        :pswitch_13
        :pswitch_1b
        :pswitch_23
        :pswitch_2b
        :pswitch_33
        :pswitch_3b
    .end packed-switch
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-static {p0}, Lcom/android/phone/Roaming;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/Roaming;Ljava/lang/String;I)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/phone/Roaming;->getSecureSettingValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/Roaming;Ljava/lang/String;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/phone/Roaming;->setSecureSettingValue(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/Roaming;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/phone/Roaming;->UpdatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/Roaming;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/Roaming;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/Roaming;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private getSecureSettingValue(Ljava/lang/String;I)I
    .registers 4
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 554
    const-string v0, "Roaming"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    return-void
.end method

.method private setSecureSettingValue(Ljava/lang/String;I)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 589
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 120
    const-string v0, "Roaming"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 153
    const-string v2, "Roaming"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 156
    iget-object v2, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CDMA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 157
    const v2, 0x7f060010

    invoke-virtual {p0, v2}, Lcom/android/phone/Roaming;->addPreferencesFromResource(I)V

    .line 164
    :goto_24
    invoke-virtual {p0}, Lcom/android/phone/Roaming;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 166
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    new-instance v2, Lcom/android/phone/Roaming$MyHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/phone/Roaming$MyHandler;-><init>(Lcom/android/phone/Roaming;Lcom/android/phone/Roaming$1;)V

    iput-object v2, p0, Lcom/android/phone/Roaming;->mHandler:Lcom/android/phone/Roaming$MyHandler;

    .line 169
    iget-object v2, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CDMA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 171
    const-string v2, "cdma_system_select_key"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/phone/Roaming;->mButtonSystemSelect:Landroid/preference/ListPreference;

    .line 174
    iget-object v2, p0, Lcom/android/phone/Roaming;->mButtonSystemSelect:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 177
    const-string v2, "roaming_settings"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/phone/Roaming;->getSecureSettingValue(Ljava/lang/String;I)I

    move-result v1

    .line 178
    .local v1, settingsCdmaRoamingMode:I
    iget-object v2, p0, Lcom/android/phone/Roaming;->mButtonSystemSelect:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 180
    const-string v2, "roaming_settings"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/Roaming;->mRoamingSettings:Landroid/preference/PreferenceScreen;

    .line 181
    const-string v2, "roaming_guard"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/Roaming;->mRoamingGuard:Landroid/preference/PreferenceScreen;

    .line 185
    .end local v1           #settingsCdmaRoamingMode:I
    :cond_71
    return-void

    .line 160
    .end local v0           #prefSet:Landroid/preference/PreferenceScreen;
    :cond_72
    const v2, 0x7f06000d

    invoke-virtual {p0, v2}, Lcom/android/phone/Roaming;->addPreferencesFromResource(I)V

    goto :goto_24
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 125
    const-string v0, "Roaming"

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 10
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 233
    iget-object v3, p0, Lcom/android/phone/Roaming;->mButtonSystemSelect:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_57

    .line 236
    iget-object v4, p0, Lcom/android/phone/Roaming;->mButtonSystemSelect:Landroid/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 238
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 239
    .local v0, buttonCdmaRoamingMode:I
    const-string v3, "roaming_settings"

    invoke-direct {p0, v3, v6}, Lcom/android/phone/Roaming;->getSecureSettingValue(Ljava/lang/String;I)I

    move-result v1

    .line 241
    .local v1, settingsCdmaRoamingMode:I
    if-eq v0, v1, :cond_57

    .line 243
    packed-switch v0, :pswitch_data_92

    .line 280
    const/4 v2, 0x0

    .line 281
    .local v2, statusCdmaRoamingMode:I
    iget-object v3, p0, Lcom/android/phone/Roaming;->mRoamingSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 282
    iget-object v3, p0, Lcom/android/phone/Roaming;->mRoamingGuard:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 286
    :goto_2e
    const-string v3, "roaming_settings"

    invoke-direct {p0, v3, v0}, Lcom/android/phone/Roaming;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 288
    const-string v3, "Roaming"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCdmaRoamingPreference value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v3, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/Roaming;->mHandler:Lcom/android/phone/Roaming$MyHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/phone/Roaming$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 295
    .end local v0           #buttonCdmaRoamingMode:I
    .end local v1           #settingsCdmaRoamingMode:I
    .end local v2           #statusCdmaRoamingMode:I
    :cond_57
    return v6

    .line 260
    .restart local v0       #buttonCdmaRoamingMode:I
    .restart local v1       #settingsCdmaRoamingMode:I
    :pswitch_58
    const-string v3, "roam_setting_call_domestic"

    invoke-direct {p0, v3, v6}, Lcom/android/phone/Roaming;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 261
    const-string v3, "roam_setting_data_domestic"

    invoke-direct {p0, v3, v6}, Lcom/android/phone/Roaming;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 262
    const-string v3, "roam_setting_call_international"

    invoke-direct {p0, v3, v5}, Lcom/android/phone/Roaming;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 263
    const-string v3, "roam_setting_data_international"

    invoke-direct {p0, v3, v5}, Lcom/android/phone/Roaming;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 265
    const-string v3, "roam_guard_call_domestic"

    invoke-direct {p0, v3, v6}, Lcom/android/phone/Roaming;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 266
    const-string v3, "roam_guard_data_domestic"

    invoke-direct {p0, v3, v6}, Lcom/android/phone/Roaming;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 267
    const-string v3, "roam_guard_call_international"

    invoke-direct {p0, v3, v6}, Lcom/android/phone/Roaming;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 268
    const-string v3, "roam_guard_data_international"

    invoke-direct {p0, v3, v6}, Lcom/android/phone/Roaming;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 269
    const-string v3, "roam_guard_sms_international"

    invoke-direct {p0, v3, v6}, Lcom/android/phone/Roaming;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 271
    const/4 v2, 0x5

    .line 274
    .restart local v2       #statusCdmaRoamingMode:I
    iget-object v3, p0, Lcom/android/phone/Roaming;->mRoamingSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 275
    iget-object v3, p0, Lcom/android/phone/Roaming;->mRoamingGuard:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_2e

    .line 243
    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_58
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 136
    const-string v2, "Roaming"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceTreeClick: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v2, p0, Lcom/android/phone/Roaming;->mButtonSystemSelect:Landroid/preference/ListPreference;

    if-ne p2, v2, :cond_34

    .line 139
    const-string v2, "Roaming"

    const-string v3, "onPreferenceTreeClick: preference == mButtonSystemSelect."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v2, "roaming_settings"

    invoke-direct {p0, v2, v1}, Lcom/android/phone/Roaming;->getSecureSettingValue(Ljava/lang/String;I)I

    move-result v0

    .line 142
    .local v0, cdmaRoamingMode:I
    iget-object v2, p0, Lcom/android/phone/Roaming;->mButtonSystemSelect:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 146
    .end local v0           #cdmaRoamingMode:I
    :goto_33
    return v1

    :cond_34
    const/4 v1, 0x0

    goto :goto_33
.end method

.method protected onResume()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 189
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 191
    const-string v2, "Roaming"

    const-string v5, "onResume"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p0}, Lcom/android/phone/Roaming;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 197
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/phone/Roaming;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 208
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "CDMA"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 209
    iget-object v2, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/Roaming;->mHandler:Lcom/android/phone/Roaming$MyHandler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/phone/Roaming$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 216
    :goto_35
    const-string v2, "roaming_settings"

    invoke-direct {p0, v2, v3}, Lcom/android/phone/Roaming;->getSecureSettingValue(Ljava/lang/String;I)I

    move-result v1

    .line 217
    .local v1, settingsCdmaRoamingMode:I
    iget-object v2, p0, Lcom/android/phone/Roaming;->mButtonSystemSelect:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 219
    iget-object v5, p0, Lcom/android/phone/Roaming;->mRoamingSettings:Landroid/preference/PreferenceScreen;

    if-ne v1, v3, :cond_60

    move v2, v3

    :goto_49
    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 220
    iget-object v2, p0, Lcom/android/phone/Roaming;->mRoamingGuard:Landroid/preference/PreferenceScreen;

    if-ne v1, v3, :cond_62

    :goto_50
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 221
    return-void

    .line 212
    .end local v1           #settingsCdmaRoamingMode:I
    :cond_54
    iget-object v2, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/Roaming;->mHandler:Lcom/android/phone/Roaming$MyHandler;

    invoke-virtual {v5, v4}, Lcom/android/phone/Roaming$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_35

    .restart local v1       #settingsCdmaRoamingMode:I
    :cond_60
    move v2, v4

    .line 219
    goto :goto_49

    :cond_62
    move v3, v4

    .line 220
    goto :goto_50
.end method
