.class public Lcom/anddoes/launcher/preference/PreferencesActivity;
.super Landroid/preference/PreferenceActivity;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:Lcom/anddoes/launcher/preference/h;

.field private f:Lcom/anddoes/launcher/preference/b;

.field private g:Z

.field private h:Lcom/anddoes/launcher/LauncherApplication;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->b:Ljava/lang/String;

    .line 84
    iput v1, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->c:I

    .line 85
    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->d:Z

    .line 87
    iput-object v2, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->f:Lcom/anddoes/launcher/preference/b;

    .line 88
    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->g:Z

    .line 90
    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->i:Z

    .line 95
    iput-object v2, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->l:Ljava/lang/String;

    .line 96
    iput-object v2, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->m:Ljava/lang/String;

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/preference/PreferencesActivity;)Lcom/anddoes/launcher/preference/b;
    .registers 2
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->f:Lcom/anddoes/launcher/preference/b;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 1150
    const v0, 0x7f060010

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1152
    const-string v1, "0 x"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1153
    const-string v1, "0 x"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1155
    :cond_28
    const-string v1, "x 0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 1156
    const-string v1, "x 0"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "x "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1158
    :cond_45
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x7f060014

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 227
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 228
    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 229
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 230
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 231
    const v1, 0x7f06000e

    .line 232
    new-instance v2, Lcom/anddoes/launcher/preference/i;

    invoke-direct {v2, p0}, Lcom/anddoes/launcher/preference/i;-><init>(Lcom/anddoes/launcher/preference/PreferencesActivity;)V

    .line 231
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 237
    const v1, 0x7f06000f

    .line 238
    new-instance v2, Lcom/anddoes/launcher/preference/z;

    invoke-direct {v2, p0}, Lcom/anddoes/launcher/preference/z;-><init>(Lcom/anddoes/launcher/preference/PreferencesActivity;)V

    .line 237
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 243
    return-void
.end method

