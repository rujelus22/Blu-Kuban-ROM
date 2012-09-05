.class public interface abstract Lcom/vlingo/client/core/http/HttpCallback;
.super Ljava/lang/Object;
.source "HttpCallback.java"


# virtual methods
.method public abstract onCancelled(Lcom/vlingo/client/core/http/HttpRequest;)V
.end method

.method public abstract onFailure(Lcom/vlingo/client/core/http/HttpRequest;)V
.end method

.method public abstract onResponse(Lcom/vlingo/client/core/http/HttpRequest;Lcom/vlingo/client/core/http/HttpResponse;)V
.end method

.method public abstract onTimeout(Lcom/vlingo/client/core/http/HttpRequest;)Z
.end method

.method public abstract onWillExecuteRequest(Lcom/vlingo/client/core/http/HttpRequest;)V
.end method
