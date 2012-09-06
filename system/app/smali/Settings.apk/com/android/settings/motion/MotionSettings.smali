.class public Lcom/android/settings/motion/MotionSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MotionSettings.java"


# instance fields
.field private mDoubleTap:Landroid/preference/PreferenceScreen;

.field private mMotions:Landroid/preference/CheckBoxPreference;

.field private mPan:Landroid/preference/PreferenceScreen;

.field private mPickUp:Landroid/preference/PreferenceScreen;

.field private mResolver:Landroid/content/ContentResolver;

.field private mShake:Landroid/preference/PreferenceScreen;

.field private mTilt:Landroid/preference/PreferenceScreen;

.field private mTurnOver:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private broadcastMotionChanged(Z)V
    .registers 4
    .parameter "isEnable"

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 137
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 45
    const v5, 0x7f05003e

    invoke-virtual {p0, v5}, Lcom/android/settings/motion/MotionSettings;->addPreferencesFromResource(I)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 48
    .local v3, mResolver:Landroid/content/ContentResolver;
    const-string v5, "motion_activation"

    invoke-virtual {p0, v5}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    .line 50
    const/4 v1, 0x1

    .line 52
    .local v1, isReadersHubDisabled:Z
    :try_start_29
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.android.app.readershub"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_33} :catch_42
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_33} :catch_165

    .line 58
    :goto_33
    if-nez v1, :cond_41

    .line 59
    const-string v5, "tilt"

    invoke-virtual {p0, v5}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    const v6, 0x7f0b079e

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 113
    .end local v1           #isReadersHubDisabled:Z
    .end local v3           #mResolver:Landroid/content/ContentResolver;
    :cond_41
    :goto_41
    return-void

    .line 53
    .restart local v1       #isReadersHubDisabled:Z
    .restart local v3       #mResolver:Landroid/content/ContentResolver;
    :catch_42
    move-exception v0

    .line 54
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x1

    .line 57
    goto :goto_33

    .line 62
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1           #isReadersHubDisabled:Z
    .end local v3           #mResolver:Landroid/content/ContentResolver;
    :cond_45
    const v5, 0x7f05001f

    invoke-virtual {p0, v5}, Lcom/android/settings/motion/MotionSettings;->addPreferencesFromResource(I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 64
    const-string v5, "motion_activation"

    invoke-virtual {p0, v5}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    .line 65
    const-string v5, "tilt"

    invoke-virtual {p0, v5}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mTilt:Landroid/preference/PreferenceScreen;

    .line 66
    const-string v5, "pan"

    invoke-virtual {p0, v5}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mPan:Landroid/preference/PreferenceScreen;

    .line 67
    const-string v5, "shake"

    invoke-virtual {p0, v5}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mShake:Landroid/preference/PreferenceScreen;

    .line 68
    const-string v5, "double_tap"

    invoke-virtual {p0, v5}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mDoubleTap:Landroid/preference/PreferenceScreen;

    .line 69
    const-string v5, "pick_up"

    invoke-virtual {p0, v5}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mPickUp:Landroid/preference/PreferenceScreen;

    .line 70
    const-string v5, "turn_over"

    invoke-virtual {p0, v5}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mTurnOver:Landroid/preference/PreferenceScreen;

    .line 71
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mDoubleTap:Landroid/preference/PreferenceScreen;

    const v6, 0x7f0b07a1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const v8, 0x7f0b07c9

    invoke-virtual {p0, v8}, Lcom/android/settings/motion/MotionSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/motion/MotionSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 75
    .local v4, ps:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111003c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_c6

    .line 76
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mTilt:Landroid/preference/PreferenceScreen;

    .line 78
    :cond_c6
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111003d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_d9

    .line 79
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mPan:Landroid/preference/PreferenceScreen;

    .line 81
    :cond_d9
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111003e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_f6

    .line 82
    const-string v5, "SPH-D710"

    const-string v6, "GT-N7000"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f6

    .line 83
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mShake:Landroid/preference/PreferenceScreen;

    .line 85
    :cond_f6
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111003f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_111

    const-string v5, "SPH-D710"

    const-string v6, "GT-N7000"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_145

    .line 86
    :cond_111
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mDoubleTap:Landroid/preference/PreferenceScreen;

    .line 106
    :cond_113
    :goto_113
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110040

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_126

    .line 107
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mPickUp:Landroid/preference/PreferenceScreen;

    .line 109
    :cond_126
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110041

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_141

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 110
    :cond_141
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mTurnOver:Landroid/preference/PreferenceScreen;

    goto/16 :goto_41

    .line 89
    :cond_145
    const/4 v2, 0x1

    .line 94
    .local v2, isVlingoInstalled:Z
    :try_start_146
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.vlingo.client.samsung"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_154
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_146 .. :try_end_154} :catch_159
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_154} :catch_163

    .line 101
    :goto_154
    if-nez v2, :cond_113

    .line 102
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mDoubleTap:Landroid/preference/PreferenceScreen;

    goto :goto_113

    .line 96
    :catch_159
    move-exception v0

    .line 97
    .restart local v0       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "MotionsSettings"

    const-string v6, "vlingo is not installed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v2, 0x0

    .line 100
    goto :goto_154

    .line 99
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_163
    move-exception v5

    goto :goto_154

    .line 55
    .end local v2           #isVlingoInstalled:Z
    .end local v4           #ps:Landroid/preference/PreferenceScreen;
    .restart local v1       #isReadersHubDisabled:Z
    .restart local v3       #mResolver:Landroid/content/ContentResolver;
    :catch_165
    move-exception v5

    goto/16 :goto_33
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 125
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_23

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_engine"

    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v1

    :goto_14
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 127
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/motion/MotionSettings;->broadcastMotionChanged(Z)V

    .line 130
    :goto_20
    return v1

    .line 126
    :cond_21
    const/4 v0, 0x0

    goto :goto_14

    .line 130
    :cond_23
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_20
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 120
    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "motion_engine"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_17

    const/4 v0, 0x1

    :cond_17
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 121
    return-void
.end method
