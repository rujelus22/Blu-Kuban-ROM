.class final Ldbxyzptlk/o/g;
.super Lorg/apache/http/impl/DefaultConnectionReuseStrategy;
.source "panda.py"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 376
    invoke-direct {p0}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldbxyzptlk/o/b;)V
    .registers 2
    .parameter

    .prologue
    .line 376
    invoke-direct {p0}, Ldbxyzptlk/o/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 388
    if-nez p1, :cond_c

    .line 389
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_c
    if-nez p2, :cond_16

    .line 393
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_16
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v3

    .line 401
    const-string v0, "Transfer-Encoding"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 402
    if-eqz v0, :cond_33

    .line 403
    const-string v4, "chunked"

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 482
    :cond_32
    :goto_32
    return v2

    .line 407
    :cond_33
    const-string v0, "Content-Length"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_32

    array-length v4, v0

    if-ne v4, v1, :cond_32

    .line 412
    aget-object v0, v0, v2

    .line 414
    :try_start_40
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/NumberFormatException; {:try_start_40 .. :try_end_47} :catch_95

    move-result v0

    .line 415
    if-ltz v0, :cond_32

    .line 426
    :cond_4a
    const-string v0, "Connection"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v0

    .line 427
    invoke-interface {v0}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5c

    .line 428
    const-string v0, "Proxy-Connection"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v0

    .line 454
    :cond_5c
    invoke-interface {v0}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_87

    .line 456
    :try_start_62
    invoke-virtual {p0, v0}, Ldbxyzptlk/o/g;->createTokenIterator(Lorg/apache/http/HeaderIterator;)Lorg/apache/http/TokenIterator;

    move-result-object v4

    move v0, v2

    .line 458
    :cond_67
    :goto_67
    invoke-interface {v4}, Lorg/apache/http/TokenIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_83

    .line 459
    invoke-interface {v4}, Lorg/apache/http/TokenIterator;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 460
    const-string v6, "Close"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_32

    .line 462
    const-string v6, "Keep-Alive"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_7e
    .catch Lorg/apache/http/ParseException; {:try_start_62 .. :try_end_7e} :catch_93

    move-result v5

    if-eqz v5, :cond_67

    move v0, v1

    .line 465
    goto :goto_67

    .line 468
    :cond_83
    if-eqz v0, :cond_87

    move v2, v1

    .line 469
    goto :goto_32

    .line 482
    :cond_87
    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {v3, v0}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_91

    :goto_8f
    move v2, v1

    goto :goto_32

    :cond_91
    move v1, v2

    goto :goto_8f

    .line 472
    :catch_93
    move-exception v0

    goto :goto_32

    .line 418
    :catch_95
    move-exception v0

    goto :goto_32
.end method
