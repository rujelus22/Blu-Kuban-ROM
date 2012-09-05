.class public Lcom/vlingo/client/vvs/handlers/AuditLogHandler;
.super Ljava/lang/Object;
.source "AuditLogHandler.java"

# interfaces
.implements Lcom/vlingo/client/vvs/VVSActionHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 8
    .parameter "action"
    .parameter "dispatcher"

    .prologue
    .line 24
    new-instance v2, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;

    invoke-direct {v2}, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;-><init>()V

    .line 26
    .local v2, serviceManager:Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;
    const-string v4, "RequestType"

    invoke-virtual {p1, v4}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, requestType:Ljava/lang/String;
    const-string v4, "TrackingID"

    invoke-virtual {p1, v4}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    .local v3, trackingId:Ljava/lang/String;
    const-string v4, "Action"

    invoke-virtual {p1, v4}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, actionName:Ljava/lang/String;
    invoke-virtual {v2, v1, v3, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;->sendAuditLogRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 v4, 0x0

    return-object v4
.end method
