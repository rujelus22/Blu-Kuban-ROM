.class Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$GetProvisioningDevice;
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
    name = "GetProvisioningDevice"
.end annotation


# instance fields
.field private final mDcbApi:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;

.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;)V
    .registers 3
    .parameter

    .prologue
    .line 68
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->createDcbApi()Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$GetProvisioningDevice;-><init>(Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;)V
    .registers 3
    .parameter
    .parameter "dcbApi"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$GetProvisioningDevice;->this$0:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$GetProvisioningDevice;->mDcbApi:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;

    .line 74
    return-void
.end method


# virtual methods
.method public fetchProvisioning(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 5
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
    .line 93
    .local p2, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;>;"
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$GetProvisioningDevice;->mDcbApi:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->getProvisioning(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 94
    return-void
.end method

.method public shouldRunIfNotOnWifi(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 82
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 84
    .local v0, mgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 85
    const/4 v1, 0x0

    .line 87
    :cond_14
    return v1
.end method
