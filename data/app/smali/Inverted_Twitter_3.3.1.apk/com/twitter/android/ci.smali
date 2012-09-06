.class final Lcom/twitter/android/ci;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/twitter/android/NotificationSettingsActivity;

.field private final b:Landroid/accounts/Account;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/twitter/android/NotificationSettingsActivity;Landroid/accounts/Account;)V
    .registers 3

    iput-object p1, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/NotificationSettingsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/twitter/android/ci;->b:Landroid/accounts/Account;

    return-void
.end method

.method private static a(Landroid/preference/Preference;)I
    .registers 2

    check-cast p0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private b(Landroid/preference/Preference;)I
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget-boolean v0, v0, Lcom/twitter/android/NotificationSettingsActivity;->b:Z

    if-eqz v0, :cond_15

    check-cast p1, Landroid/preference/ListPreference;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_14
    return v0

    :cond_15
    invoke-static {p1}, Lcom/twitter/android/ci;->a(Landroid/preference/Preference;)I

    move-result v0

    goto :goto_14
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget-object v1, p0, Lcom/twitter/android/ci;->b:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget-boolean v2, v2, Lcom/twitter/android/NotificationSettingsActivity;->b:Z

    iget v3, p0, Lcom/twitter/android/ci;->c:I

    iget v4, p0, Lcom/twitter/android/ci;->h:I

    iget v5, p0, Lcom/twitter/android/ci;->d:I

    iget v6, p0, Lcom/twitter/android/ci;->e:I

    iget v7, p0, Lcom/twitter/android/ci;->f:I

    iget v8, p0, Lcom/twitter/android/ci;->g:I

    if-nez v2, :cond_8b

    new-instance v1, Landroid/content/ContentValues;

    const/4 v9, 0x4

    invoke-direct {v1, v9}, Landroid/content/ContentValues;-><init>(I)V

    sget-object v9, Lcom/twitter/android/provider/NotificationSetting;->a:Lcom/twitter/android/provider/NotificationSetting;

    invoke-virtual {v9, v5}, Lcom/twitter/android/provider/NotificationSetting;->b(I)I

    move-result v9

    or-int/lit8 v9, v9, 0x0

    sget-object v10, Lcom/twitter/android/provider/NotificationSetting;->b:Lcom/twitter/android/provider/NotificationSetting;

    invoke-virtual {v10, v6}, Lcom/twitter/android/provider/NotificationSetting;->b(I)I

    move-result v10

    or-int/2addr v9, v10

    sget-object v10, Lcom/twitter/android/provider/NotificationSetting;->c:Lcom/twitter/android/provider/NotificationSetting;

    invoke-virtual {v10, v7}, Lcom/twitter/android/provider/NotificationSetting;->b(I)I

    move-result v10

    or-int/2addr v9, v10

    sget-object v10, Lcom/twitter/android/provider/NotificationSetting;->d:Lcom/twitter/android/provider/NotificationSetting;

    invoke-virtual {v10, v8}, Lcom/twitter/android/provider/NotificationSetting;->b(I)I

    move-result v10

    or-int/2addr v9, v10

    const-string v10, "notif_mention"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "notif_message"

    sget-object v10, Lcom/twitter/android/provider/NotificationSetting;->e:Lcom/twitter/android/provider/NotificationSetting;

    invoke-virtual {v10, v4}, Lcom/twitter/android/provider/NotificationSetting;->b(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "notif_tweet"

    sget-object v10, Lcom/twitter/android/provider/NotificationSetting;->f:Lcom/twitter/android/provider/NotificationSetting;

    invoke-virtual {v10, v3}, Lcom/twitter/android/provider/NotificationSetting;->b(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v0}, Lcom/twitter/android/provider/a;->a(Landroid/content/Context;)Lcom/twitter/android/provider/a;

    move-result-object v0

    iget-object v9, p0, Lcom/twitter/android/ci;->b:Landroid/accounts/Account;

    iget-object v9, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v9, v1, v2}, Lcom/twitter/android/provider/a;->a(Ljava/lang/String;Landroid/content/ContentValues;Z)I

    :cond_71
    :goto_71
    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iput v5, v0, Lcom/twitter/android/NotificationSettingsActivity;->e:I

    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iput v4, v0, Lcom/twitter/android/NotificationSettingsActivity;->i:I

    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iput v3, v0, Lcom/twitter/android/NotificationSettingsActivity;->d:I

    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iput v6, v0, Lcom/twitter/android/NotificationSettingsActivity;->f:I

    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iput v7, v0, Lcom/twitter/android/NotificationSettingsActivity;->g:I

    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iput v8, v0, Lcom/twitter/android/NotificationSettingsActivity;->h:I

    const/4 v0, 0x0

    return-object v0

    :cond_8b
    iget-boolean v2, p0, Lcom/twitter/android/ci;->i:Z

    if-eqz v2, :cond_71

    sget-object v2, Lcom/twitter/android/provider/NotificationSetting;->f:Lcom/twitter/android/provider/NotificationSetting;

    invoke-virtual {v2, v3}, Lcom/twitter/android/provider/NotificationSetting;->a(I)I

    move-result v2

    or-int/lit8 v2, v2, 0x0

    sget-object v9, Lcom/twitter/android/provider/NotificationSetting;->a:Lcom/twitter/android/provider/NotificationSetting;

    invoke-virtual {v9, v5}, Lcom/twitter/android/provider/NotificationSetting;->a(I)I

    move-result v9

    or-int/2addr v2, v9

    sget-object v9, Lcom/twitter/android/provider/NotificationSetting;->b:Lcom/twitter/android/provider/NotificationSetting;

    invoke-virtual {v9, v6}, Lcom/twitter/android/provider/NotificationSetting;->a(I)I

    move-result v9

    or-int/2addr v2, v9

    sget-object v9, Lcom/twitter/android/provider/NotificationSetting;->c:Lcom/twitter/android/provider/NotificationSetting;

    invoke-virtual {v9, v7}, Lcom/twitter/android/provider/NotificationSetting;->a(I)I

    move-result v9

    or-int/2addr v2, v9

    sget-object v9, Lcom/twitter/android/provider/NotificationSetting;->d:Lcom/twitter/android/provider/NotificationSetting;

    invoke-virtual {v9, v8}, Lcom/twitter/android/provider/NotificationSetting;->a(I)I

    move-result v9

    or-int/2addr v2, v9

    sget-object v9, Lcom/twitter/android/provider/NotificationSetting;->e:Lcom/twitter/android/provider/NotificationSetting;

    invoke-virtual {v9, v4}, Lcom/twitter/android/provider/NotificationSetting;->a(I)I

    move-result v9

    or-int/2addr v2, v9

    const/4 v9, 0x0

    invoke-static {v0, v1, v2, v9}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/content/Context;Landroid/accounts/Account;IZ)V

    goto :goto_71
