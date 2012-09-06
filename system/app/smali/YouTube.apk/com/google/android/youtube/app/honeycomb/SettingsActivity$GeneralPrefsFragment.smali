.class public Lcom/google/android/youtube/app/honeycomb/SettingsActivity$GeneralPrefsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 141
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$GeneralPrefsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "youtube"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 147
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$GeneralPrefsFragment;->addPreferencesFromResource(I)V

    .line 149
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$GeneralPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 151
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->U()Lcom/google/android/youtube/core/utils/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/youtube/core/utils/k;->e()Z

    move-result v1

    if-nez v1, :cond_40

    .line 152
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$GeneralPrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "default_hq"

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$GeneralPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 153
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$GeneralPrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "upload_policy"

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$GeneralPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 156
    :cond_40
    const-string v1, "autosync_policy"

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$GeneralPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 158
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/k;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/youtube/app/k;->a:Lcom/google/android/youtube/app/l;

    .line 159
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 160
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$GeneralPrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 161
    return-void
.end method
