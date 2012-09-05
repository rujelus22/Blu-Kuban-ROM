.class public Leu/chainfire/supersu/SettingsFragment;
.super Leu/chainfire/supersu/PreferenceListFragment;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/preference/CheckBoxPreference;

.field private c:Landroid/preference/CheckBoxPreference;

.field private d:Landroid/preference/CheckBoxPreference;

.field private e:Landroid/preference/ListPreference;

.field private f:Landroid/preference/CheckBoxPreference;

.field private g:Landroid/preference/ListPreference;

.field private h:Landroid/preference/ListPreference;

.field private i:Landroid/preference/Preference;

.field private j:Landroid/preference/ListPreference;

.field private k:Landroid/preference/Preference;

.field private l:Landroid/preference/ListPreference;

.field private m:Z

.field private n:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Leu/chainfire/supersu/PreferenceListFragment;-><init>()V

    iput-object v1, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    iput-object v1, p0, Leu/chainfire/supersu/SettingsFragment;->b:Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Leu/chainfire/supersu/SettingsFragment;->c:Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Leu/chainfire/supersu/SettingsFragment;->d:Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Leu/chainfire/supersu/SettingsFragment;->e:Landroid/preference/ListPreference;

    iput-object v1, p0, Leu/chainfire/supersu/SettingsFragment;->f:Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Leu/chainfire/supersu/SettingsFragment;->g:Landroid/preference/ListPreference;

    iput-object v1, p0, Leu/chainfire/supersu/SettingsFragment;->h:Landroid/preference/ListPreference;

    iput-object v1, p0, Leu/chainfire/supersu/SettingsFragment;->i:Landroid/preference/Preference;

    iput-object v1, p0, Leu/chainfire/supersu/SettingsFragment;->j:Landroid/preference/ListPreference;

    iput-object v1, p0, Leu/chainfire/supersu/SettingsFragment;->k:Landroid/preference/Preference;

    iput-object v1, p0, Leu/chainfire/supersu/SettingsFragment;->l:Landroid/preference/ListPreference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/SettingsFragment;->m:Z

    iput-object v1, p0, Leu/chainfire/supersu/SettingsFragment;->n:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/SettingsFragment;)Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->n:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)V
    .registers 8

    const v4, 0x7f090068

    const v5, 0x7f090067

    const v2, 0x7f090065

    if-eqz p1, :cond_54

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v2}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090066

    invoke-direct {p0, v2}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-direct {p0, v4}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Leu/chainfire/supersu/SettingsFragment$12;

    invoke-direct {v3, p0}, Leu/chainfire/supersu/SettingsFragment$12;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-direct {p0, v5}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Leu/chainfire/supersu/SettingsFragment$13;

    invoke-direct {v3, p0}, Leu/chainfire/supersu/SettingsFragment$13;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090069

    invoke-direct {p0, v2}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Leu/chainfire/supersu/SettingsFragment$14;

    invoke-direct {v3, p0}, Leu/chainfire/supersu/SettingsFragment$14;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :try_start_50
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_90

    :goto_53
    return-void

    :cond_54
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v2}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-direct {p0, v4}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, v5}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Leu/chainfire/supersu/SettingsFragment$15;

    invoke-direct {v3, p0}, Leu/chainfire/supersu/SettingsFragment$15;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090009

    invoke-direct {p0, v2}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :try_start_8a
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8d} :catch_8e

    goto :goto_53

    :catch_8e
    move-exception v0

    goto :goto_53

    :catch_90
    move-exception v0

    goto :goto_53
.end method

.method static synthetic b(Leu/chainfire/supersu/SettingsFragment;)V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Leu/chainfire/supersu/SettingsFragment;->a(Z)V

    return-void
.end method

