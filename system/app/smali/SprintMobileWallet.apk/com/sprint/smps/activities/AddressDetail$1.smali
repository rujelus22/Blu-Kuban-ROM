.class Lcom/sprint/smps/activities/AddressDetail$1;
.super Ljava/lang/Object;
.source "AddressDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/smps/activities/AddressDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/AddressDetail;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/AddressDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/AddressDetail$1;->this$0:Lcom/sprint/smps/activities/AddressDetail;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 40
    sget-object v1, Lcom/sprint/smps/properties/Properties;->smpsApi:Lcom/sprint/smps/service/SMPSService;

    sget-object v2, Lcom/sprint/smps/activities/AddressDetail;->address:Lcom/sprint/smps/pojo/Address;

    const-string v3, "false"

    invoke-interface {v1, v2, v3}, Lcom/sprint/smps/service/SMPSService;->updateAddress(Lcom/sprint/smps/pojo/Address;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v0

    .line 41
    .local v0, response:Lcom/sprint/smps/service/ClientResponse;
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/sprint/smps/service/ClientResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 43
    invoke-static {}, Lcom/sprint/smps/activities/AddressDetail;->access$0()Lcom/sprint/smps/activities/AddressDetail;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sprint/smps/activities/AddressDetail;->removeDialog(I)V

    .line 44
    iget-object v1, p0, Lcom/sprint/smps/activities/AddressDetail$1;->this$0:Lcom/sprint/smps/activities/AddressDetail;

    const-string v2, "Delete"

    const-string v3, "Address deleted."

    iget-object v4, p0, Lcom/sprint/smps/activities/AddressDetail$1;->this$0:Lcom/sprint/smps/activities/AddressDetail;

    #calls: Lcom/sprint/smps/activities/AddressDetail;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    invoke-static {v1, v2, v3, v4}, Lcom/sprint/smps/activities/AddressDetail;->access$1(Lcom/sprint/smps/activities/AddressDetail;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 52
    :goto_2b
    return-void

    .line 48
    :cond_2c
    iget-object v1, p0, Lcom/sprint/smps/activities/AddressDetail$1;->this$0:Lcom/sprint/smps/activities/AddressDetail;

    #setter for: Lcom/sprint/smps/activities/AddressDetail;->successful:Z
    invoke-static {v1, v4}, Lcom/sprint/smps/activities/AddressDetail;->access$2(Lcom/sprint/smps/activities/AddressDetail;Z)V

    .line 49
    invoke-static {}, Lcom/sprint/smps/activities/AddressDetail;->access$0()Lcom/sprint/smps/activities/AddressDetail;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sprint/smps/activities/AddressDetail;->removeDialog(I)V

    .line 50
    iget-object v1, p0, Lcom/sprint/smps/activities/AddressDetail$1;->this$0:Lcom/sprint/smps/activities/AddressDetail;

    const-string v2, "Delete"

    const-string v3, "Unable to delete address."

    iget-object v4, p0, Lcom/sprint/smps/activities/AddressDetail$1;->this$0:Lcom/sprint/smps/activities/AddressDetail;

    #calls: Lcom/sprint/smps/activities/AddressDetail;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    invoke-static {v1, v2, v3, v4}, Lcom/sprint/smps/activities/AddressDetail;->access$1(Lcom/sprint/smps/activities/AddressDetail;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_2b
.end method
