.class public final Lcom/google/ads/util/w;
.super Lcom/google/ads/a/x;


# direct methods
.method public constructor <init>(Lcom/google/ads/a/q;Ljava/util/Map;ZZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/ads/a/x;-><init>(Lcom/google/ads/a/q;Ljava/util/Map;ZZ)V

    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)Landroid/webkit/WebResourceResponse;
    .registers 7

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    :try_start_b
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ads/util/AdUtil;->a(Ljava/net/HttpURLConnection;Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/google/ads/util/AdUtil;->a(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Landroid/webkit/WebResourceResponse;

    const-string v4, "application/javascript"

    invoke-direct {v1, v4, v2, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_38

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    :catchall_38
    move-exception v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1
.end method


# virtual methods
.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 6

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mraid.js"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c3

    iget-object v0, p0, Lcom/google/ads/util/w;->a:Lcom/google/ads/a/q;

    invoke-virtual {v0}, Lcom/google/ads/a/q;->h()Lcom/google/ads/a/j;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/google/ads/a/j;->b()V

    :cond_1c
    iget-object v0, p0, Lcom/google/ads/util/w;->a:Lcom/google/ads/a/q;

    invoke-virtual {v0}, Lcom/google/ads/a/q;->f()Lcom/google/ads/am;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/am;->a:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/ak;

    iget-object v0, v0, Lcom/google/ads/ak;->a:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/al;

    iget-object v1, p0, Lcom/google/ads/util/w;->a:Lcom/google/ads/a/q;

    invoke-virtual {v1}, Lcom/google/ads/a/q;->f()Lcom/google/ads/am;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/am;->b()Z

    move-result v1

    if-nez v1, :cond_94

    iget-boolean v1, p0, Lcom/google/ads/util/w;->b:Z

    if-eqz v1, :cond_6b

    iget-object v0, v0, Lcom/google/ads/al;->b:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "shouldInterceptRequest("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ads/util/w;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    :goto_6a
    return-object v0

    :cond_6b
    iget-object v0, v0, Lcom/google/ads/al;->a:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "shouldInterceptRequest("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ads/util/w;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_6a

    :cond_94
    iget-object v0, v0, Lcom/google/ads/al;->c:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "shouldInterceptRequest("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ads/util/w;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/webkit/WebResourceResponse;
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_bb} :catch_bd
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_bb} :catch_c8

    move-result-object v0

    goto :goto_6a

    :catch_bd
    move-exception v0

    const-string v1, "IOException fetching MRAID JS."

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c3
    :goto_c3
    invoke-super {p0, p1, p2}, Lcom/google/ads/a/x;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_6a

    :catch_c8
    move-exception v0

    const-string v1, "An unknown error occurred fetching MRAID JS."

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c3
.end method
