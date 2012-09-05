.class Lcom/sprint/smps/activities/ViewPaymentOptions$2;
.super Ljava/lang/Object;
.source "ViewPaymentOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/ViewPaymentOptions;->retrieveData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/ViewPaymentOptions;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/ViewPaymentOptions;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/ViewPaymentOptions$2;->this$0:Lcom/sprint/smps/activities/ViewPaymentOptions;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 271
    sget-boolean v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->retrieveData:Z

    if-nez v0, :cond_9

    sget-object v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->response:Lcom/sprint/smps/service/ClientResponse;

    if-nez v0, :cond_11

    .line 274
    :cond_9
    sget-object v0, Lcom/sprint/smps/properties/Properties;->smpsApi:Lcom/sprint/smps/service/SMPSService;

    invoke-interface {v0}, Lcom/sprint/smps/service/SMPSService;->getPaymentAccounts()Lcom/sprint/smps/service/ClientResponse;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->response:Lcom/sprint/smps/service/ClientResponse;

    .line 277
    :cond_11
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 278
    sget-object v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->response:Lcom/sprint/smps/service/ClientResponse;

    if-eqz v0, :cond_41

    .line 280
    sget-object v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->response:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v0}, Lcom/sprint/smps/service/ClientResponse;->getUserPayments()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 281
    sget-object v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->response:Lcom/sprint/smps/service/ClientResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sprint/smps/service/ClientResponse;->setUserPayments(Ljava/util/List;)V

    .line 284
    :cond_2a
    sget-object v0, Lcom/sprint/smps/properties/Properties;->user:Lcom/sprint/smps/service/ClientResponse;

    sget-object v1, Lcom/sprint/smps/activities/ViewPaymentOptions;->response:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v1}, Lcom/sprint/smps/service/ClientResponse;->getUserPayments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprint/smps/service/ClientResponse;->setUserPayments(Ljava/util/List;)V

    .line 286
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewPaymentOptions$2;->this$0:Lcom/sprint/smps/activities/ViewPaymentOptions;

    iget-object v1, p0, Lcom/sprint/smps/activities/ViewPaymentOptions$2;->this$0:Lcom/sprint/smps/activities/ViewPaymentOptions;

    #getter for: Lcom/sprint/smps/activities/ViewPaymentOptions;->showList:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sprint/smps/activities/ViewPaymentOptions;->access$3(Lcom/sprint/smps/activities/ViewPaymentOptions;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/ViewPaymentOptions;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 293
    :goto_40
    return-void

    .line 290
    :cond_41
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewPaymentOptions$2;->this$0:Lcom/sprint/smps/activities/ViewPaymentOptions;

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/ViewPaymentOptions;->deleteDialog(I)V

    .line 291
    invoke-static {v1}, Lcom/sprint/smps/activities/ViewPaymentOptions;->access$1(Z)V

    goto :goto_40
.end method
