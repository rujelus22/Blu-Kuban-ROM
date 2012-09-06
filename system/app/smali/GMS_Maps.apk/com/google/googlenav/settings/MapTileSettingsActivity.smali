.class public Lcom/google/googlenav/settings/MapTileSettingsActivity;
.super Lcom/google/googlenav/settings/GmmPreferenceActivity;
.source "SourceFile"


# static fields
.field public static final b:Z

.field private static final c:[Ljava/lang/String;


# instance fields
.field private d:Z

.field private final e:Ljava/lang/Object;

.field private f:Landroid/preference/PreferenceScreen;

.field private g:LaD/i;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 81
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

    sput-object v0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->c:[Ljava/lang/String;

    .line 108
    invoke-static {}, Lcom/google/googlenav/capabilities/a;->a()Lcom/google/googlenav/capabilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/capabilities/a;->b()Z

    move-result v0

    sput-boolean v0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/googlenav/settings/GmmPreferenceActivity;-><init>()V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->d:Z

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->e:Ljava/lang/Object;

    .line 698
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/settings/MapTileSettingsActivity;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->e:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Landroid/preference/ListPreference;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 639
    if-nez p1, :cond_20

    .line 640
    const-string v0, "map_tile_settings_prefetching_over_mobile_networks"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 643
    :goto_a
    if-eqz p2, :cond_16

    .line 644
    const/16 v1, 0x5b3

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 650
    :goto_15
    return-void

    .line 647
    :cond_16
    const/16 v1, 0x5b2

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_15

    :cond_20
    move-object v0, p1

    goto :goto_a
.end method

.method static synthetic a(Lcom/google/googlenav/settings/MapTileSettingsActivity;Landroid/preference/ListPreference;Z)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->a(Landroid/preference/ListPreference;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 668
    sget-boolean v1, Lcom/google/googlenav/settings/MapTileSettingsActivity;->b:Z

    if-eqz v1, :cond_6

    .line 671
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

.method private b()V
    .registers 7

    .prologue
    .line 653
    const-string v0, "map_tile_settings_clear_cache"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/K;->L()Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 v0, 0xcd

    :goto_e
    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dD;->g()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Lcom/google/googlenav/common/util/k;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 658
    return-void

    .line 653
    :cond_29
    const/16 v0, 0xcc

    goto :goto_e
.end method

.method static synthetic b(Lcom/google/googlenav/settings/MapTileSettingsActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/google/googlenav/settings/MapTileSettingsActivity;)LaD/i;
    .registers 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->g:LaD/i;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .registers 11

    .prologue
    const/16 v9, 0xa

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 737
    iget-object v0, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->g:LaD/i;

    invoke-interface {v0}, LaD/i;->c()LaD/j;

    move-result-object v2

    .line 738
    if-eqz v2, :cond_5c

    .line 739
    invoke-virtual {v2}, LaD/j;->a()J

    move-result-wide v3

    .line 740
    const/16 v0, 0x30b

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 741
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v5

    .line 742
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-eqz v7, :cond_3b

    cmp-long v7, v3, v5

    if-gez v7, :cond_3b

    .line 743
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->p()Lcom/google/googlenav/common/d;

    move-result-object v0

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/google/googlenav/common/d;->a(JJ)Ljava/lang/String;

    move-result-object v0

    .line 746
    :cond_3b
    const/16 v3, 0x21f

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 750
    invoke-virtual {v2}, LaD/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    :cond_5c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/settings/MapTileSettingsActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->b()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 218
    invoke-super {p0, p1}, Lcom/google/googlenav/settings/GmmPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 220
    invoke-virtual {p0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 360
    :goto_a
    return-void

    .line 224
    :cond_b
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->addPreferencesFromResource(I)V

    .line 225
    invoke-static {}, Lcom/google/googlenav/K;->L()Z

    move-result v0

    if-eqz v0, :cond_f2

    const/16 v0, 0x66

    :goto_19
    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 228
    invoke-virtual {p0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "settings_preference"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->f:Landroid/preference/PreferenceScreen;

    .line 231
    iget-object v0, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->f:Landroid/preference/PreferenceScreen;

    const-string v1, "map_tile_settings_prefetching_over_mobile_networks"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 234
    sget-boolean v1, Lcom/google/googlenav/settings/MapTileSettingsActivity;->b:Z

    if-nez v1, :cond_101

    .line 235
    const/16 v1, 0x5b4

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 239
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x5b0

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5b1

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 243
    sget-object v1, Lcom/google/googlenav/settings/MapTileSettingsActivity;->c:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 244
    invoke-static {p0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->a(Landroid/content/Context;)Z

    move-result v1

    .line 246
    if-eqz v1, :cond_f6

    .line 247
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 252
    :goto_74
    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->a(Landroid/preference/ListPreference;Z)V

    .line 254
    new-instance v1, Lcom/google/googlenav/settings/O;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/settings/O;-><init>(Lcom/google/googlenav/settings/MapTileSettingsActivity;Lcom/google/googlenav/settings/F;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 260
    :goto_80
    iget-object v0, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->f:Landroid/preference/PreferenceScreen;

    const-string v1, "map_tile_settings_use_cached_tiles_only"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 262
    sget-boolean v1, Lcom/google/googlenav/settings/MapTileSettingsActivity;->b:Z

    if-nez v1, :cond_8e

    .line 275
    :cond_8e
    iget-object v1, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->f:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 278
    iget-object v0, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->f:Landroid/preference/PreferenceScreen;

    const-string v1, "map_tile_settings_clear_cache"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 279
    invoke-static {}, Lcom/google/googlenav/K;->L()Z

    move-result v0

    if-eqz v0, :cond_108

    const/16 v0, 0xcb

    :goto_a3
    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 281
    invoke-direct {p0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->b()V

    .line 284
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 285
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 286
    const-string v1, "Debug"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v1, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->f:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 289
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 290
    const-string v2, "debug_info_settings_debug_show_prefetch_info"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 291
    const-string v2, "Show prefetch info"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 292
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 353
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->x()LaD/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->g:LaD/i;

    .line 357
    :cond_e6
    iget-object v1, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 358
    const/4 v0, 0x1

    :try_start_ea
    iput-boolean v0, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->d:Z

    .line 359
    monitor-exit v1

    goto/16 :goto_a

    :catchall_ef
    move-exception v0

    monitor-exit v1
    :try_end_f1
    .catchall {:try_start_ea .. :try_end_f1} :catchall_ef

    throw v0

    .line 225
    :cond_f2
    const/16 v0, 0x65

    goto/16 :goto_19

    .line 249
    :cond_f6
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_74

    .line 257
    :cond_101
    iget-object v1, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->f:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_80

    .line 279
    :cond_108
    const/16 v0, 0xca

    goto :goto_a3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 9
    .parameter

    .prologue
    const v6, 0x104000a

    const v5, 0x7f02020c

    const/high16 v4, 0x104

    const/4 v1, 0x0

    .line 435
    packed-switch p1, :pswitch_data_de

    move-object v0, v1

    .line 547
    :goto_d
    return-object v0

    .line 437
    :pswitch_e
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v2, 0xd0

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-static {}, Lcom/google/googlenav/K;->L()Z

    move-result v0

    if-eqz v0, :cond_43

    const/16 v0, 0xcf

    :goto_29
    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/google/googlenav/settings/H;

    invoke-direct {v2, p0}, Lcom/google/googlenav/settings/H;-><init>(Lcom/google/googlenav/settings/MapTileSettingsActivity;)V

    invoke-virtual {v0, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_d

    :cond_43
    const/16 v0, 0xce

    goto :goto_29

    .line 452
    :pswitch_46
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-static {}, Lcom/google/googlenav/K;->L()Z

    move-result v0

    if-eqz v0, :cond_81

    const/16 v0, 0x5ad

    :goto_57
    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-static {}, Lcom/google/googlenav/K;->L()Z

    move-result v0

    if-eqz v0, :cond_84

    const/16 v0, 0x529

    :goto_67
    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/google/googlenav/settings/I;

    invoke-direct {v2, p0}, Lcom/google/googlenav/settings/I;-><init>(Lcom/google/googlenav/settings/MapTileSettingsActivity;)V

    invoke-virtual {v0, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_d

    :cond_81
    const/16 v0, 0x5ac

    goto :goto_57

    :cond_84
    const/16 v0, 0x528

    goto :goto_67

    .line 484
    :pswitch_87
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "prefetch Info"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Clear"

    new-instance v2, Lcom/google/googlenav/settings/K;

    invoke-direct {v2, p0}, Lcom/google/googlenav/settings/K;-><init>(Lcom/google/googlenav/settings/MapTileSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_d

    .line 501
    :pswitch_b3
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 502
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Input delay,period (in minutes), e.g. \"5,10\""

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/settings/L;

    invoke-direct {v3, p0, v0}, Lcom/google/googlenav/settings/L;-><init>(Lcom/google/googlenav/settings/MapTileSettingsActivity;Landroid/widget/EditText;)V

    invoke-virtual {v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_d

    .line 435
    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_46
        :pswitch_e
        :pswitch_87
        :pswitch_b3
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 374
    iget-object v1, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 375
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->d:Z

    .line 376
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 377
    invoke-super {p0}, Lcom/google/googlenav/settings/GmmPreferenceActivity;->onPause()V

    .line 378
    return-void

    .line 376
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 382
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 383
    const-string v3, "map_tile_settings_clear_cache"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 384
    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->showDialog(I)V

    .line 430
    :cond_11
    :goto_11
    return v0

    .line 386
    :cond_12
    const-string v3, "map_tile_settings_prefetching_over_mobile_networks"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 388
    const-string v3, "map_tile_settings_use_cached_tiles_only"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 390
    const-string v3, "debug_info_settings_debug_show_prefetch_info"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 393
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v1

    .line 395
    new-instance v2, Lcom/google/googlenav/prefetch/android/u;

    invoke-static {}, Lcom/google/googlenav/prefetch/android/B;->d()Lcom/google/googlenav/prefetch/android/B;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/prefetch/android/B;->c()Ljava/util/Vector;

    move-result-object v3

    new-instance v4, Lcom/google/googlenav/settings/F;

    invoke-direct {v4, p0, v1}, Lcom/google/googlenav/settings/F;-><init>(Lcom/google/googlenav/settings/MapTileSettingsActivity;Lcom/google/googlenav/ui/v;)V

    invoke-direct {v2, v3, v4}, Lcom/google/googlenav/prefetch/android/u;-><init>(Ljava/util/List;Lcom/google/googlenav/prefetch/android/w;)V

    invoke-virtual {v2}, Lcom/google/googlenav/prefetch/android/u;->a()V

    goto :goto_11

    .line 420
    :cond_4c
    const-string v3, "debug_info_settings_debug_force_prefetch"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 421
    iget-object v2, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->g:LaD/i;

    invoke-interface {v2}, LaD/i;->b()V

    .line 422
    const-string v2, "Fire the force prefetch request successfully."

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_11

    .line 426
    :cond_63
    const-string v0, "debug_info_settings_debug_schedule_automatic_prefetch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 427
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->showDialog(I)V

    :cond_6f
    move v0, v1

    .line 430
    goto :goto_11
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 365
    invoke-super {p0}, Lcom/google/googlenav/settings/GmmPreferenceActivity;->onResume()V

    .line 366
    iget-object v1, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 367
    const/4 v0, 0x1

    :try_start_7
    iput-boolean v0, p0, Lcom/google/googlenav/settings/MapTileSettingsActivity;->d:Z

    .line 368
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_e

    .line 369
    invoke-direct {p0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->b()V

    .line 370
    return-void

    .line 368
    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method
