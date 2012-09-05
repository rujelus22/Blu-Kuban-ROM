.class public Lcom/google/googlenav/settings/LatitudeSettingsActivity;
.super Landroid/preference/PreferenceActivity;


# static fields
.field private static final a:Ljava/util/Map;


# instance fields
.field private b:Lcom/google/googlenav/ui/D;

.field private c:Landroid/preference/CheckBoxPreference;

.field private d:Landroid/preference/ListPreference;

.field private e:Landroid/preference/Preference;

.field private f:Landroid/preference/Preference;

.field private g:Landroid/preference/CheckBoxPreference;

.field private h:Landroid/preference/Preference;

.field private i:Landroid/preference/CheckBoxPreference;

.field private j:Lap/b;

.field private k:Z

.field private l:Lax/k;

.field private m:Lcom/google/googlenav/settings/q;

.field private n:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private o:Landroid/os/Handler;

.field private p:Lcom/google/googlenav/settings/o;

.field private q:Landroid/widget/Toast;

.field private r:Landroid/widget/Toast;

.field private s:Landroid/widget/Toast;

.field private t:Landroid/preference/Preference;

.field private u:Landroid/preference/Preference;

.field private v:Landroid/preference/PreferenceGroup;

.field private w:Landroid/preference/PreferenceGroup;

.field private x:Landroid/preference/CheckBoxPreference;

