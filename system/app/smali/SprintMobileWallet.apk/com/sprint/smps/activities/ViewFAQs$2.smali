.class Lcom/sprint/smps/activities/ViewFAQs$2;
.super Ljava/lang/Object;
.source "ViewFAQs.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/ViewFAQs;->retrieveData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/ViewFAQs;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/ViewFAQs;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/ViewFAQs$2;->this$0:Lcom/sprint/smps/activities/ViewFAQs;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sprint/smps/activities/ViewFAQs$2;)Lcom/sprint/smps/activities/ViewFAQs;
    .registers 2
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewFAQs$2;->this$0:Lcom/sprint/smps/activities/ViewFAQs;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 136
    sget-object v0, Lcom/sprint/smps/properties/Properties;->smpsApi:Lcom/sprint/smps/service/SMPSService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sprint/smps/service/SMPSService;->getFAQs(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/ViewFAQs;->response:Lcom/sprint/smps/service/ClientResponse;

    .line 137
    sget-object v0, Lcom/sprint/smps/activities/ViewFAQs;->response:Lcom/sprint/smps/service/ClientResponse;

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/sprint/smps/activities/ViewFAQs;->response:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v0}, Lcom/sprint/smps/service/ClientResponse;->getFAQs()Ljava/util/LinkedHashMap;

    move-result-object v0

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/sprint/smps/activities/ViewFAQs;->response:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v0}, Lcom/sprint/smps/service/ClientResponse;->getFAQs()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 138
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewFAQs$2;->this$0:Lcom/sprint/smps/activities/ViewFAQs;

    iget-object v1, p0, Lcom/sprint/smps/activities/ViewFAQs$2;->this$0:Lcom/sprint/smps/activities/ViewFAQs;

    #getter for: Lcom/sprint/smps/activities/ViewFAQs;->showList:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sprint/smps/activities/ViewFAQs;->access$1(Lcom/sprint/smps/activities/ViewFAQs;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/ViewFAQs;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 151
    :goto_2c
    return-void

    .line 141
    :cond_2d
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewFAQs$2;->this$0:Lcom/sprint/smps/activities/ViewFAQs;

    new-instance v1, Lcom/sprint/smps/activities/ViewFAQs$2$1;

    invoke-direct {v1, p0}, Lcom/sprint/smps/activities/ViewFAQs$2$1;-><init>(Lcom/sprint/smps/activities/ViewFAQs$2;)V

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/ViewFAQs;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 149
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewFAQs$2;->this$0:Lcom/sprint/smps/activities/ViewFAQs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/ViewFAQs;->removeDialog(I)V

    goto :goto_2c
.end method