.method private a(Landroid/preference/Preference;)V
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x5

    .line 581
    iget-boolean v1, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->i:Z

    if-nez v1, :cond_2b

    .line 582
    if-eqz p1, :cond_2b

    instance-of v1, p1, Landroid/preference/ListPreference;

    if-eqz v1, :cond_2b

    .line 583
    check-cast p1, Landroid/preference/ListPreference;

    .line 584
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 585
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 586
    array-length v1, v2

    if-le v1, v6, :cond_2b

    array-length v1, v3

    if-le v1, v6, :cond_2b

    .line 587
    new-array v4, v6, [Ljava/lang/CharSequence;

    move v1, v0

    .line 588
    :goto_1f
    if-lt v1, v6, :cond_2c

    .line 591
    invoke-virtual {p1, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 592
    new-array v1, v6, [Ljava/lang/CharSequence;

    .line 593
    :goto_26
    if-lt v0, v6, :cond_33

    .line 596
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 600
    :cond_2b
    return-void

    .line 589
    :cond_2c
    aget-object v5, v2, v1

    aput-object v5, v4, v1

    .line 588
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 594
    :cond_33
    aget-object v2, v3, v0

    aput-object v2, v1, v0

    .line 593
    add-int/lit8 v0, v0, 0x1

    goto :goto_26
.end method

.method private a(Landroid/preference/PreferenceManager;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1429
    invoke-virtual {p0, p2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1430
    if-eqz v0, :cond_d

    .line 1431
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1433
    :cond_d
    return-void
.end method

.method private a(Landroid/preference/PreferenceManager;II)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1419
    invoke-virtual {p0, p2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 1420
    if-eqz v0, :cond_19

    .line 1421
    invoke-virtual {p0, p3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 1422
    if-eqz v1, :cond_19

    .line 1423
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1426
    :cond_19
    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/preference/PreferencesActivity;Landroid/preference/PreferenceManager;Landroid/preference/Preference;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1030
    iget-boolean v2, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->d:Z

    if-nez v2, :cond_128

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_128

    instance-of v3, p2, Landroid/preference/ListPreference;

    if-eqz v3, :cond_129

    invoke-static {p2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Landroid/preference/Preference;)V

    :cond_13
    :goto_13
    const v3, 0x7f0601ce

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_124

    const v3, 0x7f0601d5

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_124

    const v3, 0x7f0601d6

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_124

    const v3, 0x7f0601e2

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_124

    const v3, 0x7f0601e3

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_124

    const v3, 0x7f0601e6

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_124

    const v3, 0x7f0601ec

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_124

    const v3, 0x7f0601ef

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_124

    const v3, 0x7f0601f6

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_124

    const v3, 0x7f060202

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_124

    const v3, 0x7f060203

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_124

    const v3, 0x7f060204

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_124

    const v3, 0x7f060205

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_124

    const v3, 0x7f060206

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_124

    const v3, 0x7f060207

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_124

    const v3, 0x7f06020f

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_124

    const v3, 0x7f060210

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_124

    const v3, 0x7f060212

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_124

    const v3, 0x7f060213

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_124

    const v3, 0x7f060239

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_124

    const v3, 0x7f06023d

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_132

    :cond_124
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->h:Lcom/anddoes/launcher/LauncherApplication;

    iput-boolean v1, v0, Lcom/anddoes/launcher/LauncherApplication;->f:Z

    :cond_128
    :goto_128
    return-void

    :cond_129
    instance-of v3, p2, Lcom/anddoes/launcher/preference/NumberPickerPreference;

    if-eqz v3, :cond_13

    invoke-direct {p0, p2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->c(Landroid/preference/Preference;)V

    goto/16 :goto_13

    :cond_132
    const v3, 0x7f0601cf

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_151

    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->h:Lcom/anddoes/launcher/LauncherApplication;

    iput-boolean v1, v0, Lcom/anddoes/launcher/LauncherApplication;->f:Z

    goto :goto_128

    :cond_151
    const v3, 0x7f0601d2

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_170

    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->h:Lcom/anddoes/launcher/LauncherApplication;

    iput-boolean v1, v0, Lcom/anddoes/launcher/LauncherApplication;->f:Z

    goto :goto_128

    :cond_170
    const v3, 0x7f0601d7

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19a

    const v0, 0x7f0601d9

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_128

    iget-object v1, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_128

    :cond_19a
    const v3, 0x7f0601ed

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b0

    invoke-direct {p0, p1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->o(Landroid/preference/PreferenceManager;)V

    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->h:Lcom/anddoes/launcher/LauncherApplication;

    iput-boolean v1, v0, Lcom/anddoes/launcher/LauncherApplication;->f:Z

    goto/16 :goto_128

    :cond_1b0
    const v3, 0x7f0601f7

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d7

    const v3, 0x7f0601f8

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d7

    const v3, 0x7f0601f9

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_234

    :cond_1d7
    iget-boolean v3, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->g:Z

    if-nez v3, :cond_128

    check-cast p2, Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v3}, Lcom/anddoes/launcher/preference/h;->M()Z

    move-result v3

    iget-object v4, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v4}, Lcom/anddoes/launcher/preference/h;->N()Z

    move-result v4

    iget-object v5, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v5}, Lcom/anddoes/launcher/preference/h;->O()Z

    move-result v5

    if-nez v3, :cond_232

    if-nez v4, :cond_232

    if-nez v5, :cond_232

    iput-boolean v1, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->g:Z

    iget-object v3, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v3, v2, v1}, Lcom/anddoes/launcher/preference/h;->b(Ljava/lang/String;Z)V

    invoke-virtual {p2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->g:Z

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x108009b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f060005

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0600aa

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f060007

    new-instance v4, Lcom/anddoes/launcher/preference/y;

    invoke-direct {v4, p0}, Lcom/anddoes/launcher/preference/y;-><init>(Lcom/anddoes/launcher/preference/PreferencesActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_22a
    if-eqz v0, :cond_128

    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->h:Lcom/anddoes/launcher/LauncherApplication;

    iput-boolean v1, v0, Lcom/anddoes/launcher/LauncherApplication;->f:Z

    goto/16 :goto_128

    :cond_232
    move v0, v1

    goto :goto_22a

    :cond_234
    const v0, 0x7f06020c

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24a

    invoke-direct {p0, p1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->p(Landroid/preference/PreferenceManager;)V

    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->h:Lcom/anddoes/launcher/LauncherApplication;

    iput-boolean v1, v0, Lcom/anddoes/launcher/LauncherApplication;->f:Z

    goto/16 :goto_128

    :cond_24a
    const v0, 0x7f06023c

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_266

    const v0, 0x7f06015a

    const v2, 0x7f06015b

    invoke-direct {p0, v0, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(II)V

    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->h:Lcom/anddoes/launcher/LauncherApplication;

    iput-boolean v1, v0, Lcom/anddoes/launcher/LauncherApplication;->f:Z

    goto/16 :goto_128

    :cond_266
    const v0, 0x7f06023f

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    iget-object v1, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->ba()Z

    move-result v1

    const-string v2, "acra.enable"

    invoke-virtual {v0, v2, v1}, Lcom/anddoes/launcher/preference/h;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    iget-object v1, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->ba()Z

    move-result v1

    const-string v2, "enable_analytics"

    invoke-virtual {v0, v2, v1}, Lcom/anddoes/launcher/preference/h;->b(Ljava/lang/String;Z)V

    goto/16 :goto_128
.end method

.method static synthetic a(Lcom/anddoes/launcher/preference/PreferencesActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 501
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/anddoes/launcher/AppPickerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/anddoes/launcher/AppPickerActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/anddoes/launcher/AppPickerActivity;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v2, p1, p2}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/preference/PreferencesActivity;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->d:Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 534
    iput-object p1, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->j:Ljava/lang/String;

    .line 535
    iput-object p2, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->k:Ljava/lang/String;

    .line 536
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 538
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 539
    const v2, 0x7f06016a

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 542
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 543
    const v2, 0x7f02003b

    invoke-static {p0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 546
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 547
    const-string v2, "android.intent.extra.INTENT"

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 548
    const-string v2, "android.intent.extra.TITLE"

    const v3, 0x7f060268

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 549
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 550
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 551
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 510
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/anddoes/launcher/AppPickerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 512
    iget-object v1, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1, p2, v4}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 513
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 514
    iput-object p2, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->l:Ljava/lang/String;

    .line 515
    iput-object p3, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->m:Ljava/lang/String;

    .line 518
    :cond_18
    sget-object v2, Lcom/anddoes/launcher/AppPickerActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    sget-object v2, Lcom/anddoes/launcher/AppPickerActivity;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v3, p1, v4}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    sget-object v2, Lcom/anddoes/launcher/AppPickerActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    sget-object v1, Lcom/anddoes/launcher/AppPickerActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v2, p3, v4}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    sget-object v1, Lcom/anddoes/launcher/AppPickerActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    sget-object v1, Lcom/anddoes/launcher/AppPickerActivity;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v2, p4, v4}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    sget-object v1, Lcom/anddoes/launcher/AppPickerActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    sget-object v1, Lcom/anddoes/launcher/AppPickerActivity;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v2, p5, v4}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 531
    return-void
.end method

.method private a(Z)V
    .registers 8
    .parameter

    .prologue
    .line 554
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->bb()Ljava/lang/String;

    move-result-object v4

    .line 555
    if-nez p1, :cond_24

    const-string v0, "NEVER"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    .line 556
    const-string v1, "last_check_update"

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/preference/h;->d(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_40

    .line 558
    :cond_24
    :try_start_24
    new-instance v0, Lcom/anddoes/launcher/bb;

    iget v2, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->c:I

    iget-object v3, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->b:Ljava/lang/String;

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/bb;-><init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/bb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 559
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "last_check_update"

    invoke-virtual {v0, v3, v1, v2}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;J)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_40} :catch_41

    .line 564
    :cond_40
    :goto_40
    return-void

    :catch_41
    move-exception v0

    goto :goto_40
.end method

.method static synthetic b(Lcom/anddoes/launcher/preference/PreferencesActivity;)Lcom/anddoes/launcher/preference/h;
    .registers 2
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    return-object v0
.end method

.method private static b(Landroid/preference/Preference;)V
    .registers 2
    .parameter

    .prologue
    .line 1404
    instance-of v0, p0, Landroid/preference/ListPreference;

    if-eqz v0, :cond_e

    move-object v0, p0

    .line 1405
    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1407
    :cond_e
    return-void
.end method

.method public static c()V
    .registers 0

    .prologue
    .line 639
    return-void
.end method

.method private c(Landroid/preference/Preference;)V
    .registers 4
    .parameter

    .prologue
    .line 1411
    instance-of v0, p1, Lcom/anddoes/launcher/preference/NumberPickerPreference;

    if-eqz v0, :cond_30

    .line 1412
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x7f060014

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p1

    .line 1413
    check-cast v0, Lcom/anddoes/launcher/preference/NumberPickerPreference;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/NumberPickerPreference;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1412
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1415
    :cond_30
    return-void
.end method

.method static synthetic c(Lcom/anddoes/launcher/preference/PreferencesActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->i:Z

    return v0
.end method

.method public static d()V
    .registers 0

    .prologue
    .line 1397
    return-void
.end method

.method static synthetic d(Lcom/anddoes/launcher/preference/PreferencesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 553
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Z)V

    return-void
.end method

.method private e()V
    .registers 2

    .prologue
    .line 118
    invoke-static {p0}, Lcom/anddoes/launcher/a/e;->a(Landroid/content/Context;)Lcom/anddoes/launcher/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/a/e;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->i:Z

    .line 119
    return-void
.end method

.method private o(Landroid/preference/PreferenceManager;)V
    .registers 5
    .parameter

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->D()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HORIZONTAL_PAGINATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1185
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->D()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VERTICAL_PAGINATED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1186
    if-nez v1, :cond_6e

    if-nez v0, :cond_6e

    const/4 v0, 0x0

    .line 1187
    :goto_1d
    const v2, 0x7f0601f0

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 1188
    if-eqz v2, :cond_2d

    .line 1189
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1191
    :cond_2d
    const v2, 0x7f0601f1

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 1192
    if-eqz v2, :cond_3d

    .line 1193
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1195
    :cond_3d
    const v2, 0x7f0601f2

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 1196
    if-eqz v2, :cond_4d

    .line 1197
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1199
    :cond_4d
    const v2, 0x7f0601f3

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 1200
    if-eqz v2, :cond_5d

    .line 1201
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1203
    :cond_5d
    const v1, 0x7f0601f6

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 1204
    if-eqz v1, :cond_6d

    .line 1205
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1207
    :cond_6d
    return-void

    .line 1186
    :cond_6e
    const/4 v0, 0x1

    goto :goto_1d
.end method

.method private p(Landroid/preference/PreferenceManager;)V
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1218
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->af()Z

    move-result v3

    .line 1219
    const v0, 0x7f060203

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 1220
    if-eqz v4, :cond_1b

    .line 1221
    if-eqz v3, :cond_c6

    move v0, v1

    :goto_18
    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1223
    :cond_1b
    const v0, 0x7f060204

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 1224
    if-eqz v4, :cond_2e

    .line 1225
    if-eqz v3, :cond_c9

    move v0, v1

    :goto_2b
    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1227
    :cond_2e
    const v0, 0x7f060205

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 1228
    if-eqz v4, :cond_41

    .line 1229
    if-eqz v3, :cond_cc

    move v0, v1

    :goto_3e
    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1231
    :cond_41
    const v0, 0x7f060206

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 1232
    if-eqz v4, :cond_54

    .line 1233
    if-eqz v3, :cond_cf

    move v0, v1

    :goto_51
    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1235
    :cond_54
    const v0, 0x7f060207

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 1236
    if-eqz v4, :cond_67

    .line 1237
    if-eqz v3, :cond_d1

    move v0, v1

    :goto_64
    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1239
    :cond_67
    const v0, 0x7f060208

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 1240
    if-eqz v4, :cond_7a

    .line 1241
    if-eqz v3, :cond_d3

    move v0, v1

    :goto_77
    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1243
    :cond_7a
    const v0, 0x7f060209

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 1244
    if-eqz v4, :cond_8d

    .line 1245
    if-eqz v3, :cond_d5

    move v0, v1

    :goto_8a
    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1247
    :cond_8d
    const v0, 0x7f06020a

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 1248
    if-eqz v4, :cond_a0

    .line 1249
    if-eqz v3, :cond_d7

    move v0, v1

    :goto_9d
    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1251
    :cond_a0
    const v0, 0x7f06020b

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 1252
    if-eqz v4, :cond_b3

    .line 1253
    if-eqz v3, :cond_d9

    move v0, v1

    :goto_b0
    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1255
    :cond_b3
    const v0, 0x7f06020d

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1256
    if-eqz v0, :cond_c5

    .line 1257
    if-eqz v3, :cond_db

    :goto_c2
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1259
    :cond_c5
    return-void

    :cond_c6
    move v0, v2

    .line 1221
    goto/16 :goto_18

    :cond_c9
    move v0, v2

    .line 1225
    goto/16 :goto_2b

    :cond_cc
    move v0, v2

    .line 1229
    goto/16 :goto_3e

    :cond_cf
    move v0, v2

    .line 1233
    goto :goto_51

    :cond_d1
    move v0, v2

    .line 1237
    goto :goto_64

    :cond_d3
    move v0, v2

    .line 1241
    goto :goto_77

    :cond_d5
    move v0, v2

    .line 1245
    goto :goto_8a

    :cond_d7
    move v0, v2

    .line 1249
    goto :goto_9d

    :cond_d9
    move v0, v2

    .line 1253
    goto :goto_b0

    :cond_db
    move v1, v2

    .line 1257
    goto :goto_c2
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 262
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->showDialog(I)V

    .line 263
    return-void
.end method

.method public final a(Landroid/preference/PreferenceManager;)V
    .registers 6
    .parameter

    .prologue
    .line 567
    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 568
    const v0, 0x7f0601e1

    const v1, 0x7f0601e4

    invoke-direct {p0, p1, v0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Landroid/preference/PreferenceManager;II)V

    .line 570
    :cond_f
    const v0, 0x7f0601cc

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 571
    if-eqz v0, :cond_32

    .line 572
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/anddoes/launcher/Launcher;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 573
    const-string v2, "com.anddoes.launcher.ACTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    const-string v2, "LAUNCHER_ACTION"

    const-string v3, "MANAGE_SCREENS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 577
    :cond_32
    const v0, 0x7f0601db

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Landroid/preference/Preference;)V

    .line 578
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 267
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->dismissDialog(I)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_4} :catch_5

    .line 271
    :goto_4
    return-void

    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method public final b(Landroid/preference/PreferenceManager;)V
    .registers 4
    .parameter

    .prologue
    .line 603
    const v0, 0x7f0601e8

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 604
    if-eqz v0, :cond_15

    .line 605
    new-instance v1, Lcom/anddoes/launcher/preference/aa;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/preference/aa;-><init>(Lcom/anddoes/launcher/preference/PreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 615
    :cond_15
    const v0, 0x7f0601fa

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 616
    if-eqz v0, :cond_2a

    .line 617
    new-instance v1, Lcom/anddoes/launcher/preference/ab;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/preference/ab;-><init>(Lcom/anddoes/launcher/preference/PreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 625
    :cond_2a
    const v0, 0x7f0601f3

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Landroid/preference/Preference;)V

    .line 626
    const v0, 0x7f0601f5

    invoke-direct {p0, p1, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Landroid/preference/PreferenceManager;I)V

    .line 636
    return-void
.end method

.method public final c(Landroid/preference/PreferenceManager;)V
    .registers 4
    .parameter

    .prologue
    .line 642
    const v0, 0x7f060210

    invoke-direct {p0, p1, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Landroid/preference/PreferenceManager;I)V

    .line 643
    iget-boolean v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->i:Z

    if-nez v0, :cond_13

    .line 644
    const v0, 0x7f06020e

    const v1, 0x7f060211

    invoke-direct {p0, p1, v0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Landroid/preference/PreferenceManager;II)V

    .line 646
    :cond_13
    return-void
.end method

.method public final d(Landroid/preference/PreferenceManager;)V
    .registers 6
    .parameter

    .prologue
    const v3, 0x7f06021e

    const v2, 0x7f06021d

    const v1, 0x7f060219

    .line 649
    const v0, 0x7f060216

    invoke-direct {p0, p1, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Landroid/preference/PreferenceManager;I)V

    .line 650
    const v0, 0x7f06021a

    invoke-direct {p0, p1, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Landroid/preference/PreferenceManager;I)V

    .line 651
    const v0, 0x7f06021b

    invoke-direct {p0, p1, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Landroid/preference/PreferenceManager;I)V

    .line 652
    const v0, 0x7f06021c

    invoke-direct {p0, p1, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Landroid/preference/PreferenceManager;I)V

    .line 653
    invoke-direct {p0, p1, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Landroid/preference/PreferenceManager;I)V

    .line 654
    invoke-direct {p0, p1, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Landroid/preference/PreferenceManager;I)V

    .line 655
    const v0, 0x7f06021f

    invoke-direct {p0, p1, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Landroid/preference/PreferenceManager;I)V

    .line 656
    iget-boolean v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->i:Z

    if-nez v0, :cond_37

    .line 657
    invoke-direct {p0, p1, v1, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Landroid/preference/PreferenceManager;II)V

    .line 658
    invoke-direct {p0, p1, v1, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Landroid/preference/PreferenceManager;II)V

    .line 660
    :cond_37
    return-void
.end method

.method public final e(Landroid/preference/PreferenceManager;)V
    .registers 8
    .parameter

    .prologue
    const v5, 0x7f06023e

    const v4, 0x7f060237

    const v3, 0x7f060236

    const/4 v0, 0x0

    .line 663
    const v1, 0x7f06023b

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 664
    if-eqz v1, :cond_1f

    .line 665
    new-instance v2, Lcom/anddoes/launcher/preference/ac;

    invoke-direct {v2, p0}, Lcom/anddoes/launcher/preference/ac;-><init>(Lcom/anddoes/launcher/preference/PreferencesActivity;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 693
    :cond_1f
    iget-boolean v1, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->i:Z

    if-eqz v1, :cond_9c

    .line 694
    const v1, 0x7f060232

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 695
    if-eqz v1, :cond_38

    .line 696
    new-instance v2, Lcom/anddoes/launcher/preference/ad;

    invoke-direct {v2, p0}, Lcom/anddoes/launcher/preference/ad;-><init>(Lcom/anddoes/launcher/preference/PreferencesActivity;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 703
    :cond_38
    const v1, 0x7f060234

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 704
    if-eqz v1, :cond_4d

    .line 705
    new-instance v2, Lcom/anddoes/launcher/preference/ae;

    invoke-direct {v2, p0}, Lcom/anddoes/launcher/preference/ae;-><init>(Lcom/anddoes/launcher/preference/PreferencesActivity;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 712
    :cond_4d
    invoke-static {p0}, Lcom/anddoes/launcher/dg;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 713
    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 714
    if-eqz v1, :cond_65

    .line 715
    new-instance v2, Lcom/anddoes/launcher/preference/af;

    invoke-direct {v2, p0}, Lcom/anddoes/launcher/preference/af;-><init>(Lcom/anddoes/launcher/preference/PreferencesActivity;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 737
    :cond_65
    :goto_65
    invoke-virtual {p0, v5}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 738
    if-eqz v1, :cond_7d

    .line 739
    const-string v2, "android.permission.BIND_APPWIDGET"

    invoke-static {p0, v2}, Lcom/anddoes/launcher/ia;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b2

    :goto_77
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 740
    invoke-direct {p0, p1, v5}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Landroid/preference/PreferenceManager;I)V

    .line 742
    :cond_7d
    return-void

    .line 723
    :cond_7e
    const v1, 0x7f060235

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 724
    if-eqz v1, :cond_8e

    .line 725
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 727
    :cond_8e
    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 728
    if-eqz v1, :cond_65

    .line 729
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_65

    .line 733
    :cond_9c
    const v1, 0x7f060224

    const v2, 0x7f060230

    invoke-direct {p0, p1, v1, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Landroid/preference/PreferenceManager;II)V

    .line 734
    const v1, 0x7f06023a

    invoke-direct {p0, p1, v4, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Landroid/preference/PreferenceManager;II)V

    .line 735
    const v1, 0x7f060239

    invoke-direct {p0, p1, v4, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Landroid/preference/PreferenceManager;II)V

    goto :goto_65

    .line 739
    :cond_b2
    const/4 v0, 0x1

    goto :goto_77
.end method

.method public final f(Landroid/preference/PreferenceManager;)V
    .registers 4
    .parameter

    .prologue
    .line 745
    const v0, 0x7f060240

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 746
    if-eqz v0, :cond_15

    .line 747
    new-instance v1, Lcom/anddoes/launcher/preference/ag;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/preference/ag;-><init>(Lcom/anddoes/launcher/preference/PreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 788
    :cond_15
    const v0, 0x7f060241

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 789
    if-eqz v0, :cond_2a

    .line 790
    new-instance v1, Lcom/anddoes/launcher/preference/j;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/preference/j;-><init>(Lcom/anddoes/launcher/preference/PreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 833
    :cond_2a
    const v0, 0x7f060242

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 834
    if-eqz v0, :cond_3f

    .line 835
    new-instance v1, Lcom/anddoes/launcher/preference/m;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/preference/m;-><init>(Lcom/anddoes/launcher/preference/PreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 864
    :cond_3f
    const v0, 0x7f060243

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 865
    if-eqz v0, :cond_54

    .line 866
    new-instance v1, Lcom/anddoes/launcher/preference/p;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/preference/p;-><init>(Lcom/anddoes/launcher/preference/PreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 907
    :cond_54
    const v0, 0x7f060244

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 908
    if-eqz v0, :cond_69

    .line 909
    new-instance v1, Lcom/anddoes/launcher/preference/s;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/preference/s;-><init>(Lcom/anddoes/launcher/preference/PreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 951
    :cond_69
    return-void
.end method

.method public final g(Landroid/preference/PreferenceManager;)V
    .registers 11
    .parameter

    .prologue
    const/high16 v8, 0x1000

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 954
    iget-boolean v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->i:Z

    if-eqz v0, :cond_e9

    const v0, 0x7f060148

    :goto_b
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 956
    const v1, 0x7f060149

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 957
    const v1, 0x7f060245

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 958
    if-eqz v1, :cond_6d

    .line 959
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 960
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 961
    const v3, 0x7f06014a

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    iget-object v5, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->b:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 962
    const v3, 0x7f06014b

    new-array v4, v7, [Ljava/lang/Object;

    iget v2, v2, Landroid/text/format/Time;->year:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 963
    iget-boolean v2, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->i:Z

    if-eqz v2, :cond_ee

    .line 964
    const v2, 0x7f03001f

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 965
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/anddoes/launcher/ApexLauncherProActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 973
    :cond_6d
    :goto_6d
    const v1, 0x7f060248

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 974
    if-eqz v1, :cond_9e

    .line 975
    const v2, 0x7f060154

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 976
    const v2, 0x7f060155

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 977
    new-instance v0, Lcom/anddoes/launcher/preference/v;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/preference/v;-><init>(Lcom/anddoes/launcher/preference/PreferencesActivity;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 996
    :cond_9e
    const v0, 0x7f060249

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 997
    if-eqz v0, :cond_b3

    .line 998
    new-instance v1, Lcom/anddoes/launcher/preference/w;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/preference/w;-><init>(Lcom/anddoes/launcher/preference/PreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1013
    :cond_b3
    const v0, 0x7f06024a

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1014
    if-eqz v0, :cond_d3

    .line 1015
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://blog.anddoes.com/apex-launcher-faq/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1016
    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1017
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 1019
    :cond_d3
    const v0, 0x7f060247

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1020
    if-eqz v0, :cond_e8

    .line 1021
    new-instance v1, Lcom/anddoes/launcher/preference/x;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/preference/x;-><init>(Lcom/anddoes/launcher/preference/PreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1028
    :cond_e8
    return-void

    .line 955
    :cond_e9
    const v0, 0x7f06024c

    goto/16 :goto_b

    .line 967
    :cond_ee
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    .line 968
    const-string v4, "http://www.apexlauncher.com/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 967
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 969
    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 970
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_6d
.end method

.method public final h(Landroid/preference/PreferenceManager;)V
    .registers 5
    .parameter

    .prologue
    .line 1126
    const v0, 0x7f0601cf

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1127
    if-eqz v0, :cond_1a

    .line 1128
    iget-object v1, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1130
    :cond_1a
    const v0, 0x7f0601d2

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1131
    if-eqz v0, :cond_34

    .line 1132
    iget-object v1, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1134
    :cond_34
    const v0, 0x7f0601d9

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1135
    if-eqz v0, :cond_50

    .line 1136
    iget-object v1, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1138
    :cond_50
    const v0, 0x7f0601d5

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Landroid/preference/Preference;)V

    .line 1139
    const v0, 0x7f0601d6

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Landroid/preference/Preference;)V

    .line 1141
    const v0, 0x7f0601d7

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Landroid/preference/Preference;)V

    .line 1142
    const v0, 0x7f0601db

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Landroid/preference/Preference;)V

    .line 1143
    const v0, 0x7f0601dd

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Landroid/preference/Preference;)V

    .line 1144
    const v0, 0x7f0601df

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Landroid/preference/Preference;)V

    .line 1145
    const v0, 0x7f0601e2

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Landroid/preference/Preference;)V

    .line 1146
    const v0, 0x7f0601e3

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Landroid/preference/Preference;)V

    .line 1147
    return-void
.end method

.method public final i(Landroid/preference/PreferenceManager;)V
    .registers 7
    .parameter

    .prologue
    const v3, 0x7f0601f5

    .line 1162
    const v0, 0x7f0601ec

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Landroid/preference/Preference;)V

    .line 1163
    const v0, 0x7f0601ed

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Landroid/preference/Preference;)V

    .line 1164
    const v0, 0x7f0601ef

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Landroid/preference/Preference;)V

    .line 1165
    const v0, 0x7f0601f3

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Landroid/preference/Preference;)V

    .line 1166
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->o(Landroid/preference/PreferenceManager;)V

    .line 1168
    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 1169
    if-eqz v0, :cond_71

    .line 1170
    const-string v1, "APP"

    iget-object v2, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v2}, Lcom/anddoes/launcher/preference/h;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 1171
    iget-object v1, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    const-string v2, "drawer_tab_icon_app"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1172
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9c

    const v1, 0x7f0600a4

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_6e
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1178
    :cond_71
    :goto_71
    const v0, 0x7f0601fc

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Landroid/preference/Preference;)V

    .line 1179
    const v0, 0x7f0601fd

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Landroid/preference/Preference;)V

    .line 1180
    const v0, 0x7f0601ff

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Landroid/preference/Preference;)V

    .line 1181
    return-void

    .line 1173
    :cond_9c
    const v2, 0x7f0600ed

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6e

    .line 1175
    :cond_aa
    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Landroid/preference/Preference;)V

    goto :goto_71
