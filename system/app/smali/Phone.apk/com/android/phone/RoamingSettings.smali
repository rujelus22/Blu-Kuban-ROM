.class public Lcom/android/phone/RoamingSettings;
.super Landroid/preference/PreferenceActivity;
.source "RoamingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RoamingSettings$RoamHandler;
    }
.end annotation


# instance fields
.field private mButtonDomesticCallRoam:Landroid/preference/CheckBoxPreference;

.field private mButtonDomesticDataRoam:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalCallRoam:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalDataRoam:Landroid/preference/CheckBoxPreference;

.field private mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRoamHandler:Lcom/android/phone/RoamingSettings$RoamHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 519
    return-void
.end method

.method private UpdatePreferredNetworkModeSummary(I)V
    .registers 4
    .parameter "NetworkMode"

    .prologue
    .line 682
    packed-switch p1, :pswitch_data_44

    .line 707
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: Global"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 709
    :goto_a
    return-void

    .line 685
    :pswitch_b
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: WCDMA pref"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 688
    :pswitch_13
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: GSM only"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 691
    :pswitch_1b
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: WCDMA only"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 694
    :pswitch_23
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: GSM/WCDMA"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 697
    :pswitch_2b
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: CDMA / EvDo"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 700
    :pswitch_33
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: CDMA only"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 703
    :pswitch_3b
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: EvDo only"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 682
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

