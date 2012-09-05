.class Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;
.super Lcom/android/vending/billing/IMarketBillingService$Stub;
.source "MarketBillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/iab/MarketBillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$NotifyingErrorListener;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/iab/MarketBillingService;)V
    .registers 2
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    invoke-direct {p0}, Lcom/android/vending/billing/IMarketBillingService$Stub;-><init>()V

    .line 583
    return-void
.end method

.method private argumentsMatch(Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 12
    .parameter "bundle"
    .parameter "requiredArguments"
    .parameter "optionalArguments"

    .prologue
    .line 346
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 347
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 348
    .local v2, expectedKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v6

    .line 349
    .local v6, optionalKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v7, "BILLING_REQUEST"

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 350
    const-string v7, "API_VERSION"

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 352
    move-object v1, p2

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_19
    if-ge v3, v5, :cond_23

    aget-object v0, v1, v3

    .line 353
    .local v0, argument:Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 352
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 355
    .end local v0           #argument:Ljava/lang/String;
    :cond_23
    move-object v1, p3

    array-length v5, v1

    const/4 v3, 0x0

    :goto_26
    if-ge v3, v5, :cond_30

    aget-object v0, v1, v3

    .line 356
    .restart local v0       #argument:Ljava/lang/String;
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 355
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 358
    .end local v0           #argument:Ljava/lang/String;
    :cond_30
    invoke-interface {v4, v6}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 359
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    return v7
.end method

.method private varargs argumentsMatchExactly(Landroid/os/Bundle;[Ljava/lang/String;)Z
    .registers 4
    .parameter "bundle"
    .parameter "requiredArguments"

    .prologue
    .line 337
    invoke-static {}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->access$100()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->argumentsMatch(Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private computeSignatureHash(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .registers 5
    .parameter "packageInfo"

    .prologue
    .line 429
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 430
    .local v0, bytes:[B
    invoke-static {v0}, Lcom/google/android/finsky/utils/Md5Util;->secureHash([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getBillingRequest(Landroid/os/Bundle;)Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;
    .registers 8
    .parameter "arguments"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 307
    const-string v3, "BILLING_REQUEST"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, billingRequestString:Ljava/lang/String;
    if-nez v0, :cond_12

    .line 309
    const-string v3, "Received bundle without billing request type"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    :goto_11
    return-object v2

    .line 313
    :cond_12
    :try_start_12
    invoke-static {v0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_15} :catch_17

    move-result-object v2

    goto :goto_11

    .line 314
    :catch_17
    move-exception v1

    .line 315
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "Unknown billing request type: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11
.end method

.method private getNextInAppRequestId()J
    .registers 5

    .prologue
    .line 608
    invoke-static {}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->access$500()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 6
    .parameter "packageName"

    .prologue
    .line 623
    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v1, v1, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x40

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 626
    :goto_a
    return-object v1

    .line 624
    :catch_b
    move-exception v0

    .line 625
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "cannot find package name: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 626
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private handleBillingRequest(Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 18
    .parameter "billingRequest"
    .parameter "arguments"

    .prologue
    .line 242
    const-string v1, "API_VERSION"

    const/4 v12, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 243
    .local v2, billingApiVersion:I
    const-string v1, "PACKAGE_NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, packageName:Ljava/lang/String;
    const-string v1, "DEVELOPER_PAYLOAD"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 245
    .local v7, developerPayload:Ljava/lang/String;
    const-string v1, "ITEM_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 246
    .local v8, itemId:Ljava/lang/String;
    const-string v1, "NONCE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 247
    .local v4, nonce:J
    const-string v1, "NOTIFY_IDS"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 249
    .local v6, notifyIds:[Ljava/lang/String;
    sget-object v11, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 250
    .local v11, responseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 251
    .local v10, response:Landroid/os/Bundle;
    const/4 v1, 0x1

    if-ne v2, v1, :cond_103

    .line 252
    sget-object v1, Lcom/google/android/finsky/billing/iab/MarketBillingService$2;->$SwitchMap$com$google$android$finsky$billing$iab$MarketBillingService$BillingRequest:[I

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;->ordinal()I

    move-result v12

    aget v1, v1, v12

    packed-switch v1, :pswitch_data_124

    .line 297
    :cond_46
    :goto_46
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v11}, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->ordinal()I

    move-result v12

    invoke-virtual {v10, v1, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 298
    return-object v10

    .line 254
    :pswitch_50
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "PACKAGE_NAME"

    aput-object v13, v1, v12

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->argumentsMatchExactly(Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 255
    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->checkBillingSupported(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    move-result-object v11

    goto :goto_46

    .line 259
    :pswitch_65
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "PACKAGE_NAME"

    aput-object v13, v1, v12

    const/4 v12, 0x1

    const-string v13, "ITEM_ID"

    aput-object v13, v1, v12

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "DEVELOPER_PAYLOAD"

    aput-object v14, v12, v13

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v1, v12}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->argumentsMatch(Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 262
    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->checkBillingSupported(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    move-result-object v11

    .line 263
    invoke-virtual {p0, v2, v3, v8, v7}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->requestPurchase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v9

    .line 265
    .local v9, requestIntentPair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Landroid/app/PendingIntent;>;"
    const-string v12, "REQUEST_ID"

    iget-object v1, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v10, v12, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 266
    const-string v12, "PURCHASE_INTENT"

    iget-object v1, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v10, v12, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_46

    .line 271
    .end local v9           #requestIntentPair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Landroid/app/PendingIntent;>;"
    :pswitch_a1
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "PACKAGE_NAME"

    aput-object v13, v1, v12

    const/4 v12, 0x1

    const-string v13, "NONCE"

    aput-object v13, v1, v12

    const/4 v12, 0x2

    const-string v13, "NOTIFY_IDS"

    aput-object v13, v1, v12

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->argumentsMatchExactly(Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    move-object v1, p0

    .line 273
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getPurchaseInformation(ILjava/lang/String;J[Ljava/lang/String;)J

    move-result-wide v12

    invoke-direct {p0, v10, v12, v13}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->updateWithRequestId(Landroid/os/Bundle;J)Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    move-result-object v11

    goto :goto_46

    .line 279
    :pswitch_c5
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "PACKAGE_NAME"

    aput-object v13, v1, v12

    const/4 v12, 0x1

    const-string v13, "NONCE"

    aput-object v13, v1, v12

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->argumentsMatchExactly(Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 280
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->restoreTransactions(ILjava/lang/String;J)J

    move-result-wide v12

    invoke-direct {p0, v10, v12, v13}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->updateWithRequestId(Landroid/os/Bundle;J)Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    move-result-object v11

    goto/16 :goto_46

    .line 285
    :pswitch_e4
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "PACKAGE_NAME"

    aput-object v13, v1, v12

    const/4 v12, 0x1

    const-string v13, "NOTIFY_IDS"

    aput-object v13, v1, v12

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->argumentsMatchExactly(Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 286
    invoke-virtual {p0, v2, v3, v6}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->confirmNotifications(ILjava/lang/String;[Ljava/lang/String;)J

    move-result-wide v12

    invoke-direct {p0, v10, v12, v13}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->updateWithRequestId(Landroid/os/Bundle;J)Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    move-result-object v11

    goto/16 :goto_46

    .line 291
    :cond_103
    const/4 v1, 0x1

    if-le v2, v1, :cond_119

    .line 292
    sget-object v11, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 293
    const-string v1, "Unsupported (future) billing API version: %d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v1, v12}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_46

    .line 295
    :cond_119
    const-string v1, "No billing API version given!"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v1, v12}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_46

    .line 252
    nop

    :pswitch_data_124
    .packed-switch 0x1
        :pswitch_50
        :pswitch_65
        :pswitch_a1
        :pswitch_c5
        :pswitch_e4
    .end packed-switch
.end method

.method private isBillingEnabledForAccount(Landroid/accounts/Account;)Z
    .registers 3
    .parameter "account"

    .prologue
    .line 657
    if-eqz p1, :cond_c

    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/finsky/billing/InAppBillingSetting;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isBillingEnabledForPackage(Ljava/lang/String;)Z
    .registers 3
    .parameter "packageName"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    #calls: Lcom/google/android/finsky/billing/iab/MarketBillingService;->getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;
    invoke-static {v0, p1}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->access$200(Lcom/google/android/finsky/billing/iab/MarketBillingService;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->isBillingEnabledForAccount(Landroid/accounts/Account;)Z

    move-result v0

    return v0
.end method

.method private isRequestAllowed(Ljava/lang/String;)Z
    .registers 3
    .parameter "packageName"

    .prologue
    .line 665
    const/4 v0, 0x1

    return v0
.end method

.method private makeSignatureHash(Landroid/content/pm/PackageInfo;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    .registers 6
    .parameter "packageInfo"

    .prologue
    .line 638
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;-><init>()V

    .line 639
    .local v1, signatureHash:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    .line 640
    iget v2, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    .line 641
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 642
    .local v0, signature:[B
    invoke-static {v0}, Lcom/google/android/finsky/utils/Md5Util;->secureHashBytes([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->setHash(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    .line 643
    return-object v1
.end method

.method private updateWithRequestId(Landroid/os/Bundle;J)Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;
    .registers 6
    .parameter "bundle"
    .parameter "requestId"

    .prologue
    .line 325
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_9

    .line 326
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 329
    :goto_8
    return-object v0

    .line 328
    :cond_9
    const-string v0, "REQUEST_ID"

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 329
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    goto :goto_8
.end method


# virtual methods
.method public checkBillingSupported(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;
    .registers 5
    .parameter "billingApiVersion"
    .parameter "packageName"

    .prologue
    .line 370
    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->isBillingEnabledForPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 371
    sget-object v1, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 379
    :goto_8
    return-object v1

    .line 374
    :cond_9
    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 375
    .local v0, packageInfo:Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_12

    .line 376
    sget-object v1, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    goto :goto_8

    .line 379
    :cond_12
    sget-object v1, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    goto :goto_8
.end method

.method public confirmNotifications(ILjava/lang/String;[Ljava/lang/String;)J
    .registers 16
    .parameter "billingApiVersion"
    .parameter "packageName"
    .parameter "notifyIds"

    .prologue
    .line 501
    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 502
    .local v5, packageInfo:Landroid/content/pm/PackageInfo;
    if-nez v5, :cond_9

    .line 503
    const-wide/16 v7, -0x1

    .line 530
    :goto_8
    return-wide v7

    .line 505
    :cond_9
    invoke-direct {p0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getNextInAppRequestId()J

    move-result-wide v7

    .line 506
    .local v7, requestId:J
    iget-object v9, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    #calls: Lcom/google/android/finsky/billing/iab/MarketBillingService;->getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;
    invoke-static {v9, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->access$200(Lcom/google/android/finsky/billing/iab/MarketBillingService;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 507
    .local v0, account:Landroid/accounts/Account;
    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->isBillingEnabledForAccount(Landroid/accounts/Account;)Z

    move-result v9

    if-nez v9, :cond_23

    .line 508
    iget-object v9, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v9, v9, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mNotifier:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

    sget-object v10, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    invoke-virtual {v9, p2, v7, v8, v10}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;)Z

    goto :goto_8

    .line 511
    :cond_23
    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->isRequestAllowed(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_33

    .line 512
    iget-object v9, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v9, v9, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mNotifier:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

    sget-object v10, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    invoke-virtual {v9, p2, v7, v8, v10}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;)Z

    goto :goto_8

    .line 516
    :cond_33
    new-instance v6, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    invoke-direct {v6}, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;-><init>()V

    .line 517
    .local v6, request:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;
    invoke-direct {p0, v5}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->makeSignatureHash(Landroid/content/pm/PackageInfo;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->setSignatureHash(Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    .line 518
    move-object v1, p3

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_42
    if-ge v2, v3, :cond_4c

    aget-object v4, v1, v2

    .line 519
    .local v4, notifyId:Ljava/lang/String;
    invoke-virtual {v6, v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->addNotificationId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    .line 518
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 522
    .end local v4           #notifyId:Ljava/lang/String;
    :cond_4c
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v9

    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/finsky/FinskyApp;->getVendingApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v9

    new-instance v10, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$2;

    invoke-direct {v10, p0, p2, v7, v8}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$2;-><init>(Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;Ljava/lang/String;J)V

    new-instance v11, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$NotifyingErrorListener;

    invoke-direct {v11, p0, p2, v7, v8}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$NotifyingErrorListener;-><init>(Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;Ljava/lang/String;J)V

    invoke-virtual {v9, v6, v10, v11}, Lcom/google/android/vending/remoting/api/VendingApi;->ackNotifications(Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_8
.end method

.method public getPurchaseInformation(ILjava/lang/String;J[Ljava/lang/String;)J
    .registers 20
    .parameter "billingApiVersion"
    .parameter "packageName"
    .parameter "nonce"
    .parameter "notifyIds"

    .prologue
    .line 448
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 449
    .local v7, packageInfo:Landroid/content/pm/PackageInfo;
    if-nez v7, :cond_b

    .line 450
    const-wide/16 v9, -0x1

    .line 486
    :goto_a
    return-wide v9

    .line 452
    :cond_b
    invoke-direct {p0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getNextInAppRequestId()J

    move-result-wide v9

    .line 453
    .local v9, requestId:J
    iget-object v11, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    move-object/from16 v0, p2

    #calls: Lcom/google/android/finsky/billing/iab/MarketBillingService;->getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;
    invoke-static {v11, v0}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->access$200(Lcom/google/android/finsky/billing/iab/MarketBillingService;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v2

    .line 454
    .local v2, account:Landroid/accounts/Account;
    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->isBillingEnabledForAccount(Landroid/accounts/Account;)Z

    move-result v11

    if-nez v11, :cond_29

    .line 455
    iget-object v11, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v11, v11, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mNotifier:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

    sget-object v12, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0, v9, v10, v12}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;)Z

    goto :goto_a

    .line 458
    :cond_29
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->isRequestAllowed(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3d

    .line 459
    iget-object v11, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v11, v11, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mNotifier:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

    sget-object v12, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0, v9, v10, v12}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;)Z

    goto :goto_a

    .line 463
    :cond_3d
    new-instance v8, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    invoke-direct {v8}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;-><init>()V

    .line 465
    .local v8, request:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;
    invoke-virtual {v8, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->setBillingApiVersion(I)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    .line 466
    invoke-direct {p0, v7}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->makeSignatureHash(Landroid/content/pm/PackageInfo;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->setSignatureHash(Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    .line 467
    const-string v11, "SHA1withRSA"

    invoke-virtual {v8, v11}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->setSignatureAlgorithm(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    .line 468
    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->setNonce(J)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    .line 469
    move-object/from16 v3, p5

    .local v3, arr$:[Ljava/lang/String;
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_5a
    if-ge v4, v5, :cond_64

    aget-object v6, v3, v4

    .line 470
    .local v6, notifyId:Ljava/lang/String;
    invoke-virtual {v8, v6}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->addNotificationId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    .line 469
    add-int/lit8 v4, v4, 0x1

    goto :goto_5a

    .line 473
    .end local v6           #notifyId:Ljava/lang/String;
    :cond_64
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v11

    iget-object v12, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/google/android/finsky/FinskyApp;->getVendingApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v11

    new-instance v12, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$1;

    move-object/from16 v0, p2

    invoke-direct {v12, p0, v0, v9, v10}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$1;-><init>(Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;Ljava/lang/String;J)V

    new-instance v13, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$NotifyingErrorListener;

    move-object/from16 v0, p2

    invoke-direct {v13, p0, v0, v9, v10}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$NotifyingErrorListener;-><init>(Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;Ljava/lang/String;J)V

    invoke-virtual {v11, v8, v12, v13}, Lcom/google/android/vending/remoting/api/VendingApi;->getInAppPurchaseInformation(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_a
.end method

.method public requestPurchase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    #calls: Lcom/google/android/finsky/billing/iab/MarketBillingService;->getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;
    invoke-static {v0, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->access$200(Lcom/google/android/finsky/billing/iab/MarketBillingService;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 397
    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 402
    if-eqz v1, :cond_12

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->isBillingEnabledForAccount(Landroid/accounts/Account;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 403
    :cond_12
    const/4 v0, 0x0

    .line 425
    :goto_13
    return-object v0

    .line 406
    :cond_14
    invoke-direct {p0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getNextInAppRequestId()J

    move-result-wide v2

    .line 407
    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->computeSignatureHash(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v4

    .line 411
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    iget-object v6, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    const-class v7, Lcom/google/android/finsky/activities/IabActivity;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 413
    const-string v6, "sku"

    iget-object v7, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    #calls: Lcom/google/android/finsky/billing/iab/MarketBillingService;->buildSku(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, p3, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->access$300(Lcom/google/android/finsky/billing/iab/MarketBillingService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    const-string v6, "package_name"

    invoke-virtual {v5, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    const-string v6, "package_version_code"

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 416
    const-string v1, "package_signature_hash"

    invoke-virtual {v5, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const-string v1, "request_id"

    invoke-virtual {v5, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 418
    const-string v1, "account"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 419
    if-eqz p4, :cond_57

    .line 420
    const-string v0, "developer_payload"

    invoke-virtual {v5, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    :cond_57
    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    const/4 v1, 0x0

    const/high16 v4, 0x4000

    invoke-static {v0, v1, v5, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 425
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_13
.end method

.method public restoreTransactions(ILjava/lang/String;J)J
    .registers 13
    .parameter "billingApiVersion"
    .parameter "packageName"
    .parameter "nonce"

    .prologue
    .line 544
    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 545
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_9

    .line 546
    const-wide/16 v3, -0x1

    .line 580
    :goto_8
    return-wide v3

    .line 548
    :cond_9
    invoke-direct {p0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getNextInAppRequestId()J

    move-result-wide v3

    .line 549
    .local v3, requestId:J
    iget-object v5, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    #calls: Lcom/google/android/finsky/billing/iab/MarketBillingService;->getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;
    invoke-static {v5, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->access$200(Lcom/google/android/finsky/billing/iab/MarketBillingService;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 550
    .local v0, account:Landroid/accounts/Account;
    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->isBillingEnabledForAccount(Landroid/accounts/Account;)Z

    move-result v5

    if-nez v5, :cond_23

    .line 551
    iget-object v5, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v5, v5, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mNotifier:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

    sget-object v6, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    invoke-virtual {v5, p2, v3, v4, v6}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;)Z

    goto :goto_8

    .line 554
    :cond_23
    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->isRequestAllowed(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_33

    .line 555
    iget-object v5, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v5, v5, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mNotifier:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

    sget-object v6, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    invoke-virtual {v5, p2, v3, v4, v6}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;)Z

    goto :goto_8

    .line 559
    :cond_33
    new-instance v2, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    invoke-direct {v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;-><init>()V

    .line 561
    .local v2, request:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;
    invoke-virtual {v2, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->setBillingApiVersion(I)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    .line 562
    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->makeSignatureHash(Landroid/content/pm/PackageInfo;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->setSignatureHash(Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    .line 563
    const-string v5, "SHA1withRSA"

    invoke-virtual {v2, v5}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->setSignatureAlgorithm(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    .line 564
    invoke-virtual {v2, p3, p4}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->setNonce(J)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    .line 565
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/FinskyApp;->getVendingApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v5

    new-instance v6, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$3;

    invoke-direct {v6, p0, p2, v3, v4}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$3;-><init>(Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;Ljava/lang/String;J)V

    new-instance v7, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$NotifyingErrorListener;

    invoke-direct {v7, p0, p2, v3, v4}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$NotifyingErrorListener;-><init>(Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;Ljava/lang/String;J)V

    invoke-virtual {v5, v2, v6, v7}, Lcom/google/android/vending/remoting/api/VendingApi;->restoreInAppTransactions(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_8
.end method

.method public sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6
    .parameter "arguments"

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getBillingRequest(Landroid/os/Bundle;)Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;

    move-result-object v0

    .line 221
    .local v0, billingRequest:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;
    if-nez v0, :cond_1c

    .line 222
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 223
    .local v1, response:Landroid/os/Bundle;
    const-string v2, "RESPONSE_CODE"

    sget-object v3, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 229
    :goto_16
    iget-object v2, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->stopSelf()V

    .line 230
    return-object v1

    .line 226
    .end local v1           #response:Landroid/os/Bundle;
    :cond_1c
    invoke-direct {p0, v0, p1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->handleBillingRequest(Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .restart local v1       #response:Landroid/os/Bundle;
    goto :goto_16
.end method
