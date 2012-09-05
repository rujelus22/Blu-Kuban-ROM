.class public Lcom/sec/android/socialhub/unifiedinbox/UinboxAppSns;
.super Ljava/lang/Object;
.source "UinboxAppSns.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSnsAccount(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ContentValues;
    .registers 13
    .parameter "c"
    .parameter "ispName"
    .parameter "spType"

    .prologue
    const/4 v6, 0x0

    .line 51
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 53
    .local v3, cvSns:Landroid/content/ContentValues;
    const-string v7, "com.sec.android.app.snsaccountACNT_TYPE.account_type"

    const-string v8, "ACNT_TYPE"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, accountType:Ljava/lang/String;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 55
    .local v2, am:Landroid/accounts/AccountManager;
    invoke-virtual {v2, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 57
    .local v0, a:[Landroid/accounts/Account;
    const-string v7, "app"

    const-string v8, "5_SNS"

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/16 v7, 0x9

    if-ne p2, v7, :cond_75

    .line 61
    const-string v7, "account"

    const-string v8, "Studiviz"

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :goto_2c
    const-string v7, "email"

    aget-object v8, v0, v6

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v7, "account_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    const-string v7, "real_email_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    const-string v7, "_order"

    const/16 v8, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    const-string v7, "app_type"

    const/16 v8, 0x258

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    invoke-static {p2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v5

    .line 77
    .local v5, service:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    :try_start_61
    const-string v7, "support_msg"

    if-eqz v5, :cond_6d

    const/4 v8, 0x4

    invoke-interface {v5, v8}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v8

    if-eqz v8, :cond_6d

    const/4 v6, 0x1

    :cond_6d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_74
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_61 .. :try_end_74} :catch_7b

    .line 89
    :goto_74
    return-object v3

    .line 65
    .end local v5           #service:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    :cond_75
    const-string v7, "account"

    invoke-virtual {v3, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 84
    .restart local v5       #service:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    :catch_7b
    move-exception v4

    .line 86
    .local v4, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v4}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto :goto_74
.end method

.method public static getSnsAccount(Landroid/content/Context;Ljava/lang/String;)[Landroid/accounts/Account;
    .registers 7
    .parameter "c"
    .parameter "ispName"

    .prologue
    .line 105
    const-string v2, "com.sec.android.app.snsaccountACNT_TYPE.account_type"

    const-string v3, "ACNT_TYPE"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, accountType:Ljava/lang/String;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 107
    .local v1, accounts:[Landroid/accounts/Account;
    return-object v1
.end method

.method public static hasSnsAccount(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .parameter "c"
    .parameter "ispName"

    .prologue
    .line 94
    const-string v2, "com.sec.android.app.snsaccountACNT_TYPE.account_type"

    const-string v3, "ACNT_TYPE"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, accountType:Ljava/lang/String;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 96
    .local v1, accounts:[Landroid/accounts/Account;
    array-length v2, v1

    if-lez v2, :cond_19

    .line 98
    const/4 v2, 0x1

    .line 100
    :goto_18
    return v2

    :cond_19
    const/4 v2, 0x0

    goto :goto_18
.end method

.method public static isExistSnsAccount(Landroid/content/Context;)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 112
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_15

    .line 114
    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p0, v1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxAppSns;->hasSnsAccount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 116
    const/4 v1, 0x1

    .line 119
    :goto_11
    return v1

    .line 112
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 119
    :cond_15
    const/4 v1, 0x0

    goto :goto_11
.end method
