.class public Lcom/google/android/finsky/utils/UninstallRefundTracker;
.super Ljava/lang/Object;
.source "UninstallRefundTracker.java"

# interfaces
.implements Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;


# instance fields
.field private final mAssetStore:Lcom/google/android/finsky/local/AssetStore;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/local/AssetStore;Lcom/google/android/finsky/receivers/PackageMonitorReceiver;)V
    .registers 4
    .parameter "context"
    .parameter "assetStore"
    .parameter "receiver"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/utils/UninstallRefundTracker;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/google/android/finsky/utils/UninstallRefundTracker;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    .line 39
    invoke-virtual {p3, p0}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->attach(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/utils/UninstallRefundTracker;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/finsky/utils/UninstallRefundTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private refundIfNecessary(Ljava/lang/String;)V
    .registers 10
    .parameter "packageName"

    .prologue
    .line 68
    iget-object v5, p0, Lcom/google/android/finsky/utils/UninstallRefundTracker;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    invoke-interface {v5, p1}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v1

    .line 69
    .local v1, localAsset:Lcom/google/android/finsky/local/LocalAsset;
    if-nez v1, :cond_9

    .line 117
    :cond_8
    :goto_8
    return-void

    .line 73
    :cond_9
    invoke-interface {v1}, Lcom/google/android/finsky/local/LocalAsset;->getRefundPeriodEndTime()Ljava/lang/Long;

    move-result-object v2

    .line 74
    .local v2, refundPeriodEndTime:Ljava/lang/Long;
    if-eqz v2, :cond_4c

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_4c

    const/4 v0, 0x1

    .line 77
    .local v0, isRefundable:Z
    :goto_24
    if-eqz v0, :cond_8

    .line 81
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-interface {v1}, Lcom/google/android/finsky/local/LocalAsset;->getAccount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/FinskyApp;->getVendingApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v4

    .line 82
    .local v4, vendingApi:Lcom/google/android/vending/remoting/api/VendingApi;
    new-instance v3, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;

    invoke-direct {v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;-><init>()V

    .line 83
    .local v3, refundRequest:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;
    invoke-interface {v1}, Lcom/google/android/finsky/local/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;->setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;

    .line 84
    new-instance v5, Lcom/google/android/finsky/utils/UninstallRefundTracker$1;

    invoke-direct {v5, p0, v1}, Lcom/google/android/finsky/utils/UninstallRefundTracker$1;-><init>(Lcom/google/android/finsky/utils/UninstallRefundTracker;Lcom/google/android/finsky/local/LocalAsset;)V

    new-instance v6, Lcom/google/android/finsky/utils/UninstallRefundTracker$2;

    invoke-direct {v6, p0, v1}, Lcom/google/android/finsky/utils/UninstallRefundTracker$2;-><init>(Lcom/google/android/finsky/utils/UninstallRefundTracker;Lcom/google/android/finsky/local/LocalAsset;)V

    invoke-virtual {v4, v3, v5, v6}, Lcom/google/android/vending/remoting/api/VendingApi;->refundAsset(Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_8

    .line 74
    .end local v0           #isRefundable:Z
    .end local v3           #refundRequest:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;
    .end local v4           #vendingApi:Lcom/google/android/vending/remoting/api/VendingApi;
    :cond_4c
    const/4 v0, 0x0

    goto :goto_24
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;)V
    .registers 2
    .parameter "packageName"

    .prologue
    .line 44
    return-void
.end method

.method public onPackageAvailabilityChanged([Ljava/lang/String;Z)V
    .registers 3
    .parameter "packageNames"
    .parameter "available"

    .prologue
    .line 59
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .registers 2
    .parameter "packageName"

    .prologue
    .line 55
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Z)V
    .registers 3
    .parameter "packageName"
    .parameter "replacing"

    .prologue
    .line 48
    if-nez p2, :cond_5

    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/UninstallRefundTracker;->refundIfNecessary(Ljava/lang/String;)V

    .line 51
    :cond_5
    return-void
.end method
