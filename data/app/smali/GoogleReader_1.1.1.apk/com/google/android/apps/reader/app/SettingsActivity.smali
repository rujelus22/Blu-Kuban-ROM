.class public Lcom/google/android/apps/reader/app/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"


# instance fields
.field private mContentSyncer:Lcom/google/android/accounts/ContentSyncer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/reader/app/SettingsActivity;Lcom/google/android/accounts/Account;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/reader/app/SettingsActivity;->setSyncAutomatically(Lcom/google/android/accounts/Account;Z)V

    return-void
.end method

.method private findCheckBoxPreference(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "key"

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/app/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/preference/CheckBoxPreference;

    return-object p0
.end method

.method private getAccount()Lcom/google/android/accounts/Account;
    .registers 5

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 65
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "authAccount"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, accountName:Ljava/lang/String;
    const-string v1, "com.google"

    .line 67
    .local v1, accountType:Ljava/lang/String;
    if-eqz v0, :cond_14

    new-instance v3, Lcom/google/android/accounts/Account;

    invoke-direct {v3, v0, v1}, Lcom/google/android/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-object v3

    :cond_14
    const/4 v3, 0x0

    goto :goto_13
.end method

.method private getSyncAutomatically(Lcom/google/android/accounts/Account;)Z
    .registers 4
    .parameter "account"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SettingsActivity;->mContentSyncer:Lcom/google/android/accounts/ContentSyncer;

    const-string v1, "com.google.android.apps.reader"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/accounts/ContentSyncer;->getSyncAutomatically(Lcom/google/android/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setSyncAutomatically(Lcom/google/android/accounts/Account;Z)V
    .registers 5
    .parameter "account"
    .parameter "sync"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SettingsActivity;->mContentSyncer:Lcom/google/android/accounts/ContentSyncer;

    const-string v1, "com.google.android.apps.reader"

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/accounts/ContentSyncer;->setSyncAutomatically(Lcom/google/android/accounts/Account;Ljava/lang/String;Z)V

    .line 76
    return-void
.end method

.method private setupReaderPreference(Lcom/google/android/apps/reader/preference/ReaderPreference;)V
    .registers 7
    .parameter "pref"

    .prologue
    const/4 v4, 0x0

    .line 103
    invoke-virtual {p1}, Lcom/google/android/apps/reader/preference/ReaderPreference;->key()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/apps/reader/app/SettingsActivity;->findCheckBoxPreference(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    .line 104
    .local v1, preference:Landroid/preference/CheckBoxPreference;
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/SettingsActivity;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 105
    .local v0, account:Lcom/google/android/accounts/Account;
    if-eqz v0, :cond_27

    .line 106
    invoke-static {p0, v0}, Lcom/google/android/apps/reader/preference/ReaderPreference;->getSharedPreferences(Landroid/content/Context;Lcom/google/android/accounts/Account;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 107
    .local v2, preferences:Landroid/content/SharedPreferences;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 108
    invoke-virtual {p1, v2}, Lcom/google/android/apps/reader/preference/ReaderPreference;->getBoolean(Landroid/content/SharedPreferences;)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 109
    new-instance v3, Lcom/google/android/apps/reader/app/SettingsActivity$2;

    invoke-direct {v3, p0, p1, v2, v1}, Lcom/google/android/apps/reader/app/SettingsActivity$2;-><init>(Lcom/google/android/apps/reader/app/SettingsActivity;Lcom/google/android/apps/reader/preference/ReaderPreference;Landroid/content/SharedPreferences;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 121
    .end local v2           #preferences:Landroid/content/SharedPreferences;
    :goto_26
    return-void

    .line 117
    :cond_27
    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 118
    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 119
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_26
.end method

.method private setupSyncPreference()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 83
    const-string v2, "sync"

    invoke-direct {p0, v2}, Lcom/google/android/apps/reader/app/SettingsActivity;->findCheckBoxPreference(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    .line 84
    .local v1, preference:Landroid/preference/CheckBoxPreference;
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/SettingsActivity;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 85
    .local v0, account:Lcom/google/android/accounts/Account;
    if-eqz v0, :cond_21

    .line 86
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 87
    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/app/SettingsActivity;->getSyncAutomatically(Lcom/google/android/accounts/Account;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 88
    new-instance v2, Lcom/google/android/apps/reader/app/SettingsActivity$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/apps/reader/app/SettingsActivity$1;-><init>(Lcom/google/android/apps/reader/app/SettingsActivity;Lcom/google/android/accounts/Account;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 100
    :goto_20
    return-void

    .line 96
    :cond_21
    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 97
    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 98
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_20
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-static {p0}, Lcom/google/android/accounts/ContentSyncer;->get(Landroid/content/Context;)Lcom/google/android/accounts/ContentSyncer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/app/SettingsActivity;->mContentSyncer:Lcom/google/android/accounts/ContentSyncer;

    .line 54
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/SettingsActivity;->addPreferencesFromResource(I)V

    .line 55
    const-string v0, "plugins_enabled"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {}, Lcom/google/android/apps/reader/widget/ItemViewFactory;->getPluginsSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 58
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/SettingsActivity;->setupSyncPreference()V

    .line 59
    sget-object v0, Lcom/google/android/apps/reader/preference/ReaderPreference;->CONFIRM_MARK_AS_READ:Lcom/google/android/apps/reader/preference/ReaderPreference;

    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/app/SettingsActivity;->setupReaderPreference(Lcom/google/android/apps/reader/preference/ReaderPreference;)V

    .line 60
    sget-object v0, Lcom/google/android/apps/reader/preference/ReaderPreference;->SUBSCRIPTION_FAVICONS_ENABLED:Lcom/google/android/apps/reader/preference/ReaderPreference;

    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/app/SettingsActivity;->setupReaderPreference(Lcom/google/android/apps/reader/preference/ReaderPreference;)V

    .line 61
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 125
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 130
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 127
    :pswitch_c
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/SettingsActivity;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/reader/fragment/MainScreen;->show(Landroid/content/Context;Lcom/google/android/accounts/Account;)V

    .line 128
    const/4 v0, 0x1

    goto :goto_b

    .line 125
    nop

    :pswitch_data_16
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method
