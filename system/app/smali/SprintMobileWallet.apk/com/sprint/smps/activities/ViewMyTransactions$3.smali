.class Lcom/sprint/smps/activities/ViewMyTransactions$3;
.super Ljava/lang/Object;
.source "ViewMyTransactions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/ViewMyTransactions;->retrieveData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/ViewMyTransactions;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/ViewMyTransactions;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/ViewMyTransactions$3;->this$0:Lcom/sprint/smps/activities/ViewMyTransactions;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sprint/smps/activities/ViewMyTransactions$3;)Lcom/sprint/smps/activities/ViewMyTransactions;
    .registers 2
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewMyTransactions$3;->this$0:Lcom/sprint/smps/activities/ViewMyTransactions;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 126
    const/4 v1, 0x1

    .line 127
    .local v1, removeDialog:Z
    iget-object v2, p0, Lcom/sprint/smps/activities/ViewMyTransactions$3;->this$0:Lcom/sprint/smps/activities/ViewMyTransactions;

    #calls: Lcom/sprint/smps/activities/ViewMyTransactions;->getRange()Ljava/lang/String;
    invoke-static {v2}, Lcom/sprint/smps/activities/ViewMyTransactions;->access$6(Lcom/sprint/smps/activities/ViewMyTransactions;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, range:Ljava/lang/String;
    invoke-static {}, Lcom/sprint/smps/activities/ViewMyTransactions;->access$1()Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    if-nez v2, :cond_40

    .line 129
    sget-object v2, Lcom/sprint/smps/properties/Properties;->smpsApi:Lcom/sprint/smps/service/SMPSService;

    invoke-interface {v2, v0}, Lcom/sprint/smps/service/SMPSService;->getTransactions(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    invoke-static {v2}, Lcom/sprint/smps/activities/ViewMyTransactions;->access$3(Lcom/sprint/smps/service/ClientResponse;)V

    .line 133
    :goto_16
    invoke-static {}, Lcom/sprint/smps/activities/ViewMyTransactions;->access$1()Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    if-eqz v2, :cond_42

    invoke-static {}, Lcom/sprint/smps/activities/ViewMyTransactions;->access$1()Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sprint/smps/service/ClientResponse;->getLstTransactions()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_42

    invoke-static {}, Lcom/sprint/smps/activities/ViewMyTransactions;->access$1()Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sprint/smps/service/ClientResponse;->getLstTransactions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_42

    .line 134
    iget-object v2, p0, Lcom/sprint/smps/activities/ViewMyTransactions$3;->this$0:Lcom/sprint/smps/activities/ViewMyTransactions;

    iget-object v3, p0, Lcom/sprint/smps/activities/ViewMyTransactions$3;->this$0:Lcom/sprint/smps/activities/ViewMyTransactions;

    #getter for: Lcom/sprint/smps/activities/ViewMyTransactions;->showList:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/sprint/smps/activities/ViewMyTransactions;->access$7(Lcom/sprint/smps/activities/ViewMyTransactions;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sprint/smps/activities/ViewMyTransactions;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 146
    :cond_3f
    :goto_3f
    return-void

    .line 131
    :cond_40
    const/4 v1, 0x0

    goto :goto_16

    .line 137
    :cond_42
    iget-object v2, p0, Lcom/sprint/smps/activities/ViewMyTransactions$3;->this$0:Lcom/sprint/smps/activities/ViewMyTransactions;

    new-instance v3, Lcom/sprint/smps/activities/ViewMyTransactions$3$1;

    invoke-direct {v3, p0, v0}, Lcom/sprint/smps/activities/ViewMyTransactions$3$1;-><init>(Lcom/sprint/smps/activities/ViewMyTransactions$3;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sprint/smps/activities/ViewMyTransactions;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 144
    if-eqz v1, :cond_3f

    iget-object v2, p0, Lcom/sprint/smps/activities/ViewMyTransactions$3;->this$0:Lcom/sprint/smps/activities/ViewMyTransactions;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sprint/smps/activities/ViewMyTransactions;->removeDialog(I)V

    goto :goto_3f
.end method