.method static synthetic access$000(Lcom/android/phone/RoamingSettings;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCallRoam:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/RoamingSettings;Ljava/lang/String;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/phone/RoamingSettings;->setSecureSettingValue(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/RoamingSettings;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/phone/RoamingSettings;->UpdatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/RoamingSettings;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/RoamingSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->setCdmaRoaming()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/RoamingSettings;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticDataRoam:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/RoamingSettings;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/RoamingSettings;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCallRoam:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/RoamingSettings;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalDataRoam:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-static {p0}, Lcom/android/phone/RoamingSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/RoamingSettings;Ljava/lang/String;I)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/phone/RoamingSettings;->getSecureSettingValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getSecureSettingBoolean(Ljava/lang/String;I)Z
    .registers 5
    .parameter "key"
    .parameter "defValue"

    .prologue
    const/4 v0, 0x1

    .line 742
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

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
    .line 738
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

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
    .line 712
    const-string v0, "RoamingSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    return-void
.end method

.method private setCdmaRoaming()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 717
    const-string v3, "roam_setting_call_domestic"

    invoke-direct {p0, v3, v4}, Lcom/android/phone/RoamingSettings;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    .line 718
    .local v0, domesticRoamCall:Z
    const-string v3, "roam_setting_call_international"

    invoke-direct {p0, v3, v4}, Lcom/android/phone/RoamingSettings;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    .line 722
    .local v1, internationalRoamCall:Z
    if-eqz v0, :cond_37

    if-nez v1, :cond_37

    .line 723
    const/4 v2, 0x5

    .line 732
    .local v2, statusCdmaRoamingMode:I
    :goto_12
    const-string v3, "RoamingSettings"

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

    .line 733
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/RoamingSettings;->mRoamHandler:Lcom/android/phone/RoamingSettings$RoamHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/phone/RoamingSettings$RoamHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 735
    return-void

    .line 724
    .end local v2           #statusCdmaRoamingMode:I
    :cond_37
    if-nez v0, :cond_3d

    if-eqz v1, :cond_3d

    .line 725
    const/4 v2, 0x6

    .restart local v2       #statusCdmaRoamingMode:I
    goto :goto_12

    .line 726
    .end local v2           #statusCdmaRoamingMode:I
    :cond_3d
    if-eqz v0, :cond_43

    if-eqz v1, :cond_43

    .line 727
    const/4 v2, 0x7

    .restart local v2       #statusCdmaRoamingMode:I
    goto :goto_12

    .line 729
    .end local v2           #statusCdmaRoamingMode:I
    :cond_43
    const/16 v2, 0x8

    .restart local v2       #statusCdmaRoamingMode:I
    goto :goto_12
.end method

.method private setSecureSettingValue(Ljava/lang/String;I)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 747
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 102
    const-string v0, "RoamingSettings"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "icicle"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 396
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 397
    const-string v6, "RoamingSettings"

    const-string v9, "onCreate"

    invoke-static {v6, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 400
    const v6, 0x7f060012

    invoke-virtual {p0, v6}, Lcom/android/phone/RoamingSettings;->addPreferencesFromResource(I)V

    .line 403
    invoke-virtual {p0}, Lcom/android/phone/RoamingSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 405
    .local v5, prefSet:Landroid/preference/PreferenceScreen;
    new-instance v6, Lcom/android/phone/RoamingSettings$RoamHandler;

    const/4 v9, 0x0

    invoke-direct {v6, p0, v9}, Lcom/android/phone/RoamingSettings$RoamHandler;-><init>(Lcom/android/phone/RoamingSettings;Lcom/android/phone/RoamingSettings$1;)V

    iput-object v6, p0, Lcom/android/phone/RoamingSettings;->mRoamHandler:Lcom/android/phone/RoamingSettings$RoamHandler;

    .line 408
    iget-object v6, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v6

    const-string v9, "CDMA"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b8

    .line 411
    const-string v6, "roam_setting_call_domestic"

    invoke-direct {p0, v6, v7}, Lcom/android/phone/RoamingSettings;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    .line 412
    .local v0, domesticCallRoamEnabled:Z
    const-string v6, "domestic_voice_roaming_settings"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCallRoam:Landroid/preference/CheckBoxPreference;

    .line 413
    iget-object v6, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCallRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 414
    iget-object v9, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCallRoam:Landroid/preference/CheckBoxPreference;

    const-string v6, "roam_setting_call_domestic_forced"

    invoke-direct {p0, v6, v7}, Lcom/android/phone/RoamingSettings;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_b9

    move v6, v7

    :goto_52
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 417
    const-string v6, "enterprise_policy"

    invoke-virtual {p0, v6}, Lcom/android/phone/RoamingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 419
    .local v4, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v6

    if-nez v6, :cond_bb

    .line 421
    const-string v6, "RoamingSettings"

    const-string v9, "MDM: Roaming Data is disabled"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v6, "domestic_data_roaming_settings"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticDataRoam:Landroid/preference/CheckBoxPreference;

    .line 423
    iget-object v6, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 424
    iget-object v6, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 425
    const-string v6, "international_data_roaming_settings"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalDataRoam:Landroid/preference/CheckBoxPreference;

    .line 426
    iget-object v6, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 427
    iget-object v6, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 442
    :goto_96
    const-string v6, "roam_setting_call_international"

    invoke-direct {p0, v6, v7}, Lcom/android/phone/RoamingSettings;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    .line 443
    .local v2, internationalCallRoamEnabled:Z
    const-string v6, "international_voice_roaming_settings"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCallRoam:Landroid/preference/CheckBoxPreference;

    .line 444
    iget-object v6, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCallRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 445
    iget-object v6, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCallRoam:Landroid/preference/CheckBoxPreference;

    const-string v9, "roam_setting_call_international_forced"

    invoke-direct {p0, v9, v7}, Lcom/android/phone/RoamingSettings;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_106

    :goto_b5
    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 448
    .end local v0           #domesticCallRoamEnabled:Z
    .end local v2           #internationalCallRoamEnabled:Z
    .end local v4           #mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_b8
    return-void

    .restart local v0       #domesticCallRoamEnabled:Z
    :cond_b9
    move v6, v8

    .line 414
    goto :goto_52

    .line 430
    .restart local v4       #mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_bb
    const-string v6, "roam_setting_data_domestic"

    invoke-direct {p0, v6, v7}, Lcom/android/phone/RoamingSettings;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    .line 431
    .local v1, domesticDataRoamEnabled:Z
    const-string v6, "domestic_data_roaming_settings"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticDataRoam:Landroid/preference/CheckBoxPreference;

    .line 432
    iget-object v6, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 433
    iget-object v9, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticDataRoam:Landroid/preference/CheckBoxPreference;

    const-string v6, "roam_setting_data_domestic_forced"

    invoke-direct {p0, v6, v7}, Lcom/android/phone/RoamingSettings;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_102

    move v6, v7

    :goto_db
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 435
    const-string v6, "roam_setting_data_international"

    invoke-direct {p0, v6, v7}, Lcom/android/phone/RoamingSettings;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    .line 436
    .local v3, internationalDataRoamEnabled:Z
    const-string v6, "international_data_roaming_settings"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalDataRoam:Landroid/preference/CheckBoxPreference;

    .line 437
    iget-object v6, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 438
    iget-object v9, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalDataRoam:Landroid/preference/CheckBoxPreference;

    const-string v6, "roam_setting_data_international_forced"

    invoke-direct {p0, v6, v7}, Lcom/android/phone/RoamingSettings;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_104

    move v6, v7

    :goto_fe
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_96

    .end local v3           #internationalDataRoamEnabled:Z
    :cond_102
    move v6, v8

    .line 433
    goto :goto_db

    .restart local v3       #internationalDataRoamEnabled:Z
    :cond_104
    move v6, v8

    .line 438
    goto :goto_fe

    .end local v1           #domesticDataRoamEnabled:Z
    .end local v3           #internationalDataRoamEnabled:Z
    .restart local v2       #internationalCallRoamEnabled:Z
    :cond_106
    move v7, v8

    .line 445
    goto :goto_b5
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 107
    const-string v0, "RoamingSettings"

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 516
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 14
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const v10, 0x7f0e01fa

    const v9, 0x1080027

    const v8, 0x1040014

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 118
    const-string v3, "RoamingSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceTreeClick: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCallRoam:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_b5

    .line 122
    const-string v3, "RoamingSettings"

    const-string v4, "Domestic call roaming clicked"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCallRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_75

    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, alertMessage:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/RoamingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e04fb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/phone/RoamingSettings$2;

    invoke-direct {v4, p0}, Lcom/android/phone/RoamingSettings$2;-><init>(Lcom/android/phone/RoamingSettings;)V

    invoke-virtual {v3, v10, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e01fb

    new-instance v5, Lcom/android/phone/RoamingSettings$1;

    invoke-direct {v5, p0}, Lcom/android/phone/RoamingSettings$1;-><init>(Lcom/android/phone/RoamingSettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 152
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCallRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 391
    .end local v0           #alertMessage:Ljava/lang/String;
    :cond_74
    :goto_74
    return v7

    .line 154
    :cond_75
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCallRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 155
    const-string v3, "roam_setting_call_domestic"

    invoke-direct {p0, v3, v6}, Lcom/android/phone/RoamingSettings;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 156
    const-string v3, "roam_guard_call_domestic"

    invoke-direct {p0, v3, v6}, Lcom/android/phone/RoamingSettings;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 158
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->setCdmaRoaming()V

    .line 160
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 161
    const-string v3, "roam_setting_data_domestic"

    invoke-direct {p0, v3, v6}, Lcom/android/phone/RoamingSettings;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 162
    const-string v3, "roam_guard_data_domestic"

    invoke-direct {p0, v3, v6}, Lcom/android/phone/RoamingSettings;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 164
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->IsDomesticRoaming()Z

    move-result v3

    if-eqz v3, :cond_74

    .line 165
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v6}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 166
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/phone/RoamingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 167
    .local v1, cm:Landroid/net/ConnectivityManager;
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->setRoamingMobileDataEnabled(Z)V

    goto :goto_74

    .line 174
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    :cond_b5
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticDataRoam:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_160

    .line 175
    const-string v3, "RoamingSettings"

    const-string v4, "Domestic data roaming clicked"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_131

    .line 179
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCallRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_110

    .line 181
    const/4 v0, 0x0

    .line 183
    .restart local v0       #alertMessage:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/RoamingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e04fc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/phone/RoamingSettings$4;

    invoke-direct {v4, p0}, Lcom/android/phone/RoamingSettings$4;-><init>(Lcom/android/phone/RoamingSettings;)V

    invoke-virtual {v3, v10, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e01fb

    new-instance v5, Lcom/android/phone/RoamingSettings$3;

    invoke-direct {v5, p0}, Lcom/android/phone/RoamingSettings$3;-><init>(Lcom/android/phone/RoamingSettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 228
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_74

    .line 231
    .end local v0           #alertMessage:Ljava/lang/String;
    :cond_110
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->IsDomesticRoaming()Z

    move-result v3

    if-eqz v3, :cond_125

    .line 233
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_SHOW_DIALOG_DATA_ROAMING_GUARD"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .local v2, dialogIntent:Landroid/content/Intent;
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_74

    .line 237
    .end local v2           #dialogIntent:Landroid/content/Intent;
    :cond_125
    const-string v3, "roam_setting_data_domestic"

    invoke-direct {p0, v3, v7}, Lcom/android/phone/RoamingSettings;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 238
    const-string v3, "roam_guard_data_domestic"

    invoke-direct {p0, v3, v7}, Lcom/android/phone/RoamingSettings;->setSecureSettingValue(Ljava/lang/String;I)V

    goto/16 :goto_74

    .line 243
    :cond_131
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 244
    const-string v3, "roam_setting_data_domestic"

    invoke-direct {p0, v3, v6}, Lcom/android/phone/RoamingSettings;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 245
    const-string v3, "roam_guard_data_domestic"

    invoke-direct {p0, v3, v6}, Lcom/android/phone/RoamingSettings;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 247
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->IsDomesticRoaming()Z

    move-result v3

    if-eqz v3, :cond_74

    .line 248
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v6}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 249
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/phone/RoamingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 250
    .restart local v1       #cm:Landroid/net/ConnectivityManager;
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->setRoamingMobileDataEnabled(Z)V

    goto/16 :goto_74

    .line 257
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    :cond_160
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCallRoam:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1ef

    .line 258
    const-string v3, "RoamingSettings"

    const-string v4, "International call roaming clicked"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCallRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1b3

    .line 262
    const/4 v0, 0x0

    .line 264
    .restart local v0       #alertMessage:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/RoamingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e04fb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 266
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/phone/RoamingSettings$6;

    invoke-direct {v4, p0}, Lcom/android/phone/RoamingSettings$6;-><init>(Lcom/android/phone/RoamingSettings;)V

    invoke-virtual {v3, v10, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e01fb

    new-instance v5, Lcom/android/phone/RoamingSettings$5;

    invoke-direct {v5, p0}, Lcom/android/phone/RoamingSettings$5;-><init>(Lcom/android/phone/RoamingSettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 288
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCallRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_74

    .line 290
    .end local v0           #alertMessage:Ljava/lang/String;
    :cond_1b3
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCallRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 291
    const-string v3, "roam_setting_call_international"

    invoke-direct {p0, v3, v6}, Lcom/android/phone/RoamingSettings;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 292
    const-string v3, "roam_guard_call_international"

    invoke-direct {p0, v3, v6}, Lcom/android/phone/RoamingSettings;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 294
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->setCdmaRoaming()V

    .line 296
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 297
    const-string v3, "roam_setting_data_international"

    invoke-direct {p0, v3, v6}, Lcom/android/phone/RoamingSettings;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 298
    const-string v3, "roam_guard_data_international"

    invoke-direct {p0, v3, v6}, Lcom/android/phone/RoamingSettings;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 300
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->IsInternationalRoaming()Z

    move-result v3

    if-eqz v3, :cond_74

    .line 301
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/phone/RoamingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 302
    .restart local v1       #cm:Landroid/net/ConnectivityManager;
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->setRoamingMobileDataEnabled(Z)V

    goto/16 :goto_74

    .line 309
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    :cond_1ef
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalDataRoam:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_74

    .line 310
    const-string v3, "RoamingSettings"

    const-string v4, "International data roaming clicked"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_26b

    .line 314
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCallRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_24a

    .line 316
    const/4 v0, 0x0

    .line 318
    .restart local v0       #alertMessage:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/RoamingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e04fd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 320
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/phone/RoamingSettings$8;

    invoke-direct {v4, p0}, Lcom/android/phone/RoamingSettings$8;-><init>(Lcom/android/phone/RoamingSettings;)V

    invoke-virtual {v3, v10, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e01fb

    new-instance v5, Lcom/android/phone/RoamingSettings$7;

    invoke-direct {v5, p0}, Lcom/android/phone/RoamingSettings$7;-><init>(Lcom/android/phone/RoamingSettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 363
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_74

    .line 366
    .end local v0           #alertMessage:Ljava/lang/String;
    :cond_24a
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->IsInternationalRoaming()Z

    move-result v3

    if-eqz v3, :cond_25f

    .line 368
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_SHOW_DIALOG_DATA_ROAMING_GUARD"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    .restart local v2       #dialogIntent:Landroid/content/Intent;
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_74

    .line 372
    .end local v2           #dialogIntent:Landroid/content/Intent;
    :cond_25f
    const-string v3, "roam_setting_data_international"

    invoke-direct {p0, v3, v7}, Lcom/android/phone/RoamingSettings;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 373
    const-string v3, "roam_guard_data_international"

    invoke-direct {p0, v3, v7}, Lcom/android/phone/RoamingSettings;->setSecureSettingValue(Ljava/lang/String;I)V

    goto/16 :goto_74

    .line 378
    :cond_26b
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 379
    const-string v3, "roam_setting_data_international"

    invoke-direct {p0, v3, v6}, Lcom/android/phone/RoamingSettings;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 380
    const-string v3, "roam_guard_data_international"

    invoke-direct {p0, v3, v6}, Lcom/android/phone/RoamingSettings;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 382
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->IsInternationalRoaming()Z

    move-result v3

    if-eqz v3, :cond_74

    .line 383
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v6}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 384
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/phone/RoamingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 385
    .restart local v1       #cm:Landroid/net/ConnectivityManager;
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->setRoamingMobileDataEnabled(Z)V

    goto/16 :goto_74
.end method

.method protected onResume()V
    .registers 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 452
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 454
    const-string v5, "RoamingSettings"

    const-string v8, "onResume"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {p0}, Lcom/android/phone/RoamingSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 463
    const-string v5, "roam_setting_call_domestic"

    invoke-direct {p0, v5, v6}, Lcom/android/phone/RoamingSettings;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    .line 464
    .local v0, domesticCallRoamEnabled:Z
    iget-object v5, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCallRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 465
    iget-object v8, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCallRoam:Landroid/preference/CheckBoxPreference;

    const-string v5, "roam_setting_call_domestic_forced"

    invoke-direct {p0, v5, v6}, Lcom/android/phone/RoamingSettings;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_72

    move v5, v6

    :goto_29
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 468
    const-string v5, "enterprise_policy"

    invoke-virtual {p0, v5}, Lcom/android/phone/RoamingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 470
    .local v4, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v5

    if-nez v5, :cond_74

    .line 471
    const-string v5, "RoamingSettings"

    const-string v8, "MDM: Roaming Data is disabled"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v5, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 473
    iget-object v5, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 475
    iget-object v5, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 476
    iget-object v5, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 490
    :goto_59
    const-string v5, "roam_setting_call_international"

    invoke-direct {p0, v5, v6}, Lcom/android/phone/RoamingSettings;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    .line 491
    .local v2, internationalCallRoamEnabled:Z
    iget-object v5, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCallRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 492
    iget-object v5, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCallRoam:Landroid/preference/CheckBoxPreference;

    const-string v8, "roam_setting_call_international_forced"

    invoke-direct {p0, v8, v6}, Lcom/android/phone/RoamingSettings;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_ab

    :goto_6e
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 503
    return-void

    .end local v2           #internationalCallRoamEnabled:Z
    .end local v4           #mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_72
    move v5, v7

    .line 465
    goto :goto_29

    .line 479
    .restart local v4       #mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_74
    const-string v5, "roam_setting_data_domestic"

    invoke-direct {p0, v5, v6}, Lcom/android/phone/RoamingSettings;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    .line 480
    .local v1, domesticDataRoamEnabled:Z
    iget-object v5, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 481
    iget-object v8, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticDataRoam:Landroid/preference/CheckBoxPreference;

    const-string v5, "roam_setting_data_domestic_forced"

    invoke-direct {p0, v5, v6}, Lcom/android/phone/RoamingSettings;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_a7

    move v5, v6

    :goto_8a
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 483
    const-string v5, "roam_setting_data_international"

    invoke-direct {p0, v5, v6}, Lcom/android/phone/RoamingSettings;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    .line 484
    .local v3, internationalDataRoamEnabled:Z
    iget-object v5, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 485
    iget-object v8, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalDataRoam:Landroid/preference/CheckBoxPreference;

    const-string v5, "roam_setting_data_international_forced"

    invoke-direct {p0, v5, v6}, Lcom/android/phone/RoamingSettings;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_a9

    move v5, v6

    :goto_a3
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_59

    .end local v3           #internationalDataRoamEnabled:Z
    :cond_a7
    move v5, v7

    .line 481
    goto :goto_8a

    .restart local v3       #internationalDataRoamEnabled:Z
    :cond_a9
    move v5, v7

    .line 485
    goto :goto_a3

    .end local v1           #domesticDataRoamEnabled:Z
    .end local v3           #internationalDataRoamEnabled:Z
    .restart local v2       #internationalCallRoamEnabled:Z
    :cond_ab
    move v6, v7

    .line 492
    goto :goto_6e
.end method
