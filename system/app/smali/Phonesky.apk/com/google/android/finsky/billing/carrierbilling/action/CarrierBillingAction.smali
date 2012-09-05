.class public Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;
.super Ljava/lang/Object;
.source "CarrierBillingAction.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private canSkip()Z
    .registers 2

    .prologue
    .line 13
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->isInit()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public run(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "runnable"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;->canSkip()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 18
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 22
    :goto_9
    return-void

    .line 21
    :cond_a
    invoke-static {p1}, Lcom/google/android/finsky/billing/BillingLocator;->initCarrierBillingStorage(Ljava/lang/Runnable;)V

    goto :goto_9
.end method
