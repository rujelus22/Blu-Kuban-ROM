.class public Lcom/android/browser/preferences/PrivacySecurityPreferencesFragment;
.super Landroid/preference/PreferenceFragment;
.source "PrivacySecurityPreferencesFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private updatePrivacyEDMPref()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 58
    invoke-virtual {p0}, Lcom/android/browser/preferences/PrivacySecurityPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "enterprise_policy"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 59
    .local v2, lEdm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBrowserPolicy()Landroid/app/enterprise/BrowserPolicy;

    move-result-object v0

    .line 61
    .local v0, lBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;
    if-eqz v0, :cond_51

    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, lCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/app/enterprise/BrowserPolicy;->getAutoFillSetting()Z

    move-result v3

    if-nez v3, :cond_29

    .line 64
    const-string v3, "save_formdata"

    invoke-virtual {p0, v3}, Lcom/android/browser/preferences/PrivacySecurityPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1           #lCheckBoxPref:Landroid/preference/CheckBoxPreference;
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 65
    .restart local v1       #lCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 66
    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 69
    :cond_29
    invoke-virtual {v0}, Landroid/app/enterprise/BrowserPolicy;->getForceFraudWarningSetting()Z

    move-result v3

    if-ne v6, v3, :cond_3d

    .line 70
    const-string v3, "show_security_warnings"

    invoke-virtual {p0, v3}, Lcom/android/browser/preferences/PrivacySecurityPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1           #lCheckBoxPref:Landroid/preference/CheckBoxPreference;
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 71
    .restart local v1       #lCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 72
    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 74
    :cond_3d
    invoke-virtual {v0}, Landroid/app/enterprise/BrowserPolicy;->getCookiesSetting()Z

    move-result v3

    if-nez v3, :cond_51

    .line 75
    const-string v3, "accept_cookies"

    invoke-virtual {p0, v3}, Lcom/android/browser/preferences/PrivacySecurityPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1           #lCheckBoxPref:Landroid/preference/CheckBoxPreference;
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 76
    .restart local v1       #lCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 77
    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 80
    .end local v1           #lCheckBoxPref:Landroid/preference/CheckBoxPreference;
    :cond_51
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v1, 0x7f06000d

    invoke-virtual {p0, v1}, Lcom/android/browser/preferences/PrivacySecurityPreferencesFragment;->addPreferencesFromResource(I)V

    .line 43
    const-string v1, "privacy_clear_history"

    invoke-virtual {p0, v1}, Lcom/android/browser/preferences/PrivacySecurityPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 44
    .local v0, e:Landroid/preference/Preference;
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 45
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 9
    .parameter "pref"
    .parameter "objValue"

    .prologue
    const/4 v0, 0x1

    .line 85
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "privacy_clear_history"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v0, :cond_2d

    .line 89
    invoke-virtual {p0}, Lcom/android/browser/preferences/PrivacySecurityPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 94
    :goto_2c
    return v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 49
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 51
    invoke-direct {p0}, Lcom/android/browser/preferences/PrivacySecurityPreferencesFragment;->updatePrivacyEDMPref()V

    .line 53
    return-void
.end method
