.class public Lcom/vlingo/client/core/http/custom/HttpInteraction;
.super Ljava/lang/Object;
.source "HttpInteraction.java"


# instance fields
.field private ivCon:Lcom/vlingo/client/core/http/custom/VHttpConnection;

.field private ivRequest:Lcom/vlingo/client/core/http/custom/HttpRequest;

.field private ivResponse:Lcom/vlingo/client/core/http/custom/HttpResponse;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/core/http/custom/VHttpConnection;)V
    .registers 4
    .parameter "con"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-nez p1, :cond_d

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_d
    iput-object p1, p0, Lcom/vlingo/client/core/http/custom/HttpInteraction;->ivCon:Lcom/vlingo/client/core/http/custom/VHttpConnection;

    .line 31
    new-instance v0, Lcom/vlingo/client/core/http/custom/HttpRequest;

    invoke-direct {v0, p0}, Lcom/vlingo/client/core/http/custom/HttpRequest;-><init>(Lcom/vlingo/client/core/http/custom/HttpInteraction;)V

    iput-object v0, p0, Lcom/vlingo/client/core/http/custom/HttpInteraction;->ivRequest:Lcom/vlingo/client/core/http/custom/HttpRequest;

    .line 32
    new-instance v0, Lcom/vlingo/client/core/http/custom/HttpResponse;

    invoke-direct {v0, p0}, Lcom/vlingo/client/core/http/custom/HttpResponse;-><init>(Lcom/vlingo/client/core/http/custom/HttpInteraction;)V

    iput-object v0, p0, Lcom/vlingo/client/core/http/custom/HttpInteraction;->ivResponse:Lcom/vlingo/client/core/http/custom/HttpResponse;

    .line 34
    return-void
.end method


# virtual methods
.method public getHTTPConnection()Lcom/vlingo/client/core/http/custom/VHttpConnection;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/HttpInteraction;->ivCon:Lcom/vlingo/client/core/http/custom/VHttpConnection;

    return-object v0
.end method

.method public getRequest()Lcom/vlingo/client/core/http/custom/HttpRequest;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/HttpInteraction;->ivRequest:Lcom/vlingo/client/core/http/custom/HttpRequest;

    return-object v0
.end method

.method public getResponse()Lcom/vlingo/client/core/http/custom/HttpResponse;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/HttpInteraction;->ivResponse:Lcom/vlingo/client/core/http/custom/HttpResponse;

    return-object v0
.end method
