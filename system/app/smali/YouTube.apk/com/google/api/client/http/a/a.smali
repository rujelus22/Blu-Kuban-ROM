.class final Lcom/google/api/client/http/a/a;
.super Lcom/google/api/client/http/u;
.source "SourceFile"


# instance fields
.field private final a:Lorg/apache/http/client/HttpClient;

.field private final b:Lorg/apache/http/client/methods/HttpRequestBase;


# direct methods
.method constructor <init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/api/client/http/u;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/api/client/http/a/a;->a:Lorg/apache/http/client/HttpClient;

    .line 40
    iput-object p2, p0, Lcom/google/api/client/http/a/a;->b:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 41
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/api/client/http/v;
    .registers 5

    .prologue
    .line 58
    new-instance v0, Lcom/google/api/client/http/a/b;

    iget-object v1, p0, Lcom/google/api/client/http/a/a;->b:Lorg/apache/http/client/methods/HttpRequestBase;

    iget-object v2, p0, Lcom/google/api/client/http/a/a;->a:Lorg/apache/http/client/HttpClient;

    iget-object v3, p0, Lcom/google/api/client/http/a/a;->b:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/http/a/b;-><init>(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/HttpResponse;)V

    return-object v0
.end method

.method public final a(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/api/client/http/a/a;->b:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 51
    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 52
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 53
    invoke-static {v0, p2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 54
    return-void
.end method

.method public final a(Lcom/google/api/client/http/h;)V
    .registers 6
    .parameter

    .prologue
    .line 63
    new-instance v1, Lcom/google/api/client/http/a/d;

    invoke-interface {p1}, Lcom/google/api/client/http/h;->b()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p1}, Lcom/google/api/client/http/a/d;-><init>(JLcom/google/api/client/http/h;)V

    .line 64
    invoke-interface {p1}, Lcom/google/api/client/http/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/a/d;->setContentEncoding(Ljava/lang/String;)V

    .line 65
    invoke-interface {p1}, Lcom/google/api/client/http/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/a/d;->setContentType(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/google/api/client/http/a/a;->b:Lorg/apache/http/client/methods/HttpRequestBase;

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v0, v1}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 67
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/api/client/http/a/a;->b:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method
