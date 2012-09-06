.class public LJO;
.super LJs;
.source "HttpIssuerResponse.java"


# instance fields
.field private a:LJM;

.field private a:Lorg/apache/http/HttpEntity;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpResponse;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1}, LJs;-><init>(Lorg/apache/http/HttpResponse;)V

    .line 16
    iput-object v0, p0, LJO;->a:Lorg/apache/http/HttpEntity;

    .line 17
    iput-object v0, p0, LJO;->a:LJM;

    .line 26
    return-void
.end method


# virtual methods
.method public a()LJM;
    .registers 3

    .prologue
    .line 30
    iget-object v0, p0, LJO;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 31
    iget-object v1, p0, LJO;->a:Lorg/apache/http/HttpEntity;

    if-eq v0, v1, :cond_13

    .line 32
    iput-object v0, p0, LJO;->a:Lorg/apache/http/HttpEntity;

    .line 33
    iget-object v0, p0, LJO;->a:Lorg/apache/http/HttpEntity;

    if-nez v0, :cond_16

    const/4 v0, 0x0

    :goto_11
    iput-object v0, p0, LJO;->a:LJM;

    .line 35
    :cond_13
    iget-object v0, p0, LJO;->a:LJM;

    return-object v0

    .line 33
    :cond_16
    new-instance v0, LJM;

    iget-object v1, p0, LJO;->a:Lorg/apache/http/HttpEntity;

    invoke-direct {v0, v1}, LJM;-><init>(Lorg/apache/http/HttpEntity;)V

    goto :goto_11
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 43
    invoke-virtual {p0}, LJO;->a()LJM;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_b

    .line 45
    invoke-virtual {v0}, LJM;->a()Z

    move-result v0

    .line 47
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public synthetic getEntity()Lorg/apache/http/HttpEntity;
    .registers 2

    .prologue
    .line 14
    invoke-virtual {p0}, LJO;->a()LJM;

    move-result-object v0

    return-object v0
.end method
