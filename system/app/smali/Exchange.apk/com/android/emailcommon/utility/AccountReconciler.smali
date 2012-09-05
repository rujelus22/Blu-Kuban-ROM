.class public Lcom/android/emailcommon/utility/AccountReconciler;
.super Ljava/lang/Object;
.source "AccountReconciler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reconcileAccounts(Landroid/content/Context;Ljava/util/List;[Landroid/accounts/Account;Landroid/content/ContentResolver;)Z
    .registers 25
    .parameter "context"
    .parameter
    .parameter "accountManagerAccounts"
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            ">;[",
            "Landroid/accounts/Account;",
            "Landroid/content/ContentResolver;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, emailProviderAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/EmailContent$Account;>;"
    const/4 v6, 0x0

    .line 56
    .local v6, accountsDeleted:Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_94

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 57
    .local v16, providerAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 58
    .local v17, providerAccountName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 59
    .local v11, found:Z
    move-object/from16 v7, p2

    .local v7, arr$:[Landroid/accounts/Account;
    array-length v15, v7

    .local v15, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_1c
    if-ge v13, v15, :cond_2f

    aget-object v4, v7, v13

    .line 60
    .local v4, accountManagerAccount:Landroid/accounts/Account;
    iget-object v0, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_43

    .line 61
    const/4 v11, 0x1

    .line 65
    .end local v4           #accountManagerAccount:Landroid/accounts/Account;
    :cond_2f
    if-nez v11, :cond_5

    .line 66
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x10

    if-eqz v18, :cond_46

    .line 67
    const-string v18, "Email"

    const-string v19, "Account reconciler noticed incomplete account; ignoring"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 59
    .restart local v4       #accountManagerAccount:Landroid/accounts/Account;
    :cond_43
    add-int/lit8 v13, v13, 0x1

    goto :goto_1c

    .line 78
    .end local v4           #accountManagerAccount:Landroid/accounts/Account;
    :cond_46
    if-eqz v16, :cond_8c

    :try_start_48
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8c

    const-string v18, "snc"

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8c

    const/4 v14, 0x1

    .line 81
    .local v14, isSncAccount:Z
    :goto_65
    if-nez v14, :cond_89

    .line 82
    const-string v18, "Email"

    const-string v19, "Account deleted in AccountManager; deleting from provider: "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget-object v18, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v19, v0

    invoke-static/range {v18 .. v20}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_89} :catch_8e

    .line 90
    :cond_89
    const/4 v6, 0x1

    goto/16 :goto_5

    .line 78
    .end local v14           #isSncAccount:Z
    :cond_8c
    const/4 v14, 0x0

    goto :goto_65

    .line 91
    :catch_8e
    move-exception v10

    .line 92
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 100
    .end local v7           #arr$:[Landroid/accounts/Account;
    .end local v10           #e:Ljava/lang/Exception;
    .end local v11           #found:Z
    .end local v13           #i$:I
    .end local v15           #len$:I
    .end local v16           #providerAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v17           #providerAccountName:Ljava/lang/String;
    :cond_94
    move-object/from16 v7, p2

    .restart local v7       #arr$:[Landroid/accounts/Account;
    array-length v15, v7

    .restart local v15       #len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    move v13, v12

    .end local v12           #i$:I
    .restart local v13       #i$:I
    :goto_99
    if-ge v13, v15, :cond_de

    aget-object v4, v7, v13

    .line 101
    .restart local v4       #accountManagerAccount:Landroid/accounts/Account;
    iget-object v5, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 102
    .local v5, accountManagerAccountName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 103
    .restart local v11       #found:Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v13           #i$:I
    .local v12, i$:Ljava/util/Iterator;
    :cond_a4
    :goto_a4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_be

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 104
    .local v9, cachedEasAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v0, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a4

    .line 105
    const/4 v11, 0x1

    goto :goto_a4

    .line 108
    .end local v9           #cachedEasAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_be
    if-nez v11, :cond_da

    .line 110
    const-string v18, "Email"

    const-string v19, "do not show private informations.!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v4, v1, v2}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v8

    .line 129
    .local v8, blockingResult:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    const/4 v6, 0x1

    .line 100
    .end local v8           #blockingResult:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    :cond_da
    add-int/lit8 v12, v13, 0x1

    .local v12, i$:I
    move v13, v12

    .end local v12           #i$:I
    .restart local v13       #i$:I
    goto :goto_99

    .line 132
    .end local v4           #accountManagerAccount:Landroid/accounts/Account;
    .end local v5           #accountManagerAccountName:Ljava/lang/String;
    .end local v11           #found:Z
    :cond_de
    return v6
.end method
