.class public Lcom/vlingo/client/vvs/handlers/SetConfigHandler;
.super Ljava/lang/Object;
.source "SetConfigHandler.java"

# interfaces
.implements Lcom/vlingo/client/vvs/VVSActionHandler;


# instance fields
.field parser:Lcom/vlingo/client/core/vlservice/config/VLConfigParser;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/vlingo/client/core/vlservice/config/VLConfigParser;

    invoke-direct {v0}, Lcom/vlingo/client/core/vlservice/config/VLConfigParser;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/vvs/handlers/SetConfigHandler;->parser:Lcom/vlingo/client/core/vlservice/config/VLConfigParser;

    .line 23
    return-void
.end method


# virtual methods
.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 5
    .parameter "action"
    .parameter "dispatcher"

    .prologue
    .line 26
    const-string v1, "Config"

    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, configXML:Ljava/lang/String;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_13

    .line 28
    iget-object v1, p0, Lcom/vlingo/client/vvs/handlers/SetConfigHandler;->parser:Lcom/vlingo/client/core/vlservice/config/VLConfigParser;

    invoke-static {v0, v1}, Lcom/vlingo/client/vvs/config/VLConfigManager;->importConfig(Ljava/lang/String;Lcom/vlingo/client/core/vlservice/config/VLConfigParser;)V

    .line 30
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method
