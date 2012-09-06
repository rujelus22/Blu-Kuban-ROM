.class final Ladx;
.super Lads;
.source "ApacheHttpResponse.java"


# instance fields
.field private final a:Lorg/apache/http/HttpResponse;

.field private final a:Lorg/apache/http/client/methods/HttpRequestBase;

.field private final a:[Lorg/apache/http/Header;


# direct methods
.method constructor <init>(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/HttpResponse;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lads;-><init>()V

    .line 35
    iput-object p1, p0, Ladx;->a:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 36
    iput-object p2, p0, Ladx;->a:Lorg/apache/http/HttpResponse;

    .line 37
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    iput-object v0, p0, Ladx;->a:[Lorg/apache/http/Header;

    .line 38
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Ladx;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 43
    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    goto :goto_9
.end method

.method public a()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Ladx;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 49
    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_9
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Ladx;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_13

    .line 56
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_13

    .line 58
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 61
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public a(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Ladx;->a:[Lorg/apache/http/Header;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Ladx;->a:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 121
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Ladx;->a:[Lorg/apache/http/Header;

    array-length v0, v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Ladx;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_13

    .line 74
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_13

    .line 76
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public b(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Ladx;->a:[Lorg/apache/http/Header;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Ladx;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 91
    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Ladx;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 85
    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method
