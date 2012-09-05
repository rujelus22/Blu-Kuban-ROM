.class final Lcom/google/api/client/http/javanet/NetHttpRequest;
.super Lcom/google/api/client/http/LowLevelHttpRequest;
.source "NetHttpRequest.java"


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field private content:Lcom/google/api/client/http/HttpContent;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "requestMethod"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Lcom/google/api/client/http/LowLevelHttpRequest;-><init>()V

    .line 34
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 36
    .local v0, connection:Ljava/net/HttpURLConnection;
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 38
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 39
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public execute()Lcom/google/api/client/http/LowLevelHttpResponse;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v7, 0x0

    .line 54
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 56
    .local v0, connection:Ljava/net/HttpURLConnection;
    iget-object v5, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    if-eqz v5, :cond_55

    .line 57
    iget-object v5, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    invoke-interface {v5}, Lcom/google/api/client/http/HttpContent;->getType()Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, contentType:Ljava/lang/String;
    if-eqz v4, :cond_15

    .line 59
    const-string v5, "Content-Type"

    invoke-virtual {p0, v5, v4}, Lcom/google/api/client/http/javanet/NetHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_15
    iget-object v5, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    invoke-interface {v5}, Lcom/google/api/client/http/HttpContent;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, contentEncoding:Ljava/lang/String;
    if-eqz v1, :cond_22

    .line 63
    const-string v5, "Content-Encoding"

    invoke-virtual {p0, v5, v1}, Lcom/google/api/client/http/javanet/NetHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_22
    iget-object v5, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    invoke-interface {v5}, Lcom/google/api/client/http/HttpContent;->getLength()J

    move-result-wide v2

    .line 66
    .local v2, contentLength:J
    cmp-long v5, v2, v7

    if-ltz v5, :cond_35

    .line 67
    const-string v5, "Content-Length"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/google/api/client/http/javanet/NetHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_35
    cmp-long v5, v2, v7

    if-eqz v5, :cond_55

    .line 71
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 73
    cmp-long v5, v2, v7

    if-ltz v5, :cond_5e

    const-wide/32 v5, 0x7fffffff

    cmp-long v5, v2, v5

    if-gtz v5, :cond_5e

    .line 74
    long-to-int v5, v2

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 78
    :goto_4c
    iget-object v5, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/api/client/http/HttpContent;->writeTo(Ljava/io/OutputStream;)V

    .line 82
    .end local v1           #contentEncoding:Ljava/lang/String;
    .end local v2           #contentLength:J
    .end local v4           #contentType:Ljava/lang/String;
    :cond_55
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 83
    new-instance v5, Lcom/google/api/client/http/javanet/NetHttpResponse;

    invoke-direct {v5, v0}, Lcom/google/api/client/http/javanet/NetHttpResponse;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v5

    .line 76
    .restart local v1       #contentEncoding:Ljava/lang/String;
    .restart local v2       #contentLength:J
    .restart local v4       #contentType:Ljava/lang/String;
    :cond_5e
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    goto :goto_4c
.end method

.method public setContent(Lcom/google/api/client/http/HttpContent;)V
    .registers 2
    .parameter "content"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 89
    return-void
.end method

.method public setTimeout(II)V
    .registers 4
    .parameter "connectTimeout"
    .parameter "readTimeout"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 49
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 50
    return-void
.end method
