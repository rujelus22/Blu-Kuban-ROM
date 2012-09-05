.class public Lcom/vlingo/client/core/http/BaseHttpCallback;
.super Ljava/lang/Object;
.source "BaseHttpCallback.java"

# interfaces
.implements Lcom/vlingo/client/core/http/HttpCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/vlingo/client/core/http/HttpRequest;)V
    .registers 2
    .parameter "request"

    .prologue
    .line 35
    return-void
.end method

.method public onFailure(Lcom/vlingo/client/core/http/HttpRequest;)V
    .registers 2
    .parameter "request"

    .prologue
    .line 32
    return-void
.end method

.method public onResponse(Lcom/vlingo/client/core/http/HttpRequest;Lcom/vlingo/client/core/http/HttpResponse;)V
    .registers 3
    .parameter "request"
    .parameter "response"

    .prologue
    .line 25
    return-void
.end method

.method public onTimeout(Lcom/vlingo/client/core/http/HttpRequest;)Z
    .registers 3
    .parameter "request"

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public onWillExecuteRequest(Lcom/vlingo/client/core/http/HttpRequest;)V
    .registers 2
    .parameter "request"

    .prologue
    .line 22
    return-void
.end method
