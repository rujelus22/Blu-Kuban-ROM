.class public Lcom/google/android/finsky/billing/iab/MarketBillingService;
.super Landroid/app/Service;
.source "MarketBillingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/iab/MarketBillingService$1;,
        Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;,
        Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;,
        Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;,
        Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;,
        Lcom/google/android/finsky/billing/iab/MarketBillingService$UidProvider;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static sRandom:Ljava/util/Random;


# instance fields
.field private final mBinder:Lcom/android/vending/billing/IMarketBillingService$Stub;

.field mNotifier:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mUidProvider:Lcom/google/android/finsky/billing/iab/MarketBillingService$UidProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 145
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 169
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->sRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 168
    new-instance v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$UidProvider;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$UidProvider;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mUidProvider:Lcom/google/android/finsky/billing/iab/MarketBillingService$UidProvider;

    .line 187
    new-instance v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;-><init>(Lcom/google/android/finsky/billing/iab/MarketBillingService;)V

    iput-object v0, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mNotifier:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

    .line 188
    new-instance v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;-><init>(Lcom/google/android/finsky/billing/iab/MarketBillingService;)V

    iput-object v0, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mBinder:Lcom/android/vending/billing/IMarketBillingService$Stub;

    .line 753
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/iab/MarketBillingService;Ljava/lang/String;)Landroid/accounts/Account;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/iab/MarketBillingService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->buildDocId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/iab/MarketBillingService;Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;)Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->purchaseResultToResponseCode(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;)Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/Random;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->sRandom:Ljava/util/Random;

    return-object v0
.end method

.method private buildDocId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "itemId"
    .parameter "itemType"
    .parameter "packageName"

    .prologue
    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .registers 10
    .parameter "packageName"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 904
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v1

    .line 905
    .local v1, appStates:Lcom/google/android/finsky/appstate/AppStates;
    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/AppStates;->blockingLoad()V

    .line 906
    invoke-virtual {v1, p1}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    .line 907
    .local v0, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v0, :cond_40

    iget-object v5, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v5, :cond_40

    .line 908
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v3

    .line 909
    .local v3, libraries:Lcom/google/android/finsky/library/Libraries;
    invoke-virtual {v3}, Lcom/google/android/finsky/library/Libraries;->blockingLoad()V

    .line 910
    iget-object v5, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget-object v5, v5, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->certificateHashes:[Ljava/lang/String;

    invoke-virtual {v3, p1, v5}, Lcom/google/android/finsky/library/Libraries;->getAppOwners(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 912
    .local v4, ownerAccounts:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_40

    .line 913
    const-string v5, "%s: Account determined from library ownership."

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 914
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accounts/Account;

    .line 925
    .end local v3           #libraries:Lcom/google/android/finsky/library/Libraries;
    .end local v4           #ownerAccounts:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    :goto_3f
    return-object v5

    .line 919
    :cond_40
    invoke-static {p0}, Lcom/google/android/finsky/api/AccountHandler;->getFirstAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v2

    .line 920
    .local v2, defaultAccount:Landroid/accounts/Account;
    if-eqz v2, :cond_51

    .line 921
    const-string v5, "%s: Account from first account."

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v2

    .line 922
    goto :goto_3f

    .line 924
    :cond_51
    const-string v5, "%s: No account found."

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 925
    const/4 v5, 0x0

    goto :goto_3f
.end method

.method private purchaseResultToResponseCode(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;)Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;
    .registers 3
    .parameter "result"

    .prologue
    .line 885
    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;->getResultCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_14

    .line 893
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    :goto_9
    return-object v0

    .line 887
    :sswitch_a
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    goto :goto_9

    .line 889
    :sswitch_d
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    goto :goto_9

    .line 891
    :sswitch_10
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    goto :goto_9

    .line 885
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
    .line 853
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.vending.billing.IN_APP_NOTIFY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1, v2}, Lcom/google/android/finsky/utils/IntentUtils;->createIntentForReceiver(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 855
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_13

    .line 856
    const/4 v1, 0x0

    .line 861
    :goto_12
    return v1

    .line 858
    :cond_13
    const-string v1, "notification_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 859
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 861
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

    .line 735
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.vending.billing.RESPONSE_CODE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, p1, v4}, Lcom/google/android/finsky/utils/IntentUtils;->createIntentForReceiver(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 737
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_24

    .line 738
    const-string v3, "Response %s cannot be delivered to %s. Intent does not resolve."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p4}, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 747
    :goto_23
    return v1

    .line 742
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

    .line 744
    const-string v1, "request_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 745
    const-string v1, "response_code"

    invoke-virtual {p4}, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 746
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v1, v2

    .line 747
    goto :goto_23
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mBinder:Lcom/android/vending/billing/IMarketBillingService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 174
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 175
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 185
    return-void
.end method
