.class public Lcom/google/android/youtube/app/honeycomb/SettingsActivity$AboutPrefsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/youtube/app/YouTubeApplication;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 377
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 382
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 383
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$AboutPrefsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "youtube"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 384
    const/high16 v0, 0x7f06

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$AboutPrefsFragment;->addPreferencesFromResource(I)V

    .line 386
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$AboutPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$AboutPrefsFragment;->a:Lcom/google/android/youtube/app/YouTubeApplication;

    .line 388
    const-string v0, "version"

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$AboutPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 389
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$AboutPrefsFragment;->a:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->V()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 390
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 394
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$AboutPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 397
    const-string v2, "mobile_terms"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 398
    const v0, 0x7f0b01fc

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$AboutPrefsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/utils/i;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 416
    :cond_1e
    :goto_1e
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 399
    :cond_23
    const-string v2, "youtube_terms"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 400
    const v0, 0x7f0b01fd

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$AboutPrefsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/utils/i;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1e

    .line 401
    :cond_3a
    const-string v2, "mobile_privacy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 402
    const v0, 0x7f0b01fe

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$AboutPrefsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/utils/i;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1e

    .line 403
    :cond_51
    const-string v2, "youtube_privacy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 404
    const v0, 0x7f0b01ff

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$AboutPrefsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/utils/i;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1e

    .line 405
    :cond_68
    const-string v2, "open_source_licenses"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 406
    invoke-static {v1}, Lcom/google/android/youtube/core/LicensesActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$AboutPrefsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1e

    .line 407
    :cond_78
    const-string v2, "feedback"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 408
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$AboutPrefsFragment;->a:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->V()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0b01fb

    invoke-static {v1, v0, v2}, Lcom/google/android/youtube/core/utils/i;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/utils/i;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1e

    .line 411
    :cond_95
    const-string v2, "help"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 412
    const v0, 0x7f0b01f9

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/utils/i;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/utils/i;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_1e
.end method
