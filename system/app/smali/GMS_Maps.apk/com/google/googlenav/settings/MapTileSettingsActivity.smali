.class public Lcom/google/googlenav/settings/MapTileSettingsActivity;
.super Landroid/preference/PreferenceActivity;


# static fields
.field public static final a:Z

.field private static final b:[Ljava/lang/String;


# instance fields
.field private c:Z

.field private d:Landroid/preference/PreferenceScreen;

.field private final e:Lcom/google/googlenav/ui/D;

.field private f:LaR/g;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->b:[Ljava/lang/String;

    invoke-static {}, Lcom/google/googlenav/capabilities/a;->a()Lcom/google/googlenav/capabilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/capabilities/a;->b()Z

    move-result v0

    sput-boolean v0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->c:Z

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->e()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->e:Lcom/google/googlenav/ui/D;

    return-void
.end method

.method private a()V
    .registers 7

    const-string v0, "map_tile_settings_clear_cache"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/16 v1, 0xc1

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cS;->g()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Lar/j;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Landroid/preference/ListPreference;Z)V
    .registers 5

    if-nez p1, :cond_20

    const-string v0, "map_tile_settings_prefetching_over_mobile_networks"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    :goto_a
    if-eqz p2, :cond_16

    const/16 v1, 0x4ba

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_15
    return-void

    :cond_16
    const/16 v1, 0x4b9

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_15

    :cond_20
    move-object v0, p1

    goto :goto_a
.end method

.method static synthetic a(Lcom/google/googlenav/settings/MapTileSettingsActivity;Landroid/preference/ListPreference;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->a(Landroid/preference/ListPreference;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/google/googlenav/settings/MapTileSettingsActivity;->a:Z

    if-eqz v1, :cond_6

    :goto_5
    return v0

    :cond_6
    const-string v1, "settings_preference"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "map_tile_settings_prefetching_over_mobile_networks"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_5
.end method

.method static synthetic a(Lcom/google/googlenav/settings/MapTileSettingsActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->c:Z

    return v0
.end method

.method private b()Ljava/lang/String;
    .registers 11

    const/16 v9, 0xa

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->f:LaR/g;

    invoke-interface {v0}, LaR/g;->c()LaR/h;

    move-result-object v2

    if-eqz v2, :cond_55

    invoke-virtual {v2}, LaR/h;->a()J

    move-result-wide v3

    const/16 v0, 0x285

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v5

    invoke-virtual {v5}, Laf/b;->v()Laf/a;

    move-result-object v5

    invoke-interface {v5}, Laf/a;->b()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-eqz v7, :cond_3b

    cmp-long v7, v3, v5

    if-gez v7, :cond_3b

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->q()Laf/e;

    move-result-object v0

    invoke-interface {v0, v3, v4, v5, v6}, Laf/e;->a(JJ)Ljava/lang/String;

    move-result-object v0

    :cond_3b
    const/16 v3, 0x1ee

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_55
    invoke-virtual {v2}, LaR/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/settings/MapTileSettingsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->a()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->e()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->g()Lcom/google/googlenav/android/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/h;->h()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v6, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->addPreferencesFromResource(I)V

    const/16 v0, 0x5d

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "settings_preference"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->d:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->d:Landroid/preference/PreferenceScreen;

    const-string v1, "map_tile_settings_prefetching_over_mobile_networks"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    sget-boolean v1, Lcom/google/googlenav/settings/MapTileSettingsActivity;->a:Z

    if-nez v1, :cond_132

    const/16 v1, 0x4bb

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/16 v2, 0x4b7

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const/16 v2, 0x4b8

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/google/googlenav/settings/MapTileSettingsActivity;->b:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_127

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :goto_67
    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->a(Landroid/preference/ListPreference;Z)V

    new-instance v1, Lcom/google/googlenav/settings/K;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/settings/K;-><init>(Lcom/google/googlenav/settings/MapTileSettingsActivity;Lcom/google/googlenav/settings/E;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_73
    iget-object v0, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->d:Landroid/preference/PreferenceScreen;

    const-string v1, "map_tile_settings_use_cached_tiles_only"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    sget-boolean v1, Lcom/google/googlenav/settings/MapTileSettingsActivity;->a:Z

    if-nez v1, :cond_81

    :cond_81
    iget-object v1, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->d:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->d:Landroid/preference/PreferenceScreen;

    const-string v1, "map_tile_settings_clear_cache"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/16 v1, 0xc0

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->a()V

    sget-object v0, LaC/c;->a:LaC/c;

    invoke-virtual {v0}, LaC/c;->e()Z

    move-result v0

    if-eqz v0, :cond_e8

    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v0, "map_tile_settings_offline_maps"

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    const/16 v0, 0x2a1

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/google/googlenav/prefetch/android/p;->d()Lcom/google/googlenav/prefetch/android/p;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/prefetch/android/p;->a(I)I

    move-result v2

    if-ne v2, v3, :cond_139

    const/16 v0, 0x2ad

    :goto_c1
    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-static {v0, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->d:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_e8
    invoke-static {}, Laf/d;->a()Z

    move-result v0

    if-eqz v0, :cond_121

    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const-string v1, "Debug"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->d:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v2, "debug_info_settings_debug_show_info"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    const-string v2, "Show debug info"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->e()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->z()LaR/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->f:LaR/g;

    :cond_121
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_123
    iput-boolean v0, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->c:Z

    monitor-exit p0
    :try_end_126
    .catchall {:try_start_123 .. :try_end_126} :catchall_13c

    return-void

    :cond_127
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_67

    :cond_132
    iget-object v1, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->d:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_73

    :cond_139
    const/16 v0, 0x2ac

    goto :goto_c1

    :catchall_13c
    move-exception v0

    :try_start_13d
    monitor-exit p0
    :try_end_13e
    .catchall {:try_start_13d .. :try_end_13e} :catchall_13c

    throw v0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7

    const v4, 0x104000a

    const v2, 0x7f0201c8

    const/high16 v3, 0x104

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_8c

    :goto_c
    return-object v0

    :pswitch_d
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0xc3

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0xc2

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/settings/G;

    invoke-direct {v2, p0}, Lcom/google/googlenav/settings/G;-><init>(Lcom/google/googlenav/settings/MapTileSettingsActivity;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_c

    :pswitch_3c
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0x438

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0x437

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/settings/H;

    invoke-direct {v2, p0}, Lcom/google/googlenav/settings/H;-><init>(Lcom/google/googlenav/settings/MapTileSettingsActivity;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_c

    :pswitch_6b
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Debug Info"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_c

    nop

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_d
        :pswitch_6b
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->c:Z

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_9

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    return-void

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "map_tile_settings_clear_cache"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->showDialog(I)V

    :cond_11
    :goto_11
    return v0

    :cond_12
    const-string v3, "map_tile_settings_prefetching_over_mobile_networks"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "map_tile_settings_use_cached_tiles_only"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "map_tile_settings_offline_maps"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-virtual {p0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->finish()V

    iget-object v1, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->e:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->ak()V

    goto :goto_11

    :cond_33
    const-string v3, "debug_info_settings_debug_show_info"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/c;->e()Lcom/google/googlenav/android/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/prefetch/android/p;->d()Lcom/google/googlenav/prefetch/android/p;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/settings/E;

    invoke-direct {v3, p0, v1}, Lcom/google/googlenav/settings/E;-><init>(Lcom/google/googlenav/settings/MapTileSettingsActivity;Lcom/google/googlenav/ui/D;)V

    invoke-virtual {v2, v3}, Lcom/google/googlenav/prefetch/android/p;->a(Lcom/google/googlenav/prefetch/android/t;)V

    goto :goto_11

    :cond_54
    const-string v3, "debug_info_settings_debug_force_prefetch"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget-object v2, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->f:LaR/g;

    invoke-interface {v2}, LaR/g;->b()V

    const-string v2, "Fire the force prefetch request successfully."

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_11

    :cond_6b
    move v0, v1

    goto :goto_11
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->c:Z

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_c

    invoke-direct {p0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->a()V

    return-void

    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method