.end method

.method public final j(Landroid/preference/PreferenceManager;)V
    .registers 3
    .parameter

    .prologue
    .line 1210
    const v0, 0x7f060203

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->c(Landroid/preference/Preference;)V

    .line 1211
    const v0, 0x7f060204

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->c(Landroid/preference/Preference;)V

    .line 1212
    const v0, 0x7f060205

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Landroid/preference/Preference;)V

    .line 1213
    const v0, 0x7f060206

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Landroid/preference/Preference;)V

    .line 1214
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->p(Landroid/preference/PreferenceManager;)V

    .line 1215
    return-void
.end method

.method public final k(Landroid/preference/PreferenceManager;)V
    .registers 3
    .parameter

    .prologue
    .line 1262
    const v0, 0x7f06020f

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Landroid/preference/Preference;)V

    .line 1263
    const v0, 0x7f060210

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Landroid/preference/Preference;)V

    .line 1264
    return-void
.end method

.method public final l(Landroid/preference/PreferenceManager;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0600ed

    const v5, 0x7f0600ea

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1267
    const v0, 0x7f060215

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Landroid/preference/Preference;)V

    .line 1270
    const v0, 0x7f060216

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 1271
    if-eqz v1, :cond_47

    .line 1272
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->an()Ljava/lang/String;

    move-result-object v0

    .line 1273
    const-string v2, "LAUNCH_APP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_180

    .line 1274
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    const-string v2, "home_key_action_app"

    invoke-virtual {v0, v2, v7}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1275
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_176

    invoke-virtual {p0, v5}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_44
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1286
    :cond_47
    :goto_47
    const v0, 0x7f06021a

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 1287
    if-eqz v1, :cond_77

    .line 1288
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aq()Ljava/lang/String;

    move-result-object v0

    .line 1289
    const-string v2, "LAUNCH_APP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c2

    .line 1290
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    const-string v2, "pinch_in_action_app"

    invoke-virtual {v0, v2, v7}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1291
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b8

    invoke-virtual {p0, v5}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_74
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1302
    :cond_77
    :goto_77
    const v0, 0x7f06021b

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 1303
    if-eqz v1, :cond_a7

    .line 1304
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->ar()Ljava/lang/String;

    move-result-object v0

    .line 1305
    const-string v2, "LAUNCH_APP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_204

    .line 1306
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    const-string v2, "swipe_up_action_app"

    invoke-virtual {v0, v2, v7}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1307
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1fa

    invoke-virtual {p0, v5}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_a4
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1318
    :cond_a7
    :goto_a7
    const v0, 0x7f06021c

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 1319
    if-eqz v1, :cond_d7

    .line 1320
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->as()Ljava/lang/String;

    move-result-object v0

    .line 1321
    const-string v2, "LAUNCH_APP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_246

    .line 1322
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    const-string v2, "swipe_down_action_app"

    invoke-virtual {v0, v2, v7}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1323
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23c

    invoke-virtual {p0, v5}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_d4
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1334
    :cond_d7
    :goto_d7
    const v0, 0x7f06021d

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 1335
    if-eqz v1, :cond_107

    .line 1336
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->at()Ljava/lang/String;

    move-result-object v0

    .line 1337
    const-string v2, "LAUNCH_APP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_288

    .line 1338
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    const-string v2, "two_finger_swipe_up_action_app"

    invoke-virtual {v0, v2, v7}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1339
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27e

    invoke-virtual {p0, v5}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_104
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1350
    :cond_107
    :goto_107
    const v0, 0x7f06021e

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 1351
    if-eqz v1, :cond_137

    .line 1352
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->au()Ljava/lang/String;

    move-result-object v0

    .line 1353
    const-string v2, "LAUNCH_APP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ca

    .line 1354
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    const-string v2, "two_finger_swipe_down_action_app"

    invoke-virtual {v0, v2, v7}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1355
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c0

    invoke-virtual {p0, v5}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_134
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1366
    :cond_137
    :goto_137
    const v0, 0x7f06021f

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 1367
    if-eqz v1, :cond_167

    .line 1368
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->av()Ljava/lang/String;

    move-result-object v0

    .line 1369
    const-string v2, "LAUNCH_APP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30c

    .line 1370
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    const-string v2, "desktop_double_tap_action_app"

    invoke-virtual {v0, v2, v7}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1371
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_302

    invoke-virtual {p0, v5}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_164
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1382
    :cond_167
    :goto_167
    const v0, 0x7f060220

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Landroid/preference/Preference;)V

    .line 1383
    return-void

    .line 1276
    :cond_176
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v6, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_44

    .line 1277
    :cond_180
    const-string v2, "LAUNCH_SHORTCUT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a8

    .line 1278
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    const-string v2, "home_key_action_shortcut_name"

    invoke-virtual {v0, v2, v7}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1279
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19f

    invoke-virtual {p0, v5}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_19a
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_47

    .line 1280
    :cond_19f
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v6, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19a

    .line 1282
    :cond_1a8
    const v0, 0x7f060216

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Landroid/preference/Preference;)V

    goto/16 :goto_47

    .line 1292
    :cond_1b8
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v6, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_74

    .line 1293
    :cond_1c2
    const-string v2, "LAUNCH_SHORTCUT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ea

    .line 1294
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    const-string v2, "pinch_in_action_shortcut_name"

    invoke-virtual {v0, v2, v7}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1295
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e1

    invoke-virtual {p0, v5}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1dc
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_77

    .line 1296
    :cond_1e1
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v6, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1dc

    .line 1298
    :cond_1ea
    const v0, 0x7f06021a

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Landroid/preference/Preference;)V

    goto/16 :goto_77

    .line 1308
    :cond_1fa
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v6, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a4

    .line 1309
    :cond_204
    const-string v2, "LAUNCH_SHORTCUT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22c

    .line 1310
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    const-string v2, "swipe_up_action_shortcut_name"

    invoke-virtual {v0, v2, v7}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1311
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_223

    invoke-virtual {p0, v5}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_21e
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_a7

    .line 1312
    :cond_223
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v6, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_21e

    .line 1314
    :cond_22c
    const v0, 0x7f06021b

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Landroid/preference/Preference;)V

    goto/16 :goto_a7

    .line 1324
    :cond_23c
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v6, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d4

    .line 1325
    :cond_246
    const-string v2, "LAUNCH_SHORTCUT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26e

    .line 1326
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    const-string v2, "swipe_down_action_shortcut_name"

    invoke-virtual {v0, v2, v7}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1327
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_265

    invoke-virtual {p0, v5}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_260
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_d7

    .line 1328
    :cond_265
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v6, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_260

    .line 1330
    :cond_26e
    const v0, 0x7f06021c

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Landroid/preference/Preference;)V

    goto/16 :goto_d7

    .line 1340
    :cond_27e
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v6, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_104

    .line 1341
    :cond_288
    const-string v2, "LAUNCH_SHORTCUT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b0

    .line 1342
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    const-string v2, "two_finger_swipe_up_action_shortcut_name"

    invoke-virtual {v0, v2, v7}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1343
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a7

    invoke-virtual {p0, v5}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2a2
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_107

    .line 1344
    :cond_2a7
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v6, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a2

    .line 1346
    :cond_2b0
    const v0, 0x7f06021d

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Landroid/preference/Preference;)V

    goto/16 :goto_107

    .line 1356
    :cond_2c0
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v6, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_134

    .line 1357
    :cond_2ca
    const-string v2, "LAUNCH_SHORTCUT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f2

    .line 1358
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    const-string v2, "two_finger_swipe_down_action_shortcut_name"

    invoke-virtual {v0, v2, v7}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1359
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2e9

    invoke-virtual {p0, v5}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2e4
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_137

    .line 1360
    :cond_2e9
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v6, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e4

    .line 1362
    :cond_2f2
    const v0, 0x7f06021e

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Landroid/preference/Preference;)V

    goto/16 :goto_137

    .line 1372
    :cond_302
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v6, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_164

    .line 1373
    :cond_30c
    const-string v2, "LAUNCH_SHORTCUT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_334

    .line 1374
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    const-string v2, "desktop_double_tap_action_shortcut_name"

    invoke-virtual {v0, v2, v7}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1375
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_32b

    invoke-virtual {p0, v5}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_326
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_167

    .line 1376
    :cond_32b
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v6, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_326

    .line 1378
    :cond_334
    const v0, 0x7f06021f

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Landroid/preference/Preference;)V

    goto/16 :goto_167
