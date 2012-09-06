.class public Lcom/google/android/apps/plus/settings/AboutSettingsActivity;
.super Lcom/google/android/apps/plus/settings/BaseSettingsActivity;
.source "AboutSettingsActivity.java"


# static fields
.field private static final PRIVACY:Landroid/net/Uri;

.field private static final TERMS:Landroid/net/Uri;

.field private static sLicenseKey:Ljava/lang/String;

.field private static sNetworkStatsKey:Ljava/lang/String;

.field private static sNetworkTransactionsKey:Ljava/lang/String;

.field private static sPrivacyKey:Ljava/lang/String;

.field private static sTermsKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string v0, "http://m.google.com/app/plus/serviceurl?type=tos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->TERMS:Landroid/net/Uri;

    .line 27
    const-string v0, "http://m.google.com/app/plus/serviceurl?type=privacy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->PRIVACY:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->PRIVACY:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->TERMS:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    sget-object v8, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->sLicenseKey:Ljava/lang/String;

    if-nez v8, :cond_34

    .line 42
    const v8, 0x7f080026

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->sLicenseKey:Ljava/lang/String;

    .line 43
    const v8, 0x7f080027

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->sPrivacyKey:Ljava/lang/String;

    .line 44
    const v8, 0x7f080028

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->sTermsKey:Ljava/lang/String;

    .line 45
    const v8, 0x7f080029

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->sNetworkTransactionsKey:Ljava/lang/String;

    .line 46
    const v8, 0x7f08002a

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->sNetworkStatsKey:Ljava/lang/String;

    .line 49
    :cond_34
    sget-boolean v8, Lcom/google/android/apps/plus/util/EsLog;->ENABLE_DOGFOOD_FEATURES:Z

    if-eqz v8, :cond_3e

    .line 50
    const v8, 0x7f05000a

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->addPreferencesFromResource(I)V

    .line 52
    :cond_3e
    const/high16 v8, 0x7f05

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->addPreferencesFromResource(I)V

    .line 55
    :try_start_43
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 57
    .local v5, packageInfo:Landroid/content/pm/PackageInfo;
    const-string v8, "build_version"

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_5b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_43 .. :try_end_5b} :catch_aa

    .line 62
    .end local v5           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_5b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 64
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    sget-boolean v8, Lcom/google/android/apps/plus/util/EsLog;->ENABLE_DOGFOOD_FEATURES:Z

    if-eqz v8, :cond_7f

    .line 65
    sget-object v8, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->sNetworkTransactionsKey:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 66
    .local v3, netRequestsPreference:Landroid/preference/Preference;
    new-instance v8, Lcom/google/android/apps/plus/settings/AboutSettingsActivity$1;

    invoke-direct {v8, p0, v0}, Lcom/google/android/apps/plus/settings/AboutSettingsActivity$1;-><init>(Lcom/google/android/apps/plus/settings/AboutSettingsActivity;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 78
    sget-object v8, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->sNetworkStatsKey:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 79
    .local v4, netStatsPreference:Landroid/preference/Preference;
    new-instance v8, Lcom/google/android/apps/plus/settings/AboutSettingsActivity$2;

    invoke-direct {v8, p0, v0}, Lcom/google/android/apps/plus/settings/AboutSettingsActivity$2;-><init>(Lcom/google/android/apps/plus/settings/AboutSettingsActivity;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 92
    .end local v3           #netRequestsPreference:Landroid/preference/Preference;
    .end local v4           #netStatsPreference:Landroid/preference/Preference;
    :cond_7f
    sget-object v8, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->sLicenseKey:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 93
    .local v2, licensePreference:Landroid/preference/Preference;
    new-instance v8, Lcom/google/android/apps/plus/settings/AboutSettingsActivity$3;

    invoke-direct {v8, p0}, Lcom/google/android/apps/plus/settings/AboutSettingsActivity$3;-><init>(Lcom/google/android/apps/plus/settings/AboutSettingsActivity;)V

    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 104
    sget-object v8, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->sPrivacyKey:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 105
    .local v6, privacyPreference:Landroid/preference/Preference;
    new-instance v8, Lcom/google/android/apps/plus/settings/AboutSettingsActivity$4;

    invoke-direct {v8, p0}, Lcom/google/android/apps/plus/settings/AboutSettingsActivity$4;-><init>(Lcom/google/android/apps/plus/settings/AboutSettingsActivity;)V

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 113
    sget-object v8, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->sTermsKey:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 114
    .local v7, termsPreference:Landroid/preference/Preference;
    new-instance v8, Lcom/google/android/apps/plus/settings/AboutSettingsActivity$5;

    invoke-direct {v8, p0}, Lcom/google/android/apps/plus/settings/AboutSettingsActivity$5;-><init>(Lcom/google/android/apps/plus/settings/AboutSettingsActivity;)V

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 126
    return-void

    .line 58
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v2           #licensePreference:Landroid/preference/Preference;
    .end local v6           #privacyPreference:Landroid/preference/Preference;
    .end local v7           #termsPreference:Landroid/preference/Preference;
    :catch_aa
    move-exception v1

    .line 59
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "build_version"

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    const-string v9, "?"

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5b
.end method
