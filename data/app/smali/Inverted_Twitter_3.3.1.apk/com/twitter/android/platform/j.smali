.class public final Lcom/twitter/android/platform/j;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)I
    .registers 3

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.twitter.android.auth.login"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;
    .registers 7

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.twitter.android.auth.login"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    if-ge v1, v3, :cond_1e

    aget-object v0, v2, v1

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    :goto_19
    return-object v0

    :cond_1a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_1e
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/android/network/j;Ljava/lang/String;)Landroid/accounts/Account;
    .registers 8

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-static {p0, p1}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_1a

    new-instance v0, Landroid/accounts/Account;

    const-string v3, "com.twitter.android.auth.login"

    invoke-direct {v0, p1, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1, v1}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_1a

    move-object v0, v1

    :goto_19
    return-object v0

    :cond_1a
    invoke-virtual {v2, v0, v1}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    const-string v1, "account_user_info"

    invoke-virtual {v2, v0, v1, p3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.twitter.android.oauth.token"

    iget-object v3, p2, Lcom/twitter/android/network/j;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v3}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.twitter.android.oauth.token.secret"

    iget-object v3, p2, Lcom/twitter/android/network/j;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v3}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method

.method public static a(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Lcom/twitter/android/api/ac;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "account_user_info"

    invoke-virtual {p0, p1, v1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/api/r;->c(Ljava/lang/String;)Lcom/twitter/android/api/ac;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_a} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v0

    :goto_b
    return-object v0

    :catch_c
    move-exception v1

    goto :goto_b

    :catch_e
    move-exception v1

    goto :goto_b
.end method

.method public static a(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .registers 3

    if-eqz p0, :cond_5

    invoke-static {p0, p1, p2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    :cond_5
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/android/api/ac;Lcom/twitter/android/api/af;)V
    .registers 8

    invoke-static {p0, p1}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    if-eqz p2, :cond_15

    const-string v2, "account_user_info"

    invoke-static {p2}, Lcom/twitter/android/api/r;->a(Lcom/twitter/android/api/ac;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    if-eqz p3, :cond_20

    const-string v2, "account_settings"

    invoke-virtual {p3}, Lcom/twitter/android/api/af;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method public static b(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Lcom/twitter/android/network/j;
    .registers 5

    const-string v0, "com.twitter.android.oauth.token"

    invoke-virtual {p0, p1, v0}, Landroid/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "com.twitter.android.oauth.token.secret"

    invoke-virtual {p0, p1, v0}, Landroid/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_16

    if-eqz v2, :cond_16

    new-instance v0, Lcom/twitter/android/network/j;

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/network/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    const/4 v6, 0x0

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v0, "com.twitter.android.auth.login"

    invoke-virtual {v1, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v3, :cond_1c

    aget-object v4, v2, v0

    iget-object v5, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual {v1, v4, v6, v6}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    :cond_1c
    return-void

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method
