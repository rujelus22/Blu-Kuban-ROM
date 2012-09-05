.class public Lcom/cooliris/picasa/PicasaSyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "PicasaSyncAdapter.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "applicationContext"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 41
    iput-object p1, p0, Lcom/cooliris/picasa/PicasaSyncAdapter;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .registers 19
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "providerClient"
    .parameter "syncResult"

    .prologue
    .line 47
    const-string v8, "initialize"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 49
    :try_start_9
    invoke-virtual {p0}, Lcom/cooliris/picasa/PicasaSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    const-string v9, "com.google"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "service_lh2"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v8

    invoke-interface {v8}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/accounts/Account;

    .line 53
    .local v7, picasaAccounts:[Landroid/accounts/Account;
    const/4 v4, 0x0

    .line 54
    .local v4, isPicasaAccount:Z
    move-object v1, v7

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2b
    if-ge v3, v5, :cond_36

    aget-object v6, v1, v3

    .line 55
    .local v6, picasaAccount:Landroid/accounts/Account;
    invoke-virtual {p1, v6}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_45

    .line 56
    const/4 v4, 0x1

    .line 60
    .end local v6           #picasaAccount:Landroid/accounts/Account;
    :cond_36
    if-eqz v4, :cond_44

    .line 61
    const/4 v8, 0x1

    move-object/from16 v0, p3

    invoke-static {p1, v0, v8}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 62
    const/4 v8, 0x1

    move-object/from16 v0, p3

    invoke-static {p1, v0, v8}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    :try_end_44
    .catch Landroid/accounts/OperationCanceledException; {:try_start_9 .. :try_end_44} :catch_63
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_44} :catch_61
    .catch Landroid/accounts/AuthenticatorException; {:try_start_9 .. :try_end_44} :catch_5f
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_44} :catch_5d

    .line 77
    .end local v1           #arr$:[Landroid/accounts/Account;
    .end local v3           #i$:I
    .end local v4           #isPicasaAccount:Z
    .end local v5           #len$:I
    .end local v7           #picasaAccounts:[Landroid/accounts/Account;
    :cond_44
    :goto_44
    return-void

    .line 54
    .restart local v1       #arr$:[Landroid/accounts/Account;
    .restart local v3       #i$:I
    .restart local v4       #isPicasaAccount:Z
    .restart local v5       #len$:I
    .restart local v6       #picasaAccount:Landroid/accounts/Account;
    .restart local v7       #picasaAccounts:[Landroid/accounts/Account;
    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 72
    .end local v1           #arr$:[Landroid/accounts/Account;
    .end local v3           #i$:I
    .end local v4           #isPicasaAccount:Z
    .end local v5           #len$:I
    .end local v6           #picasaAccount:Landroid/accounts/Account;
    .end local v7           #picasaAccounts:[Landroid/accounts/Account;
    :cond_48
    :try_start_48
    iget-object v8, p0, Lcom/cooliris/picasa/PicasaSyncAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p5

    invoke-static {v8, p1, p2, v0}, Lcom/cooliris/picasa/PicasaService;->performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/SyncResult;)Z
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4f} :catch_50

    goto :goto_44

    .line 73
    :catch_50
    move-exception v2

    .line 75
    .local v2, e:Ljava/lang/Exception;
    move-object/from16 v0, p5

    iget-object v8, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v9, v8, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v8, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_44

    .line 67
    .end local v2           #e:Ljava/lang/Exception;
    :catch_5d
    move-exception v8

    goto :goto_44

    .line 66
    :catch_5f
    move-exception v8

    goto :goto_44

    .line 65
    :catch_61
    move-exception v8

    goto :goto_44

    .line 64
    :catch_63
    move-exception v8

    goto :goto_44
.end method
