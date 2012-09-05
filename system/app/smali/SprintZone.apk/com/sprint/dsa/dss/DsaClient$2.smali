.class Lcom/sprint/dsa/dss/DsaClient$2;
.super Ljava/lang/Object;
.source "DsaClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/dss/DsaClient;->enableUI(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/dss/DsaClient;

.field private final synthetic val$uiActiveFlag:Z


# direct methods
.method constructor <init>(Lcom/sprint/dsa/dss/DsaClient;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaClient$2;->this$0:Lcom/sprint/dsa/dss/DsaClient;

    iput-boolean p2, p0, Lcom/sprint/dsa/dss/DsaClient$2;->val$uiActiveFlag:Z

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x4

    .line 475
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient$2;->this$0:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v4, p0, Lcom/sprint/dsa/dss/DsaClient$2;->val$uiActiveFlag:Z

    #setter for: Lcom/sprint/dsa/dss/DsaClient;->allowBack:Z
    invoke-static {v1, v4}, Lcom/sprint/dsa/dss/DsaClient;->access$1(Lcom/sprint/dsa/dss/DsaClient;Z)V

    .line 476
    iget-object v4, p0, Lcom/sprint/dsa/dss/DsaClient$2;->this$0:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v1, p0, Lcom/sprint/dsa/dss/DsaClient$2;->val$uiActiveFlag:Z

    if-eqz v1, :cond_3a

    move v1, v2

    :goto_11
    iput-boolean v1, v4, Lcom/sprint/dsa/dss/DsaClient;->loading:Z

    .line 478
    :try_start_13
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient$2;->this$0:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v4, p0, Lcom/sprint/dsa/dss/DsaClient$2;->val$uiActiveFlag:Z

    if-eqz v4, :cond_3c

    :goto_19
    invoke-virtual {v1, v2}, Lcom/sprint/dsa/dss/DsaClient;->setProgressBarIndeterminateVisibility(Z)V

    .line 479
    iget-boolean v1, p0, Lcom/sprint/dsa/dss/DsaClient$2;->val$uiActiveFlag:Z

    if-nez v1, :cond_3e

    .line 482
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient$2;->this$0:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v1, v1, Lcom/sprint/dsa/dss/DsaClient;->btnRight:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 483
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient$2;->this$0:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v1, v1, Lcom/sprint/dsa/dss/DsaClient;->btnLeft:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 484
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient$2;->this$0:Lcom/sprint/dsa/dss/DsaClient;

    #getter for: Lcom/sprint/dsa/dss/DsaClient;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sprint/dsa/dss/DsaClient;->access$0(Lcom/sprint/dsa/dss/DsaClient;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 511
    :goto_39
    return-void

    :cond_3a
    move v1, v3

    .line 476
    goto :goto_11

    :cond_3c
    move v2, v3

    .line 478
    goto :goto_19

    .line 486
    :cond_3e
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient$2;->this$0:Lcom/sprint/dsa/dss/DsaClient;

    #getter for: Lcom/sprint/dsa/dss/DsaClient;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sprint/dsa/dss/DsaClient;->access$0(Lcom/sprint/dsa/dss/DsaClient;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    .line 487
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient$2;->this$0:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v1, v1, Lcom/sprint/dsa/dss/DsaClient;->leftSoftKeyText:Ljava/lang/String;

    if-eqz v1, :cond_d9

    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient$2;->this$0:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v1, v1, Lcom/sprint/dsa/dss/DsaClient;->leftSoftKeyText:Ljava/lang/String;

    const-string v2, "000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d9

    .line 488
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient$2;->this$0:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v1, v1, Lcom/sprint/dsa/dss/DsaClient;->leftSoftKeyText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_d9

    .line 490
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient$2;->this$0:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v1, v1, Lcom/sprint/dsa/dss/DsaClient;->btnLeft:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 491
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient$2;->this$0:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v1, v1, Lcom/sprint/dsa/dss/DsaClient;->btnLeft:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaClient$2;->this$0:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v2, v2, Lcom/sprint/dsa/dss/DsaClient;->leftSoftKeyText:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 492
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient$2;->this$0:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v1, v1, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v1, :cond_88

    const-string v1, "SprintZone_DSA"

    const-string v2, "Enable left softkey"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_88
    :goto_88
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient$2;->this$0:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v1, v1, Lcom/sprint/dsa/dss/DsaClient;->rightSoftKeyText:Ljava/lang/String;

    if-eqz v1, :cond_ef

    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient$2;->this$0:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v1, v1, Lcom/sprint/dsa/dss/DsaClient;->rightSoftKeyText:Ljava/lang/String;

    const-string v2, "000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_ef

    .line 499
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient$2;->this$0:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v1, v1, Lcom/sprint/dsa/dss/DsaClient;->rightSoftKeyText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_ef

    .line 501
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient$2;->this$0:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v1, v1, Lcom/sprint/dsa/dss/DsaClient;->btnRight:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 502
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient$2;->this$0:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v1, v1, Lcom/sprint/dsa/dss/DsaClient;->btnRight:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaClient$2;->this$0:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v2, v2, Lcom/sprint/dsa/dss/DsaClient;->rightSoftKeyText:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_bc} :catch_be

    goto/16 :goto_39

    .line 508
    :catch_be
    move-exception v0

    .line 509
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SprintZone_DSA"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enableUI:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_39

    .line 495
    .end local v0           #e:Ljava/lang/Exception;
    :cond_d9
    :try_start_d9
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient$2;->this$0:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v1, v1, Lcom/sprint/dsa/dss/DsaClient;->btnLeft:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 496
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient$2;->this$0:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v1, v1, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v1, :cond_88

    const-string v1, "SprintZone_DSA"

    const-string v2, "Disable left-Softkey:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    .line 505
    :cond_ef
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient$2;->this$0:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v1, v1, Lcom/sprint/dsa/dss/DsaClient;->btnRight:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_f7} :catch_be

    goto/16 :goto_39
.end method
