.class public Lcom/android/phone/RoamingGuard;
.super Landroid/preference/PreferenceActivity;
.source "RoamingGuard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RoamingGuard$1;,
        Lcom/android/phone/RoamingGuard$RoamHandler;
    }
.end annotation


# instance fields
.field private mButtonDomesticCallGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonDomesticDataGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalCallGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalDataGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalSmsGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRoamHandler:Lcom/android/phone/RoamingGuard$RoamHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 289
    return-void
.end method

.method private UpdatePreferredNetworkModeSummary(I)V
    .registers 4
    .parameter "NetworkMode"

    .prologue
    .line 452
    packed-switch p1, :pswitch_data_44

    .line 477
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: Global"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 479
    :goto_a
    return-void

    .line 455
    :pswitch_b
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: WCDMA pref"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 458
    :pswitch_13
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: GSM only"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 461
    :pswitch_1b
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: WCDMA only"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 464
    :pswitch_23
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: GSM/WCDMA"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 467
    :pswitch_2b
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: CDMA / EvDo"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 470
    :pswitch_33
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: CDMA only"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 473
    :pswitch_3b
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: EvDo only"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 452
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
    invoke-static {p0}, Lcom/android/phone/RoamingGuard;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/RoamingGuard;Ljava/lang/String;I)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/phone/RoamingGuard;->getSecureSettingValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/RoamingGuard;Ljava/lang/String;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/phone/RoamingGuard;->setSecureSettingValue(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/RoamingGuard;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/phone/RoamingGuard;->UpdatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/RoamingGuard;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/RoamingGuard;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private getSecureSettingBoolean(Ljava/lang/String;I)Z
    .registers 5
    .parameter "key"
    .parameter "defValue"

    .prologue
    const/4 v0, 0x1

    .line 490
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_12

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private getSecureSettingValue(Ljava/lang/String;I)I
    .registers 4
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

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
    .line 482
    const-string v0, "RoamingGuard"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-void
.end method

.method private setSecureSettingValue(Ljava/lang/String;I)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 495
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 96
    const-string v0, "RoamingGuard"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "icicle"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 189
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 190
    const-string v6, "RoamingGuard"

    const-string v9, "onCreate"

    invoke-static {v6, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 193
    const v6, 0x7f060011

    invoke-virtual {p0, v6}, Lcom/android/phone/RoamingGuard;->addPreferencesFromResource(I)V

    .line 196
    invoke-virtual {p0}, Lcom/android/phone/RoamingGuard;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 198
    .local v5, prefSet:Landroid/preference/PreferenceScreen;
    new-instance v6, Lcom/android/phone/RoamingGuard$RoamHandler;

    const/4 v9, 0x0

    invoke-direct {v6, p0, v9}, Lcom/android/phone/RoamingGuard$RoamHandler;-><init>(Lcom/android/phone/RoamingGuard;Lcom/android/phone/RoamingGuard$1;)V

    iput-object v6, p0, Lcom/android/phone/RoamingGuard;->mRoamHandler:Lcom/android/phone/RoamingGuard$RoamHandler;

    .line 201
    iget-object v6, p0, Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v6

    const-string v9, "CDMA"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d3

    .line 204
    const-string v6, "roam_guard_call_domestic"

    invoke-direct {p0, v6, v7}, Lcom/android/phone/RoamingGuard;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    .line 205
    .local v0, domesticCallGuardEnabled:Z
    const-string v6, "domestic_voice_guard"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCallGuard:Landroid/preference/CheckBoxPreference;

    .line 206
    iget-object v6, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCallGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 207
    iget-object v9, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCallGuard:Landroid/preference/CheckBoxPreference;

    const-string v6, "roam_guard_call_domestic_forced"

    invoke-direct {p0, v6, v7}, Lcom/android/phone/RoamingGuard;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_d4

    move v6, v7

    :goto_52
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 209
    const-string v6, "roam_guard_call_international"

    invoke-direct {p0, v6, v7}, Lcom/android/phone/RoamingGuard;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    .line 210
    .local v2, internationalCallGuardEnabled:Z
    const-string v6, "international_voice_guard"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCallGuard:Landroid/preference/CheckBoxPreference;

    .line 211
    iget-object v6, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCallGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 212
    iget-object v9, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCallGuard:Landroid/preference/CheckBoxPreference;

    const-string v6, "roam_guard_call_international_forced"

    invoke-direct {p0, v6, v7}, Lcom/android/phone/RoamingGuard;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_d7

    move v6, v7

    :goto_75
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 214
    const-string v6, "roam_guard_data_domestic"

    invoke-direct {p0, v6, v7}, Lcom/android/phone/RoamingGuard;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    .line 215
    .local v1, domesticDataRoamingGuardMode:Z
    const-string v6, "domestic_data_guard"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticDataGuard:Landroid/preference/CheckBoxPreference;

    .line 216
    iget-object v6, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticDataGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 217
    iget-object v9, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticDataGuard:Landroid/preference/CheckBoxPreference;

    const-string v6, "roam_guard_data_domestic_forced"

    invoke-direct {p0, v6, v7}, Lcom/android/phone/RoamingGuard;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_d9

    move v6, v7

    :goto_98
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 219
    const-string v6, "roam_guard_data_international"

    invoke-direct {p0, v6, v7}, Lcom/android/phone/RoamingGuard;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    .line 220
    .local v3, internationalDataRoamingGuardMode:Z
    const-string v6, "international_data_guard"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalDataGuard:Landroid/preference/CheckBoxPreference;

    .line 221
    iget-object v6, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalDataGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 222
    iget-object v6, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalDataGuard:Landroid/preference/CheckBoxPreference;

    const-string v9, "roam_guard_data_international_forced"

    invoke-direct {p0, v9, v7}, Lcom/android/phone/RoamingGuard;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_bb

    move v8, v7

    :cond_bb
    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 224
    const-string v6, "roam_guard_sms_international"

    invoke-direct {p0, v6, v7}, Lcom/android/phone/RoamingGuard;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v4

    .line 225
    .local v4, internationalSmsGuardEnabled:Z
    const-string v6, "international_sms_guard"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalSmsGuard:Landroid/preference/CheckBoxPreference;

    .line 226
    iget-object v6, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalSmsGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 229
    .end local v0           #domesticCallGuardEnabled:Z
    .end local v1           #domesticDataRoamingGuardMode:Z
    .end local v2           #internationalCallGuardEnabled:Z
    .end local v3           #internationalDataRoamingGuardMode:Z
    .end local v4           #internationalSmsGuardEnabled:Z
    :cond_d3
    return-void

    .restart local v0       #domesticCallGuardEnabled:Z
    :cond_d4
    move v6, v8

    .line 207
    goto/16 :goto_52

    .restart local v2       #internationalCallGuardEnabled:Z
    :cond_d7
    move v6, v8

    .line 212
    goto :goto_75

    .restart local v1       #domesticDataRoamingGuardMode:Z
    :cond_d9
    move v6, v8

    .line 217
    goto :goto_98
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 101
    const-string v0, "RoamingGuard"

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 286
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 112
    const-string v0, "RoamingGuard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCallGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_43

    .line 116
    const-string v0, "RoamingGuard"

    const-string v1, "Domestic call guard clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCallGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 119
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCallGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 120
    const-string v0, "roam_guard_call_domestic"

    invoke-direct {p0, v0, v3}, Lcom/android/phone/RoamingGuard;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 184
    :cond_37
    :goto_37
    return v3

    .line 122
    :cond_38
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCallGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 123
    const-string v0, "roam_guard_call_domestic"

    invoke-direct {p0, v0, v4}, Lcom/android/phone/RoamingGuard;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_37

    .line 128
    :cond_43
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCallGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_6c

    .line 129
    const-string v0, "RoamingGuard"

    const-string v1, "International call guard clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCallGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 132
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCallGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 133
    const-string v0, "roam_guard_call_international"

    invoke-direct {p0, v0, v3}, Lcom/android/phone/RoamingGuard;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_37

    .line 135
    :cond_61
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCallGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 136
    const-string v0, "roam_guard_call_international"

    invoke-direct {p0, v0, v4}, Lcom/android/phone/RoamingGuard;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_37

    .line 141
    :cond_6c
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticDataGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_9a

    .line 142
    const-string v0, "RoamingGuard"

    const-string v1, "Domestic data guard clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticDataGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 145
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticDataGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 146
    const-string v0, "roam_guard_data_domestic"

    invoke-direct {p0, v0, v3}, Lcom/android/phone/RoamingGuard;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_37

    .line 148
    :cond_8a
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticDataGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 149
    const-string v0, "roam_guard_data_domestic"

    invoke-direct {p0, v0, v4}, Lcom/android/phone/RoamingGuard;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 150
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_37

    .line 156
    :cond_9a
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalDataGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_c9

    .line 157
    const-string v0, "RoamingGuard"

    const-string v1, "International data guard clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalDataGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 160
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalDataGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 161
    const-string v0, "roam_guard_data_international"

    invoke-direct {p0, v0, v3}, Lcom/android/phone/RoamingGuard;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_37

    .line 163
    :cond_b8
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalDataGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 164
    const-string v0, "roam_guard_data_international"

    invoke-direct {p0, v0, v4}, Lcom/android/phone/RoamingGuard;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 165
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto/16 :goto_37

    .line 171
    :cond_c9
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalSmsGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_37

    .line 172
    const-string v0, "RoamingGuard"

    const-string v1, "International sms guard clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalSmsGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 175
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalSmsGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 176
    const-string v0, "roam_guard_sms_international"

    invoke-direct {p0, v0, v3}, Lcom/android/phone/RoamingGuard;->setSecureSettingValue(Ljava/lang/String;I)V

    goto/16 :goto_37

    .line 178
    :cond_e8
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalSmsGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 179
    const-string v0, "roam_guard_sms_international"

    invoke-direct {p0, v0, v4}, Lcom/android/phone/RoamingGuard;->setSecureSettingValue(Ljava/lang/String;I)V

    goto/16 :goto_37
.end method

.method protected onResume()V
    .registers 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 233
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 235
    const-string v5, "RoamingGuard"

    const-string v8, "onResume"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p0}, Lcom/android/phone/RoamingGuard;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 245
    const-string v5, "roam_guard_call_domestic"

    invoke-direct {p0, v5, v6}, Lcom/android/phone/RoamingGuard;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    .line 246
    .local v0, domesticCallGuardEnabled:Z
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCallGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 247
    iget-object v8, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCallGuard:Landroid/preference/CheckBoxPreference;

    const-string v5, "roam_guard_call_domestic_forced"

    invoke-direct {p0, v5, v6}, Lcom/android/phone/RoamingGuard;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_83

    move v5, v6

    :goto_29
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 249
    const-string v5, "roam_guard_call_international"

    invoke-direct {p0, v5, v6}, Lcom/android/phone/RoamingGuard;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    .line 250
    .local v2, internationalCallGuardEnabled:Z
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCallGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 251
    iget-object v8, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCallGuard:Landroid/preference/CheckBoxPreference;

    const-string v5, "roam_guard_call_international_forced"

    invoke-direct {p0, v5, v6}, Lcom/android/phone/RoamingGuard;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_85

    move v5, v6

    :goto_42
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 253
    const-string v5, "roam_guard_data_domestic"

    invoke-direct {p0, v5, v6}, Lcom/android/phone/RoamingGuard;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    .line 254
    .local v1, domesticDataRoamingGuardMode:Z
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticDataGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 255
    iget-object v8, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticDataGuard:Landroid/preference/CheckBoxPreference;

    const-string v5, "roam_guard_data_domestic_forced"

    invoke-direct {p0, v5, v6}, Lcom/android/phone/RoamingGuard;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_87

    move v5, v6

    :goto_5b
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 257
    const-string v5, "roam_guard_data_international"

    invoke-direct {p0, v5, v6}, Lcom/android/phone/RoamingGuard;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    .line 258
    .local v3, internationalDataRoamingGuardMode:Z
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalDataGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 259
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalDataGuard:Landroid/preference/CheckBoxPreference;

    const-string v8, "roam_guard_data_international_forced"

    invoke-direct {p0, v8, v6}, Lcom/android/phone/RoamingGuard;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_74

    move v7, v6

    :cond_74
    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 261
    const-string v5, "roam_guard_sms_international"

    invoke-direct {p0, v5, v6}, Lcom/android/phone/RoamingGuard;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v4

    .line 262
    .local v4, internationalSmsRoamingGuardMode:Z
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalSmsGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 273
    return-void

    .end local v1           #domesticDataRoamingGuardMode:Z
    .end local v2           #internationalCallGuardEnabled:Z
    .end local v3           #internationalDataRoamingGuardMode:Z
    .end local v4           #internationalSmsRoamingGuardMode:Z
    :cond_83
    move v5, v7

    .line 247
    goto :goto_29

    .restart local v2       #internationalCallGuardEnabled:Z
    :cond_85
    move v5, v7

    .line 251
    goto :goto_42

    .restart local v1       #domesticDataRoamingGuardMode:Z
    :cond_87
    move v5, v7

    .line 255
    goto :goto_5b
.end method
