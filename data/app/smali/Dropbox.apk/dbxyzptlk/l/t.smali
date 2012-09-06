.class public final Ldbxyzptlk/l/t;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static final a:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 81
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy kk:mm:ss ZZZZZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Ldbxyzptlk/l/t;->a:Ljava/text/DateFormat;

    return-void
.end method

.method public static a(Ldbxyzptlk/l/u;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ldbxyzptlk/o/m;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-static/range {p0 .. p5}, Ldbxyzptlk/l/t;->b(Ldbxyzptlk/l/u;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ldbxyzptlk/o/m;)Ldbxyzptlk/l/m;

    move-result-object v0

    iget-object v0, v0, Ldbxyzptlk/l/m;->b:Lorg/apache/http/HttpResponse;

    .line 122
    invoke-static {v0}, Ldbxyzptlk/l/t;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 217
    .line 221
    :try_start_1
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_7f

    .line 223
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 229
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v0, 0x4000

    invoke-direct {v1, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_5d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_17} :catch_40
    .catch Ldbxyzptlk/C/c; {:try_start_1 .. :try_end_17} :catch_50
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_17} :catch_65

    .line 230
    const/16 v0, 0x4000

    :try_start_19
    invoke-virtual {v1, v0}, Ljava/io/BufferedReader;->mark(I)V

    .line 232
    new-instance v0, Ldbxyzptlk/C/b;

    invoke-direct {v0}, Ldbxyzptlk/C/b;-><init>()V

    .line 233
    invoke-virtual {v0, v1}, Ldbxyzptlk/C/b;->b(Ljava/io/Reader;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_48
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_24} :catch_7d
    .catch Ldbxyzptlk/C/c; {:try_start_19 .. :try_end_24} :catch_7a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_19 .. :try_end_24} :catch_77

    move-result-object v2

    .line 248
    :goto_25
    if-eqz v1, :cond_2a

    .line 250
    :try_start_27
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_72

    .line 256
    :cond_2a
    :goto_2a
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 257
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_76

    .line 258
    const/16 v1, 0x191

    if-ne v0, v1, :cond_6c

    .line 259
    new-instance v0, Ldbxyzptlk/m/i;

    invoke-direct {v0}, Ldbxyzptlk/m/i;-><init>()V

    throw v0

    .line 235
    :catch_40
    move-exception v0

    move-object v1, v2

    .line 236
    :goto_42
    :try_start_42
    new-instance v2, Ldbxyzptlk/m/b;

    invoke-direct {v2, v0}, Ldbxyzptlk/m/b;-><init>(Ljava/io/IOException;)V

    throw v2
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_48

    .line 248
    :catchall_48
    move-exception v0

    move-object v2, v1

    :goto_4a
    if-eqz v2, :cond_4f

    .line 250
    :try_start_4c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_74

    .line 252
    :cond_4f
    :goto_4f
    throw v0

    .line 237
    :catch_50
    move-exception v0

    .line 238
    :goto_51
    :try_start_51
    invoke-static {p0}, Ldbxyzptlk/m/g;->a(Lorg/apache/http/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 240
    new-instance v0, Ldbxyzptlk/m/g;

    invoke-direct {v0, p0}, Ldbxyzptlk/m/g;-><init>(Lorg/apache/http/HttpResponse;)V

    throw v0

    .line 248
    :catchall_5d
    move-exception v0

    goto :goto_4a

    .line 243
    :cond_5f
    new-instance v0, Ldbxyzptlk/m/d;

    invoke-direct {v0, v2}, Ldbxyzptlk/m/d;-><init>(Ljava/io/BufferedReader;)V

    throw v0

    .line 245
    :catch_65
    move-exception v0

    .line 246
    :goto_66
    new-instance v1, Ldbxyzptlk/m/a;

    invoke-direct {v1, v0}, Ldbxyzptlk/m/a;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_6c
    .catchall {:try_start_51 .. :try_end_6c} :catchall_5d

    .line 261
    :cond_6c
    new-instance v0, Ldbxyzptlk/m/g;

    invoke-direct {v0, p0, v2}, Ldbxyzptlk/m/g;-><init>(Lorg/apache/http/HttpResponse;Ljava/lang/Object;)V

    throw v0

    .line 251
    :catch_72
    move-exception v0

    goto :goto_2a

    :catch_74
    move-exception v1

    goto :goto_4f

    .line 265
    :cond_76
    return-object v2

    .line 245
    :catch_77
    move-exception v0

    move-object v2, v1

    goto :goto_66

    .line 237
    :catch_7a
    move-exception v0

    move-object v2, v1

    goto :goto_51

    .line 235
    :catch_7d
    move-exception v0

    goto :goto_42

    :cond_7f
    move-object v1, v2

    goto :goto_25
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 432
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 439
    :cond_1b
    :try_start_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 440
    const-string v1, "%2F"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 442
    if-eqz p3, :cond_60

    array-length v1, p3

    if-lez v1, :cond_60

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ldbxyzptlk/l/t;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    :cond_60
    const-string v1, "+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    const-string v2, "%2A"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_6f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1b .. :try_end_6f} :catch_8e

    move-result-object v0

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":443"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8d
    return-object v0

    .line 448
    :catch_8e
    move-exception v0

    .line 449
    const/4 v0, 0x0

    goto :goto_8d
.end method

.method private static a([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 502
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e

    .line 503
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Params must have an even number of elements."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_e
    const-string v1, ""

    .line 508
    const/4 v0, 0x1

    move v2, v3

    .line 509
    :goto_12
    :try_start_12
    array-length v4, p0

    if-ge v2, v4, :cond_62

    .line 510
    add-int/lit8 v4, v2, 0x1

    aget-object v4, p0, v4

    if-eqz v4, :cond_4b

    .line 511
    if-eqz v0, :cond_4e

    move v0, v3

    .line 516
    :goto_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, p0, v2

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v4, v2, 0x1

    aget-object v4, p0, v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 509
    :cond_4b
    add-int/lit8 v2, v2, 0x2

    goto :goto_12

    .line 514
    :cond_4e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    .line 520
    :cond_62
    const-string v0, "*"

    const-string v2, "%2A"

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_69
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_12 .. :try_end_69} :catch_6a

    .line 524
    :goto_69
    return-object v1

    .line 521
    :catch_6a
    move-exception v0

    .line 522
    const/4 v1, 0x0

    goto :goto_69
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Date;
    .registers 2
    .parameter

    .prologue
    .line 465
    :try_start_0
    sget-object v0, Ldbxyzptlk/l/t;->a:Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 467
    :goto_6
    return-object v0

    .line 466
    :catch_7
    move-exception v0

    .line 467
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static a(Ldbxyzptlk/o/m;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 335
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Ldbxyzptlk/l/t;->a(Ldbxyzptlk/o/m;Lorg/apache/http/client/methods/HttpUriRequest;I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ldbxyzptlk/o/m;Lorg/apache/http/client/methods/HttpUriRequest;I)Lorg/apache/http/HttpResponse;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 361
    invoke-static {p0}, Ldbxyzptlk/l/t;->a(Ldbxyzptlk/o/m;)Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .line 364
    invoke-interface {p0, p1}, Ldbxyzptlk/o/m;->a(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 365
    if-ltz p2, :cond_10

    .line 366
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 367
    invoke-static {v0, p2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 371
    :cond_10
    const/4 v1, 0x0

    .line 372
    const/4 v0, 0x0

    :goto_12
    if-nez v1, :cond_23

    const/4 v3, 0x5

    if-ge v0, v3, :cond_23

    .line 381
    :try_start_17
    invoke-interface {v2, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1a
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_1a} :catch_52
    .catch Ljavax/net/ssl/SSLException; {:try_start_17 .. :try_end_1a} :catch_2d
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_44
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_1a} :catch_4b

    move-result-object v1

    .line 390
    :goto_1b
    if-nez v1, :cond_20

    .line 391
    :try_start_1d
    invoke-static {v2, p0}, Ldbxyzptlk/l/t;->a(Lorg/apache/http/client/HttpClient;Ldbxyzptlk/o/m;)V

    .line 372
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 395
    :cond_23
    if-nez v1, :cond_34

    .line 397
    new-instance v0, Ldbxyzptlk/m/b;

    const-string v1, "Apache HTTPClient encountered an error. No response, try again."

    invoke-direct {v0, v1}, Ldbxyzptlk/m/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2d
    .catch Ljavax/net/ssl/SSLException; {:try_start_1d .. :try_end_2d} :catch_2d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2d} :catch_44
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_2d} :catch_4b

    .line 404
    :catch_2d
    move-exception v0

    .line 405
    new-instance v1, Ldbxyzptlk/m/f;

    invoke-direct {v1, v0}, Ldbxyzptlk/m/f;-><init>(Ljavax/net/ssl/SSLException;)V

    throw v1

    .line 398
    :cond_34
    :try_start_34
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_43

    .line 400
    invoke-static {v1}, Ldbxyzptlk/l/t;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    :try_end_43
    .catch Ljavax/net/ssl/SSLException; {:try_start_34 .. :try_end_43} :catch_2d
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_43} :catch_44
    .catch Ljava/lang/OutOfMemoryError; {:try_start_34 .. :try_end_43} :catch_4b

    .line 403
    :cond_43
    return-object v1

    .line 406
    :catch_44
    move-exception v0

    .line 409
    new-instance v1, Ldbxyzptlk/m/b;

    invoke-direct {v1, v0}, Ldbxyzptlk/m/b;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 410
    :catch_4b
    move-exception v0

    .line 411
    new-instance v1, Ldbxyzptlk/m/a;

    invoke-direct {v1, v0}, Ldbxyzptlk/m/a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 382
    :catch_52
    move-exception v3

    goto :goto_1b
.end method

.method private static declared-synchronized a(Ldbxyzptlk/o/m;)Lorg/apache/http/client/HttpClient;
    .registers 3
    .parameter

    .prologue
    .line 475
    const-class v1, Ldbxyzptlk/l/t;

    monitor-enter v1

    :try_start_3
    invoke-interface {p0}, Ldbxyzptlk/o/m;->g()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 476
    invoke-static {v0, p0}, Ldbxyzptlk/l/t;->a(Lorg/apache/http/client/HttpClient;Ldbxyzptlk/o/m;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 477
    monitor-exit v1

    return-object v0

    .line 475
    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Lorg/apache/http/client/HttpClient;Ldbxyzptlk/o/m;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 484
    invoke-interface {p1}, Ldbxyzptlk/o/m;->f()Ldbxyzptlk/o/o;

    move-result-object v1

    .line 485
    if-eqz v1, :cond_33

    iget-object v0, v1, Ldbxyzptlk/o/o;->a:Ljava/lang/String;

    if-eqz v0, :cond_33

    iget-object v0, v1, Ldbxyzptlk/o/o;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 487
    iget v0, v1, Ldbxyzptlk/o/o;->b:I

    if-gez v0, :cond_29

    .line 488
    new-instance v0, Lorg/apache/http/HttpHost;

    iget-object v1, v1, Ldbxyzptlk/o/o;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    .line 492
    :goto_1f
    invoke-interface {p0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 496
    :goto_28
    return-void

    .line 490
    :cond_29
    new-instance v0, Lorg/apache/http/HttpHost;

    iget-object v2, v1, Ldbxyzptlk/o/o;->a:Ljava/lang/String;

    iget v1, v1, Ldbxyzptlk/o/o;->b:I

    invoke-direct {v0, v2, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    goto :goto_1f

    .line 494
    :cond_33
    invoke-interface {p0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.route.default-proxy"

    invoke-interface {v0, v1}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    goto :goto_28
.end method

.method public static b(Ldbxyzptlk/l/u;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ldbxyzptlk/o/m;)Ldbxyzptlk/l/m;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    .line 160
    sget-object v0, Ldbxyzptlk/l/u;->a:Ldbxyzptlk/l/u;

    if-ne p0, v0, :cond_1a

    .line 161
    invoke-static {p1, p3, p2, p4}, Ldbxyzptlk/l/t;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 189
    :goto_d
    invoke-interface {p5, v0}, Ldbxyzptlk/o/m;->a(Lorg/apache/http/HttpRequest;)V

    .line 190
    invoke-static {p5, v0}, Ldbxyzptlk/l/t;->a(Ldbxyzptlk/o/m;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 192
    new-instance v2, Ldbxyzptlk/l/m;

    invoke-direct {v2, v0, v1}, Ldbxyzptlk/l/m;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)V

    return-object v2

    .line 164
    :cond_1a
    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0}, Ldbxyzptlk/l/t;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 167
    if-eqz p4, :cond_61

    array-length v0, p4

    const/4 v2, 0x2

    if-lt v0, v2, :cond_61

    .line 168
    array-length v0, p4

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_37

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Params must have an even number of elements."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_37
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 173
    const/4 v0, 0x0

    :goto_3d
    array-length v3, p4

    if-ge v0, v3, :cond_57

    .line 174
    add-int/lit8 v3, v0, 0x1

    aget-object v3, p4, v3

    if-eqz v3, :cond_54

    .line 175
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    aget-object v4, p4, v0

    add-int/lit8 v5, v0, 0x1

    aget-object v5, p4, v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_54
    add-int/lit8 v0, v0, 0x2

    goto :goto_3d

    .line 180
    :cond_57
    :try_start_57
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_61
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_57 .. :try_end_61} :catch_63

    :cond_61
    move-object v0, v1

    .line 186
    goto :goto_d

    .line 181
    :catch_63
    move-exception v0

    .line 182
    new-instance v1, Ldbxyzptlk/m/a;

    invoke-direct {v1, v0}, Ldbxyzptlk/m/a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
