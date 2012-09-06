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
    .line 190
    iput-object p1, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    invoke-direct {p0}, Lcom/android/vending/billing/IMarketBillingService$Stub;-><init>()V

    .line 633
    return-void
.end method

.method private argumentsMatch(Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 12
    .parameter "bundle"
    .parameter "requiredArguments"
    .parameter "optionalArguments"

    .prologue
    .line 343
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 344
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 345
    .local v2, expectedKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v6

    .line 346
    .local v6, optionalKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v7, "BILLING_REQUEST"

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 347
    const-string v7, "API_VERSION"

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 349
    move-object v1, p2

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_19
    if-ge v3, v5, :cond_23

    aget-object v0, v1, v3

    .line 350
    .local v0, argument:Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 349
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 352
    .end local v0           #argument:Ljava/lang/String;
    :cond_23
    move-object v1, p3

    array-length v5, v1

    const/4 v3, 0x0

    :goto_26
    if-ge v3, v5, :cond_30

    aget-object v0, v1, v3

    .line 353
    .restart local v0       #argument:Ljava/lang/String;
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 352
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 355
    .end local v0           #argument:Ljava/lang/String;
    :cond_30
    invoke-interface {v4, v6}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 356
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    return v7
.end method

.method private varargs argumentsMatchExactly(Landroid/os/Bundle;[Ljava/lang/String;)Z
    .registers 4
    .parameter "bundle"
    .parameter "requiredArguments"

    .prologue
    .line 334
    invoke-static {}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->access$000()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->argumentsMatch(Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private computeSignatureHash(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .registers 5
    .parameter "packageInfo"

    .prologue
    .line 479
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 480
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

    .line 304
    const-string v3, "BILLING_REQUEST"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, billingRequestString:Ljava/lang/String;
    if-nez v0, :cond_12

    .line 306
    const-string v3, "Received bundle without billing request type"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    :goto_11
    return-object v2

    .line 310
    :cond_12
    :try_start_12
    invoke-static {v0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_15} :catch_17

    move-result-object v2

    goto :goto_11

    .line 311
    :catch_17
    move-exception v1

    .line 312
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
    .line 658
    invoke-static {}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->access$400()Ljava/util/Random;

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
    .line 673
    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v1, v1, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x40

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 676
    :goto_a
    return-object v1

    .line 674
    :catch_b
    move-exception v0

    .line 675
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "cannot find package name: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 676
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private handleBillingRequest(Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 20
    .parameter "billingRequest"
    .parameter "arguments"

    .prologue
    .line 216
    const-string v2, "API_VERSION"

    const/4 v8, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 217
    .local v3, billingApiVersion:I
    const-string v2, "PACKAGE_NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, packageName:Ljava/lang/String;
    const-string v2, "DEVELOPER_PAYLOAD"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 219
    .local v7, developerPayload:Ljava/lang/String;
    const-string v2, "ITEM_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, itemId:Ljava/lang/String;
    const-string v2, "ITEM_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 221
    .local v6, itemType:Ljava/lang/String;
    const-string v2, "NONCE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 222
    .local v11, nonce:J
    const-string v2, "NOTIFY_IDS"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 224
    .local v13, notifyIds:[Ljava/lang/String;
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 225
    .local v15, response:Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->checkBillingEnabled(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    move-result-object v16

    .line 226
    .local v16, responseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    move-object/from16 v0, v16

    if-eq v0, v2, :cond_53

    .line 227
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->setResponseCode(Landroid/os/Bundle;Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;)Landroid/os/Bundle;

    move-result-object v2

    .line 286
    :goto_52
    return-object v2

    .line 229
    :cond_53
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$1;->$SwitchMap$com$google$android$finsky$billing$iab$MarketBillingService$BillingRequest:[I

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;->ordinal()I

    move-result v8

    aget v2, v2, v8

    packed-switch v2, :pswitch_data_18e

    .line 286
    :goto_5e
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->setResponseCode(Landroid/os/Bundle;Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_52

    .line 231
    :pswitch_67
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "PACKAGE_NAME"

    aput-object v9, v2, v8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "ITEM_TYPE"

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2, v8}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->argumentsMatch(Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 234
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->setResponseCode(Landroid/os/Bundle;Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_52

    .line 236
    :cond_8a
    if-nez v6, :cond_8e

    .line 238
    const-string v6, "inapp"

    .line 240
    :cond_8e
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->checkTypeSupported(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    move-result-object v16

    .line 241
    goto :goto_5e

    .line 243
    :pswitch_95
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "PACKAGE_NAME"

    aput-object v9, v2, v8

    const/4 v8, 0x1

    const-string v9, "ITEM_ID"

    aput-object v9, v2, v8

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "DEVELOPER_PAYLOAD"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "ITEM_TYPE"

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2, v8}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->argumentsMatch(Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c2

    .line 246
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->setResponseCode(Landroid/os/Bundle;Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_52

    .line 248
    :cond_c2
    if-nez v6, :cond_c6

    .line 250
    const-string v6, "inapp"

    .line 252
    :cond_c6
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->checkTypeSupported(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    move-result-object v16

    .line 253
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    move-object/from16 v0, v16

    if-eq v0, v2, :cond_dc

    .line 254
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->setResponseCode(Landroid/os/Bundle;Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;)Landroid/os/Bundle;

    move-result-object v2

    goto/16 :goto_52

    :cond_dc
    move-object/from16 v2, p0

    .line 256
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->requestPurchase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v14

    .line 259
    .local v14, requestIntentPair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Landroid/app/PendingIntent;>;"
    const-string v8, "REQUEST_ID"

    iget-object v2, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v15, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 260
    const-string v8, "PURCHASE_INTENT"

    iget-object v2, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v15, v8, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_5e

    .line 263
    .end local v14           #requestIntentPair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Landroid/app/PendingIntent;>;"
    :pswitch_fa
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "PACKAGE_NAME"

    aput-object v9, v2, v8

    const/4 v8, 0x1

    const-string v9, "NONCE"

    aput-object v9, v2, v8

    const/4 v8, 0x2

    const-string v9, "NOTIFY_IDS"

    aput-object v9, v2, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->argumentsMatchExactly(Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_120

    .line 265
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->setResponseCode(Landroid/os/Bundle;Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;)Landroid/os/Bundle;

    move-result-object v2

    goto/16 :goto_52

    :cond_120
    move-object/from16 v8, p0

    move v9, v3

    move-object v10, v4

    .line 267
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getPurchaseInformation(ILjava/lang/String;J[Ljava/lang/String;)J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8, v9}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->updateWithRequestId(Landroid/os/Bundle;J)Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    move-result-object v16

    .line 270
    goto/16 :goto_5e

    .line 272
    :pswitch_130
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "PACKAGE_NAME"

    aput-object v9, v2, v8

    const/4 v8, 0x1

    const-string v9, "NONCE"

    aput-object v9, v2, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->argumentsMatchExactly(Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_151

    .line 273
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->setResponseCode(Landroid/os/Bundle;Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;)Landroid/os/Bundle;

    move-result-object v2

    goto/16 :goto_52

    .line 275
    :cond_151
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v11, v12}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->restoreTransactions(ILjava/lang/String;J)J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8, v9}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->updateWithRequestId(Landroid/os/Bundle;J)Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    move-result-object v16

    .line 277
    goto/16 :goto_5e

    .line 279
    :pswitch_15f
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "PACKAGE_NAME"

    aput-object v9, v2, v8

    const/4 v8, 0x1

    const-string v9, "NOTIFY_IDS"

    aput-object v9, v2, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->argumentsMatchExactly(Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_180

    .line 280
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->setResponseCode(Landroid/os/Bundle;Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;)Landroid/os/Bundle;

    move-result-object v2

    goto/16 :goto_52

    .line 282
    :cond_180
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v13}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->confirmNotifications(ILjava/lang/String;[Ljava/lang/String;)J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8, v9}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->updateWithRequestId(Landroid/os/Bundle;J)Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    move-result-object v16

    goto/16 :goto_5e

    .line 229
    :pswitch_data_18e
    .packed-switch 0x1
        :pswitch_67
        :pswitch_95
        :pswitch_fa
        :pswitch_130
        :pswitch_15f
    .end packed-switch
.end method

.method private isBillingEnabledForAccount(Landroid/accounts/Account;)Z
    .registers 3
    .parameter "account"

    .prologue
    .line 707
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
    .line 700
    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    #calls: Lcom/google/android/finsky/billing/iab/MarketBillingService;->getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;
    invoke-static {v0, p1}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->access$100(Lcom/google/android/finsky/billing/iab/MarketBillingService;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->isBillingEnabledForAccount(Landroid/accounts/Account;)Z

    move-result v0

    return v0
.end method

.method private isRequestAllowed(Ljava/lang/String;)Z
    .registers 3
    .parameter "packageName"

    .prologue
    .line 715
    const/4 v0, 0x1

    return v0
.end method

.method private makeSignatureHash(Landroid/content/pm/PackageInfo;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    .registers 6
    .parameter "packageInfo"

    .prologue
    .line 688
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;-><init>()V

    .line 689
    .local v1, signatureHash:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    .line 690
    iget v2, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    .line 691
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 692
    .local v0, signature:[B
    invoke-static {v0}, Lcom/google/android/finsky/utils/Md5Util;->secureHashBytes([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;->setHash(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    .line 693
    return-object v1
.end method

.method private setResponseCode(Landroid/os/Bundle;Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;)Landroid/os/Bundle;
    .registers 5
    .parameter "response"
    .parameter "code"

    .prologue
    .line 294
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 295
    return-object p1
.end method

.method private updateWithRequestId(Landroid/os/Bundle;J)Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;
    .registers 6
    .parameter "bundle"
    .parameter "requestId"

    .prologue
    .line 322
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_9

    .line 323
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 326
    :goto_8
    return-object v0

    .line 325
    :cond_9
    const-string v0, "REQUEST_ID"

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 326
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    goto :goto_8
.end method


# virtual methods
.method public checkBillingApiVersionSupport(I)Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;
    .registers 6
    .parameter "version"

    .prologue
    const/4 v3, 0x0

    .line 417
    if-gtz p1, :cond_d

    .line 418
    const-string v0, "No billing API version given!"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 424
    :goto_c
    return-object v0

    .line 420
    :cond_d
    const/4 v0, 0x2

    if-le p1, v0, :cond_21

    .line 421
    const-string v0, "Unsupported (future) billing API version: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    goto :goto_c

    .line 424
    :cond_21
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    goto :goto_c
.end method

.method public checkBillingEnabled(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;
    .registers 8
    .parameter "billingApiVersion"
    .parameter "packageName"

    .prologue
    const/4 v4, 0x0

    .line 367
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->checkBillingApiVersionSupport(I)Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    move-result-object v1

    .line 368
    .local v1, response:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    if-eq v1, v2, :cond_a

    .line 384
    .end local v1           #response:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;
    :goto_9
    return-object v1

    .line 371
    .restart local v1       #response:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;
    :cond_a
    if-nez p2, :cond_16

    .line 372
    const-string v2, "No packageName given!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    sget-object v1, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    goto :goto_9

    .line 375
    :cond_16
    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->isBillingEnabledForPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 376
    const-string v2, "Billing unavailable for this package."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    sget-object v1, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    goto :goto_9

    .line 379
    :cond_26
    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 380
    .local v0, packageInfo:Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_39

    .line 381
    const-string v2, "No package info for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    sget-object v1, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    goto :goto_9

    .line 384
    :cond_39
    sget-object v1, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    goto :goto_9
.end method

.method public checkTypeSupported(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;
    .registers 7
    .parameter "billingApiVersion"
    .parameter "type"

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 394
    const-string v0, "inapp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "subs"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 395
    const-string v0, "Unknown item type specified %s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 410
    :goto_1e
    return-object v0

    .line 399
    :cond_1f
    if-ne p1, v3, :cond_3b

    .line 400
    const-string v0, "inapp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 401
    const-string v0, "Item type %s not supported in billing api version %d"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    goto :goto_1e

    .line 405
    :cond_3b
    if-ne p1, v1, :cond_56

    .line 406
    const-string v0, "subs"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    sget-object v0, Lcom/google/android/finsky/config/G;->subscriptionsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_56

    .line 407
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    goto :goto_1e

    .line 410
    :cond_56
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    goto :goto_1e
.end method

.method public confirmNotifications(ILjava/lang/String;[Ljava/lang/String;)J
    .registers 16
    .parameter "billingApiVersion"
    .parameter "packageName"
    .parameter "notifyIds"

    .prologue
    .line 551
    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 552
    .local v5, packageInfo:Landroid/content/pm/PackageInfo;
    if-nez v5, :cond_9

    .line 553
    const-wide/16 v7, -0x1

    .line 580
    :goto_8
    return-wide v7

    .line 555
    :cond_9
    invoke-direct {p0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getNextInAppRequestId()J

    move-result-wide v7

    .line 556
    .local v7, requestId:J
    iget-object v9, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    #calls: Lcom/google/android/finsky/billing/iab/MarketBillingService;->getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;
    invoke-static {v9, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->access$100(Lcom/google/android/finsky/billing/iab/MarketBillingService;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 557
    .local v0, account:Landroid/accounts/Account;
    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->isBillingEnabledForAccount(Landroid/accounts/Account;)Z

    move-result v9

    if-nez v9, :cond_23

    .line 558
    iget-object v9, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v9, v9, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mNotifier:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

    sget-object v10, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    invoke-virtual {v9, p2, v7, v8, v10}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;)Z

    goto :goto_8

    .line 561
    :cond_23
    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->isRequestAllowed(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_33

    .line 562
    iget-object v9, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v9, v9, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mNotifier:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

    sget-object v10, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    invoke-virtual {v9, p2, v7, v8, v10}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;)Z

    goto :goto_8

    .line 566
    :cond_33
    new-instance v6, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    invoke-direct {v6}, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;-><init>()V

    .line 567
    .local v6, request:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;
    invoke-direct {p0, v5}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->makeSignatureHash(Landroid/content/pm/PackageInfo;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->setSignatureHash(Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    .line 568
    move-object v1, p3

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_42
    if-ge v2, v3, :cond_4c

    aget-object v4, v1, v2

    .line 569
    .local v4, notifyId:Ljava/lang/String;
    invoke-virtual {v6, v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;->addNotificationId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    .line 568
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 572
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
    .line 498
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 499
    .local v7, packageInfo:Landroid/content/pm/PackageInfo;
    if-nez v7, :cond_b

    .line 500
    const-wide/16 v9, -0x1

    .line 536
    :goto_a
    return-wide v9

    .line 502
    :cond_b
    invoke-direct {p0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getNextInAppRequestId()J

    move-result-wide v9

    .line 503
    .local v9, requestId:J
    iget-object v11, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    move-object/from16 v0, p2

    #calls: Lcom/google/android/finsky/billing/iab/MarketBillingService;->getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;
    invoke-static {v11, v0}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->access$100(Lcom/google/android/finsky/billing/iab/MarketBillingService;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v2

    .line 504
    .local v2, account:Landroid/accounts/Account;
    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->isBillingEnabledForAccount(Landroid/accounts/Account;)Z

    move-result v11

    if-nez v11, :cond_29

    .line 505
    iget-object v11, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v11, v11, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mNotifier:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

    sget-object v12, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0, v9, v10, v12}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;)Z

    goto :goto_a

    .line 508
    :cond_29
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->isRequestAllowed(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3d

    .line 509
    iget-object v11, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v11, v11, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mNotifier:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

    sget-object v12, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0, v9, v10, v12}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;)Z

    goto :goto_a

    .line 513
    :cond_3d
    new-instance v8, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    invoke-direct {v8}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;-><init>()V

    .line 515
    .local v8, request:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;
    invoke-virtual {v8, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->setBillingApiVersion(I)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    .line 516
    invoke-direct {p0, v7}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->makeSignatureHash(Landroid/content/pm/PackageInfo;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->setSignatureHash(Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    .line 517
    const-string v11, "SHA1withRSA"

    invoke-virtual {v8, v11}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->setSignatureAlgorithm(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    .line 518
    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->setNonce(J)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    .line 519
    move-object/from16 v3, p5

    .local v3, arr$:[Ljava/lang/String;
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_5a
    if-ge v4, v5, :cond_64

    aget-object v6, v3, v4

    .line 520
    .local v6, notifyId:Ljava/lang/String;
    invoke-virtual {v8, v6}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->addNotificationId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    .line 519
    add-int/lit8 v4, v4, 0x1

    goto :goto_5a

    .line 523
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

.method public requestPurchase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .registers 14
    .parameter
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
    .line 445
    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    #calls: Lcom/google/android/finsky/billing/iab/MarketBillingService;->getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;
    invoke-static {v0, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->access$100(Lcom/google/android/finsky/billing/iab/MarketBillingService;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 446
    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 451
    if-eqz v1, :cond_12

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->isBillingEnabledForAccount(Landroid/accounts/Account;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 452
    :cond_12
    const/4 v0, 0x0

    .line 475
    :goto_13
    return-object v0

    .line 455
    :cond_14
    invoke-direct {p0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getNextInAppRequestId()J

    move-result-wide v2

    .line 456
    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->computeSignatureHash(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v4

    .line 460
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    iget-object v6, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    const-class v7, Lcom/google/android/finsky/activities/IabActivity;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 462
    const-string v6, "document_id"

    iget-object v7, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    #calls: Lcom/google/android/finsky/billing/iab/MarketBillingService;->buildDocId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, p3, p4, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->access$200(Lcom/google/android/finsky/billing/iab/MarketBillingService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    const-string v6, "package_name"

    invoke-virtual {v5, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    const-string v6, "package_version_code"

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 465
    const-string v1, "package_signature_hash"

    invoke-virtual {v5, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    const-string v1, "request_id"

    invoke-virtual {v5, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 467
    const-string v1, "authAccount"

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    const-string v0, "finsky.is_direct_link_purchase"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 469
    if-eqz p5, :cond_5f

    .line 470
    const-string v0, "developer_payload"

    invoke-virtual {v5, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    :cond_5f
    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    const/4 v1, 0x0

    const/high16 v4, 0x4000

    invoke-static {v0, v1, v5, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 475
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
    .line 594
    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 595
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_9

    .line 596
    const-wide/16 v3, -0x1

    .line 630
    :goto_8
    return-wide v3

    .line 598
    :cond_9
    invoke-direct {p0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getNextInAppRequestId()J

    move-result-wide v3

    .line 599
    .local v3, requestId:J
    iget-object v5, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    #calls: Lcom/google/android/finsky/billing/iab/MarketBillingService;->getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;
    invoke-static {v5, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->access$100(Lcom/google/android/finsky/billing/iab/MarketBillingService;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 600
    .local v0, account:Landroid/accounts/Account;
    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->isBillingEnabledForAccount(Landroid/accounts/Account;)Z

    move-result v5

    if-nez v5, :cond_23

    .line 601
    iget-object v5, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v5, v5, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mNotifier:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

    sget-object v6, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    invoke-virtual {v5, p2, v3, v4, v6}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;)Z

    goto :goto_8

    .line 604
    :cond_23
    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->isRequestAllowed(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_33

    .line 605
    iget-object v5, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v5, v5, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mNotifier:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

    sget-object v6, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    invoke-virtual {v5, p2, v3, v4, v6}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;)Z

    goto :goto_8

    .line 609
    :cond_33
    new-instance v2, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    invoke-direct {v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;-><init>()V

    .line 611
    .local v2, request:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;
    invoke-virtual {v2, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->setBillingApiVersion(I)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    .line 612
    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->makeSignatureHash(Landroid/content/pm/PackageInfo;)Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->setSignatureHash(Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    .line 613
    const-string v5, "SHA1withRSA"

    invoke-virtual {v2, v5}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->setSignatureAlgorithm(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    .line 614
    invoke-virtual {v2, p3, p4}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->setNonce(J)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    .line 615
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
    .line 193
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getBillingRequest(Landroid/os/Bundle;)Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;

    move-result-object v0

    .line 195
    .local v0, billingRequest:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;
    if-nez v0, :cond_1c

    .line 196
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 197
    .local v1, response:Landroid/os/Bundle;
    const-string v2, "RESPONSE_CODE"

    sget-object v3, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    :goto_16
    iget-object v2, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->stopSelf()V

    .line 204
    return-object v1

    .line 200
    .end local v1           #response:Landroid/os/Bundle;
    :cond_1c
    invoke-direct {p0, v0, p1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->handleBillingRequest(Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .restart local v1       #response:Landroid/os/Bundle;
    goto :goto_16
.end method