.field private y:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->f()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/preference/PreferenceGroup;Ljava/lang/String;IIZ)Landroid/preference/Preference;
    .registers 12

    const/4 v4, 0x0

    if-ltz p3, :cond_16

    invoke-static {p3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    :goto_7
    if-ltz p4, :cond_d

    invoke-static {p4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

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

.method private a(Landroid/preference/PreferenceGroup;Ljava/lang/String;IZ)Landroid/preference/Preference;
    .registers 11

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;IIZ)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/preference/Preference;
    .registers 8

    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setShouldDisableView(Z)V

    invoke-virtual {v0, p5}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v0, p3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;I)Landroid/preference/PreferenceGroup;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    if-ltz p2, :cond_f

    invoke-static {p2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    :cond_f
    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Lcom/google/googlenav/settings/o;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->p:Lcom/google/googlenav/settings/o;

    return-object v0
.end method

.method private a()V
    .registers 8

    const/4 v5, 0x0

    const-string v0, "background_location_reporting"

    const/16 v1, 0x53

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Ljava/lang/String;I)Landroid/preference/PreferenceGroup;

    move-result-object v1

    const-string v2, "report_location"

    const/16 v3, 0x24b

    const/16 v4, 0x24c

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;IIZ)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->c:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const-string v2, "reporting_type"

    const/16 v0, 0x24a

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d:Landroid/preference/ListPreference;

    sget-object v0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    sget-object v0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    sget-object v0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_54
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/settings/n;

    iget v5, v0, Lcom/google/googlenav/settings/n;->a:I

    iget-object v6, v0, Lcom/google/googlenav/settings/n;->b:Ljava/lang/String;

    aput-object v6, v2, v5

    iget v0, v0, Lcom/google/googlenav/settings/n;->a:I

    aput-object v1, v3, v0

    goto :goto_54

    :cond_77
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d:Landroid/preference/ListPreference;

    const/16 v1, 0x24d

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d:Landroid/preference/ListPreference;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    packed-switch p1, :pswitch_data_2c

    :goto_8
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d:Landroid/preference/ListPreference;

    new-instance v1, Lcom/google/googlenav/settings/j;

    invoke-direct {v1, p0}, Lcom/google/googlenav/settings/j;-><init>(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d:Landroid/preference/ListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_4

    :pswitch_19
    const-string v0, "automatic"

    invoke-direct {p0, v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Ljava/lang/String;)V

    goto :goto_8

    :pswitch_1f
    const-string v0, "manual"

    invoke-direct {p0, v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Ljava/lang/String;)V

    goto :goto_8

    :pswitch_25
    const-string v0, "off"

    invoke-direct {p0, v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Ljava/lang/String;)V

    goto :goto_8

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_19
        :pswitch_1f
        :pswitch_25
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/googlenav/settings/LatitudeSettingsActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/settings/LatitudeSettingsActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/settings/LatitudeSettingsActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/settings/n;

    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d:Landroid/preference/ListPreference;

    iget v2, v0, Lcom/google/googlenav/settings/n;->a:I

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d:Landroid/preference/ListPreference;

    iget-object v0, v0, Lcom/google/googlenav/settings/n;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->m:Lcom/google/googlenav/settings/q;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->q:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->m:Lcom/google/googlenav/settings/q;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/settings/q;->a(Z)V

    goto :goto_4
.end method

.method static synthetic b(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/Preference;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->f:Landroid/preference/Preference;

    return-object v0
.end method

.method private b()V
    .registers 7

    const/4 v5, 0x1

    const-string v0, "latitude"

    const/16 v1, 0x1f4

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Ljava/lang/String;I)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->m()Z

    move-result v0

    if-eqz v0, :cond_52

    const-string v2, "manage_sharing"

    const/16 v3, 0x23e

    const/16 v4, 0x23f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;IIZ)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->e:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->e:Landroid/preference/Preference;

    new-instance v2, Lcom/google/googlenav/settings/c;

    invoke-direct {v2, p0}, Lcom/google/googlenav/settings/c;-><init>(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :goto_2a
    const-string v0, "latitude_sign_out"

    const/16 v2, 0x186

    invoke-direct {p0, v1, v0, v2, v5}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;IZ)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->f:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->f:Landroid/preference/Preference;

    new-instance v2, Lcom/google/googlenav/settings/e;

    invoke-direct {v2, p0, v1}, Lcom/google/googlenav/settings/e;-><init>(Lcom/google/googlenav/settings/LatitudeSettingsActivity;Landroid/preference/PreferenceGroup;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-static {}, Lax/aa;->l()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->f:Landroid/preference/Preference;

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/login/g;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_51
    return-void

    :cond_52
    const-string v2, "manage_sharing"

    const/16 v3, 0x240

    const/16 v4, 0x241

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;IIZ)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->e:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->e:Landroid/preference/Preference;

    new-instance v2, Lcom/google/googlenav/settings/d;

    invoke-direct {v2, p0}, Lcom/google/googlenav/settings/d;-><init>(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_2a

    :cond_6a
    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->f:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_51
.end method

.method static synthetic c(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->o:Landroid/os/Handler;

    return-object v0
.end method

.method private c()V
    .registers 7

    const/4 v5, 0x0

    const-string v0, "checkins"

    const/16 v1, 0x7f

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Ljava/lang/String;I)Landroid/preference/PreferenceGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->v:Landroid/preference/PreferenceGroup;

    iget-boolean v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->k:Z

    if-eqz v0, :cond_86

    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->v:Landroid/preference/PreferenceGroup;

    const-string v2, "loading_checkins"

    const/16 v3, 0x174

    const/4 v4, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;IIZ)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->t:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->v:Landroid/preference/PreferenceGroup;

    const-string v2, "automatic_checkins"

    const/16 v3, 0x6c

    const/16 v4, 0x6d

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;IIZ)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->g:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->v:Landroid/preference/PreferenceGroup;

    const-string v2, "checkin_notifications"

    const/16 v3, 0x1fd

    const/16 v4, 0x1fe

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;IIZ)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->x:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->v:Landroid/preference/PreferenceGroup;

    const-string v2, "rating_reminders"

    const/16 v3, 0x1ff

    const/16 v4, 0x200

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;IIZ)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->y:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->v:Landroid/preference/PreferenceGroup;

    const-string v2, "manage_places"

    const/16 v3, 0x7a

    const/16 v4, 0x7b

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;IIZ)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->h:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->h:Landroid/preference/Preference;

    new-instance v1, Lcom/google/googlenav/settings/f;

    invoke-direct {v1, p0}, Lcom/google/googlenav/settings/f;-><init>(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->v:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->g:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->v:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->h:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->v:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->x:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->v:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->y:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :goto_85
    return-void

    :cond_86
    invoke-virtual {p0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->v:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_85
.end method

.method static synthetic d(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Lcom/google/googlenav/settings/q;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->m:Lcom/google/googlenav/settings/q;

    return-object v0
.end method

.method private d()V
    .registers 7

    const/4 v5, 0x0

    const-string v0, "location_history"

    const/16 v1, 0x236

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Ljava/lang/String;I)Landroid/preference/PreferenceGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->w:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->w:Landroid/preference/PreferenceGroup;

    const-string v2, "enable_location_history"

    const/16 v3, 0x237

    const/16 v4, 0x238

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;IIZ)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->i:Landroid/preference/CheckBoxPreference;

    new-instance v0, Lcom/google/googlenav/settings/g;

    invoke-direct {v0, p0}, Lcom/google/googlenav/settings/g;-><init>(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)V

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->n:Landroid/preference/Preference$OnPreferenceChangeListener;

    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->w:Landroid/preference/PreferenceGroup;

    const-string v2, "loading_location_history"

    const/16 v3, 0x174

    const/4 v4, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;IIZ)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->u:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->w:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->i:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method static synthetic e(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/ListPreference;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d:Landroid/preference/ListPreference;

    return-object v0
.end method

.method private e()Lap/b;
    .registers 4

    new-instance v0, Lap/b;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/settings/h;

    invoke-direct {v2, p0}, Lcom/google/googlenav/settings/h;-><init>(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)V

    invoke-direct {v0, v1, v2}, Lap/b;-><init>(Lap/c;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static synthetic f(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->r:Landroid/widget/Toast;

    return-object v0
.end method

.method private static f()Ljava/util/Map;
    .registers 8

    const/16 v7, 0x16d

    const/16 v6, 0x16a

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "automatic"

    new-instance v2, Lcom/google/googlenav/settings/n;

    const/4 v3, 0x0

    const/16 v4, 0x169

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/googlenav/settings/n;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "manual"

    new-instance v2, Lcom/google/googlenav/settings/n;

    const/4 v3, 0x1

    const/16 v4, 0x16f

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x170

    invoke-static {v5}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x171

    invoke-static {v6}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/googlenav/settings/n;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "off"

    new-instance v2, Lcom/google/googlenav/settings/n;

    const/4 v3, 0x2

    const/16 v4, 0x16c

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/googlenav/settings/n;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->q:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic h(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Lax/k;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->l:Lax/k;

    return-object v0
.end method

.method static synthetic i(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/PreferenceGroup;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->v:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic j(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->k:Z

    return v0
.end method

.method static synthetic k(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/Preference;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->t:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic l(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->g:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic m(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/Preference;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->h:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic n(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->x:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic o(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/Preference;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->u:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic p(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/PreferenceGroup;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->w:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic q(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->i:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic r(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/Preference$OnPreferenceChangeListener;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->n:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method static synthetic s(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->s:Landroid/widget/Toast;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/16 v4, 0x24d

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/google/googlenav/android/c;->b()Z

    move-result v0

    if-nez v0, :cond_34

    invoke-virtual {p0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_df

    const-string v2, "latitude_settings_launch"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :goto_18
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/android/maps/MapsActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/google/googlenav/android/Q;->c:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v3, "latitude_settings_launch"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->finish()V

    :cond_34
    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {p0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_4d

    const v2, 0x7f020229

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(I)V

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_4d
    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->k:Z

    invoke-virtual {p0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/c;->a(Landroid/app/Application;)Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->e()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->b:Lcom/google/googlenav/ui/D;

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aG()Lax/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->l:Lax/k;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->o:Landroid/os/Handler;

    new-instance v0, Lcom/google/googlenav/settings/k;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/google/googlenav/settings/k;-><init>(Lcom/google/googlenav/settings/LatitudeSettingsActivity;Lcom/google/googlenav/settings/c;)V

    new-instance v2, Lcom/google/googlenav/settings/q;

    iget-object v3, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->l:Lax/k;

    iget-object v4, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->o:Landroid/os/Handler;

    invoke-direct {v2, v3, v4, v0}, Lcom/google/googlenav/settings/q;-><init>(Lax/k;Landroid/os/Handler;Lcom/google/googlenav/settings/A;)V

    iput-object v2, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->m:Lcom/google/googlenav/settings/q;

    new-instance v0, Lcom/google/googlenav/settings/o;

    iget-object v2, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/D;->p()Lax/bD;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/google/googlenav/settings/o;-><init>(Lcom/google/googlenav/settings/LatitudeSettingsActivity;Lax/bD;)V

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->p:Lcom/google/googlenav/settings/o;

    const/16 v0, 0x14e

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->q:Landroid/widget/Toast;

    const/16 v0, 0x14d

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->r:Landroid/widget/Toast;

    const/16 v0, 0x426

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->s:Landroid/widget/Toast;

    invoke-direct {p0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a()V

    invoke-direct {p0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->b()V

    invoke-direct {p0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->c()V

    invoke-direct {p0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d()V

    invoke-direct {p0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->e()Lap/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->j:Lap/b;

    iget-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->j:Lap/b;

    invoke-virtual {v0}, Lap/b;->g()V

    return-void

    :cond_df
    move v0, v1

    goto/16 :goto_18
.end method

.method protected onDestroy()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->b:Lcom/google/googlenav/ui/D;

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->r:Landroid/widget/Toast;

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->s:Landroid/widget/Toast;

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->m:Lcom/google/googlenav/settings/q;

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d:Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->l:Lax/k;

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->i:Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->v:Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->p:Lcom/google/googlenav/settings/o;

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method
