.class Lcom/sprint/smps/activities/PaymentAccountDetail$1;
.super Ljava/lang/Object;
.source "PaymentAccountDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/smps/activities/PaymentAccountDetail;
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
    iput-object p1, p0, Lcom/sprint/smps/activities/PaymentAccountDetail$1;->this$0:Lcom/sprint/smps/activities/PaymentAccountDetail;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 39
    sget-object v1, Lcom/sprint/smps/properties/Properties;->smpsApi:Lcom/sprint/smps/service/SMPSService;

    sget-object v2, Lcom/sprint/smps/activities/PaymentAccountDetail;->paymentAccount:Lcom/sprint/smps/pojo/PaymentAccount;

    const-string v3, "false"

    invoke-interface {v1, v2, v3}, Lcom/sprint/smps/service/SMPSService;->updateUserPayment(Lcom/sprint/smps/pojo/PaymentAccount;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v0

    .line 40
    .local v0, response:Lcom/sprint/smps/service/ClientResponse;
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/sprint/smps/service/ClientResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 42
    invoke-static {}, Lcom/sprint/smps/activities/PaymentAccountDetail;->access$0()Lcom/sprint/smps/activities/PaymentAccountDetail;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sprint/smps/activities/PaymentAccountDetail;->removeDialog(I)V

    .line 43
    iget-object v1, p0, Lcom/sprint/smps/activities/PaymentAccountDetail$1;->this$0:Lcom/sprint/smps/activities/PaymentAccountDetail;

    const-string v2, "Delete"

    const-string v3, "Payment account deleted."

    iget-object v4, p0, Lcom/sprint/smps/activities/PaymentAccountDetail$1;->this$0:Lcom/sprint/smps/activities/PaymentAccountDetail;

    #calls: Lcom/sprint/smps/activities/PaymentAccountDetail;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    invoke-static {v1, v2, v3, v4}, Lcom/sprint/smps/activities/PaymentAccountDetail;->access$1(Lcom/sprint/smps/activities/PaymentAccountDetail;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 51
    :goto_2b
    return-void

    .line 47
    :cond_2c
    iget-object v1, p0, Lcom/sprint/smps/activities/PaymentAccountDetail$1;->this$0:Lcom/sprint/smps/activities/PaymentAccountDetail;

    #setter for: Lcom/sprint/smps/activities/PaymentAccountDetail;->successful:Z
    invoke-static {v1, v4}, Lcom/sprint/smps/activities/PaymentAccountDetail;->access$2(Lcom/sprint/smps/activities/PaymentAccountDetail;Z)V

    .line 48
    invoke-static {}, Lcom/sprint/smps/activities/PaymentAccountDetail;->access$0()Lcom/sprint/smps/activities/PaymentAccountDetail;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sprint/smps/activities/PaymentAccountDetail;->removeDialog(I)V

    .line 49
    iget-object v1, p0, Lcom/sprint/smps/activities/PaymentAccountDetail$1;->this$0:Lcom/sprint/smps/activities/PaymentAccountDetail;

    const-string v2, "Delete"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to delete "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/sprint/smps/activities/PaymentAccountDetail;->paymentAccount:Lcom/sprint/smps/pojo/PaymentAccount;

    invoke-virtual {v4}, Lcom/sprint/smps/pojo/PaymentAccount;->getNickName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " payment account."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sprint/smps/activities/PaymentAccountDetail$1;->this$0:Lcom/sprint/smps/activities/PaymentAccountDetail;

    #calls: Lcom/sprint/smps/activities/PaymentAccountDetail;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    invoke-static {v1, v2, v3, v4}, Lcom/sprint/smps/activities/PaymentAccountDetail;->access$1(Lcom/sprint/smps/activities/PaymentAccountDetail;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_2b
.end method
