.class Lcom/sprint/w/installer/delivery/SearchActivity$6;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/delivery/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/delivery/SearchActivity;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/delivery/SearchActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$6;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/16 v1, 0x8

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 481
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$6;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #getter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$400(Lcom/sprint/w/installer/delivery/SearchActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$6;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 524
    :cond_1a
    :goto_1a
    return-void

    .line 484
    :cond_1b
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$6;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #getter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$500(Lcom/sprint/w/installer/delivery/SearchActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$6;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #getter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mStatus:Lcom/sprint/w/installer/DeliveryState;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$600(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/w/installer/DeliveryState;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_INSUFFICIENT_MEMORY:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/DeliveryState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_aa

    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$6;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #getter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mStatus:Lcom/sprint/w/installer/DeliveryState;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$600(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/w/installer/DeliveryState;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_LOSS_DATA:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/DeliveryState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_aa

    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$6;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #getter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mStatus:Lcom/sprint/w/installer/DeliveryState;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$600(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/w/installer/DeliveryState;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_UNAUTHERIZED:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/DeliveryState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_aa

    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$6;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #getter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mStatus:Lcom/sprint/w/installer/DeliveryState;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$600(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/w/installer/DeliveryState;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_DOWNLOAD:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/DeliveryState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_aa

    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$6;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #getter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mStatus:Lcom/sprint/w/installer/DeliveryState;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$600(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/w/installer/DeliveryState;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_INSTALL:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/DeliveryState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_aa

    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$6;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #getter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mStatus:Lcom/sprint/w/installer/DeliveryState;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$600(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/w/installer/DeliveryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/w/installer/DeliveryState;->getCode()I

    move-result v0

    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_UNAPPROVED_PACK_RSS:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v1}, Lcom/sprint/w/installer/DeliveryState;->getCode()I

    move-result v1

    if-lt v0, v1, :cond_8e

    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$6;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #getter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mStatus:Lcom/sprint/w/installer/DeliveryState;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$600(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/w/installer/DeliveryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/w/installer/DeliveryState;->getCode()I

    move-result v0

    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_ERROR_FROM_DELIVERY_SERVER:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v1}, Lcom/sprint/w/installer/DeliveryState;->getCode()I

    move-result v1

    if-le v0, v1, :cond_aa

    :cond_8e
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$6;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #getter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mStatus:Lcom/sprint/w/installer/DeliveryState;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$600(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/w/installer/DeliveryState;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_AUTH_PIN:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/DeliveryState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_aa

    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$6;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #getter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mStatus:Lcom/sprint/w/installer/DeliveryState;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$600(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/w/installer/DeliveryState;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->ERROR_UNKNOWN:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/DeliveryState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 488
    :cond_aa
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$6;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #getter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mStatus:Lcom/sprint/w/installer/DeliveryState;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$600(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/w/installer/DeliveryState;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_AUTH:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/DeliveryState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    sget v0, Lcom/sprint/w/installer/delivery/SearchActivity;->sRetryAttempts:I

    if-gt v0, v2, :cond_d9

    .line 489
    sget v0, Lcom/sprint/w/installer/delivery/SearchActivity;->sRetryAttempts:I

    if-ne v0, v3, :cond_c7

    .line 491
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$6;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #calls: Lcom/sprint/w/installer/delivery/SearchActivity;->setupAuthUI()V
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$700(Lcom/sprint/w/installer/delivery/SearchActivity;)V

    goto/16 :goto_1a

    .line 492
    :cond_c7
    sget v0, Lcom/sprint/w/installer/delivery/SearchActivity;->sRetryAttempts:I

    if-nez v0, :cond_d2

    .line 494
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$6;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-virtual {v0, v5}, Lcom/sprint/w/installer/delivery/SearchActivity;->showDialog(I)V

    goto/16 :goto_1a

    .line 497
    :cond_d2
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$6;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-virtual {v0, v4}, Lcom/sprint/w/installer/delivery/SearchActivity;->showDialog(I)V

    goto/16 :goto_1a

    .line 499
    :cond_d9
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$6;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #getter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mStatus:Lcom/sprint/w/installer/DeliveryState;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$600(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/w/installer/DeliveryState;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_AUTH_PIN:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/DeliveryState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_108

    sget v0, Lcom/sprint/w/installer/delivery/SearchActivity;->sRetryAttempts:I

    if-gt v0, v2, :cond_108

    .line 500
    sget v0, Lcom/sprint/w/installer/delivery/SearchActivity;->sRetryAttempts:I

    if-ne v0, v3, :cond_f6

    .line 502
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$6;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #calls: Lcom/sprint/w/installer/delivery/SearchActivity;->setupPinUI()V
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$800(Lcom/sprint/w/installer/delivery/SearchActivity;)V

    goto/16 :goto_1a

    .line 503
    :cond_f6
    sget v0, Lcom/sprint/w/installer/delivery/SearchActivity;->sRetryAttempts:I

    if-nez v0, :cond_101

    .line 505
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$6;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-virtual {v0, v5}, Lcom/sprint/w/installer/delivery/SearchActivity;->showDialog(I)V

    goto/16 :goto_1a

    .line 508
    :cond_101
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$6;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-virtual {v0, v4}, Lcom/sprint/w/installer/delivery/SearchActivity;->showDialog(I)V

    goto/16 :goto_1a

    .line 510
    :cond_108
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$6;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #getter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mStatus:Lcom/sprint/w/installer/DeliveryState;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$600(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/w/installer/DeliveryState;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_ERROR_FROM_DELIVERY_SERVER:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/DeliveryState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_129

    .line 512
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$6;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$6;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #getter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;
    invoke-static {v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$200(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/w/installer/delivery/DeliveryRequest;

    move-result-object v1

    iget-object v1, v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;->errorMessage:Ljava/lang/String;

    iput-object v1, v0, Lcom/sprint/w/installer/delivery/SearchActivity;->mLocalErrorMsg:Ljava/lang/String;

    .line 513
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$6;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-virtual {v0, v3}, Lcom/sprint/w/installer/delivery/SearchActivity;->showDialog(I)V

    goto/16 :goto_1a

    .line 514
    :cond_129
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$6;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #getter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mStatus:Lcom/sprint/w/installer/DeliveryState;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$600(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/w/installer/DeliveryState;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_UNAPPROVED_PACK_RSS:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/DeliveryState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 516
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$6;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$6;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    const v2, 0x7f0600eb

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/delivery/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sprint/w/installer/delivery/SearchActivity;->mLocalErrorMsg:Ljava/lang/String;

    .line 517
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$6;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-virtual {v0, v3}, Lcom/sprint/w/installer/delivery/SearchActivity;->showDialog(I)V

    goto/16 :goto_1a

    .line 518
    :cond_14b
    sget v0, Lcom/sprint/w/installer/delivery/SearchActivity;->sRetryAttempts:I

    if-lez v0, :cond_15a

    sget v0, Lcom/sprint/w/installer/delivery/SearchActivity;->sRetryAttempts:I

    if-gt v0, v2, :cond_15a

    .line 519
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$6;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-virtual {v0, v2}, Lcom/sprint/w/installer/delivery/SearchActivity;->showDialog(I)V

    goto/16 :goto_1a

    .line 521
    :cond_15a
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$6;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->showDialog(I)V

    goto/16 :goto_1a
.end method
