.class final Llibcore/net/http/HttpsURLConnectionImpl;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "HttpsURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/net/http/HttpsURLConnectionImpl$1;,
        Llibcore/net/http/HttpsURLConnectionImpl$ProxyConnectEngine;,
        Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;,
        Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;
    }
.end annotation


# instance fields
.field private final delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;


# direct methods
.method protected constructor <init>(Ljava/net/URL;I)V
    .registers 5
    .parameter "url"
    .parameter "port"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 46
    new-instance v0, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;-><init>(Llibcore/net/http/HttpsURLConnectionImpl;Ljava/net/URL;ILlibcore/net/http/HttpsURLConnectionImpl$1;)V

    iput-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    .line 47
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;ILjava/net/Proxy;)V
    .registers 10
    .parameter "url"
    .parameter "port"
    .parameter "proxy"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 51
    new-instance v0, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;-><init>(Llibcore/net/http/HttpsURLConnectionImpl;Ljava/net/URL;ILjava/net/Proxy;Llibcore/net/http/HttpsURLConnectionImpl$1;)V

    iput-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    .line 52
    return-void
.end method

.method private checkConnected()V
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSSLSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    if-nez v0, :cond_10

    .line 56
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has not yet been established"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_10
    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "field"
    .parameter "newValue"

    .prologue
    .line 240
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public connect()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    .line 164
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->connect()V

    .line 165
    return-void
.end method

.method public disconnect()V
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->disconnect()V

    .line 119
    return-void
.end method

.method public getAllowUserInteraction()Z
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .registers 3

    .prologue
    .line 66
    iget-object v1, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 67
    .local v0, cacheResponse:Ljava/net/SecureCacheResponse;
    if-eqz v0, :cond_d

    .line 68
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getCipherSuite()Ljava/lang/String;

    move-result-object v1

    .line 71
    :goto_c
    return-object v1

    .line 70
    :cond_d
    invoke-direct {p0}, Llibcore/net/http/HttpsURLConnectionImpl;->checkConnected()V

    .line 71
    iget-object v1, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSSLSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v1

    goto :goto_c
.end method

.method public getConnectTimeout()I
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .parameter "types"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .registers 3

    .prologue
    .line 200
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()J
    .registers 3

    .prologue
    .line 220
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .registers 3
    .parameter "pos"

    .prologue
    .line 225
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "key"

    .prologue
    .line 245
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .registers 6
    .parameter "field"
    .parameter "defaultValue"

    .prologue
    .line 250
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2, p3}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .registers 4
    .parameter "field"
    .parameter "defaultValue"

    .prologue
    .line 255
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .registers 3
    .parameter "posn"

    .prologue
    .line 260
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getHttpEngine()Llibcore/net/http/HttpEngine;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHttpEngine()Llibcore/net/http/HttpEngine;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .registers 3

    .prologue
    .line 265
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceFollowRedirects()Z
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .registers 3

    .prologue
    .line 275
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 4

    .prologue
    .line 76
    iget-object v2, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v2}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 77
    .local v0, cacheResponse:Ljava/net/SecureCacheResponse;
    if-eqz v0, :cond_1d

    .line 78
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getLocalCertificateChain()Ljava/util/List;

    move-result-object v1

    .line 79
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/Certificate;>;"
    if-eqz v1, :cond_1b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/cert/Certificate;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/cert/Certificate;

    .line 82
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_1a
    return-object v2

    .line 79
    .restart local v1       #result:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a

    .line 81
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_1d
    invoke-direct {p0}, Llibcore/net/http/HttpsURLConnectionImpl;->checkConnected()V

    .line 82
    iget-object v2, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v2}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSSLSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2

    goto :goto_1a
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .registers 3

    .prologue
    .line 108
    iget-object v1, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 109
    .local v0, cacheResponse:Ljava/net/SecureCacheResponse;
    if-eqz v0, :cond_d

    .line 110
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v1

    .line 113
    :goto_c
    return-object v1

    .line 112
    :cond_d
    invoke-direct {p0}, Llibcore/net/http/HttpsURLConnectionImpl;->checkConnected()V

    .line 113
    iget-object v1, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSSLSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v1

    goto :goto_c
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v1, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 99
    .local v0, cacheResponse:Ljava/net/SecureCacheResponse;
    if-eqz v0, :cond_d

    .line 100
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v1

    .line 103
    :goto_c
    return-object v1

    .line 102
    :cond_d
    invoke-direct {p0}, Llibcore/net/http/HttpsURLConnectionImpl;->checkConnected()V

    .line 103
    iget-object v1, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSSLSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v1

    goto :goto_c
.end method

.method public getPermission()Ljava/security/Permission;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "field"

    .prologue
    .line 290
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificates()[Ljava/security/cert/Certificate;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v2, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v2}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 88
    .local v0, cacheResponse:Ljava/net/SecureCacheResponse;
    if-eqz v0, :cond_1d

    .line 89
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getServerCertificateChain()Ljava/util/List;

    move-result-object v1

    .line 90
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/Certificate;>;"
    if-eqz v1, :cond_1b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/cert/Certificate;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/cert/Certificate;

    .line 93
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_1a
    return-object v2

    .line 90
    .restart local v1       #result:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a

    .line 92
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_1d
    invoke-direct {p0}, Llibcore/net/http/HttpsURLConnectionImpl;->checkConnected()V

    .line 93
    iget-object v2, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v2}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSSLSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2

    goto :goto_1a
.end method

.method public getURL()Ljava/net/URL;
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .registers 3
    .parameter "newValue"

    .prologue
    .line 305
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setAllowUserInteraction(Z)V

    .line 306
    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .registers 3
    .parameter "chunkLength"

    .prologue
    .line 370
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setChunkedStreamingMode(I)V

    .line 371
    return-void
.end method

.method public setConnectTimeout(I)V
    .registers 3
    .parameter "timeout"

    .prologue
    .line 340
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setConnectTimeout(I)V

    .line 341
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .registers 3
    .parameter "newValue"

    .prologue
    .line 310
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setDefaultUseCaches(Z)V

    .line 311
    return-void
.end method

.method public setDoInput(Z)V
    .registers 3
    .parameter "newValue"

    .prologue
    .line 315
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setDoInput(Z)V

    .line 316
    return-void
.end method

.method public setDoOutput(Z)V
    .registers 3
    .parameter "newValue"

    .prologue
    .line 320
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setDoOutput(Z)V

    .line 321
    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .registers 3
    .parameter "contentLength"

    .prologue
    .line 365
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setFixedLengthStreamingMode(I)V

    .line 366
    return-void
.end method

.method public setIfModifiedSince(J)V
    .registers 4
    .parameter "newValue"

    .prologue
    .line 325
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setIfModifiedSince(J)V

    .line 326
    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .registers 3
    .parameter "followRedirects"

    .prologue
    .line 158
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setInstanceFollowRedirects(Z)V

    .line 159
    return-void
.end method

.method public setReadTimeout(I)V
    .registers 3
    .parameter "timeout"

    .prologue
    .line 350
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setReadTimeout(I)V

    .line 351
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .registers 3
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setRequestMethod(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "field"
    .parameter "newValue"

    .prologue
    .line 330
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public setUseCaches(Z)V
    .registers 3
    .parameter "newValue"

    .prologue
    .line 335
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setUseCaches(Z)V

    .line 336
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->usingProxy()Z

    move-result v0

    return v0
.end method
