.class Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$GetProvisioningDcb3;
.super Ljava/lang/Object;
.source "CarrierProvisioningAction.java"

# interfaces
.implements Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$GetProvisioningStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetProvisioningDcb3"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;)V
    .registers 2
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$GetProvisioningDcb3;->this$0:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$GetProvisioningDcb3;-><init>(Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;)V

    return-void
.end method


# virtual methods
.method public fetchProvisioning(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 6
    .parameter "acceptedTosVersion"
    .parameter
    .parameter "errorListener"
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

    .prologue
    .line 60
    .local p2, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;>;"
    const-string v0, "Fetching provisioning from Dfe."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public shouldRunIfNotOnWifi(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method
