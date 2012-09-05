.class Lcom/vlingo/client/vvs/VVServerRequest$ResponseHandler;
.super Lcom/vlingo/client/core/http/BaseHttpCallback;
.source "VVServerRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/vvs/VVServerRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResponseHandler"
.end annotation


# instance fields
.field callback:Lcom/vlingo/client/core/http/HttpCallback;

.field final synthetic this$0:Lcom/vlingo/client/vvs/VVServerRequest;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/vvs/VVServerRequest;Lcom/vlingo/client/core/http/HttpCallback;)V
    .registers 4
    .parameter
    .parameter "callback"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/vlingo/client/vvs/VVServerRequest$ResponseHandler;->this$0:Lcom/vlingo/client/vvs/VVServerRequest;

    invoke-direct {p0}, Lcom/vlingo/client/core/http/BaseHttpCallback;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/vvs/VVServerRequest$ResponseHandler;->callback:Lcom/vlingo/client/core/http/HttpCallback;

    .line 50
    iput-object p2, p0, Lcom/vlingo/client/vvs/VVServerRequest$ResponseHandler;->callback:Lcom/vlingo/client/core/http/HttpCallback;

    .line 51
    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/vlingo/client/core/http/HttpRequest;)V
    .registers 3
    .parameter "request"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vlingo/client/vvs/VVServerRequest$ResponseHandler;->callback:Lcom/vlingo/client/core/http/HttpCallback;

    invoke-interface {v0, p1}, Lcom/vlingo/client/core/http/HttpCallback;->onCancelled(Lcom/vlingo/client/core/http/HttpRequest;)V

    .line 88
    return-void
.end method

.method public onFailure(Lcom/vlingo/client/core/http/HttpRequest;)V
    .registers 3
    .parameter "request"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vlingo/client/vvs/VVServerRequest$ResponseHandler;->callback:Lcom/vlingo/client/core/http/HttpCallback;

    invoke-interface {v0, p1}, Lcom/vlingo/client/core/http/HttpCallback;->onFailure(Lcom/vlingo/client/core/http/HttpRequest;)V

    .line 85
    return-void
.end method

.method public onResponse(Lcom/vlingo/client/core/http/HttpRequest;Lcom/vlingo/client/core/http/HttpResponse;)V
    .registers 8
    .parameter "request"
    .parameter "response"

    .prologue
    .line 53
    const/4 v1, 0x1

    .line 58
    .local v1, error:Z
    iget v3, p2, Lcom/vlingo/client/core/http/HttpResponse;->responseCode:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_2d

    .line 59
    invoke-virtual {p2}, Lcom/vlingo/client/core/http/HttpResponse;->getDataAsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->createFromXml(Ljava/lang/String;)Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;

    move-result-object v2

    .line 60
    .local v2, res:Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;
    invoke-virtual {v2}, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->isError()Z

    move-result v3

    if-nez v3, :cond_28

    .line 61
    invoke-virtual {v2}, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->hasActions()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 62
    new-instance v0, Lcom/vlingo/client/vvs/VVSDispatcher;

    invoke-direct {v0}, Lcom/vlingo/client/vvs/VVSDispatcher;-><init>()V

    .line 63
    .local v0, dispatcher:Lcom/vlingo/client/vvs/VVSDispatcher;
    invoke-virtual {v2}, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->getActionList()Lcom/vlingo/client/core/vlservice/response/ActionList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/vlingo/client/vvs/VVSDispatcher;->processActionList(Lcom/vlingo/client/core/vlservice/response/ActionList;)Z

    .line 64
    const/4 v1, 0x0

    .line 73
    .end local v0           #dispatcher:Lcom/vlingo/client/vvs/VVSDispatcher;
    :cond_28
    :goto_28
    iget-object v3, p0, Lcom/vlingo/client/vvs/VVServerRequest$ResponseHandler;->callback:Lcom/vlingo/client/core/http/HttpCallback;

    invoke-interface {v3, p1, p2}, Lcom/vlingo/client/core/http/HttpCallback;->onResponse(Lcom/vlingo/client/core/http/HttpRequest;Lcom/vlingo/client/core/http/HttpResponse;)V

    .line 75
    .end local v2           #res:Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;
    :cond_2d
    if-eqz v1, :cond_32

    .line 76
    invoke-virtual {p0, p1}, Lcom/vlingo/client/vvs/VVServerRequest$ResponseHandler;->onFailure(Lcom/vlingo/client/core/http/HttpRequest;)V

    .line 78
    :cond_32
    return-void

    .line 66
    .restart local v2       #res:Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;
    :cond_33
    iget-object v3, p0, Lcom/vlingo/client/vvs/VVServerRequest$ResponseHandler;->this$0:Lcom/vlingo/client/vvs/VVServerRequest;

    iget-boolean v3, v3, Lcom/vlingo/client/vvs/VVServerRequest;->failIfNoActions:Z

    if-nez v3, :cond_28

    .line 67
    const/4 v1, 0x0

    goto :goto_28
.end method

.method public onTimeout(Lcom/vlingo/client/core/http/HttpRequest;)Z
    .registers 3
    .parameter "request"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vlingo/client/vvs/VVServerRequest$ResponseHandler;->callback:Lcom/vlingo/client/core/http/HttpCallback;

    invoke-interface {v0, p1}, Lcom/vlingo/client/core/http/HttpCallback;->onTimeout(Lcom/vlingo/client/core/http/HttpRequest;)Z

    move-result v0

    return v0
.end method

.method public onWillExecuteRequest(Lcom/vlingo/client/core/http/HttpRequest;)V
    .registers 3
    .parameter "request"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vlingo/client/vvs/VVServerRequest$ResponseHandler;->callback:Lcom/vlingo/client/core/http/HttpCallback;

    invoke-interface {v0, p1}, Lcom/vlingo/client/core/http/HttpCallback;->onWillExecuteRequest(Lcom/vlingo/client/core/http/HttpRequest;)V

    .line 91
    return-void
.end method
