.class public Lcom/twitter/android/NotificationSettingsActivity;
.super Landroid/preference/PreferenceActivity;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field a:Landroid/accounts/Account;

.field b:Z

.field c:Z

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:Landroid/preference/Preference;

.field k:Landroid/preference/Preference;

.field l:Landroid/preference/Preference;

.field m:Landroid/preference/Preference;

.field n:Landroid/preference/Preference;

.field o:Landroid/preference/Preference;

.field private p:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method final a(ZI)V
    .registers 9

    iget-object v0, p0, Lcom/twitter/android/NotificationSettingsActivity;->j:Landroid/preference/Preference;

    if-eqz p1, :cond_1f

    invoke-virtual {p0}, Lcom/twitter/android/NotificationSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0005

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1c
    iput-boolean p1, p0, Lcom/twitter/android/NotificationSettingsActivity;->c:Z

    return-void

    :cond_1f
    const v1, 0x7f0b00a3

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1c
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    const/4 v2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1e

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1e

    const-string v0, "enabled"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "enabled"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "count"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/NotificationSettingsActivity;->a(ZI)V

    :cond_1e
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b0095

    invoke-virtual {p0, v0}, Lcom/twitter/android/NotificationSettingsActivity;->setTitle(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/NotificationSettingsActivity;->p:Z

    invoke-static {p0}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/NotificationSettingsActivity;->b:Z

    iget-boolean v0, p0, Lcom/twitter/android/NotificationSettingsActivity;->b:Z

    if-eqz v0, :cond_64

    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lcom/twitter/android/NotificationSettingsActivity;->addPreferencesFromResource(I)V

    :goto_1c
    invoke-virtual {p0}, Lcom/twitter/android/NotificationSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/twitter/android/NotificationSettingsActivity;->a:Landroid/accounts/Account;

    iget-boolean v0, p0, Lcom/twitter/android/NotificationSettingsActivity;->b:Z

    if-eqz v0, :cond_6b

    const-string v0, "notif_tweets"

    invoke-virtual {p0, v0}, Lcom/twitter/android/NotificationSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/NotificationSettingsActivity;->j:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/twitter/android/NotificationSettingsActivity;->j:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "notif_mentions_choice"

    invoke-virtual {p0, v0}, Lcom/twitter/android/NotificationSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/NotificationSettingsActivity;->k:Landroid/preference/Preference;

    const-string v0, "notif_retweets_choice"

    invoke-virtual {p0, v0}, Lcom/twitter/android/NotificationSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/NotificationSettingsActivity;->l:Landroid/preference/Preference;

    const-string v0, "notif_favorites_choice"

    invoke-virtual {p0, v0}, Lcom/twitter/android/NotificationSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/NotificationSettingsActivity;->m:Landroid/preference/Preference;

    :goto_53
    const-string v0, "notif_follows"

    invoke-virtual {p0, v0}, Lcom/twitter/android/NotificationSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/NotificationSettingsActivity;->n:Landroid/preference/Preference;

    const-string v0, "notif_direct_messages"

    invoke-virtual {p0, v0}, Lcom/twitter/android/NotificationSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/NotificationSettingsActivity;->o:Landroid/preference/Preference;

    return-void

    :cond_64
    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lcom/twitter/android/NotificationSettingsActivity;->addPreferencesFromResource(I)V

    goto :goto_1c

    :cond_6b
    const-string v0, "notif_timeline"

    invoke-virtual {p0, v0}, Lcom/twitter/android/NotificationSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/NotificationSettingsActivity;->j:Landroid/preference/Preference;

    const-string v0, "notif_mentions"

    invoke-virtual {p0, v0}, Lcom/twitter/android/NotificationSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/NotificationSettingsActivity;->k:Landroid/preference/Preference;

    const-string v0, "notif_retweets"

    invoke-virtual {p0, v0}, Lcom/twitter/android/NotificationSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/NotificationSettingsActivity;->l:Landroid/preference/Preference;

    const-string v0, "notif_favorites"

    invoke-virtual {p0, v0}, Lcom/twitter/android/NotificationSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/NotificationSettingsActivity;->m:Landroid/preference/Preference;

    goto :goto_53
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    check-cast p1, Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/twitter/android/util/x;->a(Landroid/preference/ListPreference;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6

    const/4 v3, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/NotificationSettingsActivity;->p:Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/TweetSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "account"

    iget-object v2, p0, Lcom/twitter/android/NotificationSettingsActivity;->a:Landroid/accounts/Account;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "enabled"

    iget-boolean v2, p0, Lcom/twitter/android/NotificationSettingsActivity;->c:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/twitter/android/NotificationSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return v3
.end method

.method protected onStart()V
    .registers 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    iget-boolean v0, p0, Lcom/twitter/android/NotificationSettingsActivity;->p:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/twitter/android/NotificationSettingsActivity;->a:Landroid/accounts/Account;

    if-eqz v0, :cond_19

    new-instance v0, Lcom/twitter/android/ch;

    iget-object v1, p0, Lcom/twitter/android/NotificationSettingsActivity;->a:Landroid/accounts/Account;

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/ch;-><init>(Lcom/twitter/android/NotificationSettingsActivity;Landroid/accounts/Account;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twitter/android/ch;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_18
    :goto_18
    return-void

    :cond_19
    iget-boolean v0, p0, Lcom/twitter/android/NotificationSettingsActivity;->p:Z

    if-nez v0, :cond_18

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/NotificationSettingsActivity;->p:Z

    goto :goto_18
.end method

.method public onStop()V
    .registers 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    iget-boolean v0, p0, Lcom/twitter/android/NotificationSettingsActivity;->p:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/twitter/android/NotificationSettingsActivity;->a:Landroid/accounts/Account;

    if-eqz v0, :cond_18

    new-instance v0, Lcom/twitter/android/ci;

    iget-object v1, p0, Lcom/twitter/android/NotificationSettingsActivity;->a:Landroid/accounts/Account;

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/ci;-><init>(Lcom/twitter/android/NotificationSettingsActivity;Landroid/accounts/Account;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twitter/android/ci;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_18
    return-void
.end method
