.class final Lcom/twitter/android/ch;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/twitter/android/NotificationSettingsActivity;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private final i:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Lcom/twitter/android/NotificationSettingsActivity;Landroid/accounts/Account;)V
    .registers 3

    iput-object p1, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/NotificationSettingsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/twitter/android/ch;->i:Landroid/accounts/Account;

    return-void
.end method

.method private a(Landroid/preference/Preference;I)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget-boolean v0, v0, Lcom/twitter/android/NotificationSettingsActivity;->b:Z

    if-eqz v0, :cond_18

    check-cast p1, Landroid/preference/ListPreference;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/twitter/android/util/x;->a(Landroid/preference/ListPreference;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/NotificationSettingsActivity;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_17
    return-void

    :cond_18
    invoke-static {p1, p2}, Lcom/twitter/android/ch;->b(Landroid/preference/Preference;I)V

    goto :goto_17
.end method

.method private static b(Landroid/preference/Preference;I)V
    .registers 3

    const/4 v0, 0x1

    check-cast p0, Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_9

    :goto_5
    invoke-virtual {p0, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/NotificationSettingsActivity;

    invoke-virtual {v0}, Lcom/twitter/android/NotificationSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/ch;->i:Landroid/accounts/Account;

    iget-object v10, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    sget-object v1, Lcom/twitter/android/provider/d;->a:Landroid/net/Uri;

    invoke-static {v1, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "notif_tweet"

    aput-object v4, v2, v6

    const-string v4, "notif_mention"

    aput-object v4, v2, v9

    const-string v4, "notif_message"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v1, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget-boolean v1, v1, Lcom/twitter/android/NotificationSettingsActivity;->b:Z

    if-eqz v1, :cond_c3

    move v4, v6

    move v2, v6

    :goto_31
    if-eqz v5, :cond_d2

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_cf

    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_cc

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    :goto_43
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_4d

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    :cond_4d
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_c8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v11, v4

    move v4, v1

    move v1, v11

    :goto_5a
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move v7, v1

    move v8, v2

    :goto_5f
    sget-object v1, Lcom/twitter/android/provider/NotificationSetting;->f:Lcom/twitter/android/provider/NotificationSetting;

    invoke-virtual {v1, v4}, Lcom/twitter/android/provider/NotificationSetting;->c(I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/ch;->b:I

    iget v1, p0, Lcom/twitter/android/ch;->b:I

    if-ne v1, v9, :cond_9a

    iget-object v1, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/NotificationSettingsActivity;

    invoke-static {v1}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;)Lcom/twitter/android/client/b;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/twitter/android/client/b;->b(Ljava/lang/String;)Lcom/twitter/android/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v1

    sget-object v4, Lcom/twitter/android/provider/ab;->k:Landroid/net/Uri;

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, v1, v2}, Lcom/twitter/android/provider/o;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_9a

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p0, Lcom/twitter/android/ch;->c:I

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9a
    sget-object v0, Lcom/twitter/android/provider/NotificationSetting;->a:Lcom/twitter/android/provider/NotificationSetting;

    invoke-virtual {v0, v8}, Lcom/twitter/android/provider/NotificationSetting;->c(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/ch;->d:I

    sget-object v0, Lcom/twitter/android/provider/NotificationSetting;->b:Lcom/twitter/android/provider/NotificationSetting;

    invoke-virtual {v0, v8}, Lcom/twitter/android/provider/NotificationSetting;->c(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/ch;->e:I

    sget-object v0, Lcom/twitter/android/provider/NotificationSetting;->c:Lcom/twitter/android/provider/NotificationSetting;

    invoke-virtual {v0, v8}, Lcom/twitter/android/provider/NotificationSetting;->c(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/ch;->f:I

    sget-object v0, Lcom/twitter/android/provider/NotificationSetting;->d:Lcom/twitter/android/provider/NotificationSetting;

    invoke-virtual {v0, v8}, Lcom/twitter/android/provider/NotificationSetting;->c(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/ch;->g:I

    sget-object v0, Lcom/twitter/android/provider/NotificationSetting;->e:Lcom/twitter/android/provider/NotificationSetting;

    invoke-virtual {v0, v7}, Lcom/twitter/android/provider/NotificationSetting;->c(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/ch;->h:I

    return-object v3

    :cond_c3
    const/16 v2, 0x55

    move v4, v9

    goto/16 :goto_31

    :cond_c8
    move v11, v4

    move v4, v1

    move v1, v11

    goto :goto_5a

    :cond_cc
    move v1, v6

    goto/16 :goto_43

    :cond_cf
    move v1, v4

    move v4, v6

    goto :goto_5a

    :cond_d2
    move v7, v4

    move v8, v2

    move v4, v6

    goto :goto_5f
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 6

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/NotificationSettingsActivity;

    invoke-virtual {v0}, Lcom/twitter/android/NotificationSettingsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_75

    iget-object v0, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget-boolean v0, v0, Lcom/twitter/android/NotificationSettingsActivity;->b:Z

    if-eqz v0, :cond_78

    iget-object v2, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget v0, p0, Lcom/twitter/android/ch;->b:I

    if-ne v0, v1, :cond_76

    move v0, v1

    :goto_16
    iget v3, p0, Lcom/twitter/android/ch;->c:I

    invoke-virtual {v2, v0, v3}, Lcom/twitter/android/NotificationSettingsActivity;->a(ZI)V

    :goto_1b
    iget-object v0, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget-object v0, v0, Lcom/twitter/android/NotificationSettingsActivity;->k:Landroid/preference/Preference;

    iget v2, p0, Lcom/twitter/android/ch;->d:I

    invoke-direct {p0, v0, v2}, Lcom/twitter/android/ch;->a(Landroid/preference/Preference;I)V

    iget-object v0, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget-object v0, v0, Lcom/twitter/android/NotificationSettingsActivity;->l:Landroid/preference/Preference;

    iget v2, p0, Lcom/twitter/android/ch;->e:I

    invoke-direct {p0, v0, v2}, Lcom/twitter/android/ch;->a(Landroid/preference/Preference;I)V

    iget-object v0, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget-object v0, v0, Lcom/twitter/android/NotificationSettingsActivity;->m:Landroid/preference/Preference;

    iget v2, p0, Lcom/twitter/android/ch;->f:I

    invoke-direct {p0, v0, v2}, Lcom/twitter/android/ch;->a(Landroid/preference/Preference;I)V

    iget-object v0, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget-object v0, v0, Lcom/twitter/android/NotificationSettingsActivity;->n:Landroid/preference/Preference;

    iget v2, p0, Lcom/twitter/android/ch;->g:I

    invoke-static {v0, v2}, Lcom/twitter/android/ch;->b(Landroid/preference/Preference;I)V

    iget-object v0, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget-object v0, v0, Lcom/twitter/android/NotificationSettingsActivity;->o:Landroid/preference/Preference;

    iget v2, p0, Lcom/twitter/android/ch;->h:I

    invoke-static {v0, v2}, Lcom/twitter/android/ch;->b(Landroid/preference/Preference;I)V

    iget-object v0, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget v2, p0, Lcom/twitter/android/ch;->d:I

    iput v2, v0, Lcom/twitter/android/NotificationSettingsActivity;->e:I

    iget-object v0, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget v2, p0, Lcom/twitter/android/ch;->h:I

    iput v2, v0, Lcom/twitter/android/NotificationSettingsActivity;->i:I

    iget-object v0, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget v2, p0, Lcom/twitter/android/ch;->b:I

    iput v2, v0, Lcom/twitter/android/NotificationSettingsActivity;->d:I

    iget-object v0, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget v2, p0, Lcom/twitter/android/ch;->e:I

    iput v2, v0, Lcom/twitter/android/NotificationSettingsActivity;->f:I

    iget-object v0, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget v2, p0, Lcom/twitter/android/ch;->f:I

    iput v2, v0, Lcom/twitter/android/NotificationSettingsActivity;->g:I

    iget-object v0, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget v2, p0, Lcom/twitter/android/ch;->g:I

    iput v2, v0, Lcom/twitter/android/NotificationSettingsActivity;->h:I

    iget-object v0, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/NotificationSettingsActivity;

    invoke-virtual {v0}, Lcom/twitter/android/NotificationSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_75
    return-void

    :cond_76
    const/4 v0, 0x0

    goto :goto_16

    :cond_78
    iget-object v0, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget-object v0, v0, Lcom/twitter/android/NotificationSettingsActivity;->j:Landroid/preference/Preference;

    iget v2, p0, Lcom/twitter/android/ch;->b:I

    invoke-static {v0, v2}, Lcom/twitter/android/ch;->b(Landroid/preference/Preference;I)V

    goto :goto_1b
.end method

.method protected final onPreExecute()V
    .registers 3

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/NotificationSettingsActivity;

    invoke-virtual {v0}, Lcom/twitter/android/NotificationSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    return-void
.end method
