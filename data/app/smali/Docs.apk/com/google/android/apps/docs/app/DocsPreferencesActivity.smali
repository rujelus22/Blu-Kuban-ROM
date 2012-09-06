.class public Lcom/google/android/apps/docs/app/DocsPreferencesActivity;
.super Lcom/google/android/apps/docs/RoboPreferenceActivity;
.source "DocsPreferencesActivity.java"


# instance fields
.field public a:LFX;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LHW;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LIG;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:LIi;

.field public a:LIk;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LKR;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LQN;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LXh;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LZJ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lck;",
            ">;"
        }
    .end annotation
.end field

.field private a:Landroid/preference/CheckBoxPreference;

.field private a:Landroid/preference/ListPreference;

.field private a:Landroid/preference/Preference;

.field public a:LdQ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LeZ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Llu;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Loi;

.field public a:Loj;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:LpB;

.field private a:Z

.field private b:Landroid/preference/CheckBoxPreference;

.field private b:Landroid/preference/Preference;

.field private b:LpB;

.field private b:Z

.field private c:Landroid/preference/CheckBoxPreference;

.field private c:LpB;

.field private d:LpB;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/google/android/apps/docs/RoboPreferenceActivity;-><init>()V

    .line 74
    iput-object v1, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Landroid/preference/CheckBoxPreference;

    .line 75
    iput-object v1, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Landroid/preference/ListPreference;

    .line 76
    iput-object v1, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Landroid/preference/Preference;

    .line 77
    iput-object v1, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->b:Landroid/preference/Preference;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Z

    .line 79
    iput-object v1, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->b:Landroid/preference/CheckBoxPreference;

    .line 80
    iput-object v1, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->c:Landroid/preference/CheckBoxPreference;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->c:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Lck;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)LpB;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->c:LpB;

    return-object v0
.end method

