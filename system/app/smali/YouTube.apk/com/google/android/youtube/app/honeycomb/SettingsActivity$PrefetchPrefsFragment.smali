.class public Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Lcom/google/android/youtube/core/Analytics;

.field private c:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private d:Lcom/google/android/youtube/core/d;

.field private e:Landroid/preference/CheckBoxPreference;

.field private f:Landroid/preference/CheckBoxPreference;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/google/android/youtube/app/honeycomb/g;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 220
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 361
    return-void
.end method

.method private a(Landroid/preference/CheckBoxPreference;)V
    .registers 4
    .parameter

    .prologue
    .line 341
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 342
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 343
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->b:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "PrefetchSubscriptionsOn"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 347
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->c:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->c()Z

    move-result v0

    if-nez v0, :cond_27

    .line 348
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->d:Lcom/google/android/youtube/core/d;

    const v1, 0x7f0b013b

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/d;->a(I)V

    .line 350
    :cond_27
    return-void

    .line 344
    :cond_28
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 345
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->b:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "PrefetchWatchLaterOn"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    goto :goto_17
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;Landroid/preference/CheckBoxPreference;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->a(Landroid/preference/CheckBoxPreference;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->i:Lcom/google/android/youtube/app/honeycomb/g;

    if-nez v0, :cond_c

    .line 294
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/honeycomb/g;-><init>(Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;B)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->i:Lcom/google/android/youtube/app/honeycomb/g;

    .line 296
    :cond_c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0135

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->i:Lcom/google/android/youtube/app/honeycomb/g;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 305
    const-string v0, "prefetch_pref_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->i:Lcom/google/android/youtube/app/honeycomb/g;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->e:Landroid/preference/CheckBoxPreference;

    :goto_12
    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/honeycomb/g;->a(Landroid/preference/CheckBoxPreference;)V

    .line 309
    return-void

    .line 306
    :cond_16
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->f:Landroid/preference/CheckBoxPreference;

    goto :goto_12
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2
    .parameter

    .prologue
    .line 285
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 288
    check-cast p1, Lcom/google/android/youtube/app/honeycomb/SettingsActivity;

    .line 289
    invoke-virtual {p1, p0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity;->a(Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;)V

    .line 290
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 247
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 248
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "youtube"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 249
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->addPreferencesFromResource(I)V

    .line 251
    const v0, 0x7f0b00be

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->g:Ljava/lang/String;

    .line 252
    const v0, 0x7f0b00bf

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->h:Ljava/lang/String;

    .line 254
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 255
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->O()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->a:Landroid/content/SharedPreferences;

    .line 256
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/Analytics;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->b:Lcom/google/android/youtube/core/Analytics;

    .line 257
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->c:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 258
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->d:Lcom/google/android/youtube/core/d;

    .line 260
    const-string v0, "prefetch_subscriptions"

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->e:Landroid/preference/CheckBoxPreference;

    .line 262
    const-string v0, "prefetch_watch_later"

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->f:Landroid/preference/CheckBoxPreference;

    .line 269
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->e:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 270
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->e:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 271
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->f:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->f:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 281
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 322
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 323
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .line 324
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_21

    move v0, v1

    .line 325
    :goto_11
    if-eqz v0, :cond_37

    .line 327
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 328
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->a(Landroid/preference/CheckBoxPreference;)V

    .line 337
    :cond_20
    :goto_20
    return v1

    :cond_21
    move v0, v2

    .line 324
    goto :goto_11

    .line 330
    :cond_23
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 331
    const-string v2, "prefetch_pref_key"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x401

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_20

    .line 335
    :cond_37
    invoke-virtual {p1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->b:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "PrefetchSubscriptionsOff"

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    goto :goto_20

    :cond_4e
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->b:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "PrefetchWatchLaterOff"

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    goto :goto_20
.end method