.method private b(I)[Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->n:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/preference/PreferenceManager;)Landroid/preference/PreferenceScreen;
    .registers 14

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->n:Landroid/content/res/Resources;

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Leu/chainfire/supersu/SettingsFragment;->m:Z

    const-string v0, "SuperSU"

    iget-boolean v1, p0, Leu/chainfire/supersu/SettingsFragment;->m:Z

    if-eqz v1, :cond_3f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " Pro"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3f
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_71

    :try_start_49
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_71

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_70} :catch_56c

    move-result-object v0

    :cond_71
    :goto_71
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Copyright (C) 2012 - Chainfire\nTwitter: @ChainfireXDA\nG+: http://gplus.chainfire.eu/\n"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v2, 0x7f090027

    invoke-direct {p0, v2}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "copyright"

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    new-instance v0, Leu/chainfire/supersu/SettingsFragment$1;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/SettingsFragment$1;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v9, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-boolean v0, p0, Leu/chainfire/supersu/SettingsFragment;->m:Z

    if-nez v0, :cond_d6

    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090028

    invoke-direct {p0, v1}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f090029

    invoke-direct {p0, v1}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v1, Leu/chainfire/supersu/SettingsFragment$2;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/SettingsFragment$2;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_d6
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f09002b

    invoke-direct {p0, v1}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v9, v1}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f09002c

    invoke-direct {p0, v2}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, "superuser"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->b:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->b:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f09002d

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->b:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f09002e

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->b:Landroid/preference/CheckBoxPreference;

    new-instance v2, Leu/chainfire/supersu/SettingsFragment$3;

    invoke-direct {v2, p0}, Leu/chainfire/supersu/SettingsFragment$3;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f09002f

    invoke-direct {p0, v2}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, "survival"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->c:Landroid/preference/CheckBoxPreference;

    iget-boolean v0, p0, Leu/chainfire/supersu/SettingsFragment;->m:Z

    if-eqz v0, :cond_478

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->c:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f090030

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->c:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f090031

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    :goto_147
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f090032

    invoke-direct {p0, v2}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, "reauthenticate"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->d:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->d:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090033

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->d:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f090035

    invoke-direct {p0, v1}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v9, v1}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f090036

    invoke-direct {p0, v2}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const v4, 0x7f090037

    invoke-direct {p0, v4}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "config_%s_access"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "default"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "prompt"

    const/high16 v7, 0x7f0b

    invoke-direct {p0, v7}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const-string v11, "prompt"

    aput-object v11, v8, v10

    const/4 v10, 0x1

    const-string v11, "grant"

    aput-object v11, v8, v10

    const/4 v10, 0x2

    const-string v11, "deny"

    aput-object v11, v8, v10

    invoke-static/range {v0 .. v8}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->e:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f090038

    invoke-direct {p0, v2}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, "config_%s_notify"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "default"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->f:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->f:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->f:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f09003b

    invoke-direct {p0, v1}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v9, v1}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v1

    iget-boolean v0, p0, Leu/chainfire/supersu/SettingsFragment;->m:Z

    if-eqz v0, :cond_488

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f09003c

    invoke-direct {p0, v2}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const v4, 0x7f09003d

    invoke-direct {p0, v4}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "config_%s_log"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "default"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "access"

    const v7, 0x7f0b0001

    invoke-direct {p0, v7}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const-string v11, "content"

    aput-object v11, v8, v10

    const/4 v10, 0x1

    const-string v11, "access"

    aput-object v11, v8, v10

    const/4 v10, 0x2

    const-string v11, "none"

    aput-object v11, v8, v10

    invoke-static/range {v0 .. v8}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->g:Landroid/preference/ListPreference;

    :goto_24e
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f09003e

    invoke-direct {p0, v2}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const v4, 0x7f09003f

    invoke-direct {p0, v4}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "config_%s_logage"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "default"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "3"

    const v7, 0x7f0b0002

    invoke-direct {p0, v7}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const-string v11, "0"

    aput-object v11, v8, v10

    const/4 v10, 0x1

    const-string v11, "14"

    aput-object v11, v8, v10

    const/4 v10, 0x2

    const-string v11, "7"

    aput-object v11, v8, v10

    const/4 v10, 0x3

    const-string v11, "3"

    aput-object v11, v8, v10

    const/4 v10, 0x4

    const-string v11, "2"

    aput-object v11, v8, v10

    const/4 v10, 0x5

    const-string v11, "1"

    aput-object v11, v8, v10

    invoke-static/range {v0 .. v8}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->h:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f090040

    invoke-direct {p0, v2}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090041

    invoke-direct {p0, v3}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Leu/chainfire/supersu/SettingsFragment$4;

    invoke-direct {v4, p0}, Leu/chainfire/supersu/SettingsFragment$4;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-static {v0, v1, v2, v3, v4}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->i:Landroid/preference/Preference;

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f090043

    invoke-direct {p0, v2}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const v4, 0x7f090044

    invoke-direct {p0, v4}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "config_%s_logformat"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "default"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "31122359"

    const v7, 0x7f0b0003

    invoke-direct {p0, v7}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const-string v11, "31122359"

    aput-object v11, v8, v10

    const/4 v10, 0x1

    const-string v11, "12312359"

    aput-object v11, v8, v10

    const/4 v10, 0x2

    const-string v11, "31121159PM"

    aput-object v11, v8, v10

    const/4 v10, 0x3

    const-string v11, "12311159PM"

    aput-object v11, v8, v10

    invoke-static/range {v0 .. v8}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->j:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f090046

    invoke-direct {p0, v1}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v9, v1}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f090047

    invoke-direct {p0, v2}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    new-instance v4, Leu/chainfire/supersu/SettingsFragment$5;

    invoke-direct {v4, p0}, Leu/chainfire/supersu/SettingsFragment$5;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-static {v1, v0, v2, v3, v4}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->k:Landroid/preference/Preference;

    iget-boolean v0, p0, Leu/chainfire/supersu/SettingsFragment;->m:Z

    if-nez v0, :cond_33e

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->k:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->k:Landroid/preference/Preference;

    const v1, 0x7f09002a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    :cond_33e
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f09004d

    invoke-direct {p0, v1}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v9, v1}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f090054

    invoke-direct {p0, v2}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090055

    invoke-direct {p0, v3}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Leu/chainfire/supersu/SettingsFragment$6;

    invoke-direct {v4, p0}, Leu/chainfire/supersu/SettingsFragment$6;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-static {v1, v0, v2, v3, v4}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f090051

    invoke-direct {p0, v2}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090052

    invoke-direct {p0, v3}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Leu/chainfire/supersu/SettingsFragment$7;

    invoke-direct {v4, p0}, Leu/chainfire/supersu/SettingsFragment$7;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-static {v1, v0, v2, v3, v4}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f09004e

    invoke-direct {p0, v2}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f09004f

    invoke-direct {p0, v3}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Leu/chainfire/supersu/SettingsFragment$8;

    invoke-direct {v4, p0}, Leu/chainfire/supersu/SettingsFragment$8;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-static {v1, v0, v2, v3, v4}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f09004a

    invoke-direct {p0, v1}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v9, v1}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f09004b

    invoke-direct {p0, v2}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f09004c

    invoke-direct {p0, v3}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Leu/chainfire/supersu/SettingsFragment$9;

    invoke-direct {v4, p0}, Leu/chainfire/supersu/SettingsFragment$9;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-static {v1, v0, v2, v3, v4}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f090063

    invoke-direct {p0, v2}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090064

    invoke-direct {p0, v3}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Leu/chainfire/supersu/SettingsFragment$10;

    invoke-direct {v4, p0}, Leu/chainfire/supersu/SettingsFragment$10;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-static {v1, v0, v2, v3, v4}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_3f1
    if-lt v0, v2, :cond_512

    new-instance v0, Leu/chainfire/supersu/SettingsFragment$11;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/SettingsFragment$11;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v7, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v8, v0, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const v1, 0x7f09006d

    invoke-direct {p0, v1}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x0

    const-string v1, ""

    aput-object v1, v8, v0

    const/4 v0, 0x0

    move v2, v0

    :goto_41c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_523

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f09006a

    invoke-direct {p0, v1}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v9, v1}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f09006b

    invoke-direct {p0, v2}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const v4, 0x7f09006c

    invoke-direct {p0, v4}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "locale"

    const-string v6, ""

    invoke-static/range {v0 .. v8}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->l:Landroid/preference/ListPreference;

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    const-string v1, "shown_follow"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_46e

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "shown_follow"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Leu/chainfire/supersu/SettingsFragment;->a(Z)V

    :cond_46e
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/SettingsFragment;->a(Ljava/lang/String;)V

    return-object v9

    :cond_478
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->c:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->c:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f09002a

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_147

    :cond_488
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    const-string v2, "config_%s_log"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "default"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "access"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "content"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c3

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "config_%s_log"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "default"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "access"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4c3
    const v0, 0x7f0b0001

    invoke-direct {p0, v0}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aget-object v3, v0, v3

    aput-object v3, v7, v2

    const/4 v2, 0x1

    const/4 v3, 0x2

    aget-object v0, v0, v3

    aput-object v0, v7, v2

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f09003c

    invoke-direct {p0, v2}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const v4, 0x7f09003d

    invoke-direct {p0, v4}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "config_%s_log"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v10, "default"

    aput-object v10, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "access"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const-string v11, "access"

    aput-object v11, v8, v10

    const/4 v10, 0x1

    const-string v11, "none"

    aput-object v11, v8, v10

    invoke-static/range {v0 .. v8}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->g:Landroid/preference/ListPreference;

    goto/16 :goto_24e

    :cond_512
    aget-object v4, v1, v0

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_51f

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_51f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3f1

    :cond_523
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_566

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_566

    new-instance v1, Ljava/util/Locale;

    const/4 v4, 0x0

    const-string v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_555
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v4

    add-int/lit8 v1, v2, 0x1

    aput-object v0, v8, v1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_41c

    :cond_566
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_555

    :catch_56c
    move-exception v1

    goto/16 :goto_71
