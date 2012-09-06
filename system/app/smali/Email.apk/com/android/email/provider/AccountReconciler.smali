.class public Lcom/android/email/provider/AccountReconciler;
.super Ljava/lang/Object;
.source "AccountReconciler.java"


# static fields
.field static final ACCOUNT_MANAGER_ACCOUNT_TEST_PREFIX:Ljava/lang/String; = " _"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accountsNeedReconciling(Landroid/content/Context;Ljava/util/List;[Landroid/accounts/Account;)Z
    .registers 4
    .parameter "context"
    .parameter
    .parameter "accountManagerAccounts"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/Account;",
            ">;[",
            "Landroid/accounts/Account;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, emailProviderAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/Account;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p0, v0}, Lcom/android/email/provider/AccountReconciler;->reconcileAccountsInternal(Landroid/content/Context;Ljava/util/List;[Landroid/accounts/Account;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static reconcileAccounts(Landroid/content/Context;Ljava/util/List;[Landroid/accounts/Account;Landroid/content/Context;)V
    .registers 5
    .parameter "context"
    .parameter
    .parameter "accountManagerAccounts"
    .parameter "providerContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/Account;",
            ">;[",
            "Landroid/accounts/Account;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, emailProviderAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/Account;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/email/provider/AccountReconciler;->reconcileAccountsInternal(Landroid/content/Context;Ljava/util/List;[Landroid/accounts/Account;Landroid/content/Context;Z)Z

    .line 83
    return-void
.end method

.method private static reconcileAccountsInternal(Landroid/content/Context;Ljava/util/List;[Landroid/accounts/Account;Landroid/content/Context;Z)Z
    .registers 25
    .parameter "context"
    .parameter
    .parameter "accountManagerAccounts"
    .parameter "providerContext"
    .parameter "performReconciliation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/Account;",
            ">;[",
            "Landroid/accounts/Account;",
            "Landroid/content/Context;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, emailProviderAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/Account;>;"
    const/4 v14, 0x0

    .line 100
    .local v14, needsReconciling:Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_73

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/emailcommon/provider/Account;

    .line 101
    .local v15, providerAccount:Lcom/android/emailcommon/provider/Account;
    iget-object v0, v15, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 102
    .local v16, providerAccountName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 103
    .local v10, found:Z
    move-object/from16 v6, p2

    .local v6, arr$:[Landroid/accounts/Account;
    array-length v13, v6

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_1a
    if-ge v12, v13, :cond_2d

    aget-object v4, v6, v12

    .line 104
    .local v4, accountManagerAccount:Landroid/accounts/Account;
    iget-object v0, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3f

    .line 105
    const/4 v10, 0x1

    .line 109
    .end local v4           #accountManagerAccount:Landroid/accounts/Account;
    :cond_2d
    if-nez v10, :cond_5

    .line 110
    iget v0, v15, Lcom/android/emailcommon/provider/Account;->mFlags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x10

    if-eqz v17, :cond_42

    .line 111
    const-string v17, "Email"

    const-string v18, "Account reconciler noticed incomplete account; ignoring"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 103
    .restart local v4       #accountManagerAccount:Landroid/accounts/Account;
    :cond_3f
    add-int/lit8 v12, v12, 0x1

    goto :goto_1a

    .line 116
    .end local v4           #accountManagerAccount:Landroid/accounts/Account;
    :cond_42
    const/4 v14, 0x1

    .line 117
    if-eqz p4, :cond_5

    .line 119
    const-string v17, "Email"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Account deleted in AccountManager; deleting from provider: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static/range {p0 .. p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v17

    iget-wide v0, v15, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->deleteAccountSync(JLandroid/content/Context;)V

    goto :goto_5

    .line 129
    .end local v6           #arr$:[Landroid/accounts/Account;
    .end local v10           #found:Z
    .end local v12           #i$:I
    .end local v13           #len$:I
    .end local v15           #providerAccount:Lcom/android/emailcommon/provider/Account;
    .end local v16           #providerAccountName:Ljava/lang/String;
    :cond_73
    move-object/from16 v6, p2

    .restart local v6       #arr$:[Landroid/accounts/Account;
    array-length v13, v6

    .restart local v13       #len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    move v12, v11

    .end local v11           #i$:I
    .restart local v12       #i$:I
    :goto_78
    if-ge v12, v13, :cond_101

    aget-object v4, v6, v12

    .line 130
    .restart local v4       #accountManagerAccount:Landroid/accounts/Account;
    iget-object v5, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 131
    .local v5, accountManagerAccountName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 132
    .restart local v10       #found:Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v12           #i$:I
    .local v11, i$:Ljava/util/Iterator;
    :cond_83
    :goto_83
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/emailcommon/provider/Account;

    .line 133
    .local v8, cachedEasAccount:Lcom/android/emailcommon/provider/Account;
    iget-object v0, v8, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_83

    .line 134
    const/4 v10, 0x1

    goto :goto_83

    .line 137
    .end local v8           #cachedEasAccount:Lcom/android/emailcommon/provider/Account;
    :cond_9d
    const-string v17, " _"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a8

    .line 138
    const/4 v10, 0x1

    .line 140
    :cond_a8
    if-nez v10, :cond_dc

    .line 142
    const/4 v14, 0x1

    .line 144
    if-eqz p4, :cond_dc

    .line 145
    const-string v17, "Email"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Account deleted from provider; deleting from AccountManager: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v4, v1, v2}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v7

    .line 154
    .local v7, blockingResult:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    :try_start_d9
    invoke-interface {v7}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;
    :try_end_dc
    .catch Landroid/accounts/OperationCanceledException; {:try_start_d9 .. :try_end_dc} :catch_e0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_d9 .. :try_end_dc} :catch_eb
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dc} :catch_f6

    .line 129
    .end local v7           #blockingResult:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    :cond_dc
    :goto_dc
    add-int/lit8 v11, v12, 0x1

    .local v11, i$:I
    move v12, v11

    .end local v11           #i$:I
    .restart local v12       #i$:I
    goto :goto_78

    .line 155
    .end local v12           #i$:I
    .restart local v7       #blockingResult:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    .local v11, i$:Ljava/util/Iterator;
    :catch_e0
    move-exception v9

    .line 156
    .local v9, e:Landroid/accounts/OperationCanceledException;
    const-string v17, "Email"

    invoke-virtual {v9}, Landroid/accounts/OperationCanceledException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dc

    .line 157
    .end local v9           #e:Landroid/accounts/OperationCanceledException;
    :catch_eb
    move-exception v9

    .line 158
    .local v9, e:Landroid/accounts/AuthenticatorException;
    const-string v17, "Email"

    invoke-virtual {v9}, Landroid/accounts/AuthenticatorException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dc

    .line 159
    .end local v9           #e:Landroid/accounts/AuthenticatorException;
    :catch_f6
    move-exception v9

    .line 160
    .local v9, e:Ljava/io/IOException;
    const-string v17, "Email"

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dc

    .line 166
    .end local v4           #accountManagerAccount:Landroid/accounts/Account;
    .end local v5           #accountManagerAccountName:Ljava/lang/String;
    .end local v7           #blockingResult:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    .end local v9           #e:Ljava/io/IOException;
    .end local v10           #found:Z
    .end local v11           #i$:Ljava/util/Iterator;
    .restart local v12       #i$:I
    :cond_101
    return v14
.end method
