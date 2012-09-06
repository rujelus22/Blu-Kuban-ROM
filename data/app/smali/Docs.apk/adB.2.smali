.class final LadB;
.super Ladr;
.source "NetHttpRequest.java"


# instance fields
.field private a:Lada;

.field private final a:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ladr;-><init>()V

    .line 35
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, LadB;->a:Ljava/net/HttpURLConnection;

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
.method public a()Lads;
    .registers 8

    .prologue
    const-wide/16 v5, 0x0

    .line 55
    iget-object v1, p0, LadB;->a:Ljava/net/HttpURLConnection;

    .line 57
    iget-object v0, p0, LadB;->a:Lada;

    if-eqz v0, :cond_58

    .line 58
    iget-object v0, p0, LadB;->a:Lada;

    invoke-interface {v0}, Lada;->b()Ljava/lang/String;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_15

    .line 60
    const-string v2, "Content-Type"

    invoke-virtual {p0, v2, v0}, LadB;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_15
    iget-object v0, p0, LadB;->a:Lada;

    invoke-interface {v0}, Lada;->a()Ljava/lang/String;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_22

    .line 64
    const-string v2, "Content-Encoding"

    invoke-virtual {p0, v2, v0}, LadB;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_22
    iget-object v0, p0, LadB;->a:Lada;

    invoke-interface {v0}, Lada;->a()J

    move-result-wide v2

    .line 67
    cmp-long v0, v2, v5

    if-ltz v0, :cond_35

    .line 68
    const-string v0, "Content-Length"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, LadB;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_35
    cmp-long v0, v2, v5

    if-eqz v0, :cond_58

    .line 72
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 74
    cmp-long v0, v2, v5

    if-ltz v0, :cond_61

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v2, v4

    if-gtz v0, :cond_61

    .line 75
    long-to-int v0, v2

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 79
    :goto_4c
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 81
    :try_start_50
    iget-object v0, p0, LadB;->a:Lada;

    invoke-interface {v0, v2}, Lada;->a(Ljava/io/OutputStream;)V
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_66

    .line 83
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 90
    :cond_58
    :try_start_58
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 91
    new-instance v0, LadC;

    invoke-direct {v0, v1}, LadC;-><init>(Ljava/net/HttpURLConnection;)V
    :try_end_60
    .catchall {:try_start_58 .. :try_end_60} :catchall_6b

    .line 96
    return-object v0

    .line 77
    :cond_61
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    goto :goto_4c

    .line 83
    :catchall_66
    move-exception v0

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    throw v0

    .line 95
    :catchall_6b
    move-exception v0

    .line 96
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
.end method

.method public a(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, LadB;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 50
    iget-object v0, p0, LadB;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 51
    return-void
.end method

.method public a(Lada;)V
    .registers 2
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, LadB;->a:Lada;

    .line 104
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, LadB;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method
