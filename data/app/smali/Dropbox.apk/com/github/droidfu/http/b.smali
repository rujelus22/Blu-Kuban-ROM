.class final Lcom/github/droidfu/http/b;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# instance fields
.field final synthetic a:Lcom/github/droidfu/http/a;


# direct methods
.method constructor <init>(Lcom/github/droidfu/http/a;)V
    .registers 2
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/github/droidfu/http/b;->a:Lcom/github/droidfu/http/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/http/HttpResponse;)Lcom/github/droidfu/http/d;
    .registers 6
    .parameter

    .prologue
    .line 99
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/github/droidfu/http/b;->a:Lcom/github/droidfu/http/a;

    invoke-static {v1}, Lcom/github/droidfu/http/a;->a(Lcom/github/droidfu/http/a;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/github/droidfu/http/b;->a:Lcom/github/droidfu/http/a;

    invoke-static {v1}, Lcom/github/droidfu/http/a;->a(Lcom/github/droidfu/http/a;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 101
    new-instance v1, Lorg/apache/http/client/HttpResponseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected status code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 104
    :cond_39
    new-instance v0, Lcom/github/droidfu/http/d;

    invoke-direct {v0, p1}, Lcom/github/droidfu/http/d;-><init>(Lorg/apache/http/HttpResponse;)V

    return-object v0
.end method

.method public final synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/github/droidfu/http/b;->a(Lorg/apache/http/HttpResponse;)Lcom/github/droidfu/http/d;

    move-result-object v0

    return-object v0
.end method
