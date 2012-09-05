.class public Lcom/google/googlenav/settings/SettingsPreferenceActivity;
.super Landroid/preference/PreferenceActivity;


# instance fields
.field private a:Landroid/preference/PreferenceScreen;

.field private b:Landroid/preference/Preference;

.field private c:Landroid/preference/ListPreference;

.field private d:Landroid/preference/Preference;

.field private e:Landroid/preference/Preference;

.field private f:Landroid/preference/PreferenceCategory;

.field private g:Landroid/preference/Preference;

.field private final h:Lcom/google/googlenav/ui/D;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->e()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->h:Lcom/google/googlenav/ui/D;

    return-void
.end method

.method private a()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/login/k;->a()Lcom/google/googlenav/login/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/k;->d()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->c:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->c:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private b()V
    .registers 8

    const/4 v6, 0x1

    const/4 v3, 0x0

    const-string v0, "settings_preference"

    invoke-virtual {p0, v0, v3}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "settings_version"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v6, v1, :cond_52

    if-nez v1, :cond_45

    const-string v1, "cache_settings_preference"

    invoke-virtual {p0, v1, v3}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "cache_settings_prefetch_over_mobile_networks"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "map_tile_settings_prefetching_over_mobile_networks"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/googlenav/M;->d(Z)V

    :cond_3a
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_45
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "settings_version"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_52
    return-void
.end method

.method private c()Z
    .registers 5

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BUG_REPORT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_29

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_29

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_29
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public onBackPressed()V
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->setResult(I)V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->h:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->c()Lcom/google/googlenav/ui/wizard/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/y;->a()I

    move-result v1

    sparse-switch v1, :sswitch_data_2e

    :goto_18
    return-void

    :sswitch_19
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->d()Lcom/google/googlenav/ui/wizard/y;

    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->h:Lcom/google/googlenav/ui/D;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->b(I)V

    goto :goto_18

    :sswitch_23
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->d()Lcom/google/googlenav/ui/wizard/y;

    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->h:Lcom/google/googlenav/ui/D;

    const-string v1, "stars"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->d(Ljava/lang/String;)V

    goto :goto_18

    :sswitch_data_2e
    .sparse-switch
        0x10 -> :sswitch_19
        0x1c -> :sswitch_23
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    const/16 v2, 0x4ab

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050008

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->addPreferencesFromResource(I)V

    const/16 v0, 0x436

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "settings_preference"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->b()V

    invoke-virtual {p0}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->a:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->a:Landroid/preference/PreferenceScreen;

    const-string v1, "sign_in"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->b:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->b:Landroid/preference/Preference;

    const/16 v1, 0x449

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->a:Landroid/preference/PreferenceScreen;

    const-string v1, "switch_account"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->c:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->c:Landroid/preference/ListPreference;

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->c:Landroid/preference/ListPreference;

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->a()V

    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->c:Landroid/preference/ListPreference;

    new-instance v1, Lcom/google/googlenav/settings/L;

    invoke-direct {v1, p0}, Lcom/google/googlenav/settings/L;-><init>(Lcom/google/googlenav/settings/SettingsPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->a:Landroid/preference/PreferenceScreen;

    const-string v1, "map_tile_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->d:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->d:Landroid/preference/Preference;

    const/16 v1, 0x5d

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->a:Landroid/preference/PreferenceScreen;

    const-string v1, "location_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->e:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->e:Landroid/preference/Preference;

    const/16 v1, 0x24d

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->a:Landroid/preference/PreferenceScreen;

    const-string v1, "labs_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/16 v1, 0x1e7

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "info"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->f:Landroid/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->f:Landroid/preference/PreferenceCategory;

    const/16 v1, 0x1d5

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->f:Landroid/preference/PreferenceCategory;

    const-string v1, "info_legal"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/16 v1, 0x229

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->f:Landroid/preference/PreferenceCategory;

    const-string v1, "info_feedback"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->g:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->g:Landroid/preference/Preference;

    const/16 v1, 0x111

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->f:Landroid/preference/PreferenceCategory;

    const-string v1, "info_about"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sign_in"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {p0}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->finish()V

    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->h:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->I()Lcom/google/googlenav/ui/av;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/n;->af:Laq/a;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/av;->a(Laq/a;)V

    :goto_1b
    return v0

    :cond_1c
    const-string v2, "switch_account"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    sget-object v1, Lcom/google/googlenav/ui/n;->U:Laq/a;

    invoke-static {v1}, Lcom/google/googlenav/ui/n;->a(Laq/a;)V

    goto :goto_1b

    :cond_2a
    const-string v2, "map_tile_settings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/googlenav/settings/MapTileSettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->finish()V

    goto :goto_1b

    :cond_40
    const-string v2, "location_settings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1b

    :cond_53
    const-string v2, "labs_settings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    sget-object v1, Lcom/google/googlenav/ui/n;->T:Laq/a;

    invoke-static {v1}, Lcom/google/googlenav/ui/n;->a(Laq/a;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/googlenav/settings/LabsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1b

    :cond_6b
    const-string v2, "info_legal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    sget-object v1, Lcom/google/googlenav/ui/n;->ar:Laq/a;

    invoke-static {v1}, Lcom/google/googlenav/ui/n;->a(Laq/a;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/googlenav/settings/LegalActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1b

    :cond_83
    const-string v2, "info_feedback"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->h:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->I()Lcom/google/googlenav/ui/av;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/n;->as:Laq/a;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/av;->a(Laq/a;)V

    goto :goto_1b

    :cond_97
    const-string v2, "info_about"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b0

    sget-object v1, Lcom/google/googlenav/ui/n;->at:Laq/a;

    invoke-static {v1}, Lcom/google/googlenav/ui/n;->a(Laq/a;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/googlenav/settings/AboutActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1b

    :cond_b0
    const/4 v0, 0x0

    goto/16 :goto_1b
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->k()Z

    move-result v0

    if-nez v0, :cond_9e

    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->a:Landroid/preference/PreferenceScreen;

    const-string v1, "sign_in"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->a:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->b:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_1e
    :goto_1e
    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->k()Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->aB()Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-direct {p0}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->a()V

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->v()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->c:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->c:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->a:Landroid/preference/PreferenceScreen;

    const-string v1, "switch_account"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->a:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->c:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_58
    :goto_58
    invoke-static {}, Lcom/google/googlenav/M;->F()Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->a:Landroid/preference/PreferenceScreen;

    const-string v1, "map_tile_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_6f

    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->a:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->d:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_6f
    :goto_6f
    invoke-static {}, Lax/aa;->l()Z

    move-result v0

    if-eqz v0, :cond_b7

    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->a:Landroid/preference/PreferenceScreen;

    const-string v1, "location_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_86

    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->a:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->e:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_86
    :goto_86
    invoke-direct {p0}, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_bf

    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->a:Landroid/preference/PreferenceScreen;

    const-string v1, "info_feedback"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_9d

    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->f:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->g:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_9d
    :goto_9d
    return-void

    :cond_9e
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->a:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->b:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1e

    :cond_a7
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->a:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->c:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_58

    :cond_af
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->a:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->d:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_6f

    :cond_b7
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->a:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->e:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_86

    :cond_bf
    iget-object v0, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->f:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/google/googlenav/settings/SettingsPreferenceActivity;->g:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_9d
.end method
