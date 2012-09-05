.class Lcom/google/android/finsky/activities/PurchaseFragment$1;
.super Ljava/lang/Object;
.source "PurchaseFragment.java"

# interfaces
.implements Lcom/google/android/finsky/billing/BillingFlowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/PurchaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/PurchaseFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$1;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/finsky/billing/BillingFlow;Ljava/lang/String;)V
    .registers 6
    .parameter "flow"
    .parameter "error"

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$1;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #setter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;
    invoke-static {v0, v2}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$002(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/billing/BillingFlow;)Lcom/google/android/finsky/billing/BillingFlow;

    .line 139
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$1;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v2, p2, v1}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    .line 141
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$1;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #calls: Lcom/google/android/finsky/activities/PurchaseFragment;->updateUiFromInstrument()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$100(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    .line 142
    return-void
.end method

.method public onFinished(Lcom/google/android/finsky/billing/BillingFlow;Z)V
    .registers 5
    .parameter "flow"
    .parameter "canceled"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$1;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mCompletingBillingFlow:Lcom/google/android/finsky/billing/BillingFlow;
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$002(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/billing/BillingFlow;)Lcom/google/android/finsky/billing/BillingFlow;

    .line 129
    if-eqz p2, :cond_e

    .line 130
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$1;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #calls: Lcom/google/android/finsky/activities/PurchaseFragment;->updateUiFromInstrument()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$100(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    .line 134
    :goto_d
    return-void

    .line 132
    :cond_e
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$1;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #calls: Lcom/google/android/finsky/activities/PurchaseFragment;->completeCheckoutPurchase()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$200(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    goto :goto_d
.end method
