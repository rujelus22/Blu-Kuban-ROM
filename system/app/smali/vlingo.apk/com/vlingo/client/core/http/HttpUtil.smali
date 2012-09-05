.class public Lcom/vlingo/client/core/http/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# static fields
.field public static CR:Ljava/lang/String; = null

.field public static CRLF:Ljava/lang/String; = null

.field public static CRLF_BYTES:[B = null

.field public static CR_CHAR:C = '\u0000'

.field public static final HEADER_CONNECTION:Ljava/lang/String; = "Connection"

.field public static final HEADER_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-type"

.field public static final HEADER_COOKIE:Ljava/lang/String; = "Cookie"

.field public static final HEADER_SET_COOKIE:Ljava/lang/String; = "Set-Cookie"

.field public static final HEADER_STATUS:Ljava/lang/String; = "STATUS"

.field public static final HEADER_TRANSFER_ENCODING:Ljava/lang/String; = "Transfer-Encoding"

.field public static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static LF:Ljava/lang/String; = null

.field public static LF_CHAR:C = '\u0000'

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_HEAD:Ljava/lang/String; = "HEAD"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final VAL_CHUNKED:Ljava/lang/String; = "chunked"

.field public static final VAL_CLOSE:Ljava/lang/String; = "Close"

.field public static final VAL_KEEP_ALIVE:Ljava/lang/String; = "keep-alive"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34
    const/16 v0, 0xa

    sput-char v0, Lcom/vlingo/client/core/http/HttpUtil;->LF_CHAR:C

    .line 35
    const/16 v0, 0xd

    sput-char v0, Lcom/vlingo/client/core/http/HttpUtil;->CR_CHAR:C

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Lcom/vlingo/client/core/http/HttpUtil;->CR_CHAR:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/core/http/HttpUtil;->CR:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Lcom/vlingo/client/core/http/HttpUtil;->LF_CHAR:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/core/http/HttpUtil;->LF:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Lcom/vlingo/client/core/http/HttpUtil;->CR_CHAR:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Lcom/vlingo/client/core/http/HttpUtil;->LF_CHAR:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/core/http/HttpUtil;->CRLF:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/vlingo/client/core/http/HttpUtil;->CRLF:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/core/http/HttpUtil;->CRLF_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToString([B)Ljava/lang/String;
    .registers 4
    .parameter "arr"

    .prologue
    .line 271
    if-nez p0, :cond_5

    .line 272
    :try_start_2
    const-string v1, "null"

    .line 279
    :goto_4
    return-object v1

    .line 273
    :cond_5
    array-length v1, p0

    if-nez v1, :cond_b

    .line 274
    const-string v1, ""

    goto :goto_4

    .line 276
    :cond_b
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_12} :catch_13

    goto :goto_4

    .line 278
    :catch_13
    move-exception v0

    .line 279
    .local v0, uee:Ljava/io/UnsupportedEncodingException;
    const-string v1, "unsupported encoding: UTF-8"

    goto :goto_4
.end method

.method public static bytesToString([BII)Ljava/lang/String;
    .registers 8
    .parameter "buff"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 285
    add-int v0, p1, p2

    .line 286
    .local v0, end:I
    const-string v2, ""

    .line 287
    .local v2, str:Ljava/lang/String;
    move v1, p1

    .local v1, index:I
    :goto_5
    if-ge v1, v0, :cond_36

    .line 288
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_20

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 291
    :cond_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 293
    :cond_36
    return-object v2
.end method

.method public static genAtr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/vlingo/client/core/util/XmlUtils;->xmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheControlHeaders(Ljavax/microedition/io/HttpConnection;)Ljava/util/Hashtable;
    .registers 12
    .parameter "conn"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/microedition/io/HttpConnection;",
            ")",
            "Ljava/util/Hashtable",
            "<**>;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 434
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 435
    .local v5, result:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "cache-control"

    invoke-static {v7, p0}, Lcom/vlingo/client/core/http/HttpUtil;->getHttpResponseHeader(Ljava/lang/String;Ljavax/microedition/io/HttpConnection;)Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, header:Ljava/lang/String;
    if-eqz v1, :cond_50

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_50

    .line 438
    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v9, :cond_46

    .line 439
    const/16 v7, 0x2c

    invoke-static {v1, v7}, Lcom/vlingo/client/core/util/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v4

    .line 442
    .local v4, parts:[Ljava/lang/String;
    :goto_23
    const/4 v2, 0x0

    .local v2, i:I
    :goto_24
    array-length v7, v4

    if-ge v2, v7, :cond_50

    .line 445
    const-string v7, "="

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 446
    .local v0, eqPos:I
    if-eq v0, v9, :cond_4c

    .line 447
    invoke-virtual {v1, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 448
    .local v3, key:Ljava/lang/String;
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v0

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 454
    .local v6, value:Ljava/lang/String;
    :goto_40
    invoke-virtual {v5, v3, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 441
    .end local v0           #eqPos:I
    .end local v2           #i:I
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #parts:[Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_46
    const/4 v7, 0x1

    new-array v4, v7, [Ljava/lang/String;

    aput-object v1, v4, v10

    .restart local v4       #parts:[Ljava/lang/String;
    goto :goto_23

    .line 451
    .restart local v0       #eqPos:I
    .restart local v2       #i:I
    :cond_4c
    move-object v3, v1

    .line 452
    .restart local v3       #key:Ljava/lang/String;
    const-string v6, "1"

    .restart local v6       #value:Ljava/lang/String;
    goto :goto_40

    .line 457
    .end local v0           #eqPos:I
    .end local v2           #i:I
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #parts:[Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_50
    return-object v5
.end method

.method public static getCookies(Ljava/util/Hashtable;)Ljava/lang/String;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    .local p0, cookies:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 302
    .local v1, iter:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 303
    .local v0, buffer:Ljava/lang/StringBuffer;
    :goto_9
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 304
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 305
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 306
    .local v3, value:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_26

    .line 307
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    :cond_26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9

    .line 311
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_41
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getDomain(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "url"

    .prologue
    .line 461
    const/4 v1, 0x0

    .line 463
    .local v1, theURL:Ljava/net/URL;
    :try_start_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_6} :catch_10

    .end local v1           #theURL:Ljava/net/URL;
    .local v2, theURL:Ljava/net/URL;
    move-object v1, v2

    .line 468
    .end local v2           #theURL:Ljava/net/URL;
    .restart local v1       #theURL:Ljava/net/URL;
    :goto_7
    if-eqz v1, :cond_9

    .line 472
    :cond_9
    if-eqz v1, :cond_33

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    :goto_f
    return-object v3

    .line 464
    :catch_10
    move-exception v0

    .line 465
    .local v0, e:Ljava/net/MalformedURLException;
    const-string v3, "VLG_HttpUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDomain caught MalformedURLException on \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_7

    .line 472
    .end local v0           #e:Ljava/net/MalformedURLException;
    :cond_33
    const/4 v3, 0x0

    goto :goto_f
.end method

.method public static getHttpResponseHeader(Ljava/lang/String;Ljavax/microedition/io/HttpConnection;)Ljava/lang/String;
    .registers 8
    .parameter "headerName"
    .parameter "conn"

    .prologue
    .line 414
    const-string v2, ""

    .line 415
    .local v2, key:Ljava/lang/String;
    const/4 v1, 0x0

    .line 417
    .local v1, i:I
    :goto_3
    :try_start_3
    invoke-interface {p1, v1}, Ljavax/microedition/io/HttpConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 418
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 419
    invoke-interface {p1, v1}, Ljavax/microedition/io/HttpConnection;->getHeaderField(I)Ljava/lang/String;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_12} :catch_18

    move-result-object v3

    .line 420
    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_15

    .line 425
    .end local v3           #value:Ljava/lang/String;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 427
    :catch_18
    move-exception v0

    .line 428
    .local v0, ex:Ljava/io/IOException;
    const-string v4, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    .end local v0           #ex:Ljava/io/IOException;
    :cond_22
    return-object v2
.end method

.method public static getPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "url"

    .prologue
    .line 476
    const/4 v1, 0x0

    .line 478
    .local v1, theURL:Ljava/net/URL;
    :try_start_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_6} :catch_e

    .end local v1           #theURL:Ljava/net/URL;
    .local v2, theURL:Ljava/net/URL;
    move-object v1, v2

    .line 482
    .end local v2           #theURL:Ljava/net/URL;
    .restart local v1       #theURL:Ljava/net/URL;
    :goto_7
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    :goto_d
    return-object v3

    .line 479
    :catch_e
    move-exception v0

    .line 480
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_7

    .line 482
    .end local v0           #e:Ljava/net/MalformedURLException;
    :cond_13
    const/4 v3, 0x0

    goto :goto_d
.end method

.method public static httpStatusCodeToString(I)Ljava/lang/String;
    .registers 2
    .parameter "statusCode"

    .prologue
    .line 369
    sparse-switch p0, :sswitch_data_2a

    .line 407
    const-string v0, "Unknown"

    .line 410
    .local v0, statusMessage:Ljava/lang/String;
    :goto_5
    return-object v0

    .line 371
    .end local v0           #statusMessage:Ljava/lang/String;
    :sswitch_6
    const-string v0, "OK"

    .line 372
    .restart local v0       #statusMessage:Ljava/lang/String;
    goto :goto_5

    .line 374
    .end local v0           #statusMessage:Ljava/lang/String;
    :sswitch_9
    const-string v0, "Moved Permanently"

    .line 375
    .restart local v0       #statusMessage:Ljava/lang/String;
    goto :goto_5

    .line 377
    .end local v0           #statusMessage:Ljava/lang/String;
    :sswitch_c
    const-string v0, "Found"

    .line 378
    .restart local v0       #statusMessage:Ljava/lang/String;
    goto :goto_5

    .line 380
    .end local v0           #statusMessage:Ljava/lang/String;
    :sswitch_f
    const-string v0, "Not Modified"

    .line 381
    .restart local v0       #statusMessage:Ljava/lang/String;
    goto :goto_5

    .line 383
    .end local v0           #statusMessage:Ljava/lang/String;
    :sswitch_12
    const-string v0, "Bad Request"

    .line 384
    .restart local v0       #statusMessage:Ljava/lang/String;
    goto :goto_5

    .line 386
    .end local v0           #statusMessage:Ljava/lang/String;
    :sswitch_15
    const-string v0, "Not Authorized"

    .line 387
    .restart local v0       #statusMessage:Ljava/lang/String;
    goto :goto_5

    .line 389
    .end local v0           #statusMessage:Ljava/lang/String;
    :sswitch_18
    const-string v0, "Forbidden"

    .line 390
    .restart local v0       #statusMessage:Ljava/lang/String;
    goto :goto_5

    .line 392
    .end local v0           #statusMessage:Ljava/lang/String;
    :sswitch_1b
    const-string v0, "Not Found"

    .line 393
    .restart local v0       #statusMessage:Ljava/lang/String;
    goto :goto_5

    .line 395
    .end local v0           #statusMessage:Ljava/lang/String;
    :sswitch_1e
    const-string v0, "Method Not Allowed"

    .line 396
    .restart local v0       #statusMessage:Ljava/lang/String;
    goto :goto_5

    .line 398
    .end local v0           #statusMessage:Ljava/lang/String;
    :sswitch_21
    const-string v0, "Internal Server Error"

    .line 399
    .restart local v0       #statusMessage:Ljava/lang/String;
    goto :goto_5

    .line 401
    .end local v0           #statusMessage:Ljava/lang/String;
    :sswitch_24
    const-string v0, "Bad Gateway"

    .line 402
    .restart local v0       #statusMessage:Ljava/lang/String;
    goto :goto_5

    .line 404
    .end local v0           #statusMessage:Ljava/lang/String;
    :sswitch_27
    const-string v0, "Service Unavailable"

    .line 405
    .restart local v0       #statusMessage:Ljava/lang/String;
    goto :goto_5

    .line 369
    :sswitch_data_2a
    .sparse-switch
        0xc8 -> :sswitch_6
        0x12d -> :sswitch_9
        0x12e -> :sswitch_c
        0x130 -> :sswitch_f
        0x190 -> :sswitch_12
        0x191 -> :sswitch_15
        0x193 -> :sswitch_18
        0x194 -> :sswitch_1b
        0x195 -> :sswitch_1e
        0x1f4 -> :sswitch_21
        0x1f6 -> :sswitch_24
        0x1f7 -> :sswitch_27
    .end sparse-switch
.end method

.method public static newHttpConnection(Lcom/vlingo/client/core/net/ConnectionProvider;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Hashtable;Ljava/util/Hashtable;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;)Ljavax/microedition/io/HttpConnection;
    .registers 14
    .parameter "connectionProvider"
    .parameter "method"
    .parameter "url"
    .parameter "keepalive"
    .parameter
    .parameter
    .parameter "client"
    .parameter "software"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vlingo/client/core/net/ConnectionProvider;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Hashtable",
            "<**>;",
            "Ljava/util/Hashtable",
            "<**>;",
            "Lcom/vlingo/client/core/recognizer/ClientMeta;",
            "Lcom/vlingo/client/core/recognizer/SoftwareMeta;",
            ")",
            "Ljavax/microedition/io/HttpConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p4, cookies:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    .local p5, extraHeaders:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    const/4 v4, 0x1

    .line 328
    const/4 v2, 0x0

    .line 333
    .local v2, hc:Ljavax/microedition/io/HttpConnection;
    invoke-virtual {p0, p2, v4, v4}, Lcom/vlingo/client/core/net/ConnectionProvider;->getConnection(Ljava/lang/String;IZ)Ljavax/microedition/io/Connection;

    move-result-object v2

    .end local v2           #hc:Ljavax/microedition/io/HttpConnection;
    check-cast v2, Ljavax/microedition/io/HttpConnection;

    .line 336
    .restart local v2       #hc:Ljavax/microedition/io/HttpConnection;
    invoke-interface {v2, p1}, Ljavax/microedition/io/HttpConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 339
    if-eqz p3, :cond_14

    .line 340
    const-string v4, "Connection"

    const-string v5, "keep-alive"

    invoke-interface {v2, v4, v5}, Ljavax/microedition/io/HttpConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_14
    if-eqz p5, :cond_30

    .line 346
    invoke-virtual {p5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 347
    .local v1, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :goto_1a
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 348
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 351
    .local v3, key:Ljava/lang/String;
    invoke-virtual {p5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljavax/microedition/io/HttpConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 355
    .end local v1           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v3           #key:Ljava/lang/String;
    :cond_30
    if-eqz p4, :cond_41

    .line 356
    invoke-static {p4}, Lcom/vlingo/client/core/http/HttpUtil;->getCookies(Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, cookieStr:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_41

    .line 360
    const-string v4, "Cookie"

    invoke-interface {v2, v4, v0}, Ljavax/microedition/io/HttpConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .end local v0           #cookieStr:Ljava/lang/String;
    :cond_41
    return-object v2
.end method

.method public static newHttpConnection(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Hashtable;Ljava/util/Hashtable;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;)Ljavax/microedition/io/HttpConnection;
    .registers 15
    .parameter "method"
    .parameter "url"
    .parameter "keepalive"
    .parameter
    .parameter
    .parameter "client"
    .parameter "software"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Hashtable",
            "<**>;",
            "Ljava/util/Hashtable",
            "<**>;",
            "Lcom/vlingo/client/core/recognizer/ClientMeta;",
            "Lcom/vlingo/client/core/recognizer/SoftwareMeta;",
            ")",
            "Ljavax/microedition/io/HttpConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    .local p3, cookies:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    .local p4, extraHeaders:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    invoke-static {}, Lcom/vlingo/client/core/net/ConnectionManager;->getInstance()Lcom/vlingo/client/core/net/ConnectionManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/vlingo/client/core/http/HttpUtil;->newHttpConnection(Lcom/vlingo/client/core/net/ConnectionProvider;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Hashtable;Ljava/util/Hashtable;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;)Ljavax/microedition/io/HttpConnection;

    move-result-object v0

    return-object v0
.end method

.method public static println(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .parameter "out"
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    if-nez p0, :cond_a

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 71
    sget-object v0, Lcom/vlingo/client/core/http/HttpUtil;->CRLF_BYTES:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 72
    return-void
.end method

.method public static readData(Ljava/io/InputStream;)[B
    .registers 8
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, boas:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    .line 107
    .end local v0           #boas:Ljava/io/ByteArrayOutputStream;
    .local v1, boas:Ljava/io/ByteArrayOutputStream;
    :try_start_6
    invoke-static {p0, v1}, Lcom/vlingo/client/core/http/HttpUtil;->transfer(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)V

    .line 108
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_30

    move-result-object v2

    .line 112
    .local v2, data:[B
    if-eqz v1, :cond_12

    :try_start_f
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_13

    .line 114
    :cond_12
    :goto_12
    return-object v2

    .line 112
    :catch_13
    move-exception v3

    .line 113
    .local v3, ex:Ljava/lang/Exception;
    const-string v4, "VLG_EXCEPTION"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 112
    .end local v1           #boas:Ljava/io/ByteArrayOutputStream;
    .end local v2           #data:[B
    .end local v3           #ex:Ljava/lang/Exception;
    .restart local v0       #boas:Ljava/io/ByteArrayOutputStream;
    :catchall_1e
    move-exception v4

    :goto_1f
    if-eqz v0, :cond_24

    :try_start_21
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_25

    .line 114
    :cond_24
    :goto_24
    throw v4

    .line 112
    :catch_25
    move-exception v3

    .line 113
    .restart local v3       #ex:Ljava/lang/Exception;
    const-string v5, "VLG_EXCEPTION"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 112
    .end local v0           #boas:Ljava/io/ByteArrayOutputStream;
    .end local v3           #ex:Ljava/lang/Exception;
    .restart local v1       #boas:Ljava/io/ByteArrayOutputStream;
    :catchall_30
    move-exception v4

    move-object v0, v1

    .end local v1           #boas:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #boas:Ljava/io/ByteArrayOutputStream;
    goto :goto_1f
.end method

.method public static readLine(Ljava/io/DataInputStream;)Ljava/lang/String;
    .registers 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 85
    .local v1, it:I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 86
    .local v0, bout:Ljava/io/ByteArrayOutputStream;
    :goto_9
    if-ltz v1, :cond_f

    .line 87
    sget-char v3, Lcom/vlingo/client/core/http/HttpUtil;->LF_CHAR:C

    if-ne v1, v3, :cond_17

    .line 93
    :cond_f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-nez v3, :cond_1f

    .line 94
    const/4 v2, 0x0

    .line 97
    :goto_16
    return-object v2

    .line 90
    :cond_17
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 91
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    goto :goto_9

    .line 96
    :cond_1f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, line:Ljava/lang/String;
    goto :goto_16
.end method

.method public static transfer(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)V
    .registers 10
    .parameter "in"
    .parameter "out"

    .prologue
    const/16 v7, 0x400

    .line 134
    const/16 v1, 0x400

    .line 135
    .local v1, chunkSize:I
    new-array v4, v7, [B

    .line 136
    .local v4, inBuff:[B
    const/4 v0, -0x1

    .line 140
    .local v0, bytesRead:I
    const/4 v2, 0x1

    .line 141
    .local v2, dataRemaining:Z
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v5

    .line 142
    .local v5, numToRead:I
    :cond_c
    :goto_c
    if-eqz v2, :cond_36

    .line 144
    if-gtz v5, :cond_11

    .line 145
    const/4 v5, 0x1

    .line 147
    :cond_11
    if-le v5, v7, :cond_15

    .line 148
    const/16 v5, 0x400

    .line 151
    :cond_15
    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 152
    if-gez v0, :cond_1e

    .line 153
    const/4 v2, 0x0

    goto :goto_c

    .line 156
    :cond_1e
    const/4 v6, 0x0

    invoke-virtual {p1, v4, v6, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 157
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v5

    .line 158
    if-nez v5, :cond_c

    .line 159
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2b} :catch_2c

    goto :goto_c

    .line 163
    .end local v5           #numToRead:I
    :catch_2c
    move-exception v3

    .line 164
    .local v3, ex:Ljava/lang/Exception;
    const-string v6, "VLG_EXCEPTION"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_36
    return-void
.end method

.method public static writeCRLF(Ljava/io/OutputStream;)V
    .registers 2
    .parameter "dout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/vlingo/client/core/http/HttpUtil;->println(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 80
    return-void
.end method
