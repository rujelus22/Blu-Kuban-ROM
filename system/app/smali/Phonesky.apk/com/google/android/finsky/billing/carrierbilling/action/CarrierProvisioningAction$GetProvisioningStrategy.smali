.class interface abstract Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$GetProvisioningStrategy;
.super Ljava/lang/Object;
.source "CarrierProvisioningAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "GetProvisioningStrategy"
.end annotation


# virtual methods
.method public abstract fetchProvisioning(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract shouldRunIfNotOnWifi(Landroid/content/Context;)Z
.end method
