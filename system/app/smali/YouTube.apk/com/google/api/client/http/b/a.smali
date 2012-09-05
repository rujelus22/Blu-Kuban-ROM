.class final Lcom/google/api/client/http/b/a;
.super Lcom/google/api/client/http/s;
.source "SourceFile"


# instance fields
.field private final a:Ljava/net/HttpURLConnection;

.field private b:Lcom/google/api/client/http/g;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lcom/google/api/client/http/s;-><init>()V

    .line 34
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/google/api/client/http/b/a;->a:Ljava/net/HttpURLConnection;

    .line 36
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 38
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 39
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/api/client/http/t;
    .registers 8

    .prologue
    const-wide/16 v5, 0x0

    .line 54
    iget-object v0, p0, Lcom/google/api/client/http/b/a;->a:Ljava/net/HttpURLConnection;

    .line 56
    iget-object v1, p0, Lcom/google/api/client/http/b/a;->b:Lcom/google/api/client/http/g;

    if-eqz v1, :cond_55

    .line 57
    iget-object v1, p0, Lcom/google/api/client/http/b/a;->b:Lcom/google/api/client/http/g;

    invoke-interface {v1}, Lcom/google/api/client/http/g;->e()Ljava/lang/String;

    move-result-object v1

    .line 58
    if-eqz v1, :cond_15

    .line 59
    const-string v2, "Content-Type"

    invoke-virtual {p0, v2, v1}, Lcom/google/api/client/http/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_15
    iget-object v1, p0, Lcom/google/api/client/http/b/a;->b:Lcom/google/api/client/http/g;

    invoke-interface {v1}, Lcom/google/api/client/http/g;->a()Ljava/lang/String;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_22

    .line 63
    const-string v2, "Content-Encoding"

    invoke-virtual {p0, v2, v1}, Lcom/google/api/client/http/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_22
    iget-object v1, p0, Lcom/google/api/client/http/b/a;->b:Lcom/google/api/client/http/g;

    invoke-interface {v1}, Lcom/google/api/client/http/g;->b()J

    move-result-wide v1

    .line 66
    cmp-long v3, v1, v5

    if-ltz v3, :cond_35

    .line 67
    const-string v3, "Content-Length"

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/api/client/http/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_35
    cmp-long v3, v1, v5

    if-eqz v3, :cond_55

    .line 71
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 73
    cmp-long v3, v1, v5

    if-ltz v3, :cond_5e

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gtz v3, :cond_5e

    .line 74
    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 78
    :goto_4c
    iget-object v1, p0, Lcom/google/api/client/http/b/a;->b:Lcom/google/api/client/http/g;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/api/client/http/g;->a(Ljava/io/OutputStream;)V

    .line 82
    :cond_55
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 83
    new-instance v1, Lcom/google/api/client/http/b/b;

    invoke-direct {v1, v0}, Lcom/google/api/client/http/b/b;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v1

    .line 76
    :cond_5e
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    goto :goto_4c
.end method

.method public final a(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/api/client/http/b/a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 49
    iget-object v0, p0, Lcom/google/api/client/http/b/a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 50
    return-void
.end method

.method public final a(Lcom/google/api/client/http/g;)V
    .registers 2
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/api/client/http/b/a;->b:Lcom/google/api/client/http/g;

    .line 89
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/api/client/http/b/a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method
