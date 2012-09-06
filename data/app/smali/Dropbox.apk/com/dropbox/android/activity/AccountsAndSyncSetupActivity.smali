.class public Lcom/dropbox/android/activity/AccountsAndSyncSetupActivity;
.super Lcom/dropbox/android/activity/base/BaseMinActivity;
.source "panda.py"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/dropbox/android/activity/base/BaseMinActivity;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Intent;Landroid/content/Intent;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 34
    const-string v0, "accountAuthenticatorResponse"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 35
    const-string v0, "accountAuthenticatorResponse"

    const-string v1, "accountAuthenticatorResponse"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 38
    :cond_13
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 17
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseMinActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/a;->b()Z

    move-result v0

    if-nez v0, :cond_45

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dropbox/android/activity/bB;

    const/4 v1, 0x0

    sget-object v2, Lcom/dropbox/android/activity/bB;->b:Lcom/dropbox/android/activity/bB;

    aput-object v2, v0, v1

    sget-object v1, Lcom/dropbox/android/activity/bB;->f:Lcom/dropbox/android/activity/bB;

    aput-object v1, v0, v3

    invoke-static {p0, v0}, Lcom/dropbox/android/activity/TourActivity;->a(Landroid/content/Context;[Lcom/dropbox/android/activity/bB;)Landroid/content/Intent;

    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lcom/dropbox/android/activity/AccountsAndSyncSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 24
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    const-string v2, "com.dropbox.activity.extra.NEXT_INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "FULL_SCREEN"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 26
    invoke-virtual {p0}, Lcom/dropbox/android/activity/AccountsAndSyncSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/dropbox/android/activity/AccountsAndSyncSetupActivity;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 27
    invoke-virtual {p0, v1}, Lcom/dropbox/android/activity/AccountsAndSyncSetupActivity;->startActivity(Landroid/content/Intent;)V

    .line 30
    :cond_45
    invoke-virtual {p0}, Lcom/dropbox/android/activity/AccountsAndSyncSetupActivity;->finish()V

    .line 31
    return-void
.end method
