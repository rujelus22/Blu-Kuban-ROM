.class final Lcom/github/droidfu/http/c;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# instance fields
.field final synthetic a:Lcom/github/droidfu/http/a;


# direct methods
.method constructor <init>(Lcom/github/droidfu/http/a;)V
    .registers 2
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/github/droidfu/http/c;->a:Lcom/github/droidfu/http/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 116
    const/4 v0, 0x5

    if-le p2, v0, :cond_6

    move v0, v2

    .line 146
    :goto_5
    return v0

    .line 120
    :cond_6
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 121
    const-class v0, Lcom/github/droidfu/http/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrying "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/github/droidfu/http/c;->a:Lcom/github/droidfu/http/a;

    iget-object v3, v3, Lcom/github/droidfu/http/a;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (tried: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " times)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v0, "http.request"

    invoke-interface {p3, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/RequestWrapper;

    .line 128
    invoke-virtual {v0}, Lorg/apache/http/impl/client/RequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v3

    .line 129
    const-string v1, "request_uri_backup"

    invoke-interface {p3, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URI;

    .line 130
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V

    .line 133
    iget-object v1, p0, Lcom/github/droidfu/http/c;->a:Lcom/github/droidfu/http/a;

    invoke-static {v1}, Lcom/github/droidfu/http/a;->b(Lcom/github/droidfu/http/a;)Ldbxyzptlk/w/a;

    move-result-object v1

    if-eqz v1, :cond_69

    .line 135
    :try_start_60
    iget-object v1, p0, Lcom/github/droidfu/http/c;->a:Lcom/github/droidfu/http/a;

    invoke-static {v1}, Lcom/github/droidfu/http/a;->b(Lcom/github/droidfu/http/a;)Ldbxyzptlk/w/a;

    move-result-object v1

    invoke-interface {v1, v0}, Ldbxyzptlk/w/a;->a(Ljava/lang/Object;)Ldbxyzptlk/y/a;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_69} :catch_6e

    .line 144
    :cond_69
    invoke-virtual {v0, v3}, Lorg/apache/http/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V

    .line 146
    const/4 v0, 0x1

    goto :goto_5

    .line 136
    :catch_6e
    move-exception v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    .line 139
    goto :goto_5
.end method
