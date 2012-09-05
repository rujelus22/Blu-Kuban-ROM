.class public final Llibcore/net/http/HttpResponseCache;
.super Ljava/net/ResponseCache;
.source "HttpResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/net/http/HttpResponseCache$2;,
        Llibcore/net/http/HttpResponseCache$Entry;,
        Llibcore/net/http/HttpResponseCache$CacheRequestImpl;
    }
.end annotation


# static fields
.field private static final ENTRY_BODY:I = 0x1

.field private static final ENTRY_COUNT:I = 0x2

.field private static final ENTRY_METADATA:I = 0x0

.field private static final VERSION:I = 0x31191


# instance fields
.field private final cache:Llibcore/io/DiskLruCache;

.field private hitCount:I

.field private networkCount:I

.field private requestCount:I

.field private writeAbortCount:I

.field private writeSuccessCount:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .registers 6
    .parameter "directory"
    .parameter "maxSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    .line 78
    const v0, 0x31191

    const/4 v1, 0x2

    invoke-static {p1, v0, v1, p2, p3}, Llibcore/io/DiskLruCache;->open(Ljava/io/File;IIJ)Llibcore/io/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/http/HttpResponseCache;->cache:Llibcore/io/DiskLruCache;

    .line 79
    return-void
.end method

.method static synthetic access$208(Llibcore/net/http/HttpResponseCache;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Llibcore/net/http/HttpResponseCache;->writeSuccessCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Llibcore/net/http/HttpResponseCache;->writeSuccessCount:I

    return v0
.end method

.method static synthetic access$308(Llibcore/net/http/HttpResponseCache;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Llibcore/net/http/HttpResponseCache;->writeAbortCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Llibcore/net/http/HttpResponseCache;->writeAbortCount:I

    return v0
.end method

.method private getHttpEngine(Ljava/net/HttpURLConnection;)Llibcore/net/http/HttpEngine;
    .registers 3
    .parameter "httpConnection"

    .prologue
    .line 193
    instance-of v0, p1, Llibcore/net/http/HttpURLConnectionImpl;

    if-eqz v0, :cond_b

    .line 194
    check-cast p1, Llibcore/net/http/HttpURLConnectionImpl;

    .end local p1
    invoke-virtual {p1}, Llibcore/net/http/HttpURLConnectionImpl;->getHttpEngine()Llibcore/net/http/HttpEngine;

    move-result-object v0

    .line 198
    :goto_a
    return-object v0

    .line 195
    .restart local p1
    :cond_b
    instance-of v0, p1, Llibcore/net/http/HttpsURLConnectionImpl;

    if-eqz v0, :cond_16

    .line 196
    check-cast p1, Llibcore/net/http/HttpsURLConnectionImpl;

    .end local p1
    invoke-virtual {p1}, Llibcore/net/http/HttpsURLConnectionImpl;->getHttpEngine()Llibcore/net/http/HttpEngine;

    move-result-object v0

    goto :goto_a

    .line 198
    .restart local p1
    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private newBodyInputStream(Llibcore/io/DiskLruCache$Snapshot;)Ljava/io/InputStream;
    .registers 4
    .parameter "snapshot"

    .prologue
    .line 123
    new-instance v0, Llibcore/net/http/HttpResponseCache$1;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Llibcore/io/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Llibcore/net/http/HttpResponseCache$1;-><init>(Llibcore/net/http/HttpResponseCache;Ljava/io/InputStream;Llibcore/io/DiskLruCache$Snapshot;)V

    return-object v0
.end method

.method private uriToKey(Ljava/net/URI;)Ljava/lang/String;
    .registers 7
    .parameter "uri"

    .prologue
    .line 83
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 84
    .local v2, messageDigest:Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 85
    .local v1, md5bytes:[B
    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/lang/IntegralToString;->bytesToHexString([BZ)Ljava/lang/String;
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_18} :catch_1a

    move-result-object v3

    return-object v3

    .line 86
    .end local v1           #md5bytes:[B
    .end local v2           #messageDigest:Ljava/security/MessageDigest;
    :catch_1a
    move-exception v0

    .line 87
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method


# virtual methods
.method public get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .registers 12
    .parameter "uri"
    .parameter "requestMethod"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    .prologue
    .local p3, requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v5, 0x0

    .line 93
    invoke-direct {p0, p1}, Llibcore/net/http/HttpResponseCache;->uriToKey(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, key:Ljava/lang/String;
    :try_start_5
    iget-object v6, p0, Llibcore/net/http/HttpResponseCache;->cache:Llibcore/io/DiskLruCache;

    invoke-virtual {v6, v3}, Llibcore/io/DiskLruCache;->get(Ljava/lang/String;)Llibcore/io/DiskLruCache$Snapshot;

    move-result-object v4

    .line 98
    .local v4, snapshot:Llibcore/io/DiskLruCache$Snapshot;
    if-nez v4, :cond_e

    .line 113
    .end local v4           #snapshot:Llibcore/io/DiskLruCache$Snapshot;
    :goto_d
    return-object v5

    .line 101
    .restart local v4       #snapshot:Llibcore/io/DiskLruCache$Snapshot;
    :cond_e
    new-instance v2, Llibcore/net/http/HttpResponseCache$Entry;

    new-instance v6, Ljava/io/BufferedInputStream;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Llibcore/io/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v6}, Llibcore/net/http/HttpResponseCache$Entry;-><init>(Ljava/io/InputStream;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1d} :catch_27

    .line 107
    .local v2, entry:Llibcore/net/http/HttpResponseCache$Entry;
    invoke-virtual {v2, p1, p2, p3}, Llibcore/net/http/HttpResponseCache$Entry;->matches(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v6

    if-nez v6, :cond_29

    .line 108
    invoke-virtual {v4}, Llibcore/io/DiskLruCache$Snapshot;->close()V

    goto :goto_d

    .line 102
    .end local v2           #entry:Llibcore/net/http/HttpResponseCache$Entry;
    .end local v4           #snapshot:Llibcore/io/DiskLruCache$Snapshot;
    :catch_27
    move-exception v1

    .line 104
    .local v1, e:Ljava/io/IOException;
    goto :goto_d

    .line 112
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #entry:Llibcore/net/http/HttpResponseCache$Entry;
    .restart local v4       #snapshot:Llibcore/io/DiskLruCache$Snapshot;
    :cond_29
    invoke-direct {p0, v4}, Llibcore/net/http/HttpResponseCache;->newBodyInputStream(Llibcore/io/DiskLruCache$Snapshot;)Ljava/io/InputStream;

    move-result-object v0

    .line 113
    .local v0, body:Ljava/io/InputStream;
    #calls: Llibcore/net/http/HttpResponseCache$Entry;->isHttps()Z
    invoke-static {v2}, Llibcore/net/http/HttpResponseCache$Entry;->access$000(Llibcore/net/http/HttpResponseCache$Entry;)Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-virtual {v2, v0}, Llibcore/net/http/HttpResponseCache$Entry;->newSecureCacheResponse(Ljava/io/InputStream;)Ljava/net/SecureCacheResponse;

    move-result-object v5

    goto :goto_d

    :cond_38
    invoke-virtual {v2, v0}, Llibcore/net/http/HttpResponseCache$Entry;->newCacheResponse(Ljava/io/InputStream;)Ljava/net/CacheResponse;

    move-result-object v5

    goto :goto_d
.end method

.method public getCache()Llibcore/io/DiskLruCache;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache;->cache:Llibcore/io/DiskLruCache;

    return-object v0
.end method

.method public declared-synchronized getHitCount()I
    .registers 2

    .prologue
    .line 237
    monitor-enter p0

    :try_start_1
    iget v0, p0, Llibcore/net/http/HttpResponseCache;->hitCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNetworkCount()I
    .registers 2

    .prologue
    .line 233
    monitor-enter p0

    :try_start_1
    iget v0, p0, Llibcore/net/http/HttpResponseCache;->networkCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequestCount()I
    .registers 2

    .prologue
    .line 241
    monitor-enter p0

    :try_start_1
    iget v0, p0, Llibcore/net/http/HttpResponseCache;->requestCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWriteAbortCount()I
    .registers 2

    .prologue
    .line 207
    monitor-enter p0

    :try_start_1
    iget v0, p0, Llibcore/net/http/HttpResponseCache;->writeAbortCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWriteSuccessCount()I
    .registers 2

    .prologue
    .line 211
    monitor-enter p0

    :try_start_1
    iget v0, p0, Llibcore/net/http/HttpResponseCache;->writeSuccessCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .registers 15
    .parameter "uri"
    .parameter "urlConnection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 132
    instance-of v10, p2, Ljava/net/HttpURLConnection;

    if-nez v10, :cond_6

    .line 188
    :cond_5
    :goto_5
    return-object v9

    :cond_6
    move-object v3, p2

    .line 136
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 137
    .local v3, httpConnection:Ljava/net/HttpURLConnection;
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, requestMethod:Ljava/lang/String;
    invoke-direct {p0, p1}, Llibcore/net/http/HttpResponseCache;->uriToKey(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, key:Ljava/lang/String;
    const-string v10, "POST"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_29

    const-string v10, "PUT"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_29

    const-string v10, "DELETE"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_31

    .line 144
    :cond_29
    :try_start_29
    iget-object v10, p0, Llibcore/net/http/HttpResponseCache;->cache:Llibcore/io/DiskLruCache;

    invoke-virtual {v10, v5}, Llibcore/io/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2e} :catch_2f

    goto :goto_5

    .line 145
    :catch_2f
    move-exception v10

    goto :goto_5

    .line 149
    :cond_31
    const-string v10, "GET"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 158
    invoke-direct {p0, v3}, Llibcore/net/http/HttpResponseCache;->getHttpEngine(Ljava/net/HttpURLConnection;)Llibcore/net/http/HttpEngine;

    move-result-object v4

    .line 159
    .local v4, httpEngine:Llibcore/net/http/HttpEngine;
    if-eqz v4, :cond_5

    .line 164
    invoke-virtual {v4}, Llibcore/net/http/HttpEngine;->getResponseHeaders()Llibcore/net/http/ResponseHeaders;

    move-result-object v7

    .line 165
    .local v7, response:Llibcore/net/http/ResponseHeaders;
    invoke-virtual {v7}, Llibcore/net/http/ResponseHeaders;->hasVaryAll()Z

    move-result v10

    if-nez v10, :cond_5

    .line 169
    invoke-virtual {v4}, Llibcore/net/http/HttpEngine;->getRequestHeaders()Llibcore/net/http/RequestHeaders;

    move-result-object v10

    invoke-virtual {v10}, Llibcore/net/http/RequestHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v10

    invoke-virtual {v7}, Llibcore/net/http/ResponseHeaders;->getVaryFields()Ljava/util/Set;

    move-result-object v11

    invoke-virtual {v10, v11}, Llibcore/net/http/RawHeaders;->getAll(Ljava/util/Set;)Llibcore/net/http/RawHeaders;

    move-result-object v8

    .line 171
    .local v8, varyHeaders:Llibcore/net/http/RawHeaders;
    new-instance v2, Llibcore/net/http/HttpResponseCache$Entry;

    invoke-direct {v2, p1, v8, v3}, Llibcore/net/http/HttpResponseCache$Entry;-><init>(Ljava/net/URI;Llibcore/net/http/RawHeaders;Ljava/net/HttpURLConnection;)V

    .line 172
    .local v2, entry:Llibcore/net/http/HttpResponseCache$Entry;
    const/4 v1, 0x0

    .line 174
    .local v1, editor:Llibcore/io/DiskLruCache$Editor;
    :try_start_5f
    iget-object v10, p0, Llibcore/net/http/HttpResponseCache;->cache:Llibcore/io/DiskLruCache;

    invoke-virtual {v10, v5}, Llibcore/io/DiskLruCache;->edit(Ljava/lang/String;)Llibcore/io/DiskLruCache$Editor;

    move-result-object v1

    .line 175
    if-eqz v1, :cond_5

    .line 178
    invoke-virtual {v2, v1}, Llibcore/net/http/HttpResponseCache$Entry;->writeTo(Llibcore/io/DiskLruCache$Editor;)V

    .line 179
    new-instance v10, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;

    invoke-direct {v10, p0, v1}, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;-><init>(Llibcore/net/http/HttpResponseCache;Llibcore/io/DiskLruCache$Editor;)V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_6f} :catch_71

    move-object v9, v10

    goto :goto_5

    .line 180
    :catch_71
    move-exception v0

    .line 183
    .local v0, e:Ljava/io/IOException;
    if-eqz v1, :cond_5

    .line 184
    :try_start_74
    invoke-virtual {v1}, Llibcore/io/DiskLruCache$Editor;->abort()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_5

    .line 186
    :catch_78
    move-exception v10

    goto :goto_5
.end method

.method declared-synchronized trackConditionalCacheHit()V
    .registers 2

    .prologue
    .line 229
    monitor-enter p0

    :try_start_1
    iget v0, p0, Llibcore/net/http/HttpResponseCache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llibcore/net/http/HttpResponseCache;->hitCount:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 230
    monitor-exit p0

    return-void

    .line 229
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized trackResponse(Llibcore/net/http/ResponseSource;)V
    .registers 4
    .parameter "source"

    .prologue
    .line 215
    monitor-enter p0

    :try_start_1
    iget v0, p0, Llibcore/net/http/HttpResponseCache;->requestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llibcore/net/http/HttpResponseCache;->requestCount:I

    .line 217
    sget-object v0, Llibcore/net/http/HttpResponseCache$2;->$SwitchMap$libcore$net$http$ResponseSource:[I

    invoke-virtual {p1}, Llibcore/net/http/ResponseSource;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_1b

    packed-switch v0, :pswitch_data_26

    .line 226
    :goto_12
    monitor-exit p0

    return-void

    .line 219
    :pswitch_14
    :try_start_14
    iget v0, p0, Llibcore/net/http/HttpResponseCache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llibcore/net/http/HttpResponseCache;->hitCount:I
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1b

    goto :goto_12

    .line 215
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 223
    :pswitch_1e
    :try_start_1e
    iget v0, p0, Llibcore/net/http/HttpResponseCache;->networkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llibcore/net/http/HttpResponseCache;->networkCount:I
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_1b

    goto :goto_12

    .line 217
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_14
        :pswitch_1e
        :pswitch_1e
    .end packed-switch
.end method
