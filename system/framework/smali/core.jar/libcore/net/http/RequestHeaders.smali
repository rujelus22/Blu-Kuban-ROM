.class public final Llibcore/net/http/RequestHeaders;
.super Ljava/lang/Object;
.source "RequestHeaders.java"


# instance fields
.field private acceptEncoding:Ljava/lang/String;

.field private connection:Ljava/lang/String;

.field private contentLength:I

.field private contentType:Ljava/lang/String;

.field private hasAuthorization:Z

.field private final headers:Llibcore/net/http/RawHeaders;

.field private host:Ljava/lang/String;

.field private ifModifiedSince:Ljava/lang/String;

.field private ifNoneMatch:Ljava/lang/String;

.field private maxAgeSeconds:I

.field private maxStaleSeconds:I

.field private minFreshSeconds:I

.field private noCache:Z

.field private onlyIfCached:Z

.field private proxyAuthorization:Ljava/lang/String;

.field private transferEncoding:Ljava/lang/String;

.field private final uri:Ljava/net/URI;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URI;Llibcore/net/http/RawHeaders;)V
    .registers 9
    .parameter "uri"
    .parameter "headers"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v4, p0, Llibcore/net/http/RequestHeaders;->maxAgeSeconds:I

    .line 34
    iput v4, p0, Llibcore/net/http/RequestHeaders;->maxStaleSeconds:I

    .line 35
    iput v4, p0, Llibcore/net/http/RequestHeaders;->minFreshSeconds:I

    .line 53
    iput v4, p0, Llibcore/net/http/RequestHeaders;->contentLength:I

    .line 65
    iput-object p1, p0, Llibcore/net/http/RequestHeaders;->uri:Ljava/net/URI;

    .line 66
    iput-object p2, p0, Llibcore/net/http/RequestHeaders;->headers:Llibcore/net/http/RawHeaders;

    .line 68
    new-instance v1, Llibcore/net/http/RequestHeaders$1;

    invoke-direct {v1, p0}, Llibcore/net/http/RequestHeaders$1;-><init>(Llibcore/net/http/RequestHeaders;)V

    .line 84
    .local v1, handler:Llibcore/net/http/HeaderParser$CacheControlHandler;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    invoke-virtual {p2}, Llibcore/net/http/RawHeaders;->length()I

    move-result v4

    if-ge v2, v4, :cond_c7

    .line 85
    invoke-virtual {p2, v2}, Llibcore/net/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, fieldName:Ljava/lang/String;
    invoke-virtual {p2, v2}, Llibcore/net/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, value:Ljava/lang/String;
    const-string v4, "Cache-Control"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 88
    invoke-static {v3, v1}, Llibcore/net/http/HeaderParser;->parseCacheControl(Ljava/lang/String;Llibcore/net/http/HeaderParser$CacheControlHandler;)V

    .line 84
    :cond_30
    :goto_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 89
    :cond_33
    const-string v4, "Pragma"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 90
    const-string v4, "no-cache"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 91
    iput-boolean v5, p0, Llibcore/net/http/RequestHeaders;->noCache:Z

    goto :goto_30

    .line 93
    :cond_46
    const-string v4, "If-None-Match"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 94
    iput-object v3, p0, Llibcore/net/http/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    goto :goto_30

    .line 95
    :cond_51
    const-string v4, "If-Modified-Since"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 96
    iput-object v3, p0, Llibcore/net/http/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    goto :goto_30

    .line 97
    :cond_5c
    const-string v4, "Authorization"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 98
    iput-boolean v5, p0, Llibcore/net/http/RequestHeaders;->hasAuthorization:Z

    goto :goto_30

    .line 99
    :cond_67
    const-string v4, "Content-Length"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 101
    :try_start_6f
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Llibcore/net/http/RequestHeaders;->contentLength:I
    :try_end_75
    .catch Ljava/lang/NumberFormatException; {:try_start_6f .. :try_end_75} :catch_76

    goto :goto_30

    .line 102
    :catch_76
    move-exception v4

    goto :goto_30

    .line 104
    :cond_78
    const-string v4, "Transfer-Encoding"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_83

    .line 105
    iput-object v3, p0, Llibcore/net/http/RequestHeaders;->transferEncoding:Ljava/lang/String;

    goto :goto_30

    .line 106
    :cond_83
    const-string v4, "User-Agent"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 107
    iput-object v3, p0, Llibcore/net/http/RequestHeaders;->userAgent:Ljava/lang/String;

    goto :goto_30

    .line 108
    :cond_8e
    const-string v4, "Host"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_99

    .line 109
    iput-object v3, p0, Llibcore/net/http/RequestHeaders;->host:Ljava/lang/String;

    goto :goto_30

    .line 110
    :cond_99
    const-string v4, "Connection"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 111
    iput-object v3, p0, Llibcore/net/http/RequestHeaders;->connection:Ljava/lang/String;

    goto :goto_30

    .line 112
    :cond_a4
    const-string v4, "Accept-Encoding"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_af

    .line 113
    iput-object v3, p0, Llibcore/net/http/RequestHeaders;->acceptEncoding:Ljava/lang/String;

    goto :goto_30

    .line 114
    :cond_af
    const-string v4, "Content-Type"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 115
    iput-object v3, p0, Llibcore/net/http/RequestHeaders;->contentType:Ljava/lang/String;

    goto/16 :goto_30

    .line 116
    :cond_bb
    const-string v4, "Proxy-Authorization"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 117
    iput-object v3, p0, Llibcore/net/http/RequestHeaders;->proxyAuthorization:Ljava/lang/String;

    goto/16 :goto_30

    .line 120
    .end local v0           #fieldName:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_c7
    return-void
