.class public Lcom/google/android/youtube/app/honeycomb/SettingsActivity$SearchPrefsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/youtube/app/YouTubeApplication;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 174
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 180
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$SearchPrefsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "youtube"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 181
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$SearchPrefsFragment;->addPreferencesFromResource(I)V

    .line 183
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$SearchPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$SearchPrefsFragment;->a:Lcom/google/android/youtube/app/YouTubeApplication;

    .line 185
    const-string v0, "safe_search"

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$SearchPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 186
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$SearchPrefsFragment;->a:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->E()Lcom/google/android/youtube/core/utils/SafeSearch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/SafeSearch;->b()Z

    move-result v0

    if-nez v0, :cond_35

    const/4 v0, 0x1

    :goto_31
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 187
    return-void

    .line 186
    :cond_35
    const/4 v0, 0x0

    goto :goto_31
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 191
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 193
    const-string v2, "clear_history"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 194
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$SearchPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 201
    :goto_16
    return v0

    .line 196
    :cond_17
    const-string v2, "safe_search"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 197
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$SearchPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x3f6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_16

    .line 201
    :cond_29
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_16
.end method
