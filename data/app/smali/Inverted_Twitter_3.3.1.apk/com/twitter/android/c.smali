.class final Lcom/twitter/android/c;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/twitter/android/AccountSettingsActivity;

.field private b:Z

.field private c:I

.field private d:Z

.field private e:Z

.field private final f:Landroid/accounts/Account;

.field private final g:Z


# direct methods
.method public constructor <init>(Lcom/twitter/android/AccountSettingsActivity;Landroid/accounts/Account;)V
    .registers 4

    iput-object p1, p0, Lcom/twitter/android/c;->a:Lcom/twitter/android/AccountSettingsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/twitter/android/c;->f:Landroid/accounts/Account;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/c;->g:Z

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/twitter/android/c;->a:Lcom/twitter/android/AccountSettingsActivity;

    invoke-virtual {v0}, Lcom/twitter/android/AccountSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/provider/d;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/twitter/android/c;->f:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "interval"

    aput-object v4, v2, v7

    const-string v4, "vibrate"

    aput-object v4, v2, v6

    const-string v4, "ringtone"

    aput-object v4, v2, v8

    const-string v4, "light"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    const/16 v0, 0x3c

    const-string v2, ""

    if-eqz v5, :cond_99

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_96

    invoke-interface {v5, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_44

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :cond_44
    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_94

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v6, :cond_8c

    move v1, v6

    :goto_51
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_5b

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_5b
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_92

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v6, :cond_8e

    move v4, v6

    :goto_68
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :goto_6b
    iput v0, p0, Lcom/twitter/android/c;->c:I

    iput-boolean v1, p0, Lcom/twitter/android/c;->d:Z

    iget-object v0, p0, Lcom/twitter/android/c;->a:Lcom/twitter/android/AccountSettingsActivity;

    iput-object v2, v0, Lcom/twitter/android/AccountSettingsActivity;->e:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/twitter/android/c;->e:Z

    iget-object v0, p0, Lcom/twitter/android/c;->a:Lcom/twitter/android/AccountSettingsActivity;

    iget-object v1, p0, Lcom/twitter/android/c;->f:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v2, "com.twitter.android.provider.TwitterProvider"

    invoke-static {v0, v1}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_90

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_90

    :goto_89
    iput-boolean v6, p0, Lcom/twitter/android/c;->b:Z

    return-object v3

    :cond_8c
    move v1, v7

    goto :goto_51

    :cond_8e
    move v4, v7

    goto :goto_68

    :cond_90
    move v6, v7

    goto :goto_89

    :cond_92
    move v4, v7

    goto :goto_68

    :cond_94
    move v1, v7

    goto :goto_51

    :cond_96
    move v4, v7

    move v1, v7

    goto :goto_68

    :cond_99
    move v4, v7

    move v1, v7

    goto :goto_6b
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/c;->a:Lcom/twitter/android/AccountSettingsActivity;

    invoke-virtual {v0}, Lcom/twitter/android/AccountSettingsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6e

    iget-object v0, p0, Lcom/twitter/android/c;->a:Lcom/twitter/android/AccountSettingsActivity;

    iget-object v0, v0, Lcom/twitter/android/AccountSettingsActivity;->g:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/twitter/android/c;->b:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-boolean v0, p0, Lcom/twitter/android/c;->g:Z

    if-nez v0, :cond_6f

    iget-object v0, p0, Lcom/twitter/android/c;->a:Lcom/twitter/android/AccountSettingsActivity;

    iget-object v0, v0, Lcom/twitter/android/AccountSettingsActivity;->g:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b00a1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    :goto_1f
    iget-object v0, p0, Lcom/twitter/android/c;->a:Lcom/twitter/android/AccountSettingsActivity;

    const-string v1, "polling_interval"

    invoke-virtual {v0, v1}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iget v1, p0, Lcom/twitter/android/c;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/twitter/android/util/x;->a(Landroid/preference/ListPreference;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/c;->a:Lcom/twitter/android/AccountSettingsActivity;

    const-string v1, "vibrate"

    invoke-virtual {v0, v1}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/twitter/android/c;->d:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/twitter/android/c;->a:Lcom/twitter/android/AccountSettingsActivity;

    const-string v1, "ringtone"

    invoke-virtual {v0, v1}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/c;->a:Lcom/twitter/android/AccountSettingsActivity;

    iget-object v1, v1, Lcom/twitter/android/AccountSettingsActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/twitter/android/c;->a:Lcom/twitter/android/AccountSettingsActivity;

    const-string v1, "use_led"

    invoke-virtual {v0, v1}, Lcom/twitter/android/AccountSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/twitter/android/c;->e:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/twitter/android/c;->a:Lcom/twitter/android/AccountSettingsActivity;

    iget-boolean v1, p0, Lcom/twitter/android/c;->b:Z

    iput-boolean v1, v0, Lcom/twitter/android/AccountSettingsActivity;->a:Z

    iget-object v0, p0, Lcom/twitter/android/c;->a:Lcom/twitter/android/AccountSettingsActivity;

    iget v1, p0, Lcom/twitter/android/c;->c:I

    iput v1, v0, Lcom/twitter/android/AccountSettingsActivity;->d:I

    :cond_6e
    return-void

    :cond_6f
    iget-boolean v0, p0, Lcom/twitter/android/c;->b:Z

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/twitter/android/c;->a:Lcom/twitter/android/AccountSettingsActivity;

    iget-object v0, v0, Lcom/twitter/android/AccountSettingsActivity;->g:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b009f

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_1f

    :cond_7e
    iget-object v0, p0, Lcom/twitter/android/c;->a:Lcom/twitter/android/AccountSettingsActivity;

    iget-object v0, v0, Lcom/twitter/android/AccountSettingsActivity;->g:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b00a0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_1f
.end method

.method protected final onPreExecute()V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/c;->a:Lcom/twitter/android/AccountSettingsActivity;

    iget-object v0, v0, Lcom/twitter/android/AccountSettingsActivity;->g:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/twitter/android/c;->g:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    return-void
.end method