.end method

.method static synthetic access$002(Llibcore/net/http/RequestHeaders;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Llibcore/net/http/RequestHeaders;->noCache:Z

    return p1
.end method

.method static synthetic access$102(Llibcore/net/http/RequestHeaders;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Llibcore/net/http/RequestHeaders;->maxAgeSeconds:I

    return p1
.end method

.method static synthetic access$202(Llibcore/net/http/RequestHeaders;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Llibcore/net/http/RequestHeaders;->maxStaleSeconds:I

    return p1
.end method

.method static synthetic access$302(Llibcore/net/http/RequestHeaders;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Llibcore/net/http/RequestHeaders;->minFreshSeconds:I

    return p1
.end method

.method static synthetic access$402(Llibcore/net/http/RequestHeaders;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Llibcore/net/http/RequestHeaders;->onlyIfCached:Z

    return p1
.end method


# virtual methods
.method public addCookies(Ljava/util/Map;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, allCookieHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 286
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 287
    .local v2, key:Ljava/lang/String;
    const-string v3, "Cookie"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2a

    const-string v3, "Cookie2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 288
    :cond_2a
    iget-object v4, p0, Llibcore/net/http/RequestHeaders;->headers:Llibcore/net/http/RawHeaders;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v4, v2, v3}, Llibcore/net/http/RawHeaders;->addAll(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_8

    .line 291
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2           #key:Ljava/lang/String;
    :cond_36
    return-void
.end method

.method public getAcceptEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->acceptEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getConnection()Ljava/lang/String;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->connection:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()I
    .registers 2

    .prologue
    .line 163
    iget v0, p0, Llibcore/net/http/RequestHeaders;->contentLength:I

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Llibcore/net/http/RawHeaders;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->headers:Llibcore/net/http/RawHeaders;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getIfModifiedSince()Ljava/lang/String;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    return-object v0
.end method

.method public getIfNoneMatch()Ljava/lang/String;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAgeSeconds()I
    .registers 2

    .prologue
    .line 143
    iget v0, p0, Llibcore/net/http/RequestHeaders;->maxAgeSeconds:I

    return v0
.end method

.method public getMaxStaleSeconds()I
    .registers 2

    .prologue
    .line 147
    iget v0, p0, Llibcore/net/http/RequestHeaders;->maxStaleSeconds:I

    return v0
.end method

.method public getMinFreshSeconds()I
    .registers 2

    .prologue
    .line 151
    iget v0, p0, Llibcore/net/http/RequestHeaders;->minFreshSeconds:I

    return v0
.end method

.method public getProxyAuthorization()Ljava/lang/String;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->proxyAuthorization:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->transferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public hasAuthorization()Z
    .registers 2

    .prologue
    .line 159
    iget-boolean v0, p0, Llibcore/net/http/RequestHeaders;->hasAuthorization:Z

    return v0
.end method

.method public hasConditions()Z
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasConnectionClose()Z
    .registers 3

    .prologue
    .line 127
    const-string v0, "close"

    iget-object v1, p0, Llibcore/net/http/RequestHeaders;->connection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isChunked()Z
    .registers 3

    .prologue
    .line 123
    const-string v0, "chunked"

    iget-object v1, p0, Llibcore/net/http/RequestHeaders;->transferEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNoCache()Z
    .registers 2

    .prologue
    .line 139
    iget-boolean v0, p0, Llibcore/net/http/RequestHeaders;->noCache:Z

    return v0
.end method

.method public isOnlyIfCached()Z
    .registers 2

    .prologue
    .line 155
    iget-boolean v0, p0, Llibcore/net/http/RequestHeaders;->onlyIfCached:Z

    return v0
.end method

.method public setAcceptEncoding(Ljava/lang/String;)V
    .registers 4
    .parameter "acceptEncoding"

    .prologue
    .line 243
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->acceptEncoding:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 244
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->headers:Llibcore/net/http/RawHeaders;

    const-string v1, "Accept-Encoding"

    invoke-virtual {v0, v1}, Llibcore/net/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 246
    :cond_b
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->headers:Llibcore/net/http/RawHeaders;

    const-string v1, "Accept-Encoding"

    invoke-virtual {v0, v1, p1}, Llibcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iput-object p1, p0, Llibcore/net/http/RequestHeaders;->acceptEncoding:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setChunked()V
    .registers 4

    .prologue
    .line 203
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->transferEncoding:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 204
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->headers:Llibcore/net/http/RawHeaders;

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Llibcore/net/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 206
    :cond_b
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->headers:Llibcore/net/http/RawHeaders;

    const-string v1, "Transfer-Encoding"

    const-string v2, "chunked"

    invoke-virtual {v0, v1, v2}, Llibcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v0, "chunked"

    iput-object v0, p0, Llibcore/net/http/RequestHeaders;->transferEncoding:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setConnection(Ljava/lang/String;)V
    .registers 4
    .parameter "connection"

    .prologue
    .line 235
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->connection:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 236
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->headers:Llibcore/net/http/RawHeaders;

    const-string v1, "Connection"

    invoke-virtual {v0, v1}, Llibcore/net/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 238
    :cond_b
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->headers:Llibcore/net/http/RawHeaders;

    const-string v1, "Connection"

    invoke-virtual {v0, v1, p1}, Llibcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iput-object p1, p0, Llibcore/net/http/RequestHeaders;->connection:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setContentLength(I)V
    .registers 5
    .parameter "contentLength"

    .prologue
    .line 211
    iget v0, p0, Llibcore/net/http/RequestHeaders;->contentLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 212
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->headers:Llibcore/net/http/RawHeaders;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Llibcore/net/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 214
    :cond_c
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->headers:Llibcore/net/http/RawHeaders;

    const-string v1, "Content-Length"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Llibcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iput p1, p0, Llibcore/net/http/RequestHeaders;->contentLength:I

    .line 216
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 4
    .parameter "contentType"

    .prologue
    .line 251
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 252
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->headers:Llibcore/net/http/RawHeaders;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Llibcore/net/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 254
    :cond_b
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->headers:Llibcore/net/http/RawHeaders;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p1}, Llibcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iput-object p1, p0, Llibcore/net/http/RequestHeaders;->contentType:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .registers 4
    .parameter "host"

    .prologue
    .line 227
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->host:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 228
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->headers:Llibcore/net/http/RawHeaders;

    const-string v1, "Host"

    invoke-virtual {v0, v1}, Llibcore/net/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 230
    :cond_b
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->headers:Llibcore/net/http/RawHeaders;

    const-string v1, "Host"

    invoke-virtual {v0, v1, p1}, Llibcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iput-object p1, p0, Llibcore/net/http/RequestHeaders;->host:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setIfModifiedSince(Ljava/util/Date;)V
    .registers 5
    .parameter "date"

    .prologue
    .line 259
    iget-object v1, p0, Llibcore/net/http/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 260
    iget-object v1, p0, Llibcore/net/http/RequestHeaders;->headers:Llibcore/net/http/RawHeaders;

    const-string v2, "If-Modified-Since"

    invoke-virtual {v1, v2}, Llibcore/net/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 262
    :cond_b
    invoke-static {p1}, Llibcore/net/http/HttpDate;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, formattedDate:Ljava/lang/String;
    iget-object v1, p0, Llibcore/net/http/RequestHeaders;->headers:Llibcore/net/http/RawHeaders;

    const-string v2, "If-Modified-Since"

    invoke-virtual {v1, v2, v0}, Llibcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iput-object v0, p0, Llibcore/net/http/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public setIfNoneMatch(Ljava/lang/String;)V
    .registers 4
    .parameter "ifNoneMatch"

    .prologue
    .line 268
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 269
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->headers:Llibcore/net/http/RawHeaders;

    const-string v1, "If-None-Match"

    invoke-virtual {v0, v1}, Llibcore/net/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 271
    :cond_b
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->headers:Llibcore/net/http/RawHeaders;

    const-string v1, "If-None-Match"

    invoke-virtual {v0, v1, p1}, Llibcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iput-object p1, p0, Llibcore/net/http/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .registers 4
    .parameter "userAgent"

    .prologue
    .line 219
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->userAgent:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 220
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->headers:Llibcore/net/http/RawHeaders;

    const-string v1, "User-Agent"

    invoke-virtual {v0, v1}, Llibcore/net/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 222
    :cond_b
    iget-object v0, p0, Llibcore/net/http/RequestHeaders;->headers:Llibcore/net/http/RawHeaders;

    const-string v1, "User-Agent"

    invoke-virtual {v0, v1, p1}, Llibcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iput-object p1, p0, Llibcore/net/http/RequestHeaders;->userAgent:Ljava/lang/String;

    .line 224
    return-void
.end method
