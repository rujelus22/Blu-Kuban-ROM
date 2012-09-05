.class public Lcom/google/android/finsky/billing/iab/MarketBillingService;
.super Landroid/app/Service;
.source "MarketBillingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/iab/MarketBillingService$2;,
        Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;,
        Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;,
        Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;,
        Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;,
        Lcom/google/android/finsky/billing/iab/MarketBillingService$UidProvider;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final sPackageToAccount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sRandom:Ljava/util/Random;


# instance fields
.field private final mBinder:Lcom/android/vending/billing/IMarketBillingService$Stub;

.field mNotifier:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mUidProvider:Lcom/google/android/finsky/billing/iab/MarketBillingService$UidProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 60
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    sput-object v3, Lcom/google/android/finsky/billing/iab/MarketBillingService;->sPackageToAccount:Ljava/util/Map;

    .line 63
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v1

    .line 66
    .local v1, assetStore:Lcom/google/android/finsky/local/AssetStore;
    invoke-interface {v1}, Lcom/google/android/finsky/local/AssetStore;->getAssets()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/local/LocalAsset;

    .line 67
    .local v0, asset:Lcom/google/android/finsky/local/LocalAsset;
    sget-object v3, Lcom/google/android/finsky/billing/iab/MarketBillingService;->sPackageToAccount:Ljava/util/Map;

    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getAccount()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 70
    .end local v0           #asset:Lcom/google/android/finsky/local/LocalAsset;
    :cond_30
    new-instance v3, Lcom/google/android/finsky/billing/iab/MarketBillingService$1;

    invoke-direct {v3}, Lcom/google/android/finsky/billing/iab/MarketBillingService$1;-><init>()V

    invoke-interface {v1, v3}, Lcom/google/android/finsky/local/AssetStore;->addListener(Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;)V

    .line 171
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    sput-object v3, Lcom/google/android/finsky/billing/iab/MarketBillingService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 195
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    sput-object v3, Lcom/google/android/finsky/billing/iab/MarketBillingService;->sRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 194
    new-instance v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$UidProvider;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$UidProvider;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mUidProvider:Lcom/google/android/finsky/billing/iab/MarketBillingService$UidProvider;

    .line 213
    new-instance v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;-><init>(Lcom/google/android/finsky/billing/iab/MarketBillingService;)V

    iput-object v0, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mNotifier:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

    .line 214
    new-instance v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;-><init>(Lcom/google/android/finsky/billing/iab/MarketBillingService;)V

    iput-object v0, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mBinder:Lcom/android/vending/billing/IMarketBillingService$Stub;

    .line 703
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->sPackageToAccount:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/iab/MarketBillingService;Ljava/lang/String;)Landroid/accounts/Account;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/iab/MarketBillingService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->buildSku(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/billing/iab/MarketBillingService;Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;)Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->purchaseResultToResponseCode(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;)Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/Random;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->sRandom:Ljava/util/Random;

    return-object v0
.end method

.method private buildSku(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "itemId"
    .parameter "packageName"

    .prologue
    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inapp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .registers 9
    .parameter "packageName"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 855
    sget-object v4, Lcom/google/android/finsky/billing/iab/MarketBillingService;->sPackageToAccount:Ljava/util/Map;

    monitor-enter v4

    .line 856
    :try_start_5
    sget-object v3, Lcom/google/android/finsky/billing/iab/MarketBillingService;->sPackageToAccount:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 857
    .local v0, assetOwner:Ljava/lang/String;
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_20

    .line 858
    if-eqz v0, :cond_23

    .line 859
    invoke-static {v0, p0}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v2

    .line 860
    .local v2, mappingAccount:Landroid/accounts/Account;
    if-eqz v2, :cond_23

    .line 861
    const-string v3, "%s: Account determined from asset owner."

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 873
    .end local v2           #mappingAccount:Landroid/accounts/Account;
    :goto_1f
    return-object v2

    .line 857
    .end local v0           #assetOwner:Ljava/lang/String;
    :catchall_20
    move-exception v3

    :try_start_21
    monitor-exit v4
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v3

    .line 867
    .restart local v0       #assetOwner:Ljava/lang/String;
    :cond_23
    invoke-static {p0}, Lcom/google/android/finsky/api/AccountHandler;->getFirstAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    .line 868
    .local v1, defaultAccount:Landroid/accounts/Account;
    if-eqz v1, :cond_34

    .line 869
    const-string v3, "%s: Account from first account."

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v1

    .line 870
    goto :goto_1f

    .line 872
    :cond_34
    const-string v3, "%s: No account found."

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 873
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method private purchaseResultToResponseCode(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;)Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;
    .registers 3
    .parameter "result"

    .prologue
    .line 835
    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->getResultCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_14

    .line 843
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    :goto_9
    return-object v0

    .line 837
    :sswitch_a
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    goto :goto_9

    .line 839
    :sswitch_d
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    goto :goto_9

    .line 841
    :sswitch_10
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    goto :goto_9

    .line 835
    nop

    :sswitch_data_14
    .sparse-switch
        0x0 -> :sswitch_a
        0x7 -> :sswitch_10
        0x9 -> :sswitch_d
    .end sparse-switch
.end method

.method public static sendNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "context"
    .parameter "packageName"
    .parameter "notifyIds"

    .prologue
    .line 803
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.vending.billing.IN_APP_NOTIFY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1, v2}, Lcom/google/android/finsky/utils/IntentUtils;->createIntentForReceiver(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 805
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_13

    .line 806
    const/4 v1, 0x0

    .line 811
    :goto_12
    return v1

    .line 808
    :cond_13
    const-string v1, "notification_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 811
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public static sendResponseCode(Landroid/content/Context;Ljava/lang/String;JLcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;)Z
    .registers 12
    .parameter "context"
    .parameter "packageName"
    .parameter "requestId"
    .parameter "responseCode"

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 685
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.vending.billing.RESPONSE_CODE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, p1, v4}, Lcom/google/android/finsky/utils/IntentUtils;->createIntentForReceiver(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 687
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_24

    .line 688
    const-string v3, "Response %s cannot be delivered to %s. Intent does not resolve."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p4}, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    :goto_23
    return v1

    .line 692
    :cond_24
    const-string v3, "Sending response %s for request %d to %s."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p4}, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v2

    aput-object p1, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 694
    const-string v1, "request_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 695
    const-string v1, "response_code"

    invoke-virtual {p4}, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 696
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v1, v2

    .line 697
    goto :goto_23
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mBinder:Lcom/android/vending/billing/IMarketBillingService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 199
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 200
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 201
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 211
    return-void
.end method
