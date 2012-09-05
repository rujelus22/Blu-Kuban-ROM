.class public Lcom/google/android/youtube/app/honeycomb/SettingsActivity$AboutPrefsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/youtube/app/YouTubeApplication;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 205
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 210
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 211
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$AboutPrefsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "youtube"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 212
    const/high16 v0, 0x7f06

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$AboutPrefsFragment;->addPreferencesFromResource(I)V

    .line 214
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$AboutPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$AboutPrefsFragment;->a:Lcom/google/android/youtube/app/YouTubeApplication;

    .line 216
    const-string v0, "version"

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$AboutPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$AboutPrefsFragment;->a:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 218
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 222
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$AboutPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 225
    const-string v2, "mobile_terms"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 226
    const v0, 0x7f0a01a7

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$AboutPrefsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/utils/g;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 244
    :cond_1e
    :goto_1e
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 227
    :cond_23
    const-string v2, "youtube_terms"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 228
    const v0, 0x7f0a01a8

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$AboutPrefsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/utils/g;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1e

    .line 229
    :cond_3a
    const-string v2, "mobile_privacy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 230
    const v0, 0x7f0a01a9

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$AboutPrefsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/utils/g;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1e

    .line 231
    :cond_51
    const-string v2, "youtube_privacy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 232
    const v0, 0x7f0a01aa

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$AboutPrefsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/utils/g;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1e

    .line 233
    :cond_68
    const-string v2, "open_source_licenses"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 234
    invoke-static {v1}, Lcom/google/android/youtube/core/LicensesActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$AboutPrefsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1e

    .line 235
    :cond_78
    const-string v2, "feedback"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 236
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$AboutPrefsFragment;->a:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->G()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0a01a6

    invoke-static {v1, v0, v2}, Lcom/google/android/youtube/core/utils/g;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/utils/g;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1e

    .line 239
    :cond_95
    const-string v2, "help"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 240
    const v0, 0x7f0a01a4

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/utils/g;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/utils/g;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_1e
.end method
