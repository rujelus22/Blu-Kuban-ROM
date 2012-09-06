.class public LXl;
.super Ljava/lang/Object;
.source "Accounts.java"


# direct methods
.method public static a(LHW;Ljava/lang/String;)Landroid/accounts/Account;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-interface {p0}, LHW;->a()[Landroid/accounts/Account;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_18

    aget-object v0, v2, v1

    .line 65
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 69
    :goto_13
    return-object v0

    .line 64
    :cond_14
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 69
    :cond_18
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static a(LHW;LkG;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-virtual {p1}, LkG;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, LXl;->a(LHW;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 78
    if-nez v0, :cond_27

    .line 80
    const-string v0, "Accounts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync requested for non-existent account: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, LkG;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_26
    :goto_26
    return-void

    .line 89
    :cond_27
    invoke-virtual {p1}, LkG;->a()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 90
    const-string v1, "Accounts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling cancelSync for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v1, "com.google.android.apps.docs"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 94
    :cond_4a
    const-string v1, "com.google.android.apps.docs"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 95
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 96
    const-string v2, "force"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 97
    const-string v2, "Accounts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting sync for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v2, "com.google.android.apps.docs"

    invoke-static {v0, v2, v1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_26
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@google.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)[Landroid/accounts/Account;
    .registers 3
    .parameter

    .prologue
    .line 51
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method
