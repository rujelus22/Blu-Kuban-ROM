.class public Lcom/google/android/youtube/coreicecream/c;
.super Lcom/google/android/youtube/core/async/UserAuthorizer;
.source "SourceFile"


# virtual methods
.method protected final declared-synchronized a(Landroid/app/Activity;Landroid/accounts/Account;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 36
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/c;->d()[Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 38
    const/4 v0, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com.google"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/youtube/coreicecream/c;->a:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->authTokenType:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/accounts/AccountManager;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 47
    const/16 v1, 0x387

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 48
    monitor-exit p0

    return-void

    .line 36
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    const/16 v0, 0x387

    if-eq p2, v0, :cond_6

    .line 53
    const/4 v0, 0x0

    .line 66
    :goto_5
    return v0

    .line 56
    :cond_6
    if-nez p3, :cond_d

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/coreicecream/c;->a(Landroid/app/Activity;)V

    .line 66
    :goto_b
    const/4 v0, 0x1

    goto :goto_5

    .line 59
    :cond_d
    const-string v0, "authAccount"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/c;->a(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_1d

    .line 61
    invoke-virtual {p0, v0, p1}, Lcom/google/android/youtube/coreicecream/c;->a(Landroid/accounts/Account;Landroid/app/Activity;)V

    goto :goto_b

    .line 63
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/c;->c()V

    goto :goto_b
.end method
