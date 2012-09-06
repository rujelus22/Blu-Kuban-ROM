.class public Lcom/google/android/apps/plus/settings/SettingsActivity;
.super Lcom/google/android/apps/plus/settings/BaseSettingsActivity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/settings/SettingsActivity$ContactsStatsSyncPreferenceChangeListener;,
        Lcom/google/android/apps/plus/settings/SettingsActivity$ContactsSyncPreferenceChangeListener;,
        Lcom/google/android/apps/plus/settings/SettingsActivity$InstantUploadSettingsLoader;
    }
.end annotation


# static fields
.field private static sContactsStatsSyncKey:Ljava/lang/String;

.field private static sContactsSyncKey:Ljava/lang/String;

.field private static sHangoutKey:Ljava/lang/String;

.field private static sHangoutOnOffKey:Ljava/lang/String;

.field private static sInstantUploadKey:Ljava/lang/String;

.field private static sMessengerKey:Ljava/lang/String;

.field private static sMessengerOnOffKey:Ljava/lang/String;

.field private static sNotificationsKey:Ljava/lang/String;

.field private static sNotificationsOnOffKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;-><init>()V

    .line 295
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/android/apps/plus/settings/SettingsActivity;->sInstantUploadKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/settings/SettingsActivity;Lcom/google/android/apps/plus/settings/LabelPreference;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/settings/SettingsActivity;->setOnOffLabel(Lcom/google/android/apps/plus/settings/LabelPreference;Z)V

    return-void
.end method

.method private checkInstantUploadSyncCapability()V
    .registers 11

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 158
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/SettingsActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 159
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    const-string v2, "com.google.android.apps.plus.iu.EsGoogleIuProvider"

    .line 160
    .local v2, instantUploadSyncAuthority:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/plus/util/AccountsUtil;->newAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 162
    .local v1, currentAccount:Landroid/accounts/Account;
    const-string v7, "com.google.android.apps.plus.iu.EsGoogleIuProvider"

    invoke-static {v1, v7}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    .line 164
    .local v3, instantUploadSyncEnabled:Z
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v4

    .line 167
    .local v4, masterSyncEnabled:Z
    sget-object v7, Lcom/google/android/apps/plus/settings/SettingsActivity;->sInstantUploadKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/settings/LabelPreference;

    .line 168
    .local v5, pref:Lcom/google/android/apps/plus/settings/LabelPreference;
    if-eqz v4, :cond_35

    if-eqz v3, :cond_35

    .line 169
    invoke-virtual {v5, v8}, Lcom/google/android/apps/plus/settings/LabelPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {v5, v8}, Lcom/google/android/apps/plus/settings/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 171
    new-instance v7, Lcom/google/android/apps/plus/settings/SettingsActivity$InstantUploadSettingsLoader;

    invoke-direct {v7, p0, p0}, Lcom/google/android/apps/plus/settings/SettingsActivity$InstantUploadSettingsLoader;-><init>(Lcom/google/android/apps/plus/settings/SettingsActivity;Landroid/content/Context;)V

    invoke-virtual {v7}, Lcom/google/android/apps/plus/settings/SettingsActivity$InstantUploadSettingsLoader;->startLoading()V

    .line 190
    :goto_34
    return-void

    .line 173
    :cond_35
    if-eqz v4, :cond_59

    .line 174
    const v7, 0x7f080045

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 175
    .local v6, syncName:Ljava/lang/String;
    const v7, 0x7f0800e1

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/google/android/apps/plus/settings/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/android/apps/plus/settings/LabelPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 180
    .end local v6           #syncName:Ljava/lang/String;
    :goto_4d
    new-instance v7, Lcom/google/android/apps/plus/settings/SettingsActivity$1;

    invoke-direct {v7, p0}, Lcom/google/android/apps/plus/settings/SettingsActivity$1;-><init>(Lcom/google/android/apps/plus/settings/SettingsActivity;)V

    invoke-virtual {v5, v7}, Lcom/google/android/apps/plus/settings/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 188
    invoke-direct {p0, v5, v9}, Lcom/google/android/apps/plus/settings/SettingsActivity;->setOnOffLabel(Lcom/google/android/apps/plus/settings/LabelPreference;Z)V

    goto :goto_34

    .line 177
    :cond_59
    const v7, 0x7f0800e2

    invoke-virtual {v5, v7}, Lcom/google/android/apps/plus/settings/LabelPreference;->setSummary(I)V

    goto :goto_4d
.end method

