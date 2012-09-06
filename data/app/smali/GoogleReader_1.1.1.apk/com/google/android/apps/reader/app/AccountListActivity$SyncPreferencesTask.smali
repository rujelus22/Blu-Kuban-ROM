.class Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;
.super Landroid/support/v4/content/ModernAsyncTask;
.source "AccountListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/app/AccountListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncPreferencesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/ModernAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccount:Lcom/google/android/accounts/Account;

.field private final mActivity:Lcom/google/android/apps/reader/app/AccountListActivity;

.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/reader/app/AccountListActivity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 631
    invoke-direct {p0}, Landroid/support/v4/content/ModernAsyncTask;-><init>()V

    .line 632
    iput-object p1, p0, Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;->mActivity:Lcom/google/android/apps/reader/app/AccountListActivity;

    .line 633
    #getter for: Lcom/google/android/apps/reader/app/AccountListActivity;->mAccount:Lcom/google/android/accounts/Account;
    invoke-static {p1}, Lcom/google/android/apps/reader/app/AccountListActivity;->access$000(Lcom/google/android/apps/reader/app/AccountListActivity;)Lcom/google/android/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;->mAccount:Lcom/google/android/accounts/Account;

    .line 634
    invoke-virtual {p1}, Lcom/google/android/apps/reader/app/AccountListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;->mContentResolver:Landroid/content/ContentResolver;

    .line 635
    return-void
.end method

.method private loadUserId()Z
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 659
    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;->mAccount:Lcom/google/android/accounts/Account;

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract$UserInfo;->itemUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    .line 660
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;->mContentResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 661
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1a

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 5
    .parameter

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;->loadUserId()Z

    move-result v0

    if-nez v0, :cond_10

    .line 641
    const-string v0, "AccountListActivity"

    const-string v1, "Failed to load user ID"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 654
    :goto_f
    return-object v0

    .line 645
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;->mActivity:Lcom/google/android/apps/reader/app/AccountListActivity;

    iget-object v1, p0, Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;->mAccount:Lcom/google/android/accounts/Account;

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/preference/ReaderPreference;->getSharedPreferences(Landroid/content/Context;Lcom/google/android/accounts/Account;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Synchronizing preferences for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;->mAccount:Lcom/google/android/accounts/Account;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 647
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 648
    const-string v1, "preferences"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 651
    iget-object v1, p0, Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;->mAccount:Lcom/google/android/accounts/Account;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->sync(Landroid/content/ContentResolver;Lcom/google/android/accounts/Account;Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_f

    .line 653
    :cond_4e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preferences are already synchronized for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;->mAccount:Lcom/google/android/accounts/Account;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 654
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_f
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 623
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 5
    .parameter

    .prologue
    .line 666
    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;->mActivity:Lcom/google/android/apps/reader/app/AccountListActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/reader/app/AccountListActivity;->mSyncTask:Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;
    invoke-static {v0, v1}, Lcom/google/android/apps/reader/app/AccountListActivity;->access$102(Lcom/google/android/apps/reader/app/AccountListActivity;Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;)Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;

    .line 667
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 681
    :cond_c
    :goto_c
    return-void

    .line 670
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;->mActivity:Lcom/google/android/apps/reader/app/AccountListActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/app/AccountListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_c

    .line 673
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 674
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 675
    const-string v1, "authAccount"

    iget-object v2, p0, Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v2, v2, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 676
    iget-object v1, p0, Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;->mActivity:Lcom/google/android/apps/reader/app/AccountListActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/google/android/apps/reader/app/AccountListActivity;->setResult(ILandroid/content/Intent;)V

    .line 677
    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;->mActivity:Lcom/google/android/apps/reader/app/AccountListActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/app/AccountListActivity;->finish()V

    goto :goto_c

    .line 679
    :cond_37
    iget-object v0, p0, Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;->mActivity:Lcom/google/android/apps/reader/app/AccountListActivity;

    #calls: Lcom/google/android/apps/reader/app/AccountListActivity;->onError()V
    invoke-static {v0}, Lcom/google/android/apps/reader/app/AccountListActivity;->access$200(Lcom/google/android/apps/reader/app/AccountListActivity;)V

    goto :goto_c
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 623
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/app/AccountListActivity$SyncPreferencesTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
