.class final Llibcore/net/http/HttpResponseCache$Entry;
.super Ljava/lang/Object;
.source "HttpResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/net/http/HttpResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field private final cipherSuite:Ljava/lang/String;

.field private final localCertificates:[Ljava/security/cert/Certificate;

.field private final peerCertificates:[Ljava/security/cert/Certificate;

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Llibcore/net/http/RawHeaders;

.field private final uri:Ljava/lang/String;

.field private final varyHeaders:Llibcore/net/http/RawHeaders;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 9
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 345
    :try_start_3
    invoke-static {p1}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    .line 346
    invoke-static {p1}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->requestMethod:Ljava/lang/String;

    .line 347
    new-instance v4, Llibcore/net/http/RawHeaders;

    invoke-direct {v4}, Llibcore/net/http/RawHeaders;-><init>()V

    iput-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->varyHeaders:Llibcore/net/http/RawHeaders;

    .line 348
    invoke-direct {p0, p1}, Llibcore/net/http/HttpResponseCache$Entry;->readInt(Ljava/io/InputStream;)I

    move-result v3

    .line 349
    .local v3, varyRequestHeaderLineCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1b
    if-ge v1, v3, :cond_29

    .line 350
    iget-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->varyHeaders:Llibcore/net/http/RawHeaders;

    invoke-static {p1}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Llibcore/net/http/RawHeaders;->addLine(Ljava/lang/String;)V

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 353
    :cond_29
    new-instance v4, Llibcore/net/http/RawHeaders;

    invoke-direct {v4}, Llibcore/net/http/RawHeaders;-><init>()V

    iput-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->responseHeaders:Llibcore/net/http/RawHeaders;

    .line 354
    iget-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->responseHeaders:Llibcore/net/http/RawHeaders;

    invoke-static {p1}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Llibcore/net/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 355
    invoke-direct {p0, p1}, Llibcore/net/http/HttpResponseCache$Entry;->readInt(Ljava/io/InputStream;)I

    move-result v2

    .line 356
    .local v2, responseHeaderLineCount:I
    const/4 v1, 0x0

    :goto_3e
    if-ge v1, v2, :cond_4c

    .line 357
    iget-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->responseHeaders:Llibcore/net/http/RawHeaders;

    invoke-static {p1}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Llibcore/net/http/RawHeaders;->addLine(Ljava/lang/String;)V

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 360
    :cond_4c
    invoke-direct {p0}, Llibcore/net/http/HttpResponseCache$Entry;->isHttps()Z

    move-result v4

    if-eqz v4, :cond_96

    .line 361
    invoke-static {p1}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, blank:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_80

    .line 363
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expected \"\" but was \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_7b
    .catchall {:try_start_3 .. :try_end_7b} :catchall_7b

    .line 374
    .end local v0           #blank:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #responseHeaderLineCount:I
    .end local v3           #varyRequestHeaderLineCount:I
    :catchall_7b
    move-exception v4

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v4

    .line 365
    .restart local v0       #blank:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #responseHeaderLineCount:I
    .restart local v3       #varyRequestHeaderLineCount:I
    :cond_80
    :try_start_80
    invoke-static {p1}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    .line 366
    invoke-direct {p0, p1}, Llibcore/net/http/HttpResponseCache$Entry;->readCertArray(Ljava/io/InputStream;)[Ljava/security/cert/Certificate;

    move-result-object v4

    iput-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    .line 367
    invoke-direct {p0, p1}, Llibcore/net/http/HttpResponseCache$Entry;->readCertArray(Ljava/io/InputStream;)[Ljava/security/cert/Certificate;

    move-result-object v4

    iput-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    :try_end_92
    .catchall {:try_start_80 .. :try_end_92} :catchall_7b

    .line 374
    .end local v0           #blank:Ljava/lang/String;
    :goto_92
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 376
    return-void

    .line 369
    :cond_96
    const/4 v4, 0x0

    :try_start_97
    iput-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    .line 370
    const/4 v4, 0x0

    iput-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    .line 371
    const/4 v4, 0x0

    iput-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    :try_end_9f
    .catchall {:try_start_97 .. :try_end_9f} :catchall_7b

    goto :goto_92
.end method

.method public constructor <init>(Ljava/net/URI;Llibcore/net/http/RawHeaders;Ljava/net/HttpURLConnection;)V
    .registers 8
    .parameter "uri"
    .parameter "varyHeaders"
    .parameter "httpConnection"

    .prologue
    const/4 v3, 0x0

    .line 378
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 379
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llibcore/net/http/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    .line 380
    iput-object p2, p0, Llibcore/net/http/HttpResponseCache$Entry;->varyHeaders:Llibcore/net/http/RawHeaders;

    .line 381
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llibcore/net/http/HttpResponseCache$Entry;->requestMethod:Ljava/lang/String;

    .line 382
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Llibcore/net/http/RawHeaders;->fromMultimap(Ljava/util/Map;)Llibcore/net/http/RawHeaders;

    move-result-object v2

    iput-object v2, p0, Llibcore/net/http/HttpResponseCache$Entry;->responseHeaders:Llibcore/net/http/RawHeaders;

    .line 384
    invoke-direct {p0}, Llibcore/net/http/HttpResponseCache$Entry;->isHttps()Z

    move-result v2

    if-eqz v2, :cond_39

    move-object v0, p3

    .line 385
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 386
    .local v0, httpsConnection:Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llibcore/net/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    .line 387
    const/4 v1, 0x0

    .line 389
    .local v1, peerCertificatesNonFinal:[Ljava/security/cert/Certificate;
    :try_start_2c
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;
    :try_end_2f
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_2c .. :try_end_2f} :catch_40

    move-result-object v1

    .line 392
    :goto_30
    iput-object v1, p0, Llibcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    .line 393
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2

    iput-object v2, p0, Llibcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    .line 399
    .end local v0           #httpsConnection:Ljavax/net/ssl/HttpsURLConnection;
    .end local v1           #peerCertificatesNonFinal:[Ljava/security/cert/Certificate;
    :goto_38
    return-void

    .line 395
    :cond_39
    iput-object v3, p0, Llibcore/net/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    .line 396
    iput-object v3, p0, Llibcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    .line 397
    iput-object v3, p0, Llibcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    goto :goto_38

    .line 390
    .restart local v0       #httpsConnection:Ljavax/net/ssl/HttpsURLConnection;
    .restart local v1       #peerCertificatesNonFinal:[Ljava/security/cert/Certificate;
    :catch_40
    move-exception v2

    goto :goto_30
.end method

.method static synthetic access$000(Llibcore/net/http/HttpResponseCache$Entry;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 288
    invoke-direct {p0}, Llibcore/net/http/HttpResponseCache$Entry;->isHttps()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Llibcore/net/http/HttpResponseCache$Entry;)Llibcore/net/http/RawHeaders;
    .registers 2
    .parameter "x0"

    .prologue
    .line 288
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry;->responseHeaders:Llibcore/net/http/RawHeaders;

    return-object v0
.end method

.method static synthetic access$500(Llibcore/net/http/HttpResponseCache$Entry;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 288
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;
    .registers 2
    .parameter "x0"

    .prologue
    .line 288
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method static synthetic access$700(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;
    .registers 2
    .parameter "x0"

    .prologue
    .line 288
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method private isHttps()Z
    .registers 3

    .prologue
    .line 430
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readCertArray(Ljava/io/InputStream;)[Ljava/security/cert/Certificate;
    .registers 10
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-direct {p0, p1}, Llibcore/net/http/HttpResponseCache$Entry;->readInt(Ljava/io/InputStream;)I

    move-result v4

    .line 444
    .local v4, length:I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_9

    .line 445
    const/4 v6, 0x0

    .line 456
    :cond_8
    return-object v6

    .line 448
    :cond_9
    :try_start_9
    const-string v7, "X.509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 449
    .local v1, certificateFactory:Ljava/security/cert/CertificateFactory;
    new-array v6, v4, [Ljava/security/cert/Certificate;

    .line 450
    .local v6, result:[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_12
    array-length v7, v6

    if-ge v3, v7, :cond_8

    .line 451
    invoke-static {p1}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 452
    .local v5, line:Ljava/lang/String;
    sget-object v7, Ljava/nio/charset/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-static {v7}, Llibcore/io/Base64;->decode([B)[B

    move-result-object v0

    .line 453
    .local v0, bytes:[B
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    aput-object v7, v6, v3
    :try_end_2e
    .catch Ljava/security/cert/CertificateException; {:try_start_9 .. :try_end_2e} :catch_31

    .line 450
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 457
    .end local v0           #bytes:[B
    .end local v1           #certificateFactory:Ljava/security/cert/CertificateFactory;
    .end local v3           #i:I
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #result:[Ljava/security/cert/Certificate;
    :catch_31
    move-exception v2

    .line 458
    .local v2, e:Ljava/security/cert/CertificateException;
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method private readInt(Ljava/io/InputStream;)I
    .registers 7
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    invoke-static {p1}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, intString:Ljava/lang/String;
    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    return v2

    .line 437
    :catch_9
    move-exception v0

    .line 438
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected an int but was \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private writeCertArray(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V
    .registers 12
    .parameter "writer"
    .parameter "certificates"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    if-nez p2, :cond_8

    .line 464
    const-string v7, "-1\n"

    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 477
    :cond_7
    return-void

    .line 468
    :cond_8
    :try_start_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    array-length v8, p2

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 469
    move-object v0, p2

    .local v0, arr$:[Ljava/security/cert/Certificate;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_26
    if-ge v4, v5, :cond_7

    aget-object v2, v0, v4

    .line 470
    .local v2, certificate:Ljava/security/cert/Certificate;
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    .line 471
    .local v1, bytes:[B
    invoke-static {v1}, Llibcore/io/Base64;->encode([B)Ljava/lang/String;

    move-result-object v6

    .line 472
    .local v6, line:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_8 .. :try_end_48} :catch_4b

    .line 469
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 474
    .end local v0           #arr$:[Ljava/security/cert/Certificate;
    .end local v1           #bytes:[B
    .end local v2           #certificate:Ljava/security/cert/Certificate;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #line:Ljava/lang/String;
    :catch_4b
    move-exception v3

    .line 475
    .local v3, e:Ljava/security/cert/CertificateEncodingException;
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7, v3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method


# virtual methods
.method public matches(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Z
    .registers 6
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
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 481
    .local p3, requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry;->requestMethod:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance v0, Llibcore/net/http/ResponseHeaders;

    iget-object v1, p0, Llibcore/net/http/HttpResponseCache$Entry;->responseHeaders:Llibcore/net/http/RawHeaders;

    invoke-direct {v0, p1, v1}, Llibcore/net/http/ResponseHeaders;-><init>(Ljava/net/URI;Llibcore/net/http/RawHeaders;)V

    iget-object v1, p0, Llibcore/net/http/HttpResponseCache$Entry;->varyHeaders:Llibcore/net/http/RawHeaders;

    invoke-virtual {v1}, Llibcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Llibcore/net/http/ResponseHeaders;->varyMatches(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public newCacheResponse(Ljava/io/InputStream;)Ljava/net/CacheResponse;
    .registers 3
    .parameter "in"

    .prologue
    .line 488
    new-instance v0, Llibcore/net/http/HttpResponseCache$Entry$1;

    invoke-direct {v0, p0, p1}, Llibcore/net/http/HttpResponseCache$Entry$1;-><init>(Llibcore/net/http/HttpResponseCache$Entry;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public newSecureCacheResponse(Ljava/io/InputStream;)Ljava/net/SecureCacheResponse;
    .registers 3
    .parameter "in"

    .prologue
    .line 500
    new-instance v0, Llibcore/net/http/HttpResponseCache$Entry$2;

    invoke-direct {v0, p0, p1}, Llibcore/net/http/HttpResponseCache$Entry$2;-><init>(Llibcore/net/http/HttpResponseCache$Entry;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public writeTo(Llibcore/io/DiskLruCache$Editor;)V
    .registers 8
    .parameter "editor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    .line 402
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Llibcore/io/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v1

    .line 403
    .local v1, out:Ljava/io/OutputStream;
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 405
    .local v2, writer:Ljava/io/Writer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->requestMethod:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->varyHeaders:Llibcore/net/http/RawHeaders;

    invoke-virtual {v4}, Llibcore/net/http/RawHeaders;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 408
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5e
    iget-object v3, p0, Llibcore/net/http/HttpResponseCache$Entry;->varyHeaders:Llibcore/net/http/RawHeaders;

    invoke-virtual {v3}, Llibcore/net/http/RawHeaders;->length()I

    move-result v3

    if-ge v0, v3, :cond_93

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->varyHeaders:Llibcore/net/http/RawHeaders;

    invoke-virtual {v4, v0}, Llibcore/net/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->varyHeaders:Llibcore/net/http/RawHeaders;

    invoke-virtual {v4, v0}, Llibcore/net/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 413
    :cond_93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->responseHeaders:Llibcore/net/http/RawHeaders;

    invoke-virtual {v4}, Llibcore/net/http/RawHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->responseHeaders:Llibcore/net/http/RawHeaders;

    invoke-virtual {v4}, Llibcore/net/http/RawHeaders;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 415
    const/4 v0, 0x0

    :goto_cc
    iget-object v3, p0, Llibcore/net/http/HttpResponseCache$Entry;->responseHeaders:Llibcore/net/http/RawHeaders;

    invoke-virtual {v3}, Llibcore/net/http/RawHeaders;->length()I

    move-result v3

    if-ge v0, v3, :cond_101

    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->responseHeaders:Llibcore/net/http/RawHeaders;

    invoke-virtual {v4, v0}, Llibcore/net/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->responseHeaders:Llibcore/net/http/RawHeaders;

    invoke-virtual {v4, v0}, Llibcore/net/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_cc

    .line 420
    :cond_101
    invoke-direct {p0}, Llibcore/net/http/HttpResponseCache$Entry;->isHttps()Z

    move-result v3

    if-eqz v3, :cond_12a

    .line 421
    invoke-virtual {v2, v5}, Ljava/io/BufferedWriter;->write(I)V

    .line 422
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 423
    iget-object v3, p0, Llibcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    invoke-direct {p0, v2, v3}, Llibcore/net/http/HttpResponseCache$Entry;->writeCertArray(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    .line 424
    iget-object v3, p0, Llibcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    invoke-direct {p0, v2, v3}, Llibcore/net/http/HttpResponseCache$Entry;->writeCertArray(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    .line 426
    :cond_12a
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 427
    return-void
.end method