.method private setOnOffLabel(Lcom/google/android/apps/plus/settings/LabelPreference;Z)V
    .registers 5
    .parameter "pref"
    .parameter "on"

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 220
    .local v0, res:Landroid/content/res/Resources;
    if-eqz p2, :cond_1b

    .line 221
    const v1, 0x7f0803cf

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/apps/plus/settings/LabelPreference;->setLabel(Ljava/lang/CharSequence;)V

    .line 222
    const v1, 0x7f0a00f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/apps/plus/settings/LabelPreference;->setLabelColor(I)V

    .line 227
    :goto_1a
    return-void

    .line 224
    :cond_1b
    const v1, 0x7f0803d0

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/apps/plus/settings/LabelPreference;->setLabel(Ljava/lang/CharSequence;)V

    .line 225
    const v1, 0x7f0a00f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/apps/plus/settings/LabelPreference;->setLabelColor(I)V

    goto :goto_1a
.end method

.method private updateLabels()V
    .registers 6

    .prologue
    .line 196
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 197
    .local v2, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 199
    .local v1, res:Landroid/content/res/Resources;
    sget-object v3, Lcom/google/android/apps/plus/settings/SettingsActivity;->sNotificationsKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/settings/LabelPreference;

    .line 200
    .local v0, pref:Lcom/google/android/apps/plus/settings/LabelPreference;
    sget-object v3, Lcom/google/android/apps/plus/settings/SettingsActivity;->sNotificationsOnOffKey:Ljava/lang/String;

    const v4, 0x7f0c0002

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/google/android/apps/plus/settings/SettingsActivity;->setOnOffLabel(Lcom/google/android/apps/plus/settings/LabelPreference;Z)V

    .line 203
    sget-object v3, Lcom/google/android/apps/plus/settings/SettingsActivity;->sMessengerKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0           #pref:Lcom/google/android/apps/plus/settings/LabelPreference;
    check-cast v0, Lcom/google/android/apps/plus/settings/LabelPreference;

    .line 204
    .restart local v0       #pref:Lcom/google/android/apps/plus/settings/LabelPreference;
    sget-object v3, Lcom/google/android/apps/plus/settings/SettingsActivity;->sMessengerOnOffKey:Ljava/lang/String;

    const v4, 0x7f0c0004

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/google/android/apps/plus/settings/SettingsActivity;->setOnOffLabel(Lcom/google/android/apps/plus/settings/LabelPreference;Z)V

    .line 207
    sget-object v3, Lcom/google/android/apps/plus/settings/SettingsActivity;->sHangoutKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0           #pref:Lcom/google/android/apps/plus/settings/LabelPreference;
    check-cast v0, Lcom/google/android/apps/plus/settings/LabelPreference;

    .line 208
    .restart local v0       #pref:Lcom/google/android/apps/plus/settings/LabelPreference;
    sget-object v3, Lcom/google/android/apps/plus/settings/SettingsActivity;->sHangoutOnOffKey:Ljava/lang/String;

    const v4, 0x7f0c0006

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/google/android/apps/plus/settings/SettingsActivity;->setOnOffLabel(Lcom/google/android/apps/plus/settings/LabelPreference;Z)V

    .line 210
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v4, 0x7f080081

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "account"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 59
    .local v1, intentAccount:Landroid/os/Parcelable;
    if-nez v1, :cond_1d

    .line 60
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/SettingsActivity;->finish()V

    .line 121
    :goto_1c
    return-void

    .line 64
    :cond_1d
    sget-object v4, Lcom/google/android/apps/plus/settings/SettingsActivity;->sNotificationsKey:Ljava/lang/String;

    if-nez v4, :cond_72

    .line 65
    const v4, 0x7f080005

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/google/android/apps/plus/settings/SettingsActivity;->sNotificationsKey:Ljava/lang/String;

    .line 66
    const v4, 0x7f080006

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/google/android/apps/plus/settings/SettingsActivity;->sMessengerKey:Ljava/lang/String;

    .line 67
    const v4, 0x7f080007

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/google/android/apps/plus/settings/SettingsActivity;->sHangoutKey:Ljava/lang/String;

    .line 68
    const v4, 0x7f080023

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/google/android/apps/plus/settings/SettingsActivity;->sInstantUploadKey:Ljava/lang/String;

    .line 69
    const v4, 0x7f080024

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/google/android/apps/plus/settings/SettingsActivity;->sContactsSyncKey:Ljava/lang/String;

    .line 70
    const v4, 0x7f080025

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/google/android/apps/plus/settings/SettingsActivity;->sContactsStatsSyncKey:Ljava/lang/String;

    .line 71
    const v4, 0x7f080009

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/google/android/apps/plus/settings/SettingsActivity;->sNotificationsOnOffKey:Ljava/lang/String;

    .line 72
    const v4, 0x7f08000e

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/google/android/apps/plus/settings/SettingsActivity;->sMessengerOnOffKey:Ljava/lang/String;

    .line 73
    const v4, 0x7f080013

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/google/android/apps/plus/settings/SettingsActivity;->sHangoutOnOffKey:Ljava/lang/String;

    .line 76
    :cond_72
    const v4, 0x7f050009

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/settings/SettingsActivity;->addPreferencesFromResource(I)V

    .line 77
    const v4, 0x7f050001

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/settings/SettingsActivity;->addPreferencesFromResource(I)V

    .line 80
    instance-of v4, v1, Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v4, :cond_d6

    move-object v0, v1

    .line 81
    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 100
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    :goto_85
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->isAndroidSyncSupported(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_a2

    .line 101
    sget-object v4, Lcom/google/android/apps/plus/settings/SettingsActivity;->sContactsSyncKey:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 103
    .local v3, syncPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/content/EsAccountsData;->isContactsSyncEnabled(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 104
    new-instance v4, Lcom/google/android/apps/plus/settings/SettingsActivity$ContactsSyncPreferenceChangeListener;

    invoke-direct {v4, p0, v0}, Lcom/google/android/apps/plus/settings/SettingsActivity$ContactsSyncPreferenceChangeListener;-><init>(Lcom/google/android/apps/plus/settings/SettingsActivity;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    .end local v3           #syncPreference:Landroid/preference/CheckBoxPreference;
    :cond_a2
    sget-object v4, Lcom/google/android/apps/plus/settings/SettingsActivity;->sContactsStatsSyncKey:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 110
    .local v2, statsSyncPreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {p0}, Lcom/google/android/apps/plus/util/AndroidUtils;->hasTelephony(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_103

    const v4, 0x7f080314

    :goto_b7
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 114
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/content/EsAccountsData;->isContactsStatsSyncEnabled(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 116
    new-instance v4, Lcom/google/android/apps/plus/settings/SettingsActivity$ContactsStatsSyncPreferenceChangeListener;

    invoke-direct {v4, p0, v0}, Lcom/google/android/apps/plus/settings/SettingsActivity$ContactsStatsSyncPreferenceChangeListener;-><init>(Lcom/google/android/apps/plus/settings/SettingsActivity;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 120
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lcom/google/android/apps/plus/settings/SettingsActivity;->putAccountExtra(Landroid/preference/PreferenceGroup;Lcom/google/android/apps/plus/content/EsAccount;)V

    goto/16 :goto_1c

    .line 82
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v2           #statsSyncPreference:Landroid/preference/CheckBoxPreference;
    :cond_d6
    instance-of v4, v1, Landroid/accounts/Account;

    if-eqz v4, :cond_fe

    .line 86
    invoke-static {p0}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 87
    .restart local v0       #account:Lcom/google/android/apps/plus/content/EsAccount;
    if-nez v0, :cond_f4

    .line 88
    const v4, 0x7f080072

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 89
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/SettingsActivity;->finish()V

    goto/16 :goto_1c

    .line 93
    :cond_f4
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "account"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_85

    .line 96
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_fe
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/SettingsActivity;->finish()V

    goto/16 :goto_1c

    .line 110
    .restart local v0       #account:Lcom/google/android/apps/plus/content/EsAccount;
    .restart local v2       #statsSyncPreference:Landroid/preference/CheckBoxPreference;
    :cond_103
    const v4, 0x7f080315

    goto :goto_b7
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/SettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10002b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    .line 138
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_28

    .line 148
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_b
    return v2

    .line 140
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080471

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, helpUrlParam:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/google/android/apps/plus/util/HelpUrl;->getHelpUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 143
    .local v0, helpUrl:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/settings/SettingsActivity;->startExternalActivity(Landroid/content/Intent;)V

    .line 144
    const/4 v2, 0x1

    goto :goto_b

    .line 138
    nop

    :pswitch_data_28
    .packed-switch 0x7f0902bd
        :pswitch_c
    .end packed-switch
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 125
    invoke-super {p0}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->onResume()V

    .line 126
    invoke-direct {p0}, Lcom/google/android/apps/plus/settings/SettingsActivity;->checkInstantUploadSyncCapability()V

    .line 127
    invoke-direct {p0}, Lcom/google/android/apps/plus/settings/SettingsActivity;->updateLabels()V

    .line 128
    return-void
.end method
