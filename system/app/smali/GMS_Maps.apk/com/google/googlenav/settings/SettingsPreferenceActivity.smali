.class public Lcom/google/googlenav/settings/SettingsPreferenceActivity;
.super Lcom/google/googlenav/settings/GmmPreferenceActivity;
.source "SourceFile"


# instance fields
.field private b:Landroid/preference/PreferenceScreen;

.field private c:Landroid/preference/Preference;

.field private d:Landroid/preference/ListPreference;

.field private e:Landroid/preference/Preference;

.field private f:Landroid/preference/Preference;

.field private g:Landroid/preference/PreferenceCategory;

.field private h:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/googlenav/settings/GmmPreferenceActivity;-><init>()V

    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    .line 361
    invoke-static {}, Las/j;->a()Las/j;

    move-result-object v0

    invoke-virtual {v0}, Las/j;->d()[Ljava/lang/String;

    move-result-object v0

    .line 364
    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->d:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 367
    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->d:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 368
    return-void
.end method

.method private c()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 522
    const-string v0, "settings_preference"

    invoke-virtual {p0, v0, v3}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 524
    const-string v1, "settings_version"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 526
    if-eq v6, v1, :cond_52

    .line 527
    if-nez v1, :cond_45

    .line 528
    const-string v1, "cache_settings_preference"

    invoke-virtual {p0, v1, v3}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 531
    const-string v2, "cache_settings_prefetch_over_mobile_networks"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 534
    if-eqz v2, :cond_3a

    .line 535
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "map_tile_settings_prefetching_over_mobile_networks"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 538
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/googlenav/K;->b(Z)V

    .line 544
    :cond_3a
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 547
    :cond_45
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "settings_version"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 549
    :cond_52
    return-void
.end method

.method private d()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 552
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 567
    :cond_7
    :goto_7
    return v0

    .line 557
    :cond_8
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BUG_REPORT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p0}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 560
    if-eqz v1, :cond_29

    .line 561
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 562
    if-eqz v1, :cond_29

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 567
    :cond_29
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public onBackPressed()V
    .registers 4

    .prologue
    .line 376
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->setResult(I)V

    .line 377
    invoke-super {p0}, Lcom/google/googlenav/settings/GmmPreferenceActivity;->onBackPressed()V

    .line 378
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    .line 379
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->c()Lcom/google/googlenav/ui/wizard/A;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/A;->a()I

    move-result v1

    sparse-switch v1, :sswitch_data_30

    .line 391
    :goto_18
    return-void

    .line 381
    :sswitch_19
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->d()Lcom/google/googlenav/ui/wizard/A;

    .line 382
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->a:Lcom/google/googlenav/ui/v;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->b(I)V

    goto :goto_18

    .line 385
    :sswitch_23
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->d()Lcom/google/googlenav/ui/wizard/A;

    .line 388
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->a:Lcom/google/googlenav/ui/v;

    const-string v1, "stars"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;Z)V

    goto :goto_18

    .line 379
    nop

    :sswitch_data_30
    .sparse-switch
        0x10 -> :sswitch_19
        0x1c -> :sswitch_23
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    const/16 v2, 0x5a2

    .line 193
    invoke-super {p0, p1}, Lcom/google/googlenav/settings/GmmPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 195
    invoke-virtual {p0}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 299
    :goto_b
    return-void

    .line 199
    :cond_c
    const v0, 0x7f060009

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->addPreferencesFromResource(I)V

    .line 200
    const/16 v0, 0x527

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 202
    invoke-virtual {p0}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "settings_preference"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->c()V

    .line 205
    invoke-virtual {p0}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->b:Landroid/preference/PreferenceScreen;

    .line 208
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->b:Landroid/preference/PreferenceScreen;

    const-string v1, "display_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 209
    const/16 v1, 0xfb

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->b:Landroid/preference/PreferenceScreen;

    const-string v1, "sign_in"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->c:Landroid/preference/Preference;

    .line 213
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->c:Landroid/preference/Preference;

    const/16 v1, 0x53c

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->b:Landroid/preference/PreferenceScreen;

    const-string v1, "switch_account"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->d:Landroid/preference/ListPreference;

    .line 217
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->d:Landroid/preference/ListPreference;

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->d:Landroid/preference/ListPreference;

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 222
    invoke-direct {p0}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->b()V

    .line 224
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->d:Landroid/preference/ListPreference;

    new-instance v1, Lcom/google/googlenav/settings/P;

    invoke-direct {v1, p0}, Lcom/google/googlenav/settings/P;-><init>(Lcom/google/googlenav/settings/SettingsPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 267
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->b:Landroid/preference/PreferenceScreen;

    const-string v1, "map_tile_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->e:Landroid/preference/Preference;

    .line 268
    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->e:Landroid/preference/Preference;

    invoke-static {}, Lcom/google/googlenav/K;->L()Z

    move-result v0

    if-eqz v0, :cond_11e

    const/16 v0, 0x66

    :goto_92
    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->b:Landroid/preference/PreferenceScreen;

    const-string v1, "location_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->f:Landroid/preference/Preference;

    .line 274
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->f:Landroid/preference/Preference;

    const/16 v1, 0x2a4

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->b:Landroid/preference/PreferenceScreen;

    const-string v1, "labs_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 278
    const/16 v1, 0x218

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 281
    const-string v0, "info"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->g:Landroid/preference/PreferenceCategory;

    .line 282
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->g:Landroid/preference/PreferenceCategory;

    const/16 v1, 0x1f1

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->g:Landroid/preference/PreferenceCategory;

    const-string v1, "info_whats_new"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 286
    const/16 v1, 0x61a

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->g:Landroid/preference/PreferenceCategory;

    const-string v1, "info_legal"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 290
    const/16 v1, 0x25d

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->g:Landroid/preference/PreferenceCategory;

    const-string v1, "info_feedback"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->h:Landroid/preference/Preference;

    .line 294
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->h:Landroid/preference/Preference;

    const/16 v1, 0x12a

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->g:Landroid/preference/PreferenceCategory;

    const-string v1, "info_about"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 298
    const/16 v1, 0xd

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 268
    :cond_11e
    const/16 v0, 0x65

    goto/16 :goto_92
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 395
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 397
    const-string v3, "display_settings"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 398
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/googlenav/settings/DisplaySettingsActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 399
    invoke-virtual {p0, v2}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 400
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "a=s"

    aput-object v3, v2, v1

    const-string v1, "i=71"

    aput-object v1, v2, v0

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 403
    const-string v2, "s"

    invoke-static {v5, v2, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 518
    :goto_2e
    return v0

    .line 408
    :cond_2f
    const-string v3, "sign_in"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 409
    invoke-virtual {p0}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->finish()V

    .line 410
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "a=s"

    aput-object v3, v2, v1

    const-string v1, "i=23"

    aput-object v1, v2, v0

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 413
    const-string v2, "s"

    invoke-static {v5, v2, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x1bf

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/v;->an()Lcom/google/googlenav/ui/W;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Ljava/lang/String;Las/g;)V

    goto :goto_2e

    .line 421
    :cond_64
    const-string v3, "switch_account"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 423
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "a=s"

    aput-object v3, v2, v1

    const-string v1, "i=62"

    aput-object v1, v2, v0

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 426
    const-string v2, "s"

    invoke-static {v5, v2, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 431
    :cond_80
    const-string v3, "map_tile_settings"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 432
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "a=s"

    aput-object v3, v2, v1

    const-string v1, "i=69"

    aput-object v1, v2, v0

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 435
    const-string v2, "s"

    invoke-static {v5, v2, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 437
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/googlenav/settings/MapTileSettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 438
    invoke-virtual {p0, v1}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2e

    .line 443
    :cond_a6
    const-string v3, "location_settings"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e7

    .line 444
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "a=s"

    aput-object v3, v2, v1

    const-string v1, "i=70"

    aput-object v1, v2, v0

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 447
    const-string v2, "s"

    invoke-static {v5, v2, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-static {}, Lcom/google/googlenav/friend/ae;->a()Z

    move-result v1

    if-nez v1, :cond_db

    invoke-static {}, Lcom/google/googlenav/friend/au;->l()Z

    move-result v1

    if-nez v1, :cond_db

    .line 454
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    sget-object v3, Lcom/google/googlenav/android/M;->e:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2e

    .line 456
    :cond_db
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2e

    .line 461
    :cond_e7
    const-string v3, "labs_settings"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10e

    .line 462
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "a=s"

    aput-object v3, v2, v1

    const-string v1, "i=58"

    aput-object v1, v2, v0

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 465
    const-string v2, "s"

    invoke-static {v5, v2, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 468
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/googlenav/settings/LabsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 469
    invoke-virtual {p0, v1}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2e

    .line 473
    :cond_10e
    const-string v3, "info_whats_new"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_134

    .line 474
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "a=s"

    aput-object v3, v2, v1

    const-string v1, "i=66"

    aput-object v1, v2, v0

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 477
    const-string v2, "s"

    invoke-static {v5, v2, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ac()Lcom/google/googlenav/aA;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/googlenav/aA;->a(Landroid/content/Context;)V

    goto/16 :goto_2e

    .line 483
    :cond_134
    const-string v3, "info_legal"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15b

    .line 484
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "a=s"

    aput-object v3, v2, v1

    const-string v1, "i=51"

    aput-object v1, v2, v0

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 487
    const-string v2, "s"

    invoke-static {v5, v2, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 490
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/googlenav/settings/LegalActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 491
    invoke-virtual {p0, v1}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2e

    .line 495
    :cond_15b
    const-string v3, "info_feedback"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_181

    .line 496
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "a=s"

    aput-object v3, v2, v1

    const-string v1, "i=18"

    aput-object v1, v2, v0

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 499
    const-string v2, "s"

    invoke-static {v5, v2, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ac()Lcom/google/googlenav/aA;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/aA;->i()V

    goto/16 :goto_2e

    .line 506
    :cond_181
    const-string v3, "info_about"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a8

    .line 507
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "a=s"

    aput-object v3, v2, v1

    const-string v1, "i=53"

    aput-object v1, v2, v0

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 510
    const-string v2, "s"

    invoke-static {v5, v2, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 513
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/googlenav/settings/AboutActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 514
    invoke-virtual {p0, v1}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2e

    :cond_1a8
    move v0, v1

    .line 518
    goto/16 :goto_2e
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 303
    invoke-super {p0}, Lcom/google/googlenav/settings/GmmPreferenceActivity;->onResume()V

    .line 307
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0}, Las/f;->k()Z

    move-result v0

    if-nez v0, :cond_a2

    .line 308
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->b:Landroid/preference/PreferenceScreen;

    const-string v1, "sign_in"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 309
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->b:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->c:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 315
    :cond_1e
    :goto_1e
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0}, Las/f;->k()Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aE()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 319
    invoke-direct {p0}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->b()V

    .line 322
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0}, Las/f;->v()Ljava/lang/String;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->d:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->d:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->b:Landroid/preference/PreferenceScreen;

    const-string v1, "switch_account"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_58

    .line 329
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->b:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->d:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 335
    :cond_58
    :goto_58
    invoke-static {}, Lcom/google/googlenav/K;->D()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 336
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->b:Landroid/preference/PreferenceScreen;

    const-string v1, "map_tile_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_6f

    .line 337
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->b:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->e:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 343
    :cond_6f
    :goto_6f
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->i()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 344
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->b:Landroid/preference/PreferenceScreen;

    const-string v1, "location_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_8a

    .line 345
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->b:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->f:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 351
    :cond_8a
    :goto_8a
    invoke-direct {p0}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 352
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->b:Landroid/preference/PreferenceScreen;

    const-string v1, "info_feedback"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_a1

    .line 353
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->g:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->h:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 358
    :cond_a1
    :goto_a1
    return-void

    .line 312
    :cond_a2
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->b:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->c:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1e

    .line 332
    :cond_ab
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->b:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->d:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_58

    .line 340
    :cond_b3
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->b:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->e:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_6f

    .line 348
    :cond_bb
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->b:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->f:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_8a

    .line 356
    :cond_c3
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->g:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->h:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_a1
.end method
