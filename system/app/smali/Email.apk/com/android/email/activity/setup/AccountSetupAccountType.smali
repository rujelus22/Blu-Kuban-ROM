.class public Lcom/android/email/activity/setup/AccountSetupAccountType;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupAccountType.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mButtonInhibit:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    return-void
.end method

.method public static actionSelectAccountType(Landroid/app/Activity;)V
    .registers 3
    .parameter

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupAccountType;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 73
    return-void
.end method

.method private isExchangeAvailable()Z
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 399
    :try_start_1
    new-instance v9, Ljava/net/URI;

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 400
    .local v9, uri:Ljava/net/URI;
    new-instance v0, Ljava/net/URI;

    const-string v1, "eas"

    invoke-virtual {v9}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Ljava/net/URI;->getPort()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .end local v9           #uri:Ljava/net/URI;
    .local v0, uri:Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v8

    .line 402
    .local v8, storeInfo:Lcom/android/email/mail/Store$StoreInfo;
    if-eqz v8, :cond_36

    invoke-virtual {p0, v8}, Lcom/android/email/activity/setup/AccountSetupAccountType;->checkAccountInstanceLimit(Lcom/android/email/mail/Store$StoreInfo;)Z
    :try_end_31
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_31} :catch_38

    move-result v1

    if-eqz v1, :cond_36

    const/4 v1, 0x1

    .line 406
    .end local v0           #uri:Ljava/net/URI;
    .end local v8           #storeInfo:Lcom/android/email/mail/Store$StoreInfo;
    :goto_35
    return v1

    .restart local v0       #uri:Ljava/net/URI;
    .restart local v8       #storeInfo:Lcom/android/email/mail/Store$StoreInfo;
    :cond_36
    move v1, v10

    .line 402
    goto :goto_35

    .line 403
    .end local v0           #uri:Ljava/net/URI;
    .end local v8           #storeInfo:Lcom/android/email/mail/Store$StoreInfo;
    :catch_38
    move-exception v1

    move v1, v10

    .line 406
    goto :goto_35
.end method

