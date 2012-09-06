.class public Lcom/dropbox/android/activity/LockCodePrefsActivity;
.super Lcom/dropbox/android/activity/lock/LockableBetterPreferenceActivity;
.source "panda.py"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Landroid/preference/Preference;

.field private d:Landroid/preference/Preference;

.field private e:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/dropbox/android/activity/LockCodePrefsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/activity/LockCodePrefsActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/dropbox/android/activity/lock/LockableBetterPreferenceActivity;-><init>()V

    .line 136
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/activity/LockCodePrefsActivity;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/dropbox/android/activity/LockCodePrefsActivity;->e:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/android/activity/LockCodePrefsActivity;Lcom/dropbox/android/activity/lock/i;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/dropbox/android/activity/LockCodePrefsActivity;->a(Lcom/dropbox/android/activity/lock/i;)V

    return-void
.end method

.method private a(Lcom/dropbox/android/activity/lock/i;)V
    .registers 5
    .parameter

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dropbox/android/activity/lock/LockCodeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    const-string v1, "FULL_SCREEN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 95
    const-string v1, "PURPOSE"

    invoke-virtual {p1}, Lcom/dropbox/android/activity/lock/i;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    invoke-virtual {p1}, Lcom/dropbox/android/activity/lock/i;->a()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/android/activity/LockCodePrefsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 97
    return-void
.end method

.method private f()V
    .registers 4

    .prologue
    .line 100
    invoke-static {}, Ldbxyzptlk/j/a;->a()Ldbxyzptlk/j/a;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ldbxyzptlk/j/a;->d()Z

    move-result v1

    .line 102
    invoke-virtual {v0}, Ldbxyzptlk/j/a;->f()Z

    move-result v0

    .line 103
    iget-object v2, p0, Lcom/dropbox/android/activity/LockCodePrefsActivity;->e:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 104
    iget-object v2, p0, Lcom/dropbox/android/activity/LockCodePrefsActivity;->d:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 105
    iget-object v2, p0, Lcom/dropbox/android/activity/LockCodePrefsActivity;->e:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 106
    iget-object v0, p0, Lcom/dropbox/android/activity/LockCodePrefsActivity;->e:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/dropbox/android/activity/LockCodePrefsActivity;->d:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 108
    if-eqz v1, :cond_34

    .line 109
    iget-object v0, p0, Lcom/dropbox/android/activity/LockCodePrefsActivity;->c:Landroid/preference/Preference;

    const v1, 0x7f090137

    invoke-virtual {p0, v1}, Lcom/dropbox/android/activity/LockCodePrefsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    :goto_33
    return-void

    .line 111
    :cond_34
    iget-object v0, p0, Lcom/dropbox/android/activity/LockCodePrefsActivity;->c:Landroid/preference/Preference;

    const v1, 0x7f090136

    invoke-virtual {p0, v1}, Lcom/dropbox/android/activity/LockCodePrefsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_33
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-static {p1}, Lcom/dropbox/android/activity/lock/i;->a(I)Lcom/dropbox/android/activity/lock/i;

    move-result-object v0

    .line 118
    if-nez v0, :cond_e

    .line 119
    sget-object v0, Lcom/dropbox/android/activity/LockCodePrefsActivity;->b:Ljava/lang/String;

    const-string v1, "Got null LockActionType!"

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_d
    :pswitch_d
    return-void

    .line 122
    :cond_e
    sget-object v1, Lcom/dropbox/android/activity/ax;->a:[I

    invoke-virtual {v0}, Lcom/dropbox/android/activity/lock/i;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_26

    goto :goto_d

    .line 124
    :pswitch_1a
    invoke-direct {p0}, Lcom/dropbox/android/activity/LockCodePrefsActivity;->f()V

    goto :goto_d

    .line 128
    :pswitch_1e
    invoke-direct {p0}, Lcom/dropbox/android/activity/LockCodePrefsActivity;->f()V

    goto :goto_d

    .line 135
    :pswitch_22
    invoke-direct {p0}, Lcom/dropbox/android/activity/LockCodePrefsActivity;->f()V

    goto :goto_d

    .line 122
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1e
        :pswitch_d
        :pswitch_22
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-static {}, Ldbxyzptlk/j/a;->a()Ldbxyzptlk/j/a;

    move-result-object v1

    .line 32
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/LockCodePrefsActivity;->addPreferencesFromResource(I)V

    .line 34
    const-string v0, "lock_code_settings_toggle"

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/LockCodePrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/LockCodePrefsActivity;->c:Landroid/preference/Preference;

    .line 35
    iget-object v0, p0, Lcom/dropbox/android/activity/LockCodePrefsActivity;->c:Landroid/preference/Preference;

    new-instance v2, Lcom/dropbox/android/activity/au;

    invoke-direct {v2, p0, v1}, Lcom/dropbox/android/activity/au;-><init>(Lcom/dropbox/android/activity/LockCodePrefsActivity;Ldbxyzptlk/j/a;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 50
    const-string v0, "lock_code_settings_change"

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/LockCodePrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/LockCodePrefsActivity;->d:Landroid/preference/Preference;

    .line 51
    iget-object v0, p0, Lcom/dropbox/android/activity/LockCodePrefsActivity;->d:Landroid/preference/Preference;

    new-instance v2, Lcom/dropbox/android/activity/av;

    invoke-direct {v2, p0}, Lcom/dropbox/android/activity/av;-><init>(Lcom/dropbox/android/activity/LockCodePrefsActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 59
    const-string v0, "lock_code_settings_erase_data"

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/LockCodePrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/dropbox/android/activity/LockCodePrefsActivity;->e:Landroid/preference/CheckBoxPreference;

    .line 60
    iget-object v0, p0, Lcom/dropbox/android/activity/LockCodePrefsActivity;->e:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/dropbox/android/activity/aw;

    invoke-direct {v2, p0, v1}, Lcom/dropbox/android/activity/aw;-><init>(Lcom/dropbox/android/activity/LockCodePrefsActivity;Ldbxyzptlk/j/a;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 75
    invoke-direct {p0}, Lcom/dropbox/android/activity/LockCodePrefsActivity;->f()V

    .line 78
    const v0, 0x7f090135

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/LockCodePrefsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/LockCodePrefsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 83
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/a;->b()Z

    move-result v0

    if-nez v0, :cond_d

    .line 85
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LockCodePrefsActivity;->finish()V

    .line 87
    :cond_d
    invoke-super {p0}, Lcom/dropbox/android/activity/lock/LockableBetterPreferenceActivity;->onResume()V

    .line 88
    return-void
.end method
