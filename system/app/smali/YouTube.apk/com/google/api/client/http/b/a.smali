.class final Lcom/google/api/client/http/b/a;
.super Lcom/google/api/client/http/u;
.source "SourceFile"


# instance fields
.field private final a:Ljava/net/HttpURLConnection;

.field private b:Lcom/google/api/client/http/h;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Lcom/google/api/client/http/u;-><init>()V

    .line 35
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/google/api/client/http/b/a;->a:Ljava/net/HttpURLConnection;

    .line 37
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 39
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 40
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/api/client/http/v;
    .registers 8

    .prologue
    const-wide/16 v5, 0x0

    .line 55
    iget-object v0, p0, Lcom/google/api/client/http/b/a;->a:Ljava/net/HttpURLConnection;

    .line 57
    iget-object v1, p0, Lcom/google/api/client/http/b/a;->b:Lcom/google/api/client/http/h;

    if-eqz v1, :cond_58

    .line 58
    iget-object v1, p0, Lcom/google/api/client/http/b/a;->b:Lcom/google/api/client/http/h;

    invoke-interface {v1}, Lcom/google/api/client/http/h;->e()Ljava/lang/String;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_15

    .line 60
    const-string v2, "Content-Type"

    invoke-virtual {p0, v2, v1}, Lcom/google/api/client/http/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_15
    iget-object v1, p0, Lcom/google/api/client/http/b/a;->b:Lcom/google/api/client/http/h;

    invoke-interface {v1}, Lcom/google/api/client/http/h;->a()Ljava/lang/String;

    move-result-object v1

    .line 63
    if-eqz v1, :cond_22

    .line 64
    const-string v2, "Content-Encoding"

    invoke-virtual {p0, v2, v1}, Lcom/google/api/client/http/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_22
    iget-object v1, p0, Lcom/google/api/client/http/b/a;->b:Lcom/google/api/client/http/h;

    invoke-interface {v1}, Lcom/google/api/client/http/h;->b()J

    move-result-wide v1

    .line 67
    cmp-long v3, v1, v5

    if-ltz v3, :cond_35

    .line 68
    const-string v3, "Content-Length"

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/api/client/http/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_35
    cmp-long v3, v1, v5

    if-eqz v3, :cond_58

    .line 72
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 74
    cmp-long v3, v1, v5

    if-ltz v3, :cond_61

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gtz v3, :cond_61

    .line 75
    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 79
    :goto_4c
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 81
    :try_start_50
    iget-object v2, p0, Lcom/google/api/client/http/b/a;->b:Lcom/google/api/client/http/h;

    invoke-interface {v2, v1}, Lcom/google/api/client/http/h;->a(Ljava/io/OutputStream;)V
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_66

    .line 83
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 88
    :cond_58
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 89
    new-instance v1, Lcom/google/api/client/http/b/b;

    invoke-direct {v1, v0}, Lcom/google/api/client/http/b/b;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v1

    .line 77
    :cond_61
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    goto :goto_4c

    .line 83
    :catchall_66
    move-exception v0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0
.end method

.method public final a(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/api/client/http/b/a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 50
    iget-object v0, p0, Lcom/google/api/client/http/b/a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 51
    return-void
.end method

.method public final a(Lcom/google/api/client/http/h;)V
    .registers 2
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/api/client/http/b/a;->b:Lcom/google/api/client/http/h;

    .line 95
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/api/client/http/b/a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method
