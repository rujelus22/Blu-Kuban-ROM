.class final Lcom/twitter/android/d;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/twitter/android/AccountSettingsActivity;

.field private final b:Landroid/accounts/Account;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/twitter/android/AccountSettingsActivity;Landroid/accounts/Account;)V
    .registers 3

    iput-object p1, p0, Lcom/twitter/android/d;->a:Lcom/twitter/android/AccountSettingsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/twitter/android/d;->b:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    iget-object v1, p0, Lcom/twitter/android/d;->a:Lcom/twitter/android/AccountSettingsActivity;

    iget-object v0, p0, Lcom/twitter/android/d;->b:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v2

    iget-boolean v3, p0, Lcom/twitter/android/d;->c:Z

    iget-boolean v4, p0, Lcom/twitter/android/d;->d:Z

    iget-object v0, p0, Lcom/twitter/android/d;->a:Lcom/twitter/android/AccountSettingsActivity;

    const-string v5, "polling_interval"

    invoke-virtual {v0, v5}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Lcom/twitter/android/d;->a:Lcom/twitter/android/AccountSettingsActivity;

    iget v0, v0, Lcom/twitter/android/AccountSettingsActivity;->d:I

    if-eq v0, v5, :cond_a3

    const/4 v0, 0x1

    :goto_2b
    if-eqz v4, :cond_32

    const-string v6, "com.twitter.android.provider.TwitterProvider"

    invoke-static {v2, v6, v3}, Lcom/twitter/android/platform/j;->a(Landroid/accounts/Account;Ljava/lang/String;Z)V

    :cond_32
    if-nez v0, :cond_36

    if-eqz v4, :cond_3d

    :cond_36
    if-eqz v3, :cond_3d

    iget-object v0, p0, Lcom/twitter/android/d;->b:Landroid/accounts/Account;

    invoke-static {v1, v0, v5}, Lcom/twitter/android/platform/c;->a(Landroid/content/Context;Landroid/accounts/Account;I)V

    :cond_3d
    iget-object v0, p0, Lcom/twitter/android/d;->a:Lcom/twitter/android/AccountSettingsActivity;

    iget-boolean v6, v0, Lcom/twitter/android/AccountSettingsActivity;->f:Z

    new-instance v7, Landroid/content/ContentValues;

    const/4 v0, 0x4

    invoke-direct {v7, v0}, Landroid/content/ContentValues;-><init>(I)V

    const-string v0, "interval"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "vibrate"

    iget-object v0, p0, Lcom/twitter/android/d;->a:Lcom/twitter/android/AccountSettingsActivity;

    const-string v9, "vibrate"

    invoke-virtual {v0, v9}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "ringtone"

    iget-object v8, p0, Lcom/twitter/android/d;->a:Lcom/twitter/android/AccountSettingsActivity;

    iget-object v8, v8, Lcom/twitter/android/AccountSettingsActivity;->e:Ljava/lang/String;

    invoke-virtual {v7, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "light"

    iget-object v0, p0, Lcom/twitter/android/d;->a:Lcom/twitter/android/AccountSettingsActivity;

    const-string v9, "use_led"

    invoke-virtual {v0, v9}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {v1}, Lcom/twitter/android/provider/a;->a(Landroid/content/Context;)Lcom/twitter/android/provider/a;

    move-result-object v0

    iget-object v8, p0, Lcom/twitter/android/d;->b:Landroid/accounts/Account;

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v8, v7, v6}, Lcom/twitter/android/provider/a;->a(Ljava/lang/String;Landroid/content/ContentValues;Z)I

    if-eqz v6, :cond_99

    if-eqz v4, :cond_99

    invoke-static {v1, v2}, Lcom/twitter/android/platform/C2DMService;->b(Landroid/content/Context;Landroid/accounts/Account;)V

    :cond_99
    iget-object v0, p0, Lcom/twitter/android/d;->a:Lcom/twitter/android/AccountSettingsActivity;

    iput-boolean v3, v0, Lcom/twitter/android/AccountSettingsActivity;->a:Z

    iget-object v0, p0, Lcom/twitter/android/d;->a:Lcom/twitter/android/AccountSettingsActivity;

    iput v5, v0, Lcom/twitter/android/AccountSettingsActivity;->d:I

    const/4 v0, 0x0

    return-object v0

    :cond_a3
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method protected final onPreExecute()V
    .registers 5

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/twitter/android/d;->a:Lcom/twitter/android/AccountSettingsActivity;

    iget-object v0, v0, Lcom/twitter/android/AccountSettingsActivity;->g:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/d;->c:Z

    iget-object v0, p0, Lcom/twitter/android/d;->a:Lcom/twitter/android/AccountSettingsActivity;

    iget-boolean v0, v0, Lcom/twitter/android/AccountSettingsActivity;->a:Z

    iget-boolean v2, p0, Lcom/twitter/android/d;->c:Z

    if-eq v0, v2, :cond_36

    move v0, v1

    :goto_17
    iput-boolean v0, p0, Lcom/twitter/android/d;->d:Z

    iget-object v0, p0, Lcom/twitter/android/d;->a:Lcom/twitter/android/AccountSettingsActivity;

    iget-boolean v0, v0, Lcom/twitter/android/AccountSettingsActivity;->f:Z

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/twitter/android/d;->d:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/twitter/android/d;->a:Lcom/twitter/android/AccountSettingsActivity;

    iget-object v2, p0, Lcom/twitter/android/d;->a:Lcom/twitter/android/AccountSettingsActivity;

    const v3, 0x7f0b01c3

    invoke-virtual {v2, v3}, Lcom/twitter/android/AccountSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_35
    return-void

    :cond_36
    const/4 v0, 0x0

    goto :goto_17
.end method
