.class Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$CompleteFlowDeviceStrategy$AfterCredentials;
.super Ljava/lang/Object;
.source "CompleteCarrierBillingFlow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$CompleteFlowDeviceStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AfterCredentials"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$CompleteFlowDeviceStrategy;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$CompleteFlowDeviceStrategy;)V
    .registers 2
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$CompleteFlowDeviceStrategy$AfterCredentials;->this$1:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$CompleteFlowDeviceStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$CompleteFlowDeviceStrategy;Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$CompleteFlowDeviceStrategy$AfterCredentials;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$CompleteFlowDeviceStrategy;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$CompleteFlowDeviceStrategy$AfterCredentials;->this$1:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$CompleteFlowDeviceStrategy;

    iget-object v0, v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$CompleteFlowDeviceStrategy;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;

    #getter for: Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;
    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->access$200(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;)Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 293
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$CompleteFlowDeviceStrategy$AfterCredentials;->this$1:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$CompleteFlowDeviceStrategy;

    iget-object v0, v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$CompleteFlowDeviceStrategy;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;

    #getter for: Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;
    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->access$200(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;)Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->hideProgressIndicator()V

    .line 295
    :cond_15
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$CompleteFlowDeviceStrategy$AfterCredentials;->this$1:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$CompleteFlowDeviceStrategy;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$CompleteFlowDeviceStrategy;->mCredentialsCheckPerformed:Z
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$CompleteFlowDeviceStrategy;->access$1602(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$CompleteFlowDeviceStrategy;Z)Z

    .line 296
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$CompleteFlowDeviceStrategy$AfterCredentials;->this$1:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$CompleteFlowDeviceStrategy;

    iget-object v0, v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$CompleteFlowDeviceStrategy;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->performNext()V

    .line 297
    return-void
.end method
