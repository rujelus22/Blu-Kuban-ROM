.class public Lcom/google/android/apps/books/util/AccountUtils;
.super Ljava/lang/Object;
.source "AccountUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/util/AccountUtils$FindAccountResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method private static bestSystemAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .registers 9
    .parameter "context"

    .prologue
    .line 111
    const/4 v1, 0x0

    .line 112
    .local v1, bestAccount:Landroid/accounts/Account;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const-string v7, "com.google"

    invoke-virtual {v6, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 114
    .local v3, googleAccounts:[Landroid/accounts/Account;
    array-length v6, v3

    const/4 v7, 0x1

    if-ne v6, v7, :cond_13

    .line 116
    const/4 v6, 0x0

    aget-object v1, v3, v6

    .line 133
    :cond_12
    :goto_12
    return-object v1

    .line 119
    :cond_13
    move-object v0, v3

    .local v0, arr$:[Landroid/accounts/Account;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_16
    if-ge v4, v5, :cond_12

    aget-object v2, v0, v4

    .line 120
    .local v2, candidate:Landroid/accounts/Account;
    const-string v6, "com.google.android.apps.books"

    invoke-static {v2, v6}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 122
    if-nez v1, :cond_28

    .line 123
    move-object v1, v2

    .line 119
    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 127
    :cond_28
    const/4 v1, 0x0

    .line 128
    goto :goto_12
.end method

.method public static findAccount([Landroid/accounts/Account;Landroid/accounts/Account;)Landroid/accounts/Account;
    .registers 9
    .parameter "accounts"
    .parameter "target"

    .prologue
    const/4 v4, 0x0

    .line 41
    if-nez p1, :cond_5

    move-object v0, v4

    .line 49
    :cond_4
    :goto_4
    return-object v0

    .line 42
    :cond_5
    move-object v1, p0

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_8
    if-ge v2, v3, :cond_23

    aget-object v0, v1, v2

    .line 45
    .local v0, account:Landroid/accounts/Account;
    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 42
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .end local v0           #account:Landroid/accounts/Account;
    :cond_23
    move-object v0, v4

    .line 49
    goto :goto_4
.end method

.method public static findIntentAccount(Landroid/content/Context;Landroid/accounts/Account;)Lcom/google/android/apps/books/util/AccountUtils$FindAccountResult;
    .registers 9
    .parameter "context"
    .parameter "intentAccount"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 77
    new-instance v3, Lcom/google/android/apps/books/util/AccountUtils$FindAccountResult;

    invoke-direct {v3}, Lcom/google/android/apps/books/util/AccountUtils$FindAccountResult;-><init>()V

    .line 79
    .local v3, result:Lcom/google/android/apps/books/util/AccountUtils$FindAccountResult;
    new-instance v1, Lcom/google/android/apps/books/preference/LocalPreferences;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    .line 80
    .local v1, prefs:Lcom/google/android/apps/books/preference/LocalPreferences;
    invoke-virtual {v1}, Lcom/google/android/apps/books/preference/LocalPreferences;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 82
    .local v2, prefsAccount:Landroid/accounts/Account;
    if-eqz p1, :cond_29

    .line 83
    iput-object p1, v3, Lcom/google/android/apps/books/util/AccountUtils$FindAccountResult;->account:Landroid/accounts/Account;

    .line 84
    iput-boolean v6, v3, Lcom/google/android/apps/books/util/AccountUtils$FindAccountResult;->needsAuthorization:Z

    .line 85
    iput-boolean v5, v3, Lcom/google/android/apps/books/util/AccountUtils$FindAccountResult;->isFromPreferences:Z

    .line 97
    :goto_18
    iget-object v4, v3, Lcom/google/android/apps/books/util/AccountUtils$FindAccountResult;->account:Landroid/accounts/Account;

    if-eqz v4, :cond_28

    .line 99
    invoke-static {p0}, Lcom/google/android/apps/books/util/AccountUtils;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    .line 100
    .local v0, accounts:[Landroid/accounts/Account;
    iget-object v4, v3, Lcom/google/android/apps/books/util/AccountUtils$FindAccountResult;->account:Landroid/accounts/Account;

    invoke-static {v0, v4}, Lcom/google/android/apps/books/util/AccountUtils;->findAccount([Landroid/accounts/Account;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/apps/books/util/AccountUtils$FindAccountResult;->account:Landroid/accounts/Account;

    .line 103
    .end local v0           #accounts:[Landroid/accounts/Account;
    :cond_28
    return-object v3

    .line 86
    :cond_29
    if-eqz v2, :cond_32

    .line 87
    iput-object v2, v3, Lcom/google/android/apps/books/util/AccountUtils$FindAccountResult;->account:Landroid/accounts/Account;

    .line 89
    iput-boolean v5, v3, Lcom/google/android/apps/books/util/AccountUtils$FindAccountResult;->needsAuthorization:Z

    .line 90
    iput-boolean v6, v3, Lcom/google/android/apps/books/util/AccountUtils$FindAccountResult;->isFromPreferences:Z

    goto :goto_18

    .line 92
    :cond_32
    invoke-static {p0}, Lcom/google/android/apps/books/util/AccountUtils;->bestSystemAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/apps/books/util/AccountUtils$FindAccountResult;->account:Landroid/accounts/Account;

    .line 93
    iput-boolean v6, v3, Lcom/google/android/apps/books/util/AccountUtils$FindAccountResult;->needsAuthorization:Z

    .line 94
    iput-boolean v5, v3, Lcom/google/android/apps/books/util/AccountUtils$FindAccountResult;->isFromPreferences:Z

    goto :goto_18
.end method

.method public static getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
    .registers 3
    .parameter "context"

    .prologue
    .line 31
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 32
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    return-object v1
.end method

.method public static showAddAccount(Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Ljava/lang/CharSequence;)V
    .registers 11
    .parameter "activity"
    .parameter
    .parameter "introMessage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const/4 v3, 0x0

    .line 149
    invoke-static {p2}, Lcom/google/android/apps/books/util/BooksTextUtils;->isNullOrWhitespace(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 150
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 151
    .local v4, options:Landroid/os/Bundle;
    const-string v0, "introMessage"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 156
    :goto_11
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    const-string v2, "print"

    move-object v5, p0

    move-object v6, p1

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 164
    return-void

    .line 153
    .end local v4           #options:Landroid/os/Bundle;
    :cond_20
    const/4 v4, 0x0

    .restart local v4       #options:Landroid/os/Bundle;
    goto :goto_11
.end method
