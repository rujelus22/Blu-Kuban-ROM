.class Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AddCarrierBillingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarrierTosWebViewClient"
.end annotation


# instance fields
.field private final mProgress:Landroid/view/View;

.field private mReceivedError:Z

.field private final mTosDisplayView:Landroid/view/View;

.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;Landroid/view/View;Landroid/view/View;)V
    .registers 6
    .parameter
    .parameter "progress"
    .parameter "tosDisplayView"

    .prologue
    const/4 v1, 0x0

    .line 372
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;->this$0:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 373
    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;->mProgress:Landroid/view/View;

    .line 374
    iput-object p3, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;->mTosDisplayView:Landroid/view/View;

    .line 375
    iput-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;->mReceivedError:Z

    .line 376
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 377
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 399
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;->mTosDisplayView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 401
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;->mReceivedError:Z

    if-nez v0, :cond_17

    .line 402
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;->this$0:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    #getter for: Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mAcceptButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->access$000(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 404
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;->mProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 405
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Web error: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;->mReceivedError:Z

    .line 392
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;->this$0:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    iget-object v0, v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;

    if-eqz v0, :cond_35

    .line 393
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;->this$0:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    iget-object v0, v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->NETWORK_FAILURE:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;->onAddCarrierBillingResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;)V

    .line 395
    :cond_35
    return-void
.end method
