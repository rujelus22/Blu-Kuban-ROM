.class public Lcom/google/android/apps/plus/settings/HangoutSettingsActivity;
.super Lcom/google/android/apps/plus/settings/BaseSettingsActivity;
.source "HangoutSettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v5, 0x7f050008

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/settings/HangoutSettingsActivity;->addPreferencesFromResource(I)V

    .line 22
    const v5, 0x7f080011

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/settings/HangoutSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, key:Ljava/lang/String;
    const v5, 0x7f080015

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/settings/HangoutSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, defaultRingtonePath:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 27
    .local v4, sharedPreference:Landroid/content/SharedPreferences;
    invoke-interface {v4, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/settings/HangoutSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 30
    .local v3, ringtonePreference:Landroid/preference/Preference;
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v1, v0}, Lcom/google/android/apps/plus/settings/HangoutSettingsActivity;->getRingtoneName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, ringtoneName:Ljava/lang/String;
    new-instance v5, Lcom/google/android/apps/plus/settings/BaseSettingsActivity$RingtonePreferenceChangeListener;

    invoke-direct {v5, p0, v1, v0}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity$RingtonePreferenceChangeListener;-><init>(Lcom/google/android/apps/plus/settings/BaseSettingsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 34
    if-eqz v2, :cond_35

    .line 35
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 37
    :cond_35
    return-void
.end method
