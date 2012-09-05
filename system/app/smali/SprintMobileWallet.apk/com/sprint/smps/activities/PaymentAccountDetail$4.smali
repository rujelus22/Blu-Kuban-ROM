.class Lcom/sprint/smps/activities/PaymentAccountDetail$4;
.super Ljava/lang/Object;
.source "PaymentAccountDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/PaymentAccountDetail;->showOkCancelAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/PaymentAccountDetail;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/PaymentAccountDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/PaymentAccountDetail$4;->this$0:Lcom/sprint/smps/activities/PaymentAccountDetail;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 186
    invoke-static {}, Lcom/sprint/smps/activities/PaymentAccountDetail;->access$0()Lcom/sprint/smps/activities/PaymentAccountDetail;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/PaymentAccountDetail;->showDialog(I)V

    .line 187
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sprint/smps/activities/PaymentAccountDetail$4;->this$0:Lcom/sprint/smps/activities/PaymentAccountDetail;

    #getter for: Lcom/sprint/smps/activities/PaymentAccountDetail;->deletePaymentAccount:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sprint/smps/activities/PaymentAccountDetail;->access$4(Lcom/sprint/smps/activities/PaymentAccountDetail;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 188
    return-void
.end method
