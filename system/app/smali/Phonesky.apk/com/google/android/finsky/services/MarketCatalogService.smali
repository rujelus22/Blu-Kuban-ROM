.class public Lcom/google/android/finsky/services/MarketCatalogService;
.super Landroid/app/Service;
.source "MarketCatalogService.java"


# instance fields
.field private final mBinder:Lcom/google/android/finsky/services/IMarketCatalogService$Stub;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    new-instance v0, Lcom/google/android/finsky/services/MarketCatalogService$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/services/MarketCatalogService$1;-><init>(Lcom/google/android/finsky/services/MarketCatalogService;)V

    iput-object v0, p0, Lcom/google/android/finsky/services/MarketCatalogService;->mBinder:Lcom/google/android/finsky/services/IMarketCatalogService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/finsky/services/MarketCatalogService;->mBinder:Lcom/google/android/finsky/services/IMarketCatalogService$Stub;

    return-object v0
.end method
