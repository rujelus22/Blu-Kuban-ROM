.class Lcom/sprint/w/installer/delivery/DeliveryHub$2;
.super Ljava/lang/Object;
.source "DeliveryHub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/delivery/DeliveryHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/delivery/DeliveryHub;)V
    .registers 2
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$2;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 126
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$2;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    #getter for: Lcom/sprint/w/installer/delivery/DeliveryHub;->sProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->access$000(Lcom/sprint/w/installer/delivery/DeliveryHub;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$2;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    #getter for: Lcom/sprint/w/installer/delivery/DeliveryHub;->sProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->access$000(Lcom/sprint/w/installer/delivery/DeliveryHub;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$2;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 167
    :cond_20
    :goto_20
    return-void

    .line 129
    :cond_21
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$2;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    #getter for: Lcom/sprint/w/installer/delivery/DeliveryHub;->sProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->access$000(Lcom/sprint/w/installer/delivery/DeliveryHub;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 130
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$2;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    #getter for: Lcom/sprint/w/installer/delivery/DeliveryHub;->mStatus:Lcom/sprint/w/installer/DeliveryState;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->access$100(Lcom/sprint/w/installer/delivery/DeliveryHub;)Lcom/sprint/w/installer/DeliveryState;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->NEW_RECORD:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/DeliveryState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 131
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$2;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    #getter for: Lcom/sprint/w/installer/delivery/DeliveryHub;->mStatus:Lcom/sprint/w/installer/DeliveryState;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->access$100(Lcom/sprint/w/installer/delivery/DeliveryHub;)Lcom/sprint/w/installer/DeliveryState;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_AUTH:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/DeliveryState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    sget v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->sRetryAttempts:I

    if-gt v0, v2, :cond_64

    .line 132
    sget v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->sRetryAttempts:I

    if-ne v0, v3, :cond_54

    .line 134
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$2;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    #calls: Lcom/sprint/w/installer/delivery/DeliveryHub;->setupAuthUI()V
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->access$200(Lcom/sprint/w/installer/delivery/DeliveryHub;)V

    goto :goto_20

    .line 135
    :cond_54
    sget v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->sRetryAttempts:I

    if-nez v0, :cond_5e

    .line 137
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$2;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    invoke-virtual {v0, v5}, Lcom/sprint/w/installer/delivery/DeliveryHub;->showDialog(I)V

    goto :goto_20

    .line 140
    :cond_5e
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$2;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    invoke-virtual {v0, v4}, Lcom/sprint/w/installer/delivery/DeliveryHub;->showDialog(I)V

    goto :goto_20

    .line 142
    :cond_64
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$2;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    #getter for: Lcom/sprint/w/installer/delivery/DeliveryHub;->mStatus:Lcom/sprint/w/installer/DeliveryState;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->access$100(Lcom/sprint/w/installer/delivery/DeliveryHub;)Lcom/sprint/w/installer/DeliveryState;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_AUTH_PIN:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/DeliveryState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    sget v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->sRetryAttempts:I

    if-gt v0, v2, :cond_90

    .line 143
    sget v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->sRetryAttempts:I

    if-ne v0, v3, :cond_80

    .line 145
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$2;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    #calls: Lcom/sprint/w/installer/delivery/DeliveryHub;->setupPinUI()V
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->access$300(Lcom/sprint/w/installer/delivery/DeliveryHub;)V

    goto :goto_20

    .line 146
    :cond_80
    sget v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->sRetryAttempts:I

    if-nez v0, :cond_8a

    .line 148
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$2;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    invoke-virtual {v0, v5}, Lcom/sprint/w/installer/delivery/DeliveryHub;->showDialog(I)V

    goto :goto_20

    .line 151
    :cond_8a
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$2;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    invoke-virtual {v0, v4}, Lcom/sprint/w/installer/delivery/DeliveryHub;->showDialog(I)V

    goto :goto_20

    .line 153
    :cond_90
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$2;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    #getter for: Lcom/sprint/w/installer/delivery/DeliveryHub;->mStatus:Lcom/sprint/w/installer/DeliveryState;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->access$100(Lcom/sprint/w/installer/delivery/DeliveryHub;)Lcom/sprint/w/installer/DeliveryState;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_ERROR_FROM_DELIVERY_SERVER:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/DeliveryState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 155
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$2;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$2;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    #getter for: Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;
    invoke-static {v1}, Lcom/sprint/w/installer/delivery/DeliveryHub;->access$400(Lcom/sprint/w/installer/delivery/DeliveryHub;)Lcom/sprint/w/installer/delivery/DeliveryRequest;

    move-result-object v1

    iget-object v1, v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;->errorMessage:Ljava/lang/String;

    iput-object v1, v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mLocalErrorMsg:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$2;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    invoke-virtual {v0, v3}, Lcom/sprint/w/installer/delivery/DeliveryHub;->showDialog(I)V

    goto/16 :goto_20

    .line 157
    :cond_b1
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$2;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    #getter for: Lcom/sprint/w/installer/delivery/DeliveryHub;->mStatus:Lcom/sprint/w/installer/DeliveryState;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->access$100(Lcom/sprint/w/installer/delivery/DeliveryHub;)Lcom/sprint/w/installer/DeliveryState;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_UNAPPROVED_PACK_RSS:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/DeliveryState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 159
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$2;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$2;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    const v2, 0x7f0600eb

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/delivery/DeliveryHub;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mLocalErrorMsg:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$2;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    invoke-virtual {v0, v3}, Lcom/sprint/w/installer/delivery/DeliveryHub;->showDialog(I)V

    goto/16 :goto_20

    .line 161
    :cond_d3
    sget v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->sRetryAttempts:I

    if-lez v0, :cond_e2

    sget v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->sRetryAttempts:I

    if-gt v0, v2, :cond_e2

    .line 162
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$2;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    invoke-virtual {v0, v2}, Lcom/sprint/w/installer/delivery/DeliveryHub;->showDialog(I)V

    goto/16 :goto_20

    .line 164
    :cond_e2
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$2;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/delivery/DeliveryHub;->showDialog(I)V

    goto/16 :goto_20
.end method