.method private onExchange()V
    .registers 16

    .prologue
    .line 295
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAutoDiscoverCount()I

    move-result v11

    .line 296
    .local v11, mCheckAutodicoverCount:I
    if-eqz v11, :cond_a

    .line 297
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->setAutoDiscoverCount(I)V

    .line 299
    :cond_a
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getDomain()Ljava/lang/String;

    move-result-object v10

    .line 300
    .local v10, domain:Ljava/lang/String;
    if-eqz v10, :cond_14

    .line 301
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->setDomain(Ljava/lang/String;)V

    .line 304
    :cond_14
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v9

    .line 306
    .local v9, accountType:I
    invoke-static {v9}, Lcom/android/email/activity/setup/SetupData;->setAccountType(I)V

    .line 309
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v8

    .line 311
    .local v8, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :try_start_21
    new-instance v13, Ljava/net/URI;

    invoke-virtual {v8, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 312
    .local v13, uri:Ljava/net/URI;
    new-instance v0, Ljava/net/URI;

    const-string v1, "eas+ssl+"

    invoke-virtual {v13}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Ljava/net/URI;->getPort()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .end local v13           #uri:Ljava/net/URI;
    .local v0, uri:Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, p0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setStoreUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, p0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderUri(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/net/URISyntaxException; {:try_start_21 .. :try_end_4e} :catch_97

    .line 329
    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDeletePolicy(I)V

    .line 330
    const/4 v2, -0x2

    invoke-virtual {v8, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncInterval(I)V

    .line 331
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncLookback(I)V

    .line 338
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 339
    .local v12, salesCode:Ljava/lang/String;
    const/4 v1, 0x0

    .line 341
    .local v1, syncData:Lcom/android/emailcommon/utility/SyncScheduleData;
    const-string v2, "H3G"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_71

    const-string v2, "3IE"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 342
    :cond_71
    new-instance v1, Lcom/android/emailcommon/utility/SyncScheduleData;

    .end local v1           #syncData:Lcom/android/emailcommon/utility/SyncScheduleData;
    const/16 v2, 0x1e0

    const/16 v3, 0x3fc

    const/16 v4, 0x3e

    const/16 v5, 0xf

    const/16 v6, 0xf

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    .line 378
    .restart local v1       #syncData:Lcom/android/emailcommon/utility/SyncScheduleData;
    :goto_81
    invoke-virtual {v8, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V

    .line 382
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->setCheckSettingsMode(I)V

    .line 383
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isAllowAutodiscover()Z

    move-result v2

    if-eqz v2, :cond_122

    .line 384
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->actionAccountSetupAutoDiscoverIntent(Landroid/app/Activity;ZZ)V

    .line 388
    :goto_93
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    .line 389
    .end local v0           #uri:Ljava/net/URI;
    .end local v1           #syncData:Lcom/android/emailcommon/utility/SyncScheduleData;
    .end local v12           #salesCode:Ljava/lang/String;
    :goto_96
    return-void

    .line 316
    :catch_97
    move-exception v14

    .line 322
    .local v14, use:Ljava/net/URISyntaxException;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080565

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 324
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    goto :goto_96

    .line 346
    .end local v14           #use:Ljava/net/URISyntaxException;
    .restart local v0       #uri:Ljava/net/URI;
    .restart local v1       #syncData:Lcom/android/emailcommon/utility/SyncScheduleData;
    .restart local v12       #salesCode:Ljava/lang/String;
    :cond_ab
    const-string v2, "NZC"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 347
    new-instance v1, Lcom/android/emailcommon/utility/SyncScheduleData;

    .end local v1           #syncData:Lcom/android/emailcommon/utility/SyncScheduleData;
    const/16 v2, 0x1e0

    const/16 v3, 0x3fc

    const/16 v4, 0x3e

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    .restart local v1       #syncData:Lcom/android/emailcommon/utility/SyncScheduleData;
    goto :goto_81

    .line 352
    :cond_c2
    const-string v2, "ILO"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    .line 353
    new-instance v1, Lcom/android/emailcommon/utility/SyncScheduleData;

    .end local v1           #syncData:Lcom/android/emailcommon/utility/SyncScheduleData;
    const/16 v2, 0x1e0

    const/16 v3, 0x41a

    const/16 v4, 0x1f

    const/4 v5, -0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    .restart local v1       #syncData:Lcom/android/emailcommon/utility/SyncScheduleData;
    goto :goto_81

    .line 357
    :cond_d9
    const-string v2, "PCL"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_101

    const-string v2, "PTR"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_101

    const-string v2, "CEL"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_101

    const-string v2, "MIR"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_101

    const-string v2, "ILO"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_111

    .line 359
    :cond_101
    new-instance v1, Lcom/android/emailcommon/utility/SyncScheduleData;

    .end local v1           #syncData:Lcom/android/emailcommon/utility/SyncScheduleData;
    const/16 v2, 0x1e0

    const/16 v3, 0x41a

    const/16 v4, 0x1f

    const/4 v5, -0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    .restart local v1       #syncData:Lcom/android/emailcommon/utility/SyncScheduleData;
    goto/16 :goto_81

    .line 366
    :cond_111
    new-instance v1, Lcom/android/emailcommon/utility/SyncScheduleData;

    .end local v1           #syncData:Lcom/android/emailcommon/utility/SyncScheduleData;
    const/16 v2, 0x1e0

    const/16 v3, 0x3fc

    const/16 v4, 0x3e

    const/4 v5, -0x2

    const/16 v6, 0x3c

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    .restart local v1       #syncData:Lcom/android/emailcommon/utility/SyncScheduleData;
    goto/16 :goto_81

    .line 387
    :cond_122
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v2

    invoke-static {p0, v2, v8}, Lcom/android/email/activity/setup/AccountSetupExchange;->actionIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/EmailContent$Account;)V

    goto/16 :goto_93
.end method

.method private onImap()V
    .registers 8

    .prologue
    const/4 v6, 0x3

    .line 257
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 258
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 260
    .local v2, hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    if-eqz v2, :cond_36

    .line 261
    const-string v3, "imap"

    iput-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 262
    iget-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 263
    iget-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    const-string v4, "imap"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/email/activity/setup/AccountSettingsUtils;->inferServerName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    .line 270
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDeletePolicy(I)V

    .line 271
    invoke-static {v6}, Lcom/android/email/activity/setup/SetupData;->setCheckSettingsMode(I)V

    .line 273
    const/4 v3, 0x7

    invoke-static {v6, v3}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v1

    .line 275
    .local v1, accountType:I
    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->setAccountType(I)V

    .line 277
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v3

    invoke-static {p0, v3, v0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->actionIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    .line 285
    .end local v1           #accountType:I
    :goto_35
    return-void

    .line 280
    :cond_36
    const-string v3, "Email"

    const-string v4, "AccountSetupAccountType Account is null "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V

    .line 282
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    goto :goto_35
.end method

.method private onPop()V
    .registers 7

    .prologue
    .line 227
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 228
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 230
    .local v2, hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    if-eqz v2, :cond_33

    .line 231
    const-string v3, "pop3"

    iput-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 232
    iget-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 233
    iget-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    const-string v4, "pop"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/email/activity/setup/AccountSettingsUtils;->inferServerName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    .line 235
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/android/email/activity/setup/SetupData;->setCheckSettingsMode(I)V

    .line 237
    const/4 v3, 0x2

    const/4 v4, 0x7

    invoke-static {v3, v4}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v1

    .line 239
    .local v1, accountType:I
    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->setAccountType(I)V

    .line 241
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v3

    invoke-static {p0, v3, v0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->actionIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 242
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    .line 249
    .end local v1           #accountType:I
    :goto_32
    return-void

    .line 244
    :cond_33
    const-string v3, "Email"

    const-string v4, "AccountSetupAccountType Account is null "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V

    .line 246
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    goto :goto_32
.end method


# virtual methods
.method checkAccountInstanceLimit(Lcom/android/email/mail/Store$StoreInfo;)Z
    .registers 11
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 418
    iget v0, p1, Lcom/android/email/mail/Store$StoreInfo;->mAccountInstanceLimit:I

    if-gez v0, :cond_8

    .line 445
    :goto_7
    return v6

    .line 428
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName is not \'##snc##\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_3b

    move-result-object v2

    move v1, v7

    .line 431
    :goto_19
    if-eqz v2, :cond_43

    :try_start_1b
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 432
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v2, v0}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 433
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 434
    if-eqz v0, :cond_54

    iget-object v3, p1, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_34
    .catchall {:try_start_1b .. :try_end_34} :catchall_51

    move-result v0

    if-eqz v0, :cond_54

    .line 435
    add-int/lit8 v0, v1, 0x1

    :goto_39
    move v1, v0

    .line 437
    goto :goto_19

    .line 439
    :catchall_3b
    move-exception v0

    move-object v1, v8

    :goto_3d
    if-eqz v1, :cond_42

    .line 440
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 439
    :cond_42
    throw v0

    :cond_43
    if-eqz v2, :cond_48

    .line 440
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 445
    :cond_48
    iget v0, p1, Lcom/android/email/mail/Store$StoreInfo;->mAccountInstanceLimit:I

    if-ge v1, v0, :cond_4f

    move v0, v6

    :goto_4d
    move v6, v0

    goto :goto_7

    :cond_4f
    move v0, v7

    goto :goto_4d

    .line 439
    :catchall_51
    move-exception v0

    move-object v1, v2

    goto :goto_3d

    :cond_54
    move v0, v1

    goto :goto_39
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 449
    const-string v0, "Email"

    const-string v1, "AccountSetupAccountType onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mButtonInhibit:Z

    if-ne v0, v2, :cond_d

    .line 473
    :goto_c
    return-void

    .line 452
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_3c

    goto :goto_c

    .line 454
    :pswitch_15
    const-string v0, "Email"

    const-string v1, "AccountSetupAccountType Account is pop "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mButtonInhibit:Z

    .line 456
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->onPop()V

    goto :goto_c

    .line 459
    :pswitch_22
    const-string v0, "Email"

    const-string v1, "AccountSetupAccountType Account is imap "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mButtonInhibit:Z

    .line 461
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->onImap()V

    goto :goto_c

    .line 464
    :pswitch_2f
    const-string v0, "Email"

    const-string v1, "AccountSetupAccountType Account is exchange "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mButtonInhibit:Z

    .line 466
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->onExchange()V

    goto :goto_c

    .line 452
    :pswitch_data_3c
    .packed-switch 0x7f100027
        :pswitch_15
        :pswitch_22
        :pswitch_2f
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 15
    .parameter "newConfig"

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f0c0177

    .line 176
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 178
    const v8, 0x7f100026

    invoke-virtual {p0, v8}, Lcom/android/email/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 180
    .local v4, instructionsTextView:Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 183
    .local v5, instructionsTextViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v5, :cond_31

    .line 184
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0179

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c017a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v5, v12, v8, v12, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 191
    :cond_31
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    const v8, 0x7f100027

    invoke-virtual {p0, v8}, Lcom/android/email/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 194
    .local v6, popButton:Landroid/widget/Button;
    const v8, 0x7f100028

    invoke-virtual {p0, v8}, Lcom/android/email/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 195
    .local v2, imapButton:Landroid/widget/Button;
    const v8, 0x7f100029

    invoke-virtual {p0, v8}, Lcom/android/email/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 197
    .local v0, exchangeButton:Landroid/widget/Button;
    invoke-virtual {v6}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 199
    .local v7, popButtonLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 201
    .local v3, imapButtonLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 204
    .local v1, exchangeButtonLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v7, :cond_6d

    .line 205
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 208
    :cond_6d
    if-eqz v3, :cond_79

    .line 209
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 212
    :cond_79
    if-eqz v1, :cond_85

    .line 213
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 217
    :cond_85
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x4

    .line 109
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 111
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v3

    .line 113
    .local v3, flowMode:I
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 118
    const/4 v4, 0x1

    if-ne v3, v4, :cond_19

    .line 119
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->onExchange()V

    .line 166
    :cond_18
    :goto_18
    return-void

    .line 124
    :cond_19
    const v4, 0x7f04000f

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupAccountType;->setContentView(I)V

    .line 125
    const v4, 0x7f100027

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v4, 0x7f100028

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v4, 0x7f100029

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 128
    .local v2, exchangeButton:Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 148
    .local v1, actionBar:Landroid/app/ActionBar;
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 150
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_5b

    .line 151
    const-string v4, "Email"

    const-string v5, "Account is null "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    goto :goto_18

    .line 157
    :cond_5b
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->isExchangeAvailable()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 158
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 159
    invoke-static {p0}, Lcom/android/email/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/android/email/VendorPolicyLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/VendorPolicyLoader;->useAlternateExchangeStrings()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 160
    const v4, 0x7f08002e

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_18
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 88
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 93
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 95
    :goto_b
    return v0

    .line 90
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    .line 95
    const/4 v0, 0x1

    goto :goto_b

    .line 88
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 170
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->onResume()V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mButtonInhibit:Z

    .line 172
    return-void
.end method
