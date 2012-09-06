.class public Lcom/twitter/android/SettingsActivity;
.super Landroid/preference/PreferenceActivity;

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private a()V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/SettingsActivity;->a:Landroid/content/SharedPreferences;

    const-string v1, "proxy_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/twitter/android/SettingsActivity;->a:Landroid/content/SharedPreferences;

    const-string v1, "proxy_host"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_43

    iget-object v1, p0, Lcom/twitter/android/SettingsActivity;->a:Landroid/content/SharedPreferences;

    const-string v2, "proxy_port"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    const/16 v0, 0x3a

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_39
    iget-object v0, p0, Lcom/twitter/android/SettingsActivity;->b:Landroid/preference/Preference;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_42
    return-void

    :cond_43
    iget-object v0, p0, Lcom/twitter/android/SettingsActivity;->b:Landroid/preference/Preference;

    const v1, 0x7f0b00b6

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_42
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .registers 11

    const/4 v1, 0x0

    const-string v0, "accounts"

    invoke-virtual {p0, v0}, Lcom/twitter/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    const-string v2, "add_account"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    array-length v5, p1

    move v3, v1

    move v2, v1

    :goto_15
    if-ge v3, v5, :cond_4a

    aget-object v6, p1, v3

    const-string v1, "com.twitter.android.auth.login"

    iget-object v7, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    new-instance v7, Landroid/preference/Preference;

    invoke-direct {v7, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iget-object v1, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v7, v2}, Landroid/preference/Preference;->setOrder(I)V

    new-instance v2, Landroid/content/Intent;

    const-class v8, Lcom/twitter/android/AccountSettingsActivity;

    invoke-direct {v2, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "account"

    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :goto_45
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_15

    :cond_4a
    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setOrder(I)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/LoginActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "add_account"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    return-void

    :cond_62
    move v1, v2

    goto :goto_45
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    const/4 v0, -0x1

    if-ne p2, v0, :cond_a

    invoke-direct {p0}, Lcom/twitter/android/SettingsActivity;->a()V

    :goto_9
    return-void

    :cond_a
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_9
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/twitter/android/SettingsActivity;->addPreferencesFromResource(I)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/SettingsActivity;->a:Landroid/content/SharedPreferences;

    const-string v0, "photo_service"

    invoke-virtual {p0, v0}, Lcom/twitter/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/preference/ListPreference;

    const-string v3, "photo_service"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/twitter/android/util/x;->a(Landroid/preference/ListPreference;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "font_size"

    invoke-virtual {p0, v0}, Lcom/twitter/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/preference/ListPreference;

    const-string v3, "font_size"

    const-string v4, "14"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/twitter/android/util/x;->a(Landroid/preference/ListPreference;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "advanced_proxy"

    invoke-virtual {p0, v0}, Lcom/twitter/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iput-object v0, p0, Lcom/twitter/android/SettingsActivity;->b:Landroid/preference/Preference;

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/twitter/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/android/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.location"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_60
    const-string v0, "about"

    invoke-virtual {p0, v0}, Lcom/twitter/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {p0}, Lcom/twitter/android/AboutActivity;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/AboutActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/twitter/android/SettingsActivity;->a()V

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    return-void

    :cond_84
    const-string v0, "advanced"

    invoke-virtual {p0, v0}, Lcom/twitter/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_60
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    const-string v0, "location"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/twitter/android/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-static {v0}, Lcom/twitter/android/platform/h;->a(Landroid/location/LocationManager;)Z

    move-result v0

    if-nez v0, :cond_31

    new-instance v0, Lcom/twitter/android/ep;

    invoke-direct {v0, p0}, Lcom/twitter/android/ep;-><init>(Lcom/twitter/android/SettingsActivity;)V

    invoke-static {p0}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;)Lcom/twitter/android/client/b;

    invoke-static {p0, v0}, Lcom/twitter/android/client/b;->b(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_31
    :goto_31
    const/4 v0, 0x1

    return v0

    :cond_33
    instance-of v0, p1, Landroid/preference/ListPreference;

    if-eqz v0, :cond_31

    check-cast p1, Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/twitter/android/util/x;->a(Landroid/preference/ListPreference;Ljava/lang/String;)V

    goto :goto_31
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5

    const/4 v0, 0x1

    const-string v1, "advanced_proxy"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/ProxySettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method protected onResume()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const-string v0, "accounts"

    invoke-virtual {p0, v0}, Lcom/twitter/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    const-string v1, "general"

    invoke-virtual {p0, v1}, Lcom/twitter/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    invoke-static {p0}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;)Lcom/twitter/android/client/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->i()Z

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/twitter/android/SettingsActivity;->finish()V

    :goto_28
    return-void

    :cond_29
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_28
.end method

.method public onSearchRequested()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
