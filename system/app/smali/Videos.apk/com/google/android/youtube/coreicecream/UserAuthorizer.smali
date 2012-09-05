.class public Lcom/google/android/youtube/coreicecream/UserAuthorizer;
.super Lcom/google/android/youtube/core/async/UserAuthorizer;
.source "UserAuthorizer.java"


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManager;Landroid/content/SharedPreferences;)V
    .registers 3
    .parameter "accountManager"
    .parameter "preferences"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/async/UserAuthorizer;-><init>(Landroid/accounts/AccountManager;Landroid/content/SharedPreferences;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/accounts/AccountManager;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;)V
    .registers 4
    .parameter "accountManager"
    .parameter "preferences"
    .parameter "authMethod"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/core/async/UserAuthorizer;-><init>(Landroid/accounts/AccountManager;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected declared-synchronized launchSignOnFlow(Landroid/app/Activity;Landroid/accounts/Account;)V
    .registers 12
    .parameter "activity"
    .parameter "defaultAccount"

    .prologue
    .line 36
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v1, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/UserAuthorizer;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 38
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "com.google"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/UserAuthorizer;->authMethod:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    iget-object v5, v0, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->authTokenType:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Landroid/accounts/AccountManager;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v8

    .line 47
    .local v8, intent:Landroid/content/Intent;
    const/16 v0, 0x387

    invoke-virtual {p1, v8, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 48
    monitor-exit p0

    return-void

    .line 36
    .end local v1           #accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    .end local v8           #intent:Landroid/content/Intent;
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .registers 7
    .parameter "activity"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 52
    const/16 v1, 0x387

    if-eq p2, v1, :cond_6

    .line 53
    const/4 v1, 0x0

    .line 66
    :goto_5
    return v1

    .line 56
    :cond_6
    if-nez p3, :cond_d

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/coreicecream/UserAuthorizer;->onSignOnFlowCancelled(Landroid/app/Activity;)V

    .line 66
    :goto_b
    const/4 v1, 0x1

    goto :goto_5

    .line 59
    :cond_d
    const-string v1, "authAccount"

    invoke-virtual {p4, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/coreicecream/UserAuthorizer;->getAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 60
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_1d

    .line 61
    invoke-virtual {p0, v0, p1}, Lcom/google/android/youtube/coreicecream/UserAuthorizer;->fetchAuthToken(Landroid/accounts/Account;Landroid/app/Activity;)V

    goto :goto_b

    .line 63
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/UserAuthorizer;->notifyNotAuthenticated()V

    goto :goto_b
.end method