.method private a()V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 332
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:LZJ;

    invoke-interface {v0}, LZJ;->a()LZK;

    move-result-object v2

    .line 333
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, LcY;->prefs_cache_size_choice_format_string:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 335
    invoke-interface {v2}, LZK;->a()[I

    move-result-object v4

    .line 336
    array-length v0, v4

    new-array v5, v0, [Ljava/lang/CharSequence;

    .line 337
    array-length v0, v4

    new-array v6, v0, [Ljava/lang/CharSequence;

    move v0, v1

    .line 338
    :goto_1c
    array-length v7, v4

    if-ge v0, v7, :cond_3b

    .line 339
    aget v7, v4, v0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 340
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aget v8, v4, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v0

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 343
    :cond_3b
    invoke-interface {v2}, LZK;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Landroid/preference/ListPreference;

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 345
    iget-object v1, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Landroid/preference/ListPreference;

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 346
    iget-object v1, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, LcY;->prefs_cache_size_summary_format_string:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 352
    return-void
.end method

.method private a(Ljava/lang/String;LpB;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preference should not be null: label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    new-instance v1, Les;

    invoke-direct {v1, p0, p2}, Les;-><init>(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;LpB;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 303
    return-void
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->b:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Lck;

    return-object v0
.end method

.method private b()V
    .registers 3

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:LQN;

    invoke-interface {v0}, LQN;->b()V

    .line 361
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Landroid/preference/Preference;

    sget v1, LcY;->clear_cache_cleared_message:I

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 362
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 363
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Z

    .line 356
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a(Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public static synthetic c(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Lck;

    return-object v0
.end method

.method private c()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x64

    const-wide/16 v2, 0x0

    .line 366
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:LXh;

    iget-object v1, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:LHW;

    invoke-interface {v1}, LHW;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, LXh;->a(Ljava/lang/String;)LXg;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, LXg;->a()J

    move-result-wide v4

    .line 370
    invoke-static {v4, v5}, LXR;->a(J)Ljava/lang/String;

    move-result-object v6

    .line 371
    invoke-virtual {v0}, LXg;->b()J

    move-result-wide v7

    .line 372
    invoke-static {v7, v8}, LXR;->a(J)Ljava/lang/String;

    move-result-object v9

    .line 374
    cmp-long v0, v4, v2

    if-eqz v0, :cond_6d

    .line 375
    mul-long v0, v7, v10

    div-long/2addr v0, v4

    .line 377
    :goto_27
    cmp-long v2, v0, v2

    if-ltz v2, :cond_2f

    cmp-long v2, v0, v10

    if-lez v2, :cond_51

    .line 378
    :cond_2f
    const-string v2, "DocsPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wrong quota info. Total: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Used: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_51
    iget-object v2, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->b:Landroid/preference/Preference;

    sget v3, LcY;->prefs_storage_add_summary:I

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v6, v4, v0

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 382
    return-void

    :cond_6d
    move-wide v0, v2

    goto :goto_27
.end method

.method public static synthetic d(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Lck;

    return-object v0
.end method

.method private d()V
    .registers 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Loj;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Loj;->a(Landroid/app/Activity;I)Loi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Loi;

    .line 387
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Loi;

    new-instance v1, Let;

    invoke-direct {v1, p0}, Let;-><init>(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)V

    invoke-interface {v0, v1}, Loi;->a(Lof;)LpB;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:LpB;

    .line 416
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Loi;

    new-instance v1, Lev;

    invoke-direct {v1, p0}, Lev;-><init>(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)V

    invoke-interface {v0, v1}, Loi;->a(Lof;)LpB;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->b:LpB;

    .line 435
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Loi;

    new-instance v1, Lew;

    invoke-direct {v1, p0}, Lew;-><init>(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)V

    invoke-interface {v0, v1}, Loi;->a(Lof;)LpB;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->c:LpB;

    .line 457
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Loi;

    new-instance v1, Ley;

    invoke-direct {v1, p0}, Ley;-><init>(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)V

    invoke-interface {v0, v1}, Loi;->a(Lof;)LpB;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->d:LpB;

    .line 538
    return-void
.end method

.method public static synthetic e(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Lck;

    return-object v0
.end method

.method public static synthetic f(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Lck;

    return-object v0
.end method

.method public static synthetic g(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Lck;

    return-object v0
.end method

.method public static synthetic h(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Lck;

    return-object v0
.end method

.method public static synthetic i(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Lck;

    return-object v0
.end method

.method public static synthetic j(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Lck;

    return-object v0
.end method

.method public static synthetic k(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Lck;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 129
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/RoboPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:LIk;

    invoke-interface {v0, p0}, LIk;->a(Landroid/app/Activity;)LIi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:LIi;

    .line 132
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->d()V

    .line 134
    sget v0, Ldb;->preferences:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->addPreferencesFromResource(I)V

    .line 136
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "shared_preferences.notify_newdoc"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Landroid/preference/CheckBoxPreference;

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Landroid/preference/CheckBoxPreference;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:LeZ;

    sget-object v1, LeV;->h:LeV;

    invoke-interface {v0, v1}, LeZ;->a(LeV;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 146
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 147
    const-string v0, "docs_preference_screen.notify"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 149
    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-result v0

    invoke-static {v0}, LafQ;->b(Z)V

    .line 155
    :cond_4c
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:LZJ;

    invoke-interface {v1}, LZJ;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 157
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Landroid/preference/CheckBoxPreference;

    new-instance v1, Len;

    invoke-direct {v1, p0}, Len;-><init>(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 181
    :try_start_61
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "shared_preferences.cache_size"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Landroid/preference/ListPreference;

    .line 183
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Landroid/preference/ListPreference;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a()V

    .line 187
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "clear_cache"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Landroid/preference/Preference;

    .line 188
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Landroid/preference/Preference;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Landroid/preference/ListPreference;

    new-instance v1, Leo;

    invoke-direct {v1, p0}, Leo;-><init>(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 199
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Landroid/preference/Preference;

    new-instance v1, Lep;

    invoke-direct {v1, p0}, Lep;-><init>(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_9c} :catch_10f

    .line 217
    :goto_9c
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:LeZ;

    sget-object v1, LeV;->j:LeV;

    invoke-interface {v0, v1}, LeZ;->a(LeV;)Z

    move-result v0

    .line 218
    if-nez v0, :cond_12d

    .line 219
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    const-string v3, "encryption"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 240
    :goto_b7
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:LFX;

    const-string v1, "storageUpgradeUrl"

    const-string v3, "https://accounts.google.com/AddSession?&continue=https://www.google.com/settings/storage"

    invoke-interface {v0, v1, v3}, LFX;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_177

    const/4 v0, 0x1

    :goto_ca
    iput-boolean v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->b:Z

    .line 243
    iget-boolean v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->b:Z

    if-nez v0, :cond_17a

    .line 244
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 246
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 269
    :goto_e3
    const-string v0, "about"

    iget-object v1, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:LpB;

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a(Ljava/lang/String;LpB;)V

    .line 270
    const-string v0, "legal"

    iget-object v1, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->b:LpB;

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a(Ljava/lang/String;LpB;)V

    .line 272
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "additional_filters"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 275
    iget-object v1, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:LFX;

    const-string v3, "additionalFilters"

    invoke-interface {v1, v3, v2}, LFX;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_197

    .line 276
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 281
    :goto_10e
    return-void

    .line 207
    :catch_10f
    move-exception v0

    .line 209
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "docs_preference_screen"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 211
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    const-string v3, "cache_category"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 214
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9c

    .line 222
    :cond_12d
    const-string v0, "enable_pin_encryption"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->b:Landroid/preference/CheckBoxPreference;

    .line 224
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:LZJ;

    invoke-interface {v0}, LZJ;->b()Z

    move-result v0

    .line 225
    if-nez v0, :cond_161

    .line 226
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "encryption"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 229
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    const-string v3, "streaming_decryption"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 236
    :goto_158
    const-string v0, "enable_pin_encryption"

    iget-object v1, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->d:LpB;

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a(Ljava/lang/String;LpB;)V

    goto/16 :goto_b7

    .line 232
    :cond_161
    const-string v0, "streaming_decryption"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->c:Landroid/preference/CheckBoxPreference;

    .line 234
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->c:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->b:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_158

    :cond_177
    move v0, v2

    .line 242
    goto/16 :goto_ca

    .line 248
    :cond_17a
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v3, "storage_add"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->b:Landroid/preference/Preference;

    .line 249
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->b:Landroid/preference/Preference;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->b:Landroid/preference/Preference;

    new-instance v3, Leq;

    invoke-direct {v3, p0, v1}, Leq;-><init>(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_e3

    .line 278
    :cond_197
    iget-object v1, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:LFX;

    const-string v3, "additionalFiltersDefault"

    invoke-interface {v1, v3, v2}, LFX;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto/16 :goto_10e
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 548
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 549
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Loi;

    invoke-interface {v0, p1}, Loi;->a(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 550
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Loi;

    invoke-interface {v0, p1}, Loi;->a(I)Landroid/app/Dialog;

    move-result-object v0

    .line 553
    :goto_13
    return-object v0

    :cond_14
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/RoboPreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_13
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 543
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:LIi;

    invoke-interface {v0, p1}, LIi;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-super {p0, p1}, Lcom/google/android/apps/docs/RoboPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_13
    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 322
    iget-boolean v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Z

    if-eqz v0, :cond_16

    .line 323
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:LZJ;

    invoke-interface {v0}, LZJ;->a()V

    .line 324
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:LQN;

    invoke-interface {v0}, LQN;->a()V

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Z

    .line 328
    :cond_16
    invoke-super {p0}, Lcom/google/android/apps/docs/RoboPreferenceActivity;->onPause()V

    .line 329
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 285
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/RoboPreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 288
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdL;

    .line 289
    iget-object v1, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:LIi;

    invoke-virtual {v0}, LdL;->a()I

    move-result v0

    invoke-interface {v1, v0}, LIi;->a(I)V

    .line 290
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 558
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 559
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Loi;

    invoke-interface {v0, p1}, Loi;->a(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 560
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Loi;

    invoke-interface {v0, p1, p2}, Loi;->a(ILandroid/app/Dialog;)V

    .line 565
    :goto_12
    return-void

    .line 562
    :cond_13
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/docs/RoboPreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    goto :goto_12
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 307
    invoke-super {p0}, Lcom/google/android/apps/docs/RoboPreferenceActivity;->onResume()V

    .line 308
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 309
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a(Ljava/lang/String;)V

    .line 312
    :cond_18
    iget-boolean v0, p0, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->b:Z

    if-eqz v0, :cond_1f

    .line 313
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->c()V

    .line 315
    :cond_1f
    return-void
.end method
