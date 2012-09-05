.class Lcom/sprint/smps/activities/EditAmazonAccount$2;
.super Ljava/lang/Object;
.source "EditAmazonAccount.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/EditAmazonAccount;->savePaymentAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/EditAmazonAccount;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/EditAmazonAccount;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/EditAmazonAccount$2;->this$0:Lcom/sprint/smps/activities/EditAmazonAccount;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 132
    sget-object v0, Lcom/sprint/smps/activities/PaymentAccountDetail;->paymentAccount:Lcom/sprint/smps/pojo/PaymentAccount;

    .line 133
    .local v0, paymentAccount:Lcom/sprint/smps/pojo/PaymentAccount;
    iget-object v2, p0, Lcom/sprint/smps/activities/EditAmazonAccount$2;->this$0:Lcom/sprint/smps/activities/EditAmazonAccount;

    const v3, 0x7f080008

    invoke-virtual {v2, v3}, Lcom/sprint/smps/activities/EditAmazonAccount;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sprint/smps/pojo/PaymentAccount;->setNickName(Ljava/lang/String;)V

    .line 134
    sget-object v2, Lcom/sprint/smps/properties/Properties;->smpsApi:Lcom/sprint/smps/service/SMPSService;

    const-string v3, "true"

    invoke-interface {v2, v0, v3}, Lcom/sprint/smps/service/SMPSService;->updateUserPayment(Lcom/sprint/smps/pojo/PaymentAccount;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v1

    .line 136
    .local v1, response:Lcom/sprint/smps/service/ClientResponse;
    if-eqz v1, :cond_37

    invoke-virtual {v1}, Lcom/sprint/smps/service/ClientResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 138
    invoke-static {}, Lcom/sprint/smps/activities/EditAmazonAccount;->access$0()Lcom/sprint/smps/activities/EditAmazonAccount;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sprint/smps/activities/EditAmazonAccount;->removeDialog(I)V

    .line 145
    :goto_36
    return-void

    .line 142
    :cond_37
    iget-object v2, p0, Lcom/sprint/smps/activities/EditAmazonAccount$2;->this$0:Lcom/sprint/smps/activities/EditAmazonAccount;

    #setter for: Lcom/sprint/smps/activities/EditAmazonAccount;->successful:Z
    invoke-static {v2, v4}, Lcom/sprint/smps/activities/EditAmazonAccount;->access$1(Lcom/sprint/smps/activities/EditAmazonAccount;Z)V

    .line 143
    invoke-static {}, Lcom/sprint/smps/activities/EditAmazonAccount;->access$0()Lcom/sprint/smps/activities/EditAmazonAccount;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sprint/smps/activities/EditAmazonAccount;->removeDialog(I)V

    goto :goto_36
.end method
