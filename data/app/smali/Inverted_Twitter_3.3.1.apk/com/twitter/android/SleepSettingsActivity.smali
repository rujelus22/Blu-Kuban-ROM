.class public Lcom/twitter/android/SleepSettingsActivity;
.super Landroid/preference/PreferenceActivity;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private a:Lcom/twitter/android/api/af;

.field private b:Z

.field private c:Landroid/preference/Preference;

.field private d:Landroid/preference/Preference;

.field private e:Landroid/text/format/Time;

.field private f:Ljava/lang/String;

.field private g:Lcom/twitter/android/client/b;

.field private h:Lcom/twitter/android/client/Session;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/SleepSettingsActivity;)Lcom/twitter/android/api/af;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/SleepSettingsActivity;->a:Lcom/twitter/android/api/af;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/SleepSettingsActivity;Z)Z
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/SleepSettingsActivity;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/twitter/android/SleepSettingsActivity;)Landroid/text/format/Time;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/SleepSettingsActivity;->e:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/SleepSettingsActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/SleepSettingsActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/SleepSettingsActivity;)Landroid/preference/Preference;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/SleepSettingsActivity;->c:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/android/SleepSettingsActivity;)Landroid/preference/Preference;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/SleepSettingsActivity;->d:Landroid/preference/Preference;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/SleepSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    invoke-static {p0}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;)Lcom/twitter/android/client/b;

    move-result-object v2

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/twitter/android/client/b;->b(Ljava/lang/String;)Lcom/twitter/android/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/android/client/Session;->d()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p0}, Lcom/twitter/android/SleepSettingsActivity;->finish()V

    :goto_22
    return-void

    :cond_23
    invoke-virtual {v3}, Lcom/twitter/android/client/Session;->j()Lcom/twitter/android/api/af;

    move-result-object v4

    const v0, 0x7f05000c

    invoke-virtual {p0, v0}, Lcom/twitter/android/SleepSettingsActivity;->addPreferencesFromResource(I)V

    const v0, 0x7f0b00af

    invoke-virtual {p0, v0}, Lcom/twitter/android/SleepSettingsActivity;->setTitle(I)V

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/SleepSettingsActivity;->e:Landroid/text/format/Time;

    const-string v0, "sleep_enabled"

    invoke-virtual {p0, v0}, Lcom/twitter/android/SleepSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-boolean v5, v4, Lcom/twitter/android/api/af;->c:Z

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "sleep_start"

    invoke-virtual {p0, v0}, Lcom/twitter/android/SleepSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iput-object v0, p0, Lcom/twitter/android/SleepSettingsActivity;->c:Landroid/preference/Preference;

    const-string v0, "sleep_end"

    invoke-virtual {p0, v0}, Lcom/twitter/android/SleepSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iput-object v0, p0, Lcom/twitter/android/SleepSettingsActivity;->d:Landroid/preference/Preference;

    iput-object v4, p0, Lcom/twitter/android/SleepSettingsActivity;->a:Lcom/twitter/android/api/af;

    iput-object v2, p0, Lcom/twitter/android/SleepSettingsActivity;->g:Lcom/twitter/android/client/b;

    iput-object v3, p0, Lcom/twitter/android/SleepSettingsActivity;->h:Lcom/twitter/android/client/Session;

    goto :goto_22
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_2c

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_8
    return-object v0

    :pswitch_9
    new-instance v0, Landroid/app/TimePickerDialog;

    new-instance v2, Lcom/twitter/android/ez;

    invoke-direct {v2, p0}, Lcom/twitter/android/ez;-><init>(Lcom/twitter/android/SleepSettingsActivity;)V

    iget-object v1, p0, Lcom/twitter/android/SleepSettingsActivity;->a:Lcom/twitter/android/api/af;

    iget v3, v1, Lcom/twitter/android/api/af;->d:I

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_8

    :pswitch_1a
    new-instance v0, Landroid/app/TimePickerDialog;

    new-instance v2, Lcom/twitter/android/fa;

    invoke-direct {v2, p0}, Lcom/twitter/android/fa;-><init>(Lcom/twitter/android/SleepSettingsActivity;)V

    iget-object v1, p0, Lcom/twitter/android/SleepSettingsActivity;->a:Lcom/twitter/android/api/af;

    iget v3, v1, Lcom/twitter/android/api/af;->e:I

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_8

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_1a
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 4

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    iget-boolean v0, p0, Lcom/twitter/android/SleepSettingsActivity;->b:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/twitter/android/SleepSettingsActivity;->h:Lcom/twitter/android/client/Session;

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/twitter/android/SleepSettingsActivity;->a:Lcom/twitter/android/api/af;

    invoke-static {p0, v0, v1, v2}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/android/api/ac;Lcom/twitter/android/api/af;)V

    iget-object v0, p0, Lcom/twitter/android/SleepSettingsActivity;->g:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/SleepSettingsActivity;->h:Lcom/twitter/android/client/Session;

    iget-object v2, p0, Lcom/twitter/android/SleepSettingsActivity;->a:Lcom/twitter/android/api/af;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Lcom/twitter/android/api/af;)Ljava/lang/String;

    :cond_1c
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const-string v1, "sleep_enabled"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/twitter/android/SleepSettingsActivity;->a:Lcom/twitter/android/api/af;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v1, Lcom/twitter/android/api/af;->c:Z

    iput-boolean v0, p0, Lcom/twitter/android/SleepSettingsActivity;->b:Z

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5

    const/4 v0, 0x1

    const-string v1, "sleep_start"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0, v0}, Lcom/twitter/android/SleepSettingsActivity;->showDialog(I)V

    :goto_10
    return v0

    :cond_11
    const-string v1, "sleep_end"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/twitter/android/SleepSettingsActivity;->showDialog(I)V

    goto :goto_10

    :cond_22
    const/4 v0, 0x0

    goto :goto_10
.end method

.method protected onStart()V
    .registers 10

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    const v0, 0x7f0b0018

    invoke-virtual {p0, v0}, Lcom/twitter/android/SleepSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/twitter/android/SleepSettingsActivity;->e:Landroid/text/format/Time;

    iget-object v8, p0, Lcom/twitter/android/SleepSettingsActivity;->a:Lcom/twitter/android/api/af;

    iget v2, v8, Lcom/twitter/android/api/af;->f:I

    iget v3, v8, Lcom/twitter/android/api/af;->d:I

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    iget-object v2, p0, Lcom/twitter/android/SleepSettingsActivity;->c:Landroid/preference/Preference;

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget v2, v8, Lcom/twitter/android/api/af;->g:I

    iget v3, v8, Lcom/twitter/android/api/af;->e:I

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    iget-object v1, p0, Lcom/twitter/android/SleepSettingsActivity;->d:Landroid/preference/Preference;

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iput-object v7, p0, Lcom/twitter/android/SleepSettingsActivity;->f:Ljava/lang/String;

    return-void
.end method
