.class public Lcom/twitter/android/AccountSettingsActivity;
.super Landroid/preference/PreferenceActivity;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field a:Z

.field b:Landroid/accounts/Account;

.field c:Lcom/twitter/android/client/b;

.field d:I

.field e:Ljava/lang/String;

.field f:Z

.field g:Landroid/preference/CheckBoxPreference;

.field private h:Lcom/twitter/android/client/g;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountSettingsActivity;->addPreferencesFromResource(I)V

    invoke-static {p0}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/AccountSettingsActivity;->f:Z

    invoke-virtual {p0}, Lcom/twitter/android/AccountSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/twitter/android/AccountSettingsActivity;->b:Landroid/accounts/Account;

    iget-object v0, p0, Lcom/twitter/android/AccountSettingsActivity;->b:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountSettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "sync_data"

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/twitter/android/AccountSettingsActivity;->g:Landroid/preference/CheckBoxPreference;

    const-string v0, "polling_interval"

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "edit_profile"

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "remove_account"

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "ringtone"

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "notif"

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    new-instance v0, Lcom/twitter/android/b;

    invoke-direct {v0, p0}, Lcom/twitter/android/b;-><init>(Lcom/twitter/android/AccountSettingsActivity;)V

    iput-object v0, p0, Lcom/twitter/android/AccountSettingsActivity;->h:Lcom/twitter/android/client/g;

    invoke-static {p0}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;)Lcom/twitter/android/client/b;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/AccountSettingsActivity;->c:Lcom/twitter/android/client/b;

    iget-object v0, p0, Lcom/twitter/android/AccountSettingsActivity;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/AccountSettingsActivity;->h:Lcom/twitter/android/client/g;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/g;)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_50

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_8
    return-object v0

    :pswitch_9
    new-instance v0, Lcom/twitter/android/a;

    invoke-direct {v0, p0}, Lcom/twitter/android/a;-><init>(Lcom/twitter/android/AccountSettingsActivity;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0028

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_8

    :pswitch_35
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const v1, 0x7f0b0029

    invoke-virtual {p0, v1}, Lcom/twitter/android/AccountSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_8

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_9
        :pswitch_35
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    iget-object v0, p0, Lcom/twitter/android/AccountSettingsActivity;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/AccountSettingsActivity;->h:Lcom/twitter/android/client/g;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/b;->b(Lcom/twitter/android/client/g;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sync_data"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1c

    const v1, 0x7f0b009f

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(I)V

    :goto_1b
    return v0

    :cond_1c
    const v1, 0x7f0b00a0

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1b

    :cond_23
    const-string v2, "polling_interval"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    check-cast p1, Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/twitter/android/util/x;->a(Landroid/preference/ListPreference;Ljava/lang/String;)V

    goto :goto_1b

    :cond_33
    const-string v2, "ringtone"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/twitter/android/AccountSettingsActivity;->e:Ljava/lang/String;

    goto :goto_1b

    :cond_40
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "remove_account"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountSettingsActivity;->showDialog(I)V

    :goto_10
    return v0

    :cond_11
    const-string v2, "edit_profile"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    :try_start_19
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/AccountSettingsActivity;->b:Landroid/accounts/Account;

    const-string v3, "account_user_info"

    invoke-virtual {v1, v2, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/api/r;->c(Ljava/lang/String;)Lcom/twitter/android/api/ac;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/EditProfileActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "user"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "account_name"

    iget-object v3, p0, Lcom/twitter/android/AccountSettingsActivity;->b:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twitter/android/AccountSettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_43
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_43} :catch_44
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_43} :catch_62

    goto :goto_10

    :catch_44
    move-exception v0

    :cond_45
    :goto_45
    const/4 v0, 0x0

    goto :goto_10

    :cond_47
    const-string v0, "notif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/NotificationSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "account"

    iget-object v2, p0, Lcom/twitter/android/AccountSettingsActivity;->b:Landroid/accounts/Account;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_45

    :catch_62
    move-exception v0

    goto :goto_45
.end method

.method public onSearchRequested()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .registers 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    iget-object v0, p0, Lcom/twitter/android/AccountSettingsActivity;->b:Landroid/accounts/Account;

    if-eqz v0, :cond_14

    new-instance v0, Lcom/twitter/android/c;

    iget-object v1, p0, Lcom/twitter/android/AccountSettingsActivity;->b:Landroid/accounts/Account;

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/c;-><init>(Lcom/twitter/android/AccountSettingsActivity;Landroid/accounts/Account;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twitter/android/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_14
    return-void
.end method

.method public onStop()V
    .registers 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    iget-object v0, p0, Lcom/twitter/android/AccountSettingsActivity;->b:Landroid/accounts/Account;

    if-eqz v0, :cond_14

    new-instance v0, Lcom/twitter/android/d;

    iget-object v1, p0, Lcom/twitter/android/AccountSettingsActivity;->b:Landroid/accounts/Account;

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/d;-><init>(Lcom/twitter/android/AccountSettingsActivity;Landroid/accounts/Account;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twitter/android/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_14
    return-void
.end method
