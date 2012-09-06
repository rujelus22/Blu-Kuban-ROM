.class public Lcom/google/android/maps/driveabout/app/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/app/l;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 28
    new-instance v0, Lcom/google/android/maps/driveabout/app/l;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/SettingsActivity;->a:Lcom/google/android/maps/driveabout/app/l;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {}, Lcom/google/android/maps/driveabout/app/ca;->b()Z

    move-result v0

    if-nez v0, :cond_17

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 51
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SettingsActivity;->finish()V

    .line 133
    :cond_16
    :goto_16
    return-void

    .line 55
    :cond_17
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/SettingsActivity;->a:Lcom/google/android/maps/driveabout/app/l;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/app/l;->a(Landroid/app/Activity;)V

    .line 56
    new-instance v1, Lcom/google/android/maps/driveabout/app/al;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/al;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v2, "DriveAbout"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 58
    const/high16 v0, 0x7f06

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/SettingsActivity;->addPreferencesFromResource(I)V

    .line 60
    const-string v0, "InfoCategory"

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 61
    const-string v2, "AboutDriveabout"

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/app/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 62
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 63
    new-instance v0, Lcom/google/android/maps/driveabout/app/dd;

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/app/dd;-><init>(Lcom/google/android/maps/driveabout/app/SettingsActivity;Lcom/google/android/maps/driveabout/app/al;)V

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 74
    :goto_4b
    const-string v0, "TermsAndConditions"

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 75
    new-instance v2, Lcom/google/android/maps/driveabout/app/de;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/de;-><init>(Lcom/google/android/maps/driveabout/app/SettingsActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 83
    const-string v0, "Privacy"

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 84
    new-instance v2, Lcom/google/android/maps/driveabout/app/df;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/df;-><init>(Lcom/google/android/maps/driveabout/app/SettingsActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 91
    const-string v0, "Notices"

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 92
    new-instance v2, Lcom/google/android/maps/driveabout/app/dg;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/dg;-><init>(Lcom/google/android/maps/driveabout/app/SettingsActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 103
    const-string v0, "UnitsSetting"

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_84

    .line 105
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 109
    :cond_84
    const-string v0, "DuplicatedGMMSettings"

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_93

    .line 111
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 117
    :cond_93
    const-string v0, "OneButtonRmi"

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/RmiPreference;

    .line 118
    if-eqz v0, :cond_16

    .line 119
    invoke-static {}, Lcom/google/android/maps/driveabout/app/ca;->a()Lcom/google/android/maps/driveabout/app/ca;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/maps/driveabout/app/ca;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_b4

    .line 122
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_16

    .line 72
    :cond_b0
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4b

    .line 123
    :cond_b4
    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_c6

    .line 124
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/RmiPreference;->setEnabled(Z)V

    .line 125
    const v1, 0x7f0d0060

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/RmiPreference;->setSummary(I)V

    goto/16 :goto_16

    .line 127
    :cond_c6
    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 128
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/RmiPreference;->setEnabled(Z)V

    .line 129
    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/RmiPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/RmiPreference;->a(Lcom/google/android/maps/driveabout/app/al;)V

    goto/16 :goto_16
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 137
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 138
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/SettingsActivity;->a:Lcom/google/android/maps/driveabout/app/l;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/l;->a()V

    .line 139
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 149
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 150
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/SettingsActivity;->a:Lcom/google/android/maps/driveabout/app/l;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/l;->c()V

    .line 151
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 143
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 144
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/SettingsActivity;->a:Lcom/google/android/maps/driveabout/app/l;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/l;->b()V

    .line 145
    return-void
.end method