.end method

.method public final a(Ljava/lang/String;)V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_18

    :try_start_4
    const-string v2, "config_%s_access"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "default"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    :cond_18
    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    const-string v3, "config_%s_access"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "default"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "prompt"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Leu/chainfire/supersu/Constants;->a(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_410

    :goto_35
    if-eqz p1, :cond_38

    move v0, v1

    :cond_38
    if-eqz p1, :cond_4e

    const-string v2, "config_%s_notify"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "default"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    :cond_4e
    move v0, v1

    :cond_4f
    if-eqz p1, :cond_65

    const-string v2, "config_%s_log"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "default"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    :cond_65
    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    const-string v3, "config_%s_log"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "default"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "access"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Leu/chainfire/supersu/Constants;->c(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_41a

    :goto_82
    if-eqz p1, :cond_85

    move v0, v1

    :cond_85
    if-eqz p1, :cond_9b

    const-string v2, "config_%s_logage"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "default"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bb

    :cond_9b
    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    const-string v3, "config_%s_logage"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "default"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sparse-switch v2, :sswitch_data_424

    :goto_b8
    if-eqz p1, :cond_bb

    move v0, v1

    :cond_bb
    if-eqz p1, :cond_d1

    const-string v2, "config_%s_logformat"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "default"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40c

    :cond_d1
    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    const-string v3, "config_%s_logformat"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "default"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "31122359"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "31122359"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_114

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->j:Landroid/preference/ListPreference;

    const-string v4, "[ %s ]\n%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const v7, 0x7f0b0003

    invoke-direct {p0, v7}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const v7, 0x7f090045

    invoke-direct {p0, v7}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_114
    const-string v3, "12312359"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->j:Landroid/preference/ListPreference;

    const-string v4, "[ %s ]\n%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const v7, 0x7f0b0003

    invoke-direct {p0, v7}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const v7, 0x7f090045

    invoke-direct {p0, v7}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_141
    const-string v3, "31121159PM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16e

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->j:Landroid/preference/ListPreference;

    const-string v4, "[ %s ]\n%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const v7, 0x7f0b0003

    invoke-direct {p0, v7}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const v7, 0x7f090045

    invoke-direct {p0, v7}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_16e
    const-string v3, "12311159PM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19b

    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->j:Landroid/preference/ListPreference;

    const-string v3, "[ %s ]\n%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0x7f0b0003

    invoke-direct {p0, v6}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x7f090045

    invoke-direct {p0, v6}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_19b
    if-eqz p1, :cond_40c

    :goto_19d
    if-nez p1, :cond_1bf

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->k:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1bf

    invoke-static {}, Leu/chainfire/supersu/PINActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c0

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->k:Landroid/preference/Preference;

    const v2, 0x7f090049

    invoke-direct {p0, v2}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1bf
    :goto_1bf
    if-eqz p1, :cond_1e5

    const-string v0, "survival"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e5

    new-instance v0, Leu/chainfire/supersu/Installer;

    invoke-direct {v0}, Leu/chainfire/supersu/Installer;-><init>()V

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Leu/chainfire/supersu/Installer;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    const-string v4, "survival"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Leu/chainfire/supersu/Installer;->a(Landroid/content/Context;Z)Z

    :cond_1e5
    if-eqz p1, :cond_1ef

    const-string v0, "locale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_252

    :cond_1ef
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    const-string v2, "locale"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3ce

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->l:Landroid/preference/ListPreference;

    const-string v2, "[ %s ]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f09006d

    invoke-direct {p0, v5}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_219
    if-eqz p1, :cond_252

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_401

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0a0043

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_22d
    const-string v2, "SuperSU"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f09006e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f090004

    new-instance v3, Leu/chainfire/supersu/SettingsFragment$16;

    invoke-direct {v3, p0}, Leu/chainfire/supersu/SettingsFragment$16;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Leu/chainfire/supersu/SettingsFragment$17;

    invoke-direct {v2, p0}, Leu/chainfire/supersu/SettingsFragment$17;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_252
    if-eqz v1, :cond_264

    new-instance v0, Leu/chainfire/supersu/Settings;

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Leu/chainfire/supersu/Settings;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/Settings;->a(Landroid/content/Context;)V

    :cond_264
    :goto_264
    return-void

    :pswitch_265
    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->e:Landroid/preference/ListPreference;

    const-string v3, "[ %s ]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/high16 v6, 0x7f0b

    invoke-direct {p0, v6}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_35

    :catch_281
    move-exception v0

    goto :goto_264

    :pswitch_283
    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->e:Landroid/preference/ListPreference;

    const-string v3, "[ %s ]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/high16 v6, 0x7f0b

    invoke-direct {p0, v6}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_35

    :pswitch_29f
    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->e:Landroid/preference/ListPreference;

    const-string v3, "[ %s ]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/high16 v6, 0x7f0b

    invoke-direct {p0, v6}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_35

    :pswitch_2bb
    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->g:Landroid/preference/ListPreference;

    const-string v3, "[ %s ]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0x7f0b0001

    invoke-direct {p0, v6}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_82

    :pswitch_2d8
    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->g:Landroid/preference/ListPreference;

    const-string v3, "[ %s ]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0x7f0b0001

    invoke-direct {p0, v6}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_82

    :pswitch_2f5
    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->g:Landroid/preference/ListPreference;

    const-string v3, "[ %s ]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0x7f0b0001

    invoke-direct {p0, v6}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_82

    :sswitch_312
    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->h:Landroid/preference/ListPreference;

    const-string v3, "[ %s ]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0x7f0b0002

    invoke-direct {p0, v6}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_b8

    :sswitch_32f
    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->h:Landroid/preference/ListPreference;

    const-string v3, "[ %s ]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0x7f0b0002

    invoke-direct {p0, v6}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_b8

    :sswitch_34c
    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->h:Landroid/preference/ListPreference;

    const-string v3, "[ %s ]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0x7f0b0002

    invoke-direct {p0, v6}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_b8

    :sswitch_369
    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->h:Landroid/preference/ListPreference;

    const-string v3, "[ %s ]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0x7f0b0002

    invoke-direct {p0, v6}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_b8

    :sswitch_386
    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->h:Landroid/preference/ListPreference;

    const-string v3, "[ %s ]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0x7f0b0002

    invoke-direct {p0, v6}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_b8

    :sswitch_3a3
    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->h:Landroid/preference/ListPreference;

    const-string v3, "[ %s ]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0x7f0b0002

    invoke-direct {p0, v6}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_b8

    :cond_3c0
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->k:Landroid/preference/Preference;

    const v2, 0x7f090048

    invoke-direct {p0, v2}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1bf

    :cond_3ce
    new-instance v2, Ljava/util/Locale;

    const/4 v3, 0x0

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->l:Landroid/preference/ListPreference;

    const-string v3, "[ %s ]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_219

    :cond_401
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    :try_end_40a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_40a} :catch_281

    goto/16 :goto_22d

    :cond_40c
    move v1, v0

    goto/16 :goto_19d

    nop

    :pswitch_data_410
    .packed-switch 0x0
        :pswitch_29f
        :pswitch_283
        :pswitch_265
    .end packed-switch

    :pswitch_data_41a
    .packed-switch 0x0
        :pswitch_2f5
        :pswitch_2d8
        :pswitch_2bb
    .end packed-switch

    :sswitch_data_424
    .sparse-switch
        0x0 -> :sswitch_312
        0x1 -> :sswitch_3a3
        0x2 -> :sswitch_386
        0x3 -> :sswitch_369
        0x7 -> :sswitch_34c
        0xe -> :sswitch_32f
    .end sparse-switch
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p2}, Leu/chainfire/supersu/SettingsFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1, p2}, Leu/chainfire/supersu/PreferenceListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
