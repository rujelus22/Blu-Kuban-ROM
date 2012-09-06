.class public LBw;
.super Ljava/lang/Object;
.source "XmlHttpRequestRelay.java"


# static fields
.field private static a:LBF;


# instance fields
.field private a:LBC;

.field private a:LBE;

.field private final a:LFu;

.field private final a:LIL;

.field private final a:LJP;

.field private final a:Landroid/os/Handler;

.field private a:Ldd;

.field private final a:Ljava/lang/String;

.field private a:Lorg/apache/http/client/methods/HttpRequestBase;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 215
    new-instance v0, LBF;

    invoke-direct {v0}, LBF;-><init>()V

    sput-object v0, LBw;->a:LBF;

    return-void
.end method

.method public constructor <init>(LIL;Ljava/lang/String;LJP;Ljava/lang/String;LBC;Landroid/os/Handler;LFu;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object v0, p0, LBw;->a:Ldd;

    .line 225
    iput-object v0, p0, LBw;->a:LBE;

    .line 226
    iput-object v0, p0, LBw;->a:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 234
    iput-object p1, p0, LBw;->a:LIL;

    .line 235
    iput-object p2, p0, LBw;->b:Ljava/lang/String;

    .line 236
    iput-object p4, p0, LBw;->a:Ljava/lang/String;

    .line 237
    iput-object p5, p0, LBw;->a:LBC;

    .line 238
    iput-object p6, p0, LBw;->a:Landroid/os/Handler;

    .line 239
    iput-object p7, p0, LBw;->a:LFu;

    .line 240
    iput-object p3, p0, LBw;->a:LJP;

    .line 241
    return-void
.end method

.method static synthetic a(LBw;)LBC;
    .registers 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, LBw;->a:LBC;

    return-object v0
.end method

.method static synthetic a(LBw;)LBE;
    .registers 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, LBw;->a:LBE;

    return-object v0
.end method

.method public static a()LBF;
    .registers 1

    .prologue
    .line 688
    sget-object v0, LBw;->a:LBF;

    invoke-virtual {v0}, LBF;->a()LBF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(LBw;)LIL;
    .registers 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, LBw;->a:LIL;

    return-object v0
.end method

.method static synthetic a(LBw;)Ldd;
    .registers 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, LBw;->a:Ldd;

    return-object v0
.end method

.method static synthetic a(LBw;Lorg/apache/http/HttpEntity;)Ljava/io/InputStreamReader;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, LBw;->a(Lorg/apache/http/HttpEntity;)Ljava/io/InputStreamReader;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/apache/http/HttpEntity;)Ljava/io/InputStreamReader;
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 301
    .line 302
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    invoke-direct {p0, v0}, LBw;->a(Lorg/apache/http/Header;)Ljava/lang/String;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_6a

    .line 305
    :try_start_b
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_e
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_b .. :try_end_e} :catch_42

    move-result-object v0

    .line 313
    :goto_f
    if-nez v0, :cond_15

    .line 314
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 320
    :cond_15
    :try_start_15
    iget-object v1, p0, LBw;->a:LIL;

    invoke-interface {v1, p1}, LIL;->a(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_5d

    move-result-object v1

    .line 321
    :try_start_1b
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_68

    .line 323
    if-nez v3, :cond_27

    if-eqz v1, :cond_27

    .line 324
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 328
    :cond_27
    if-nez v3, :cond_67

    .line 329
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create stream reader. Encoding = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 306
    :catch_42
    move-exception v0

    .line 307
    const-string v0, "XmlHttpRequestRelay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported character set returned: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 309
    goto :goto_f

    .line 323
    :catchall_5d
    move-exception v0

    move-object v1, v2

    :goto_5f
    if-nez v2, :cond_66

    if-eqz v1, :cond_66

    .line 324
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_66
    throw v0

    .line 332
    :cond_67
    return-object v3

    .line 323
    :catchall_68
    move-exception v0

    goto :goto_5f

    :cond_6a
    move-object v0, v2

    goto :goto_f
.end method

.method private a(Lorg/apache/http/Header;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 285
    if-nez p1, :cond_4

    .line 297
    :cond_3
    :goto_3
    return-object v0

    .line 289
    :cond_4
    invoke-interface {p1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v2

    .line 290
    array-length v3, v2

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 291
    const-string v5, "charset"

    invoke-interface {v4, v5}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v4

    .line 292
    if-eqz v4, :cond_1b

    .line 293
    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 290
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method public static a([Lorg/apache/http/Header;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 606
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 607
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    array-length v0, p0

    if-ge v1, v0, :cond_44

    .line 608
    aget-object v3, p0, v1

    .line 609
    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 610
    if-eqz v0, :cond_38

    .line 612
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 613
    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    :goto_34
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 617
    :cond_38
    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 620
    :cond_44
    const-string v0, "Set-Cookie"

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    const-string v0, "Set-Cookie2"

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(LBE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v7, 0xea60

    const/4 v1, 0x0

    .line 388
    invoke-static {p4}, LBw;->a(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    move v2, v1

    .line 389
    :goto_9
    const/4 v0, 0x4

    if-ge v2, v0, :cond_118

    .line 390
    invoke-direct {p0}, LBw;->c()V

    .line 392
    const-string v0, "POST"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 393
    const-string v0, "XmlHttpRequestRelay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "POST("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, LBE;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\npayload: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 395
    if-eqz p5, :cond_56

    .line 396
    new-instance v4, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v4, p5}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 399
    :cond_56
    sget-object v4, LBw;->a:LBF;

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, LBF;->b(I)V

    .line 400
    invoke-direct {p0, v0}, LBw;->a(Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 408
    :goto_62
    iget-object v0, p0, LBw;->a:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 409
    invoke-static {v0, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 410
    invoke-static {v0, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 411
    iget-object v4, p0, LBw;->a:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v4, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 413
    array-length v4, v3

    move v0, v1

    :goto_75
    if-ge v0, v4, :cond_b0

    aget-object v5, v3, v0

    .line 414
    iget-object v6, p0, LBw;->a:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v6, v5}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Lorg/apache/http/Header;)V

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_75

    .line 402
    :cond_81
    const-string v0, "XmlHttpRequestRelay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GET("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, LBE;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, LBw;->a(Lorg/apache/http/client/methods/HttpRequestBase;)V

    goto :goto_62

    .line 417
    :cond_b0
    iget-object v0, p0, LBw;->a:LIL;

    iget-object v4, p0, LBw;->a:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-interface {v0, v4}, LIL;->a(Lorg/apache/http/HttpRequest;)V

    .line 419
    sget-object v0, LBw;->a:LBF;

    iget-object v4, p0, LBw;->a:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpRequestBase;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v4

    invoke-virtual {v0, v4}, LBF;->b([Lorg/apache/http/Header;)V

    .line 422
    iget-object v0, p0, LBw;->a:Lorg/apache/http/client/methods/HttpRequestBase;

    const-string v4, "User-Agent"

    iget-object v5, p0, LBw;->a:LJP;

    const-string v6, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.32 Safari/535.1"

    invoke-interface {v5, v6}, LJP;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v4, p0, LBw;->a:LIL;

    iget-object v0, p0, LBw;->a:LFu;

    invoke-virtual {v0}, LFu;->a()Z

    move-result v0

    if-eqz v0, :cond_107

    const/4 v0, 0x0

    :goto_dc
    iget-object v5, p0, LBw;->a:Lorg/apache/http/client/methods/HttpRequestBase;

    iget-object v6, p0, LBw;->b:Ljava/lang/String;

    invoke-interface {v4, v0, v5, v6}, LIL;->a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 427
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 429
    invoke-static {v4}, LBw;->c(I)Z

    move-result v4

    if-eqz v4, :cond_120

    .line 431
    const-string v4, "Location"

    invoke-interface {v0, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 432
    iget-object v4, p0, LBw;->a:LIL;

    invoke-interface {v4}, LIL;->a()V

    .line 433
    if-nez v0, :cond_10a

    .line 434
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No redirect location available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_107
    iget-object v0, p0, LBw;->a:Ljava/lang/String;

    goto :goto_dc

    .line 436
    :cond_10a
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p3

    .line 437
    iget-object v0, p0, LBw;->a:LIL;

    invoke-interface {v0}, LIL;->b()V

    .line 389
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_9

    .line 443
    :cond_118
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Too many redirects"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_120
    return-object v0
.end method

.method static synthetic a(LBw;LBE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct/range {p0 .. p5}, LBw;->a(LBE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(LBw;)Lorg/apache/http/client/methods/HttpRequestBase;
    .registers 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, LBw;->a:Lorg/apache/http/client/methods/HttpRequestBase;

    return-object v0
.end method

.method private a(I)V
    .registers 4
    .parameter

    .prologue
    .line 658
    new-instance v0, LBB;

    invoke-direct {v0, p0, p1}, LBB;-><init>(LBw;I)V

    .line 676
    iget-object v1, p0, LBw;->a:LBE;

    invoke-virtual {v1}, LBE;->a()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 677
    iget-object v1, p0, LBw;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 681
    :goto_12
    return-void

    .line 679
    :cond_13
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_12
.end method

.method static synthetic a(LBw;)V
    .registers 1
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, LBw;->c()V

    return-void
.end method

.method static synthetic a(LBw;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, LBw;->a(I)V

    return-void
.end method

.method static synthetic a(LBw;Ljava/io/InputStreamReader;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, LBw;->a(Ljava/io/InputStreamReader;)V

    return-void
.end method

.method static synthetic a(LBw;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, LBw;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/io/InputStreamReader;)V
    .registers 6
    .parameter

    .prologue
    .line 345
    .line 347
    const/16 v0, 0x4000

    new-array v0, v0, [C

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    monitor-enter p0

    .line 350
    :try_start_a
    iget-object v1, p0, LBw;->a:LBE;

    sget-object v2, LBD;->d:LBD;

    invoke-virtual {v1, v2}, LBE;->a(LBD;)LBE;

    .line 351
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_34

    .line 352
    const-string v1, ""

    const-string v2, ""

    invoke-direct {p0, v1, v2}, LBw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :goto_19
    invoke-virtual {p1, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_37

    .line 356
    invoke-direct {p0}, LBw;->c()V

    .line 359
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    const-string v3, ""

    invoke-direct {p0, v2, v3}, LBw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    sget-object v2, LBw;->a:LBF;

    invoke-virtual {v2, v1}, LBF;->a(I)V

    goto :goto_19

    .line 351
    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0

    .line 367
    :cond_37
    monitor-enter p0

    .line 368
    :try_start_38
    iget-object v0, p0, LBw;->a:LBE;

    sget-object v1, LBD;->e:LBD;

    invoke-virtual {v0, v1}, LBE;->a(LBD;)LBE;

    .line 369
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_4b

    .line 371
    invoke-direct {p0}, LBw;->c()V

    .line 377
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, v0, v1}, LBw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    return-void

    .line 369
    :catchall_4b
    move-exception v0

    :try_start_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 629
    iget-object v0, p0, LBw;->a:LBE;

    invoke-virtual {v0}, LBE;->a()LBD;

    move-result-object v3

    .line 630
    iget-object v0, p0, LBw;->a:LBE;

    invoke-virtual {v0}, LBE;->b()I

    move-result v4

    .line 631
    iget-object v0, p0, LBw;->a:LBE;

    invoke-virtual {v0}, LBE;->a()Ljava/lang/String;

    move-result-object v5

    .line 632
    iget-object v0, p0, LBw;->a:LBE;

    invoke-virtual {v0}, LBE;->a()I

    move-result v2

    .line 636
    new-instance v0, LBA;

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, LBA;-><init>(LBw;ILBD;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget-object v1, p0, LBw;->a:LBE;

    invoke-virtual {v1}, LBE;->a()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 651
    iget-object v1, p0, LBw;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 655
    :goto_2d
    return-void

    .line 653
    :cond_2e
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_2d
.end method

.method private declared-synchronized a(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .registers 3
    .parameter

    .prologue
    .line 447
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, LBw;->c()V

    .line 448
    iput-object p1, p0, LBw;->a:Lorg/apache/http/client/methods/HttpRequestBase;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 449
    monitor-exit p0

    return-void

    .line 447
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(I)Z
    .registers 2
    .parameter

    .prologue
    .line 54
    invoke-static {p0}, LBw;->b(I)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)[Lorg/apache/http/Header;
    .registers 7
    .parameter

    .prologue
    .line 583
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 585
    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 586
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 587
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 588
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 589
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 590
    new-instance v5, Lorg/apache/http/message/BasicHeader;

    invoke-direct {v5, v0, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_26} :catch_27

    goto :goto_e

    .line 592
    :catch_27
    move-exception v0

    .line 593
    const-string v0, "XmlHttpRequestRelay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse request headers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_40
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/http/Header;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/Header;

    return-object v0
.end method

.method static synthetic b()LBF;
    .registers 1

    .prologue
    .line 54
    sget-object v0, LBw;->a:LBF;

    return-object v0
.end method

.method public static b()V
    .registers 1

    .prologue
    .line 684
    sget-object v0, LBw;->a:LBF;

    invoke-virtual {v0}, LBF;->a()V

    .line 685
    return-void
.end method

.method private static b(I)Z
    .registers 2
    .parameter

    .prologue
    .line 245
    const/16 v0, 0x190

    if-lt p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private c()V
    .registers 2

    .prologue
    .line 253
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, LBw;->a:LBC;

    if-nez v0, :cond_10

    .line 254
    :cond_a
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 256
    :cond_10
    return-void
.end method

.method private static c(I)Z
    .registers 2
    .parameter

    .prologue
    .line 249
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_a

    const/16 v0, 0x190

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 4

    .prologue
    .line 262
    monitor-enter p0

    :try_start_1
    const-string v0, "XmlHttpRequestRelay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aborting HTTP request ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LBw;->a:LBE;

    invoke-virtual {v2}, LBE;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, LBw;->a:LBC;

    .line 267
    new-instance v0, LBx;

    invoke-direct {v0, p0}, LBx;-><init>(LBw;)V

    invoke-virtual {v0}, LBx;->start()V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 282
    monitor-exit p0

    return-void

    .line 262
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 465
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 467
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    iget-object v1, p0, LBw;->a:LFu;

    invoke-virtual {v1}, LFu;->a()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5a

    .line 468
    :cond_19
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 469
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p4

    move-object v3, p4

    .line 474
    :goto_36
    new-instance v0, LBE;

    invoke-direct {v0, p6, p2}, LBE;-><init>(ZI)V

    iput-object v0, p0, LBw;->a:LBE;

    .line 477
    new-instance v0, LBy;

    move-object v1, p0

    move-object v2, p3

    move-object v4, p5

    move-object v5, p7

    move v6, p2

    invoke-direct/range {v0 .. v6}, LBy;-><init>(LBw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 553
    if-eqz p6, :cond_56

    .line 554
    new-instance v1, LBz;

    invoke-direct {v1, p0, v0}, LBz;-><init>(LBw;Ljava/lang/Runnable;)V

    iput-object v1, p0, LBw;->a:Ldd;

    .line 561
    iget-object v0, p0, LBw;->a:Ldd;

    invoke-virtual {v0}, Ldd;->start()V

    .line 565
    :goto_55
    return-void

    .line 563
    :cond_56
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_55

    :cond_5a
    move-object v3, p4

    goto :goto_36
.end method
