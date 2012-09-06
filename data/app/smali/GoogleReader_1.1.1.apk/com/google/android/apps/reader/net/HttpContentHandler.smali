.class public abstract Lcom/google/android/apps/reader/net/HttpContentHandler;
.super Ljava/net/ContentHandler;
.source "HttpContentHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    return-void
.end method

.method public static getContent(Landroid/net/Uri;Ljava/net/ContentHandler;)Ljava/lang/Object;
    .registers 5
    .parameter "uri"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/apps/reader/net/HttpContentHandler;->getHttpContent(Landroid/net/Uri;Ljava/net/ContentHandler;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/net/HttpRetryException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v2

    .line 73
    :goto_4
    return-object v2

    .line 70
    :catch_5
    move-exception v0

    .line 71
    .local v0, e:Ljava/net/HttpRetryException;
    invoke-virtual {v0}, Ljava/net/HttpRetryException;->getLocation()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, location:Ljava/lang/String;
    if-nez v1, :cond_11

    .line 73
    invoke-static {p0, p1}, Lcom/google/android/apps/reader/net/HttpContentHandler;->getHttpContent(Landroid/net/Uri;Ljava/net/ContentHandler;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_4

    .line 77
    :cond_11
    throw v0
.end method

.method public static getContent(Ljava/lang/String;Ljava/net/ContentHandler;)Ljava/lang/Object;
    .registers 4
    .parameter "uriString"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 56
    .local v0, uri:Landroid/net/Uri;
    invoke-static {v0, p1}, Lcom/google/android/apps/reader/net/HttpContentHandler;->getContent(Landroid/net/Uri;Ljava/net/ContentHandler;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static getHttpContent(Landroid/net/Uri;Ljava/net/ContentHandler;)Ljava/lang/Object;
    .registers 4
    .parameter "uri"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {p0}, Lcom/google/android/apps/reader/net/HttpContentHandler;->openConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 84
    .local v0, connection:Ljava/net/HttpURLConnection;
    invoke-virtual {p1, v0}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static getHttpResponseCode(Landroid/net/Uri;Lcom/google/android/apps/reader/net/HttpContentHandler;)I
    .registers 4
    .parameter "uri"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {p0}, Lcom/google/android/apps/reader/net/HttpContentHandler;->openConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 112
    .local v0, connection:Ljava/net/HttpURLConnection;
    invoke-virtual {p1, v0}, Lcom/google/android/apps/reader/net/HttpContentHandler;->getResponseCode(Ljava/net/URLConnection;)I

    move-result v1

    return v1
.end method

.method public static getResponseCode(Landroid/net/Uri;Lcom/google/android/apps/reader/net/HttpContentHandler;)I
    .registers 5
    .parameter "uri"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/apps/reader/net/HttpContentHandler;->getHttpResponseCode(Landroid/net/Uri;Lcom/google/android/apps/reader/net/HttpContentHandler;)I
    :try_end_3
    .catch Ljava/net/HttpRetryException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v2

    .line 101
    :goto_4
    return v2

    .line 98
    :catch_5
    move-exception v0

    .line 99
    .local v0, e:Ljava/net/HttpRetryException;
    invoke-virtual {v0}, Ljava/net/HttpRetryException;->getLocation()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, location:Ljava/lang/String;
    if-nez v1, :cond_11

    .line 101
    invoke-static {p0, p1}, Lcom/google/android/apps/reader/net/HttpContentHandler;->getHttpResponseCode(Landroid/net/Uri;Lcom/google/android/apps/reader/net/HttpContentHandler;)I

    move-result v2

    goto :goto_4

    .line 105
    :cond_11
    throw v0
.end method

.method private static openConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;
    .registers 5
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, spec:Ljava/lang/String;
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 42
    .local v2, url:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 43
    .local v0, connection:Ljava/net/HttpURLConnection;
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 44
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 45
    return-object v0
.end method

.method protected static skipAll(Ljava/io/InputStream;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/io/InputStream;->skip(J)J

    .line 51
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 52
    return-void
.end method


# virtual methods
.method public abstract getResponseCode(Ljava/net/URLConnection;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setEntity(Lorg/apache/http/HttpEntity;)V
.end method
