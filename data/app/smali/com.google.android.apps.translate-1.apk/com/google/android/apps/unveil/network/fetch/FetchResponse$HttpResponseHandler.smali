.class public final Lcom/google/android/apps/unveil/network/fetch/FetchResponse$HttpResponseHandler;
.super Ljava/lang/Object;
.source "FetchResponse.java"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/network/fetch/FetchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HttpResponseHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<",
        "Lcom/google/android/apps/unveil/network/fetch/FetchResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final cookieProvider:Lcom/google/android/apps/unveil/env/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/env/Provider",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/env/Provider;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/env/Provider",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, cookieProvider:Lcom/google/android/apps/unveil/env/Provider;,"Lcom/google/android/apps/unveil/env/Provider<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/android/apps/unveil/network/fetch/FetchResponse$HttpResponseHandler;->cookieProvider:Lcom/google/android/apps/unveil/env/Provider;

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .registers 3
    .parameter "client"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/google/android/apps/unveil/network/fetch/FetchResponse$HttpClientCookieProvider;

    invoke-direct {v0, p1}, Lcom/google/android/apps/unveil/network/fetch/FetchResponse$HttpClientCookieProvider;-><init>(Lorg/apache/http/client/HttpClient;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/network/fetch/FetchResponse$HttpResponseHandler;->cookieProvider:Lcom/google/android/apps/unveil/env/Provider;

    .line 63
    return-void
.end method

.method public static bufferResponse(Lorg/apache/http/HttpResponse;Z)Ljava/io/ByteArrayOutputStream;
    .registers 13
    .parameter "response"
    .parameter "isGzipped"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v10, 0x8000

    const/4 v9, 0x0

    .line 95
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 97
    .local v2, is:Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    if-eqz p1, :cond_16

    new-instance v6, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v6, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v6

    .end local v2           #is:Ljava/io/InputStream;
    :cond_16
    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 99
    .local v1, bufferedInput:Ljava/io/BufferedInputStream;
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    long-to-int v5, v6

    .line 100
    .local v5, totalBytes:I
    if-gez v5, :cond_40

    .line 101
    invoke-static {}, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v6

    const-string v7, "Unknown length when fetching."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 108
    .local v4, output:Ljava/io/ByteArrayOutputStream;
    :goto_34
    new-array v0, v10, [B

    .line 109
    .local v0, buffer:[B
    :goto_36
    invoke-virtual {v1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    .local v3, len:I
    if-lez v3, :cond_46

    .line 110
    invoke-virtual {v4, v0, v9, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_36

    .line 104
    .end local v0           #buffer:[B
    .end local v3           #len:I
    .end local v4           #output:Ljava/io/ByteArrayOutputStream;
    :cond_40
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .restart local v4       #output:Ljava/io/ByteArrayOutputStream;
    goto :goto_34

    .line 112
    .restart local v0       #buffer:[B
    .restart local v3       #len:I
    :cond_46
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 113
    return-object v4
.end method


# virtual methods
.method public handleResponse(Lorg/apache/http/HttpResponse;)Lcom/google/android/apps/unveil/network/fetch/FetchResponse;
    .registers 11
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v5, p0, Lcom/google/android/apps/unveil/network/fetch/FetchResponse$HttpResponseHandler;->cookieProvider:Lcom/google/android/apps/unveil/env/Provider;

    invoke-interface {v5}, Lcom/google/android/apps/unveil/env/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 74
    .local v0, cookies:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "Content-Encoding"

    invoke-interface {p1, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 75
    .local v2, encodingHeader:Lorg/apache/http/Header;
    if-eqz v2, :cond_3b

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "gzip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    const/4 v3, 0x1

    .line 80
    .local v3, isGzipped:Z
    :goto_1d
    :try_start_1d
    invoke-static {p1, v3}, Lcom/google/android/apps/unveil/network/fetch/FetchResponse$HttpResponseHandler;->bufferResponse(Lorg/apache/http/HttpResponse;Z)Ljava/io/ByteArrayOutputStream;
    :try_end_20
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_20} :catch_3d

    move-result-object v4

    .line 85
    .local v4, output:Ljava/io/ByteArrayOutputStream;
    new-instance v5, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v0, v8}, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;-><init>([BILjava/util/Map;Ljava/lang/String;)V

    .end local v4           #output:Ljava/io/ByteArrayOutputStream;
    :goto_3a
    return-object v5

    .line 75
    .end local v3           #isGzipped:Z
    :cond_3b
    const/4 v3, 0x0

    goto :goto_1d

    .line 81
    .restart local v3       #isGzipped:Z
    :catch_3d
    move-exception v1

    .line 82
    .local v1, e:Ljava/lang/OutOfMemoryError;
    new-instance v5, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;

    const/4 v6, 0x0

    const/4 v7, -0x2

    const-string v8, ""

    invoke-direct {v5, v6, v7, v0, v8}, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;-><init>([BILjava/util/Map;Ljava/lang/String;)V

    goto :goto_3a
.end method

.method public bridge synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/network/fetch/FetchResponse$HttpResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Lcom/google/android/apps/unveil/network/fetch/FetchResponse;

    move-result-object v0

    return-object v0
.end method
