.class Lcom/sprint/smps/activities/EditPaymentAccount$2;
.super Ljava/lang/Object;
.source "EditPaymentAccount.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/EditPaymentAccount;->savePaymentAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/EditPaymentAccount;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/EditPaymentAccount;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/EditPaymentAccount$2;->this$0:Lcom/sprint/smps/activities/EditPaymentAccount;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 224
    sget-object v0, Lcom/sprint/smps/activities/PaymentAccountDetail;->paymentAccount:Lcom/sprint/smps/pojo/PaymentAccount;

    .line 225
    .local v0, paymentAccount:Lcom/sprint/smps/pojo/PaymentAccount;
    iget-object v2, p0, Lcom/sprint/smps/activities/EditPaymentAccount$2;->this$0:Lcom/sprint/smps/activities/EditPaymentAccount;

    const v3, 0x7f080008

    invoke-virtual {v2, v3}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sprint/smps/pojo/PaymentAccount;->setNickName(Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/sprint/smps/activities/EditPaymentAccount$2;->this$0:Lcom/sprint/smps/activities/EditPaymentAccount;

    const v3, 0x7f080009

    invoke-virtual {v2, v3}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sprint/smps/pojo/PaymentAccount;->setStreet(Ljava/lang/String;)V

    .line 227
    iget-object v2, p0, Lcom/sprint/smps/activities/EditPaymentAccount$2;->this$0:Lcom/sprint/smps/activities/EditPaymentAccount;

    const v3, 0x7f080004

    invoke-virtual {v2, v3}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sprint/smps/pojo/PaymentAccount;->setCity(Ljava/lang/String;)V

    .line 228
    iget-object v2, p0, Lcom/sprint/smps/activities/EditPaymentAccount$2;->this$0:Lcom/sprint/smps/activities/EditPaymentAccount;

    const v3, 0x7f080005

    invoke-virtual {v2, v3}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sprint/smps/pojo/PaymentAccount;->setState(Ljava/lang/String;)V

    .line 229
    iget-object v2, p0, Lcom/sprint/smps/activities/EditPaymentAccount$2;->this$0:Lcom/sprint/smps/activities/EditPaymentAccount;

    const v3, 0x7f080006

    invoke-virtual {v2, v3}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sprint/smps/pojo/PaymentAccount;->setZip(Ljava/lang/String;)V

    .line 230
    iget-object v2, p0, Lcom/sprint/smps/activities/EditPaymentAccount$2;->this$0:Lcom/sprint/smps/activities/EditPaymentAccount;

    const v3, 0x7f08000c

    invoke-virtual {v2, v3}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sprint/smps/pojo/PaymentAccount;->setExpiryMonth(Ljava/lang/String;)V

    .line 231
    iget-object v2, p0, Lcom/sprint/smps/activities/EditPaymentAccount$2;->this$0:Lcom/sprint/smps/activities/EditPaymentAccount;

    const v3, 0x7f08000d

    invoke-virtual {v2, v3}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sprint/smps/pojo/PaymentAccount;->setExpiryYear(Ljava/lang/String;)V

    .line 232
    iget-object v2, p0, Lcom/sprint/smps/activities/EditPaymentAccount$2;->this$0:Lcom/sprint/smps/activities/EditPaymentAccount;

    const v3, 0x7f08000e

    invoke-virtual {v2, v3}, Lcom/sprint/smps/activities/EditPaymentAccount;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sprint/smps/pojo/PaymentAccount;->setNameOnAccount(Ljava/lang/String;)V

    .line 233
    sget-object v2, Lcom/sprint/smps/properties/Properties;->smpsApi:Lcom/sprint/smps/service/SMPSService;

    const-string v3, "true"

    invoke-interface {v2, v0, v3}, Lcom/sprint/smps/service/SMPSService;->updateUserPayment(Lcom/sprint/smps/pojo/PaymentAccount;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v1

    .line 235
    .local v1, response:Lcom/sprint/smps/service/ClientResponse;
    if-eqz v1, :cond_d1

    invoke-virtual {v1}, Lcom/sprint/smps/service/ClientResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 237
    invoke-static {}, Lcom/sprint/smps/activities/EditPaymentAccount;->access$0()Lcom/sprint/smps/activities/EditPaymentAccount;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sprint/smps/activities/EditPaymentAccount;->removeDialog(I)V

    .line 244
    :goto_d0
    return-void

    .line 241
    :cond_d1
    iget-object v2, p0, Lcom/sprint/smps/activities/EditPaymentAccount$2;->this$0:Lcom/sprint/smps/activities/EditPaymentAccount;

    #setter for: Lcom/sprint/smps/activities/EditPaymentAccount;->successful:Z
    invoke-static {v2, v4}, Lcom/sprint/smps/activities/EditPaymentAccount;->access$1(Lcom/sprint/smps/activities/EditPaymentAccount;Z)V

    .line 242
    invoke-static {}, Lcom/sprint/smps/activities/EditPaymentAccount;->access$0()Lcom/sprint/smps/activities/EditPaymentAccount;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sprint/smps/activities/EditPaymentAccount;->removeDialog(I)V

    goto :goto_d0
.end method
