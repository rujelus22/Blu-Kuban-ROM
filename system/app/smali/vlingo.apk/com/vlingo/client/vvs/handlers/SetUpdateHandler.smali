.class public Lcom/vlingo/client/vvs/handlers/SetUpdateHandler;
.super Ljava/lang/Object;
.source "SetUpdateHandler.java"

# interfaces
.implements Lcom/vlingo/client/vvs/VVSActionHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 5
    .parameter "action"
    .parameter "dispatcher"

    .prologue
    .line 22
    const-string v1, "Update"

    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, updateXML:Ljava/lang/String;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_15

    .line 24
    invoke-virtual {p2}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vlingo/client/update/UpdateManager;->saveNewUpdateXML(Ljava/lang/String;Landroid/content/Context;)V

    .line 26
    :cond_15
    const/4 v1, 0x0

    return-object v1
.end method
