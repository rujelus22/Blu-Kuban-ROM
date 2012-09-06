.class public Lcom/google/googlenav/settings/LatitudeSettingsActivity;
.super Lcom/google/googlenav/settings/GmmPreferenceActivity;
.source "SourceFile"


# static fields
.field private static final b:Ljava/util/Map;


# instance fields
.field private A:Landroid/preference/CheckBoxPreference;

.field private c:Landroid/preference/CheckBoxPreference;

.field private d:Landroid/preference/ListPreference;

.field private e:Landroid/preference/Preference;

.field private f:Landroid/preference/CheckBoxPreference;

.field private g:Landroid/preference/Preference;

.field private h:Landroid/preference/CheckBoxPreference;

.field private i:Landroid/preference/CheckBoxPreference;

.field private j:Z

.field private k:Lcom/google/googlenav/friend/j;

.field private l:Lcom/google/googlenav/settings/s;

.field private m:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private n:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private o:Landroid/os/Handler;

.field private p:Lcom/google/googlenav/settings/q;

.field private q:Landroid/widget/Toast;

.field private r:Landroid/widget/Toast;

.field private s:Landroid/widget/Toast;

.field private t:Landroid/preference/Preference;

.field private u:Landroid/preference/Preference;

.field private v:Landroid/preference/Preference;

.field private w:Landroid/preference/PreferenceGroup;

.field private x:Landroid/preference/PreferenceGroup;

.field private y:Landroid/preference/PreferenceGroup;

.field private z:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 99
    invoke-static {}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->f()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/googlenav/settings/GmmPreferenceActivity;-><init>()V

    .line 908
    return-void
.end method