.end method

.method protected final onPreExecute()V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v2, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget-boolean v2, v2, Lcom/twitter/android/NotificationSettingsActivity;->b:Z

    if-eqz v2, :cond_99

    iget-object v2, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget-boolean v2, v2, Lcom/twitter/android/NotificationSettingsActivity;->c:Z

    if-eqz v2, :cond_95

    iput v1, p0, Lcom/twitter/android/ci;->c:I

    :goto_13
    iget-object v2, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget-object v2, v2, Lcom/twitter/android/NotificationSettingsActivity;->o:Landroid/preference/Preference;

    invoke-static {v2}, Lcom/twitter/android/ci;->a(Landroid/preference/Preference;)I

    move-result v2

    iput v2, p0, Lcom/twitter/android/ci;->h:I

    iget-object v2, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget-object v2, v2, Lcom/twitter/android/NotificationSettingsActivity;->k:Landroid/preference/Preference;

    invoke-direct {p0, v2}, Lcom/twitter/android/ci;->b(Landroid/preference/Preference;)I

    move-result v2

    iput v2, p0, Lcom/twitter/android/ci;->d:I

    iget-object v2, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget-object v2, v2, Lcom/twitter/android/NotificationSettingsActivity;->l:Landroid/preference/Preference;

    invoke-direct {p0, v2}, Lcom/twitter/android/ci;->b(Landroid/preference/Preference;)I

    move-result v2

    iput v2, p0, Lcom/twitter/android/ci;->e:I

    iget-object v2, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget-object v2, v2, Lcom/twitter/android/NotificationSettingsActivity;->m:Landroid/preference/Preference;

    invoke-direct {p0, v2}, Lcom/twitter/android/ci;->b(Landroid/preference/Preference;)I

    move-result v2

    iput v2, p0, Lcom/twitter/android/ci;->f:I

    iget-object v2, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget-object v2, v2, Lcom/twitter/android/NotificationSettingsActivity;->n:Landroid/preference/Preference;

    invoke-static {v2}, Lcom/twitter/android/ci;->a(Landroid/preference/Preference;)I

    move-result v2

    iput v2, p0, Lcom/twitter/android/ci;->g:I

    iget-object v2, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget v2, v2, Lcom/twitter/android/NotificationSettingsActivity;->e:I

    iget v3, p0, Lcom/twitter/android/ci;->d:I

    if-ne v2, v3, :cond_75

    iget-object v2, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget v2, v2, Lcom/twitter/android/NotificationSettingsActivity;->i:I

    iget v3, p0, Lcom/twitter/android/ci;->h:I

    if-ne v2, v3, :cond_75

    iget-object v2, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget v2, v2, Lcom/twitter/android/NotificationSettingsActivity;->f:I

    iget v3, p0, Lcom/twitter/android/ci;->e:I

    if-ne v2, v3, :cond_75

    iget-object v2, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget v2, v2, Lcom/twitter/android/NotificationSettingsActivity;->g:I

    iget v3, p0, Lcom/twitter/android/ci;->f:I

    if-ne v2, v3, :cond_75

    iget-object v2, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget v2, v2, Lcom/twitter/android/NotificationSettingsActivity;->h:I

    iget v3, p0, Lcom/twitter/android/ci;->g:I

    if-ne v2, v3, :cond_75

    iget-object v2, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget v2, v2, Lcom/twitter/android/NotificationSettingsActivity;->d:I

    iget v3, p0, Lcom/twitter/android/ci;->c:I

    if-eq v2, v3, :cond_76

    :cond_75
    move v0, v1

    :cond_76
    iput-boolean v0, p0, Lcom/twitter/android/ci;->i:Z

    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget-boolean v0, v0, Lcom/twitter/android/NotificationSettingsActivity;->b:Z

    if-eqz v0, :cond_94

    iget-boolean v0, p0, Lcom/twitter/android/ci;->i:Z

    if-eqz v0, :cond_94

    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget-object v2, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/NotificationSettingsActivity;

    const v3, 0x7f0b01c3

    invoke-virtual {v2, v3}, Lcom/twitter/android/NotificationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_94
    return-void

    :cond_95
    iput v0, p0, Lcom/twitter/android/ci;->c:I

    goto/16 :goto_13

    :cond_99
    iget-object v2, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/NotificationSettingsActivity;

    iget-object v2, v2, Lcom/twitter/android/NotificationSettingsActivity;->j:Landroid/preference/Preference;

    invoke-static {v2}, Lcom/twitter/android/ci;->a(Landroid/preference/Preference;)I

    move-result v2

    iput v2, p0, Lcom/twitter/android/ci;->c:I

    goto/16 :goto_13
.end method
