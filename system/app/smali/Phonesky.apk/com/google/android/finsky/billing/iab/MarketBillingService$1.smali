.class final Lcom/google/android/finsky/billing/iab/MarketBillingService$1;
.super Ljava/lang/Object;
.source "MarketBillingService.java"

# interfaces
.implements Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/iab/MarketBillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetAdded(Lcom/google/android/finsky/local/LocalAsset;)V
    .registers 6
    .parameter "asset"

    .prologue
    .line 80
    invoke-static {}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->access$000()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 81
    :try_start_5
    invoke-static {}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/finsky/local/LocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/finsky/local/LocalAsset;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    monitor-exit v1

    .line 83
    return-void

    .line 82
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public onAssetChanged(Lcom/google/android/finsky/local/LocalAsset;Lcom/google/android/finsky/local/AssetState;)V
    .registers 7
    .parameter "asset"
    .parameter "previousState"

    .prologue
    .line 73
    invoke-static {}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->access$000()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 74
    :try_start_5
    invoke-static {}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/finsky/local/LocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/finsky/local/LocalAsset;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    monitor-exit v1

    .line 76
    return-void

    .line 75
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public onAssetDeleted(Ljava/lang/String;)V
    .registers 4
    .parameter "packageName"

    .prologue
    .line 87
    invoke-static {}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->access$000()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 88
    :try_start_5
    invoke-static {}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    monitor-exit v1

    .line 90
    return-void

    .line 89
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v0
.end method
