.class final Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;
.super Llibcore/net/http/HttpURLConnectionImpl;
.source "HttpsURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/net/http/HttpsURLConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HttpUrlConnectionDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Llibcore/net/http/HttpsURLConnectionImpl;


# direct methods
.method private constructor <init>(Llibcore/net/http/HttpsURLConnectionImpl;Ljava/net/URL;I)V
    .registers 4
    .parameter
    .parameter "url"
    .parameter "port"

    .prologue
    .line 374
    iput-object p1, p0, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->this$0:Llibcore/net/http/HttpsURLConnectionImpl;

    .line 375
    invoke-direct {p0, p2, p3}, Llibcore/net/http/HttpURLConnectionImpl;-><init>(Ljava/net/URL;I)V

    .line 376
    return-void
.end method

.method private constructor <init>(Llibcore/net/http/HttpsURLConnectionImpl;Ljava/net/URL;ILjava/net/Proxy;)V
    .registers 5
    .parameter
    .parameter "url"
    .parameter "port"
    .parameter "proxy"

    .prologue
    .line 378
    iput-object p1, p0, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->this$0:Llibcore/net/http/HttpsURLConnectionImpl;

    .line 379
    invoke-direct {p0, p2, p3, p4}, Llibcore/net/http/HttpURLConnectionImpl;-><init>(Ljava/net/URL;ILjava/net/Proxy;)V

    .line 380
    return-void
.end method

.method synthetic constructor <init>(Llibcore/net/http/HttpsURLConnectionImpl;Ljava/net/URL;ILjava/net/Proxy;Llibcore/net/http/HttpsURLConnectionImpl$1;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 373
    invoke-direct {p0, p1, p2, p3, p4}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;-><init>(Llibcore/net/http/HttpsURLConnectionImpl;Ljava/net/URL;ILjava/net/Proxy;)V

    return-void
.end method

.method synthetic constructor <init>(Llibcore/net/http/HttpsURLConnectionImpl;Ljava/net/URL;ILlibcore/net/http/HttpsURLConnectionImpl$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 373
    invoke-direct {p0, p1, p2, p3}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;-><init>(Llibcore/net/http/HttpsURLConnectionImpl;Ljava/net/URL;I)V

    return-void
.end method


# virtual methods
.method public getCacheResponse()Ljava/net/SecureCacheResponse;
    .registers 3

    .prologue
    .line 389
    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    check-cast v0, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;

    .line 390
    .local v0, engine:Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->getCacheResponse()Ljava/net/CacheResponse;

    move-result-object v1

    check-cast v1, Ljava/net/SecureCacheResponse;

    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public getSSLSocket()Ljavax/net/ssl/SSLSocket;
    .registers 3

    .prologue
    .line 394
    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    check-cast v0, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;

    .line 395
    .local v0, engine:Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;
    if-eqz v0, :cond_b

    #getter for: Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->sslSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->access$300(Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method protected newHttpEngine(Ljava/lang/String;Llibcore/net/http/RawHeaders;Llibcore/net/http/HttpConnection;Llibcore/net/http/RetryableOutputStream;)Llibcore/net/http/HttpEngine;
    .registers 13
    .parameter "method"
    .parameter "requestHeaders"
    .parameter "connection"
    .parameter "requestBody"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    new-instance v0, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;

    iget-object v6, p0, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->this$0:Llibcore/net/http/HttpsURLConnectionImpl;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;-><init>(Llibcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Llibcore/net/http/RawHeaders;Llibcore/net/http/HttpConnection;Llibcore/net/http/RetryableOutputStream;Llibcore/net/http/HttpsURLConnectionImpl;Llibcore/net/http/HttpsURLConnectionImpl$1;)V

    return-object v0
.end method