.method private a(Landroid/preference/PreferenceGroup;Ljava/lang/String;IIZ)Landroid/preference/Preference;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 458
    if-ltz p3, :cond_16

    invoke-static {p3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    :goto_7
    if-ltz p4, :cond_d

    invoke-static {p4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    :cond_d
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/preference/Preference;

    move-result-object v0

    return-object v0

    :cond_16
    move-object v3, v4

    goto :goto_7
.end method

.method private a(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/preference/Preference;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 476
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 478
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setShouldDisableView(Z)V

    .line 479
    invoke-virtual {v0, p5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 480
    invoke-virtual {v0, p3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 481
    invoke-virtual {v0, p4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 482
    return-object v0
.end method

.method private a(Ljava/lang/String;I)Landroid/preference/PreferenceGroup;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 492
    invoke-virtual {p0, p1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 493
    if-ltz p2, :cond_f

    .line 494
    invoke-static {p2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 496
    :cond_f
    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Lcom/google/googlenav/settings/q;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->p:Lcom/google/googlenav/settings/q;

    return-object v0
.end method

.method private a(I)V
    .registers 4
    .parameter

    .prologue
    .line 526
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d:Landroid/preference/ListPreference;

    if-nez v0, :cond_5

    .line 567
    :goto_4
    return-void

    .line 531
    :cond_5
    packed-switch p1, :pswitch_data_28

    .line 540
    const-string v0, "off"

    .line 543
    :goto_a
    invoke-direct {p0, v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Ljava/lang/String;)V

    .line 544
    invoke-direct {p0, v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->b(Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d:Landroid/preference/ListPreference;

    new-instance v1, Lcom/google/googlenav/settings/k;

    invoke-direct {v1, p0}, Lcom/google/googlenav/settings/k;-><init>(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 566
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d:Landroid/preference/ListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_4

    .line 533
    :pswitch_21
    const-string v0, "automatic"

    goto :goto_a

    .line 536
    :pswitch_24
    const-string v0, "manual"

    goto :goto_a

    .line 531
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_21
        :pswitch_24
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/googlenav/settings/LatitudeSettingsActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/settings/LatitudeSettingsActivity;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/settings/LatitudeSettingsActivity;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 506
    sget-object v0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/settings/p;

    .line 507
    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d:Landroid/preference/ListPreference;

    iget v2, v0, Lcom/google/googlenav/settings/p;->a:I

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 508
    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d:Landroid/preference/ListPreference;

    iget-object v0, v0, Lcom/google/googlenav/settings/p;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 509
    return-void
.end method

.method private a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 570
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->l:Lcom/google/googlenav/settings/s;

    if-nez v0, :cond_5

    .line 575
    :goto_4
    return-void

    .line 573
    :cond_5
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->q:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 574
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->l:Lcom/google/googlenav/settings/s;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/settings/s;->a(Z)V

    goto :goto_4
.end method

.method static synthetic b(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/ListPreference;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d:Landroid/preference/ListPreference;

    return-object v0
.end method

.method private b()V
    .registers 12

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 284
    const-string v0, "location_reporting"

    const/16 v1, 0x56

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Ljava/lang/String;I)Landroid/preference/PreferenceGroup;

    move-result-object v1

    .line 288
    const-string v2, "reporting_type"

    const/16 v0, 0x2a1

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v10, [Ljava/lang/String;

    const-string v6, ""

    aput-object v6, v3, v5

    invoke-static {v0, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d:Landroid/preference/ListPreference;

    .line 294
    sget-object v0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 295
    sget-object v0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    .line 296
    sget-object v0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_40
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 297
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 298
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/settings/p;

    .line 299
    iget v7, v0, Lcom/google/googlenav/settings/p;->a:I

    iget-object v8, v0, Lcom/google/googlenav/settings/p;->b:Ljava/lang/String;

    aput-object v8, v3, v7

    .line 300
    iget v0, v0, Lcom/google/googlenav/settings/p;->a:I

    aput-object v2, v5, v0

    goto :goto_40

    .line 302
    :cond_63
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d:Landroid/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d:Landroid/preference/ListPreference;

    const/16 v2, 0x2a4

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 306
    const-string v7, "enable_reporting"

    const/16 v8, 0x2a2

    const/16 v9, 0x2a3

    move-object v5, p0

    move-object v6, v1

    invoke-direct/range {v5 .. v10}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;IIZ)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->c:Landroid/preference/CheckBoxPreference;

    .line 311
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->c:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/google/googlenav/friend/au;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 313
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->c:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/google/googlenav/settings/o;

    invoke-direct {v1, p0, v4}, Lcom/google/googlenav/settings/o;-><init>(Lcom/google/googlenav/settings/LatitudeSettingsActivity;Lcom/google/googlenav/settings/g;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 315
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/settings/LatitudeSettingsActivity;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->c:Landroid/preference/CheckBoxPreference;

    const-string v1, "automatic"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 517
    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->r:Landroid/widget/Toast;

    return-object v0
.end method

.method private c()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 321
    const-string v0, "location_sharing"

    const/16 v1, 0x225

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Ljava/lang/String;I)Landroid/preference/PreferenceGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->w:Landroid/preference/PreferenceGroup;

    .line 324
    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->w:Landroid/preference/PreferenceGroup;

    const-string v2, "enable_location_sharing"

    const/16 v3, 0x2a5

    const/16 v4, 0x2a6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;IIZ)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->i:Landroid/preference/CheckBoxPreference;

    .line 329
    new-instance v0, Lcom/google/googlenav/settings/g;

    invoke-direct {v0, p0}, Lcom/google/googlenav/settings/g;-><init>(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)V

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->n:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 341
    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->w:Landroid/preference/PreferenceGroup;

    const-string v2, "loading_location_sharing"

    const/16 v3, 0x18e

    const/4 v4, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;IIZ)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->v:Landroid/preference/Preference;

    .line 344
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->w:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->i:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 346
    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->w:Landroid/preference/PreferenceGroup;

    const-string v2, "manage_location_sharing"

    const/16 v3, 0x297

    const/16 v4, 0x298

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;IIZ)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->e:Landroid/preference/Preference;

    .line 350
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->e:Landroid/preference/Preference;

    new-instance v1, Lcom/google/googlenav/settings/h;

    invoke-direct {v1, p0}, Lcom/google/googlenav/settings/h;-><init>(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 360
    return-void
.end method

.method static synthetic d(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->q:Landroid/widget/Toast;

    return-object v0
.end method

.method private d()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 367
    const-string v0, "checkins"

    const/16 v1, 0x89

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Ljava/lang/String;I)Landroid/preference/PreferenceGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->x:Landroid/preference/PreferenceGroup;

    .line 370
    iget-boolean v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->j:Z

    if-eqz v0, :cond_86

    .line 371
    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->x:Landroid/preference/PreferenceGroup;

    const-string v2, "loading_checkins"

    const/16 v3, 0x18e

    const/4 v4, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;IIZ)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->t:Landroid/preference/Preference;

    .line 374
    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->x:Landroid/preference/PreferenceGroup;

    const-string v2, "automatic_checkins"

    const/16 v3, 0x76

    const/16 v4, 0x77

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;IIZ)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->f:Landroid/preference/CheckBoxPreference;

    .line 379
    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->x:Landroid/preference/PreferenceGroup;

    const-string v2, "checkin_notifications"

    const/16 v3, 0x22e

    const/16 v4, 0x22f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;IIZ)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->z:Landroid/preference/CheckBoxPreference;

    .line 384
    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->x:Landroid/preference/PreferenceGroup;

    const-string v2, "rating_reminders"

    const/16 v3, 0x230

    const/16 v4, 0x231

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;IIZ)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->A:Landroid/preference/CheckBoxPreference;

    .line 389
    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->x:Landroid/preference/PreferenceGroup;

    const-string v2, "manage_places"

    const/16 v3, 0x84

    const/16 v4, 0x85

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;IIZ)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->g:Landroid/preference/Preference;

    .line 392
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->g:Landroid/preference/Preference;

    new-instance v1, Lcom/google/googlenav/settings/i;

    invoke-direct {v1, p0}, Lcom/google/googlenav/settings/i;-><init>(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 403
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->x:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->f:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 404
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->x:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->g:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 405
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->x:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->z:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 406
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->x:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->A:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 410
    :goto_85
    return-void

    .line 408
    :cond_86
    invoke-virtual {p0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->x:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_85
.end method

.method static synthetic e(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->i:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private e()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 417
    const-string v0, "location_history"

    const/16 v1, 0x26f

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Ljava/lang/String;I)Landroid/preference/PreferenceGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->y:Landroid/preference/PreferenceGroup;

    .line 420
    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->y:Landroid/preference/PreferenceGroup;

    const-string v2, "enable_location_history"

    const/16 v3, 0x276

    const/16 v4, 0x277

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;IIZ)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->h:Landroid/preference/CheckBoxPreference;

    .line 426
    new-instance v0, Lcom/google/googlenav/settings/j;

    invoke-direct {v0, p0}, Lcom/google/googlenav/settings/j;-><init>(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)V

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->m:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 438
    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->y:Landroid/preference/PreferenceGroup;

    const-string v2, "loading_location_history"

    const/16 v3, 0x18e

    const/4 v4, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;IIZ)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->u:Landroid/preference/Preference;

    .line 441
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->y:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->h:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 442
    return-void
.end method

.method static synthetic f(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Lcom/google/googlenav/friend/j;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->k:Lcom/google/googlenav/friend/j;

    return-object v0
.end method

.method private static f()Ljava/util/Map;
    .registers 8

    .prologue
    const/16 v7, 0x187

    const/16 v6, 0x184

    .line 933
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 934
    const-string v1, "automatic"

    new-instance v2, Lcom/google/googlenav/settings/p;

    const/4 v3, 0x0

    const/16 v4, 0x183

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/googlenav/settings/p;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    const-string v1, "manual"

    new-instance v2, Lcom/google/googlenav/settings/p;

    const/4 v3, 0x1

    const/16 v4, 0x189

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x18a

    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x18b

    invoke-static {v6}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/googlenav/settings/p;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    const-string v1, "off"

    new-instance v2, Lcom/google/googlenav/settings/p;

    const/4 v3, 0x2

    const/16 v4, 0x186

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/googlenav/settings/p;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Lcom/google/googlenav/settings/s;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->l:Lcom/google/googlenav/settings/s;

    return-object v0
.end method

.method static synthetic h(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/PreferenceGroup;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->x:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic i(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->j:Z

    return v0
.end method

.method static synthetic j(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/Preference;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->t:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic k(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->f:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic l(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/Preference;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->g:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic m(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->z:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic n(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/Preference;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->u:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic o(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/PreferenceGroup;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->y:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic p(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->h:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic q(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/Preference$OnPreferenceChangeListener;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->m:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method static synthetic r(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/Preference;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->v:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic s(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/PreferenceGroup;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->w:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic t(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/Preference$OnPreferenceChangeListener;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->n:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method static synthetic u(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->s:Landroid/widget/Toast;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    .prologue
    .line 261
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->setResult(I)V

    .line 262
    invoke-super {p0}, Lcom/google/googlenav/settings/GmmPreferenceActivity;->onBackPressed()V

    .line 263
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter

    .prologue
    const/16 v2, 0x2a4

    const/4 v5, 0x0

    .line 206
    invoke-super {p0, p1}, Lcom/google/googlenav/settings/GmmPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 208
    invoke-virtual {p0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 255
    :goto_c
    return-void

    .line 212
    :cond_d
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 213
    invoke-virtual {p0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_26

    .line 216
    const v1, 0x7f02027f

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 217
    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 221
    :cond_26
    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 222
    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->addPreferencesFromResource(I)V

    .line 227
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->j:Z

    .line 228
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->av()Lcom/google/googlenav/friend/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->k:Lcom/google/googlenav/friend/j;

    .line 229
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->o:Landroid/os/Handler;

    .line 230
    new-instance v0, Lcom/google/googlenav/settings/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/settings/l;-><init>(Lcom/google/googlenav/settings/LatitudeSettingsActivity;Lcom/google/googlenav/settings/g;)V

    .line 231
    new-instance v1, Lcom/google/googlenav/friend/reporting/f;

    invoke-virtual {p0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/friend/reporting/u;->a(Landroid/content/Context;)Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/googlenav/friend/reporting/f;-><init>(Ljavax/crypto/SecretKey;)V

    .line 233
    invoke-static {p0, v1}, Lcom/google/googlenav/friend/reporting/s;->a(Landroid/content/Context;Lcom/google/googlenav/friend/reporting/f;)Lcom/google/googlenav/friend/reporting/s;

    move-result-object v1

    .line 235
    new-instance v2, Lcom/google/googlenav/settings/s;

    iget-object v3, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->k:Lcom/google/googlenav/friend/j;

    iget-object v4, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->o:Landroid/os/Handler;

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/google/googlenav/settings/s;-><init>(Lcom/google/googlenav/friend/j;Landroid/os/Handler;Lcom/google/googlenav/friend/reporting/s;Lcom/google/googlenav/settings/B;)V

    iput-object v2, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->l:Lcom/google/googlenav/settings/s;

    .line 239
    new-instance v0, Lcom/google/googlenav/settings/q;

    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->r()Lcom/google/googlenav/friend/ai;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/settings/q;-><init>(Lcom/google/googlenav/settings/LatitudeSettingsActivity;Lcom/google/googlenav/friend/ai;)V

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->p:Lcom/google/googlenav/settings/q;

    .line 241
    const/16 v0, 0x167

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->q:Landroid/widget/Toast;

    .line 244
    const/16 v0, 0x166

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->r:Landroid/widget/Toast;

    .line 246
    const/16 v0, 0x513

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->s:Landroid/widget/Toast;

    .line 249
    invoke-direct {p0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->b()V

    .line 250
    invoke-direct {p0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->c()V

    .line 251
    invoke-direct {p0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d()V

    .line 252
    invoke-direct {p0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->e()V

    .line 254
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->l:Lcom/google/googlenav/settings/s;

    invoke-virtual {v0}, Lcom/google/googlenav/settings/s;->a()V

    goto/16 :goto_c
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 267
    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a:Lcom/google/googlenav/ui/v;

    .line 268
    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->r:Landroid/widget/Toast;

    .line 269
    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->s:Landroid/widget/Toast;

    .line 270
    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->l:Lcom/google/googlenav/settings/s;

    .line 271
    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d:Landroid/preference/ListPreference;

    .line 272
    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->k:Lcom/google/googlenav/friend/j;

    .line 273
    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->h:Landroid/preference/CheckBoxPreference;

    .line 274
    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->x:Landroid/preference/PreferenceGroup;

    .line 275
    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->p:Lcom/google/googlenav/settings/q;

    .line 276
    invoke-super {p0}, Lcom/google/googlenav/settings/GmmPreferenceActivity;->onDestroy()V

    .line 277
    return-void
.end method