.end method

.method public final m(Landroid/preference/PreferenceManager;)V
    .registers 4
    .parameter

    .prologue
    .line 1386
    const v0, 0x7f06023b

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1387
    if-eqz v0, :cond_16

    .line 1388
    invoke-static {p0}, Lcom/anddoes/launcher/ia;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1389
    if-eqz v1, :cond_16

    .line 1390
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1393
    :cond_16
    const v0, 0x7f06023c

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Landroid/preference/Preference;)V

    .line 1394
    return-void
.end method

.method public final n(Landroid/preference/PreferenceManager;)V
    .registers 3
    .parameter

    .prologue
    .line 1400
    const v0, 0x7f060246

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Landroid/preference/Preference;)V

    .line 1401
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 275
    const/4 v0, -0x1

    if-ne p2, v0, :cond_76

    .line 276
    if-ne p1, v1, :cond_7a

    .line 278
    :try_start_9
    sget-object v0, Lcom/anddoes/launcher/AppPickerActivity;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    sget-object v1, Lcom/anddoes/launcher/AppPickerActivity;->b:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 281
    iget-object v2, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v2, v0, v1}, Lcom/anddoes/launcher/preference/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_20
    sget-object v0, Lcom/anddoes/launcher/AppPickerActivity;->g:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    sget-object v1, Lcom/anddoes/launcher/AppPickerActivity;->h:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 287
    iget-object v2, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v2, v0, v1}, Lcom/anddoes/launcher/preference/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_37
    sget-object v0, Lcom/anddoes/launcher/AppPickerActivity;->e:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_76

    .line 292
    sget-object v1, Lcom/anddoes/launcher/AppPickerActivity;->f:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_54

    .line 294
    iget-object v2, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v2, v0, v1}, Lcom/anddoes/launcher/preference/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_54
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_76

    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_76

    .line 297
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    iget-object v1, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->l:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/preference/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    iget-object v1, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->m:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/preference/h;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_76} :catch_177

    .line 355
    :cond_76
    :goto_76
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 356
    :goto_79
    return-void

    .line 303
    :cond_7a
    const/4 v0, 0x2

    if-ne p1, v0, :cond_d3

    .line 304
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/anddoes/launcher/ia;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 305
    if-eqz v2, :cond_76

    .line 306
    const/4 v0, 0x0

    .line 308
    :try_start_88
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "images"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 309
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_9c

    .line 310
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 312
    :cond_9c
    new-instance v3, Ljava/io/File;

    const-string v4, "folder_bg.png"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 313
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_ad
    .catchall {:try_start_88 .. :try_end_ad} :catchall_c9
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_ad} :catch_c0

    .line 314
    :try_start_ad
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v2, v0, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 315
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->h:Lcom/anddoes/launcher/LauncherApplication;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/anddoes/launcher/LauncherApplication;->f:Z
    :try_end_b9
    .catchall {:try_start_ad .. :try_end_b9} :catchall_170
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b9} :catch_173

    .line 320
    :try_start_b9
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_bc} :catch_16d

    .line 327
    :cond_bc
    :goto_bc
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_76

    .line 316
    :catch_c0
    move-exception v1

    .line 320
    :goto_c1
    if-eqz v0, :cond_bc

    .line 321
    :try_start_c3
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c6} :catch_c7

    goto :goto_bc

    .line 324
    :catch_c7
    move-exception v0

    goto :goto_bc

    .line 318
    :catchall_c9
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 320
    :goto_cd
    if-eqz v1, :cond_d2

    .line 321
    :try_start_cf
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d2} :catch_16a

    .line 326
    :cond_d2
    :goto_d2
    throw v0

    .line 329
    :cond_d3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_e4

    .line 330
    sget-object v0, Lcom/anddoes/launcher/MultiPickerActivity;->c:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    iget-object v1, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    const-string v2, "drawer_hidden_apps"

    invoke-virtual {v1, v2, v0}, Lcom/anddoes/launcher/preference/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_76

    .line 332
    :cond_e4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_12f

    .line 333
    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06016a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 334
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 335
    if-eqz v0, :cond_10f

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 336
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 337
    const-class v1, Lcom/anddoes/launcher/ActPickerActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 338
    invoke-virtual {p0, v0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_79

    .line 340
    :cond_10f
    const/4 v0, 0x5

    :try_start_110
    invoke-virtual {p0, p3, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_113
    .catch Landroid/content/ActivityNotFoundException; {:try_start_110 .. :try_end_113} :catch_115
    .catch Ljava/lang/SecurityException; {:try_start_110 .. :try_end_113} :catch_122

    goto/16 :goto_79

    :catch_115
    move-exception v0

    const v0, 0x7f060252

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_79

    :catch_122
    move-exception v0

    const v0, 0x7f06016c

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_79

    .line 343
    :cond_12f
    if-eq p1, v3, :cond_133

    if-ne p1, v2, :cond_76

    .line 344
    :cond_133
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 345
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 346
    if-eqz v0, :cond_76

    if-eqz v1, :cond_76

    .line 347
    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_156

    .line 348
    const-string v2, "android.intent.action.CALL"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    :cond_156
    iget-object v2, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    iget-object v3, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->j:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/anddoes/launcher/preference/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    iget-object v2, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/anddoes/launcher/preference/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_76

    :catch_16a
    move-exception v1

    goto/16 :goto_d2

    :catch_16d
    move-exception v0

    goto/16 :goto_bc

    .line 318
    :catchall_170
    move-exception v0

    goto/16 :goto_cd

    .line 316
    :catch_173
    move-exception v0

    move-object v0, v1

    goto/16 :goto_c1

    .line 301
    :catch_177
    move-exception v0

    goto/16 :goto_76
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .registers 4
    .parameter

    .prologue
    .line 166
    const v0, 0x7f050009

    invoke-virtual {p0, v0, p1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 167
    iput-object p1, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->a:Ljava/util/List;

    .line 169
    invoke-direct {p0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->e()V

    .line 170
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/anddoes/launcher/ApexService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 171
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 100
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    new-instance v0, Lcom/anddoes/launcher/preference/h;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/preference/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    .line 103
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aX()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/anddoes/launcher/ia;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/LauncherApplication;

    iput-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->h:Lcom/anddoes/launcher/LauncherApplication;

    .line 106
    invoke-direct {p0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->e()V

    .line 108
    :try_start_1f
    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 109
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->b:Ljava/lang/String;

    .line 110
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->c:I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_34} :catch_38

    .line 114
    :goto_34
    invoke-direct {p0, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Z)V

    .line 115
    return-void

    :catch_38
    move-exception v0

    goto :goto_34
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 4
    .parameter

    .prologue
    .line 247
    packed-switch p1, :pswitch_data_2c

    .line 258
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 250
    :pswitch_8
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 251
    sget v1, Landroid/app/ProgressDialog;->STYLE_SPINNER:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 252
    const v1, 0x7f060015

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 253
    const v1, 0x7f060017

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 254
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 255
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_7

    .line 247
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 203
    if-eqz p1, :cond_15

    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f08007b

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    .line 204
    const v0, 0x7f060001

    const v1, 0x7f06015c

    invoke-direct {p0, v0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(II)V

    .line 220
    :goto_14
    return-void

    .line 205
    :cond_15
    if-eqz p1, :cond_2e

    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f080079

    cmp-long v0, v0, v2

    if-nez v0, :cond_2e

    .line 206
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/anddoes/launcher/ApexLauncherProActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->startActivity(Landroid/content/Intent;)V

    .line 208
    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->finish()V

    goto :goto_14

    .line 209
    :cond_2e
    if-eqz p1, :cond_44

    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f080075

    cmp-long v0, v0, v2

    if-nez v0, :cond_44

    .line 210
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/anddoes/launcher/ThemeListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_14

    .line 213
    :cond_44
    if-eqz p1, :cond_69

    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f08007a

    cmp-long v0, v0, v2

    if-nez v0, :cond_69

    .line 214
    iget-boolean v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->i:Z

    if-eqz v0, :cond_6d

    const v0, 0x7f060148

    :goto_56
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 216
    const v1, 0x7f060149

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 218
    :cond_69
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_14

    .line 215
    :cond_6d
    const v0, 0x7f06024c

    goto :goto_56
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 155
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 156
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->h:Lcom/anddoes/launcher/LauncherApplication;

    iget-object v0, v0, Lcom/anddoes/launcher/LauncherApplication;->d:Lcom/anddoes/launcher/Launcher;

    if-eqz v0, :cond_10

    .line 157
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->h:Lcom/anddoes/launcher/LauncherApplication;

    iget-object v0, v0, Lcom/anddoes/launcher/LauncherApplication;->d:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->o()V

    .line 159
    :cond_10
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 372
    iget-boolean v1, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->d:Z

    if-eqz v1, :cond_8

    move v0, v6

    .line 498
    :cond_7
    :goto_7
    return v0

    .line 376
    :cond_8
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 377
    const v2, 0x7f0601f5

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 378
    const-string v0, "APP"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 379
    const-string v1, "drawer_tab_icon_app"

    .line 380
    const-string v2, "drawer_tab_icon_pkg"

    .line 381
    const-string v3, "drawer_tab_icon_act"

    .line 382
    const-string v4, "drawer_tab_icon_component"

    .line 383
    const-string v5, "drawer_tab_icon_intent"

    move-object v0, p0

    .line 379
    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    move v0, v6

    .line 385
    goto :goto_7

    .line 386
    :cond_31
    const v2, 0x7f060210

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 387
    const-string v0, "CUSTOM"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 388
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 389
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    const v1, 0x7f060164

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 391
    const/4 v1, 0x2

    .line 390
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_61
    move v0, v6

    .line 393
    goto :goto_7

    .line 394
    :cond_63
    const v2, 0x7f060216

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 395
    const-string v0, "LAUNCH_APP"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 396
    const-string v1, "home_key_action_app"

    .line 397
    const-string v2, "home_key_action_pkg"

    .line 398
    const-string v3, "home_key_action_act"

    .line 399
    const-string v4, "home_key_action_component"

    .line 400
    const-string v5, "home_key_action_intent"

    move-object v0, p0

    .line 396
    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8a
    :goto_8a
    move v0, v6

    .line 405
    goto/16 :goto_7

    .line 401
    :cond_8d
    const-string v0, "LAUNCH_SHORTCUT"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 402
    const-string v0, "home_key_action_shortcut_name"

    .line 403
    const-string v1, "home_key_action_shortcut_intent"

    .line 402
    invoke-direct {p0, v0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8a

    .line 406
    :cond_a1
    const v2, 0x7f06021a

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    .line 407
    const-string v0, "LAUNCH_APP"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 408
    const-string v1, "pinch_in_action_app"

    .line 409
    const-string v2, "pinch_in_action_pkg"

    .line 410
    const-string v3, "pinch_in_action_act"

    .line 411
    const-string v4, "pinch_in_action_component"

    .line 412
    const-string v5, "pinch_in_action_intent"

    move-object v0, p0

    .line 408
    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c8
    :goto_c8
    move v0, v6

    .line 417
    goto/16 :goto_7

    .line 413
    :cond_cb
    const-string v0, "LAUNCH_SHORTCUT"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 414
    const-string v0, "pinch_in_action_shortcut_name"

    .line 415
    const-string v1, "pinch_in_action_shortcut_intent"

    .line 414
    invoke-direct {p0, v0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c8

    .line 418
    :cond_df
    const v2, 0x7f06021b

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11d

    .line 419
    const-string v0, "LAUNCH_APP"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_109

    .line 420
    const-string v1, "swipe_up_action_app"

    .line 421
    const-string v2, "swipe_up_action_pkg"

    .line 422
    const-string v3, "swipe_up_action_act"

    .line 423
    const-string v4, "swipe_up_action_component"

    .line 424
    const-string v5, "swipe_up_action_intent"

    move-object v0, p0

    .line 420
    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_106
    :goto_106
    move v0, v6

    .line 429
    goto/16 :goto_7

    .line 425
    :cond_109
    const-string v0, "LAUNCH_SHORTCUT"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_106

    .line 426
    const-string v0, "swipe_up_action_shortcut_name"

    .line 427
    const-string v1, "swipe_up_action_shortcut_intent"

    .line 426
    invoke-direct {p0, v0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_106

    .line 430
    :cond_11d
    const v2, 0x7f06021c

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15b

    .line 431
    const-string v0, "LAUNCH_APP"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_147

    .line 432
    const-string v1, "swipe_down_action_app"

    .line 433
    const-string v2, "swipe_down_action_pkg"

    .line 434
    const-string v3, "swipe_down_action_act"

    .line 435
    const-string v4, "swipe_down_action_component"

    .line 436
    const-string v5, "swipe_down_action_intent"

    move-object v0, p0

    .line 432
    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_144
    :goto_144
    move v0, v6

    .line 441
    goto/16 :goto_7

    .line 437
    :cond_147
    const-string v0, "LAUNCH_SHORTCUT"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_144

    .line 438
    const-string v0, "swipe_down_action_shortcut_name"

    .line 439
    const-string v1, "swipe_down_action_shortcut_intent"

    .line 438
    invoke-direct {p0, v0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_144

    .line 442
    :cond_15b
    const v2, 0x7f06021d

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 443
    const-string v0, "LAUNCH_APP"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_185

    .line 444
    const-string v1, "two_finger_swipe_up_action_app"

    .line 445
    const-string v2, "two_finger_swipe_up_action_pkg"

    .line 446
    const-string v3, "two_finger_swipe_up_action_act"

    .line 447
    const-string v4, "two_finger_swipe_up_action_component"

    .line 448
    const-string v5, "two_finger_swipe_up_action_intent"

    move-object v0, p0

    .line 444
    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_182
    :goto_182
    move v0, v6

    .line 453
    goto/16 :goto_7

    .line 449
    :cond_185
    const-string v0, "LAUNCH_SHORTCUT"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_182

    .line 450
    const-string v0, "two_finger_swipe_up_action_shortcut_name"

    .line 451
    const-string v1, "two_finger_swipe_up_action_shortcut_intent"

    .line 450
    invoke-direct {p0, v0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_182

    .line 454
    :cond_199
    const v2, 0x7f06021e

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d7

    .line 455
    const-string v0, "LAUNCH_APP"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c3

    .line 456
    const-string v1, "two_finger_swipe_down_action_app"

    .line 457
    const-string v2, "two_finger_swipe_down_action_pkg"

    .line 458
    const-string v3, "two_finger_swipe_down_action_act"

    .line 459
    const-string v4, "two_finger_swipe_down_action_component"

    .line 460
    const-string v5, "two_finger_swipe_down_action_intent"

    move-object v0, p0

    .line 456
    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c0
    :goto_1c0
    move v0, v6

    .line 465
    goto/16 :goto_7

    .line 461
    :cond_1c3
    const-string v0, "LAUNCH_SHORTCUT"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c0

    .line 462
    const-string v0, "two_finger_swipe_down_action_shortcut_name"

    .line 463
    const-string v1, "two_finger_swipe_down_action_shortcut_intent"

    .line 462
    invoke-direct {p0, v0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c0

    .line 466
    :cond_1d7
    const v2, 0x7f06021f

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_215

    .line 467
    const-string v0, "LAUNCH_APP"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_201

    .line 468
    const-string v1, "desktop_double_tap_action_app"

    .line 469
    const-string v2, "desktop_double_tap_action_pkg"

    .line 470
    const-string v3, "desktop_double_tap_action_act"

    .line 471
    const-string v4, "desktop_double_tap_action_component"

    .line 472
    const-string v5, "desktop_double_tap_action_intent"

    move-object v0, p0

    .line 468
    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1fe
    :goto_1fe
    move v0, v6

    .line 477
    goto/16 :goto_7

    .line 473
    :cond_201
    const-string v0, "LAUNCH_SHORTCUT"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fe

    .line 474
    const-string v0, "desktop_double_tap_action_shortcut_name"

    .line 475
    const-string v1, "desktop_double_tap_action_shortcut_intent"

    .line 474
    invoke-direct {p0, v0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1fe

    .line 478
    :cond_215
    const v2, 0x7f06023e

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 479
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    .line 480
    check-cast p2, Ljava/lang/Boolean;

    .line 481
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_240

    .line 482
    invoke-static {}, Lcom/anddoes/launcher/ia;->d()Z

    move-result v1

    if-nez v1, :cond_254

    .line 483
    const v1, 0x7f06012d

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    .line 488
    :cond_240
    :try_start_240
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "RootHelper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 489
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_254

    .line 490
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_254
    .catch Ljava/lang/Exception; {:try_start_240 .. :try_end_254} :catch_257

    :cond_254
    :goto_254
    move v0, v6

    .line 495
    goto/16 :goto_7

    :catch_257
    move-exception v0

    goto :goto_254
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 135
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 136
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->a()I

    move-result v1

    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->b()I

    move-result v0

    if-le v0, v1, :cond_12

    const/4 v0, 0x0

    :cond_12
    if-nez v0, :cond_1d

    div-int/lit8 v0, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->e:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/preference/h;->b(I)V

    .line 137
    :cond_1d
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 128
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 130
    new-instance v0, Lcom/anddoes/launcher/preference/b;

    iget-boolean v1, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->i:Z

    invoke-direct {v0, p0, v1}, Lcom/anddoes/launcher/preference/b;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->f:Lcom/anddoes/launcher/preference/b;

    .line 131
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 176
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->a:Ljava/util/List;

    if-nez v0, :cond_13

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->a:Ljava/util/List;

    move v1, v2

    .line 180
    :goto_d
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lt v1, v0, :cond_35

    .line 184
    :cond_13
    iget-boolean v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->i:Z

    if-eqz v0, :cond_28

    .line 185
    const/4 v1, 0x0

    .line 186
    :goto_18
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_44

    move-object v0, v1

    .line 193
    :cond_21
    if-eqz v0, :cond_28

    .line 194
    iget-object v1, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 198
    :cond_28
    new-instance v0, Lcom/anddoes/launcher/preference/an;

    iget-object v1, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->a:Ljava/util/List;

    iget-boolean v2, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->i:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/anddoes/launcher/preference/an;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 199
    return-void

    .line 181
    :cond_35
    iget-object v3, p0, Lcom/anddoes/launcher/preference/PreferencesActivity;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 187
    :cond_44
    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 188
    iget-wide v3, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f080079

    cmp-long v3, v3, v5

    if-eqz v3, :cond_21

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_18
.end method
