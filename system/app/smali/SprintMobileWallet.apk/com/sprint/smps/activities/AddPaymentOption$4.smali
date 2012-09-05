.class Lcom/sprint/smps/activities/AddPaymentOption$4;
.super Ljava/lang/Object;
.source "AddPaymentOption.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/AddPaymentOption;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/AddPaymentOption;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/AddPaymentOption;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/AddPaymentOption$4;->this$0:Lcom/sprint/smps/activities/AddPaymentOption;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 9
    .parameter "dialogInterface"

    .prologue
    const v6, 0x7f080001

    .line 324
    iget-object v1, p0, Lcom/sprint/smps/activities/AddPaymentOption$4;->this$0:Lcom/sprint/smps/activities/AddPaymentOption;

    #getter for: Lcom/sprint/smps/activities/AddPaymentOption;->successful:Z
    invoke-static {v1}, Lcom/sprint/smps/activities/AddPaymentOption;->access$2(Lcom/sprint/smps/activities/AddPaymentOption;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 326
    iget-object v1, p0, Lcom/sprint/smps/activities/AddPaymentOption$4;->this$0:Lcom/sprint/smps/activities/AddPaymentOption;

    const v2, 0x7f080008

    invoke-virtual {v1, v2}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, acctNickName:Ljava/lang/String;
    iget-object v2, p0, Lcom/sprint/smps/activities/AddPaymentOption$4;->this$0:Lcom/sprint/smps/activities/AddPaymentOption;

    const-string v3, "Payment Accounts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " was successfully added."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sprint/smps/activities/AddPaymentOption$4;->this$0:Lcom/sprint/smps/activities/AddPaymentOption;

    iget-object v1, p0, Lcom/sprint/smps/activities/AddPaymentOption$4;->this$0:Lcom/sprint/smps/activities/AddPaymentOption;

    invoke-virtual {v1, v6}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    #calls: Lcom/sprint/smps/activities/AddPaymentOption;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
    invoke-static {v2, v3, v4, v5, v1}, Lcom/sprint/smps/activities/AddPaymentOption;->access$3(Lcom/sprint/smps/activities/AddPaymentOption;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V

    .line 331
    .end local v0           #acctNickName:Ljava/lang/String;
    :goto_42
    return-void

    .line 330
    :cond_43
    iget-object v2, p0, Lcom/sprint/smps/activities/AddPaymentOption$4;->this$0:Lcom/sprint/smps/activities/AddPaymentOption;

    const-string v3, "Payment Accounts"

    const-string v4, "Unable to add payment account."

    iget-object v5, p0, Lcom/sprint/smps/activities/AddPaymentOption$4;->this$0:Lcom/sprint/smps/activities/AddPaymentOption;

    iget-object v1, p0, Lcom/sprint/smps/activities/AddPaymentOption$4;->this$0:Lcom/sprint/smps/activities/AddPaymentOption;

    invoke-virtual {v1, v6}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    #calls: Lcom/sprint/smps/activities/AddPaymentOption;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
    invoke-static {v2, v3, v4, v5, v1}, Lcom/sprint/smps/activities/AddPaymentOption;->access$3(Lcom/sprint/smps/activities/AddPaymentOption;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V

    goto :goto_42
.end method
