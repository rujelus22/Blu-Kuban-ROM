.class Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$AuditLogHTTPHandler;
.super Lcom/vlingo/client/core/http/BaseHttpCallback;
.source "LocalSearchServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuditLogHTTPHandler"
.end annotation


# instance fields
.field action:Ljava/lang/String;

.field requestType:Ljava/lang/String;

.field retryNum:I

.field final synthetic this$0:Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;

.field trackingId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .parameter
    .parameter "requestType"
    .parameter "trackingId"
    .parameter "action"
    .parameter "retryNum"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$AuditLogHTTPHandler;->this$0:Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;

    invoke-direct {p0}, Lcom/vlingo/client/core/http/BaseHttpCallback;-><init>()V

    .line 235
    iput-object p2, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$AuditLogHTTPHandler;->requestType:Ljava/lang/String;

    .line 236
    iput-object p3, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$AuditLogHTTPHandler;->trackingId:Ljava/lang/String;

    .line 237
    iput-object p4, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$AuditLogHTTPHandler;->action:Ljava/lang/String;

    .line 238
    iput p5, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$AuditLogHTTPHandler;->retryNum:I

    .line 239
    return-void
.end method


# virtual methods
.method public onResponse(Lcom/vlingo/client/core/http/HttpRequest;Lcom/vlingo/client/core/http/HttpResponse;)V
    .registers 10
    .parameter "request"
    .parameter "response"

    .prologue
    .line 241
    const/4 v1, 0x0

    .line 244
    .local v1, success:Z
    iget v2, p2, Lcom/vlingo/client/core/http/HttpResponse;->responseCode:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_15

    .line 245
    invoke-virtual {p2}, Lcom/vlingo/client/core/http/HttpResponse;->getDataAsString()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, res:Ljava/lang/String;
    const-string v2, "Status=\"OK\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    .line 249
    const/4 v1, 0x1

    .line 252
    .end local v0           #res:Ljava/lang/String;
    :cond_15
    if-nez v1, :cond_2e

    .line 255
    iget v2, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$AuditLogHTTPHandler;->retryNum:I

    if-lez v2, :cond_2e

    .line 258
    iget v2, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$AuditLogHTTPHandler;->retryNum:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$AuditLogHTTPHandler;->retryNum:I

    .line 259
    iget-object v2, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$AuditLogHTTPHandler;->this$0:Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;

    iget-object v3, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$AuditLogHTTPHandler;->requestType:Ljava/lang/String;

    iget-object v4, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$AuditLogHTTPHandler;->trackingId:Ljava/lang/String;

    iget-object v5, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$AuditLogHTTPHandler;->action:Ljava/lang/String;

    iget v6, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$AuditLogHTTPHandler;->retryNum:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;->sendAuditLogRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 266
    :cond_2e
    return-void
.end method
