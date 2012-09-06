.class public Ltc;
.super Ljava/lang/Object;
.source "DocsUploaderImpl.java"

# interfaces
.implements LtJ;


# instance fields
.field private final a:I

.field private a:J

.field private final a:LXL;

.field private a:Ljava/io/RandomAccessFile;

.field private final a:Ljava/lang/String;

.field final a:Ljava/util/regex/Pattern;

.field a:LtB;

.field private final a:LtZ;

.field final synthetic a:Ltb;

.field private final a:Lua;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltb;Ljava/lang/String;LtZ;Lua;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Ltc;->a:Ltb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const-string v0, "(?:bytes? *=? *)?(\\d+)-(-?\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Ltc;->a:Ljava/util/regex/Pattern;

    .line 128
    iput-object p2, p0, Ltc;->a:Ljava/lang/String;

    .line 129
    iput-object p3, p0, Ltc;->a:LtZ;

    .line 130
    invoke-virtual {p3}, LtZ;->a()LtB;

    move-result-object v0

    iput-object v0, p0, Ltc;->a:LtB;

    .line 131
    const-string v0, ""

    iput-object v0, p0, Ltc;->b:Ljava/lang/String;

    .line 132
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltc;->a:J

    .line 133
    iput-object p4, p0, Ltc;->a:Lua;

    .line 138
    invoke-static {p1}, Ltb;->a(Ltb;)LFX;

    move-result-object v1

    monitor-enter v1

    .line 139
    :try_start_26
    invoke-static {p1}, Ltb;->a(Ltb;)LFX;

    move-result-object v0

    const-string v2, "maxUploadChunkRetryCount1"

    const/4 v3, 0x4

    invoke-interface {v0, v2, v3}, LFX;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltc;->a:I

    .line 141
    const-wide v2, 0x408f400000000000L

    invoke-static {p1}, Ltb;->a(Ltb;)LFX;

    move-result-object v0

    const-string v4, "initialChunkBackOff"

    const-wide/high16 v5, 0x3ff0

    invoke-interface {v0, v4, v5, v6}, LFX;->a(Ljava/lang/String;D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    .line 143
    invoke-static {p1}, Ltb;->a(Ltb;)LFX;

    move-result-object v0

    const-string v4, "chunkBackoffGrowthFactor"

    const-wide/high16 v5, 0x4000

    invoke-interface {v0, v4, v5, v6}, LFX;->a(Ljava/lang/String;D)D

    move-result-wide v4

    .line 145
    new-instance v0, LXL;

    invoke-direct {v0, v2, v3, v4, v5}, LXL;-><init>(JD)V

    iput-object v0, p0, Ltc;->a:LXL;

    .line 147
    monitor-exit v1

    .line 148
    return-void

    .line 147
    :catchall_5b
    move-exception v0

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_26 .. :try_end_5d} :catchall_5b

    throw v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 483
    :try_start_b
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v3, :cond_31

    aget-byte v4, v2, v0

    .line 484
    const-string v5, "%"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_25
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_25} :catch_28

    .line 483
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 487
    :catch_28
    move-exception v0

    .line 488
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "UTF-8 should always be supported"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 490
    :cond_31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    return-object v0
.end method

.method private a(Ljava/lang/String;)LsW;
    .registers 8
    .parameter

    .prologue
    .line 468
    iget-object v0, p0, Ltc;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 469
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_14

    .line 470
    new-instance v0, LtH;

    const-string v1, "Unable to upload file: invalid byte range returned by server."

    invoke-direct {v0, v1}, LtH;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_14
    new-instance v1, LsW;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, LsW;-><init>(JJ)V

    return-object v1
.end method

.method private a()Z
    .registers 2

    .prologue
    .line 293
    invoke-virtual {p0}, Ltc;->a()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 294
    invoke-direct {p0, v0}, Ltc;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Z

    move-result v0

    return v0
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;)Z
    .registers 7
    .parameter

    .prologue
    .line 318
    iget-object v0, p0, Ltc;->a:Ltb;

    iget-object v1, p0, Ltc;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Ltb;->a(Ltb;Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 320
    :try_start_8
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 321
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 322
    iget-object v3, p0, Ltc;->a:Ltb;

    invoke-static {v3}, Ltb;->a(Ltb;)LIL;

    move-result-object v3

    invoke-interface {v3}, LIL;->a()V

    .line 323
    sparse-switch v2, :sswitch_data_86

    .line 343
    new-instance v0, LtH;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to upload item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to upload "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltc;->a:LtB;

    invoke-virtual {v2}, LtB;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LtH;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_53
    .catchall {:try_start_8 .. :try_end_53} :catchall_53

    .line 348
    :catchall_53
    move-exception v0

    iget-object v1, p0, Ltc;->a:Ltb;

    invoke-static {v1}, Ltb;->a(Ltb;)LIL;

    move-result-object v1

    invoke-interface {v1}, LIL;->b()V

    throw v0

    .line 327
    :sswitch_5e
    :try_start_5e
    const-string v0, "DocsUploaderImpl"

    const-string v1, "Server reports upload complete."

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_53

    .line 330
    const/4 v0, 0x1

    .line 348
    iget-object v1, p0, Ltc;->a:Ltb;

    invoke-static {v1}, Ltb;->a(Ltb;)LIL;

    move-result-object v1

    invoke-interface {v1}, LIL;->b()V

    :goto_6f
    return v0

    .line 334
    :sswitch_70
    :try_start_70
    invoke-virtual {p0, v0}, Ltc;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_53

    .line 335
    const/4 v0, 0x0

    .line 348
    iget-object v1, p0, Ltc;->a:Ltb;

    invoke-static {v1}, Ltb;->a(Ltb;)LIL;

    move-result-object v1

    invoke-interface {v1}, LIL;->b()V

    goto :goto_6f

    .line 339
    :sswitch_7e
    :try_start_7e
    new-instance v0, LtK;

    const-string v1, "GData Service unavailable."

    invoke-direct {v0, v1}, LtK;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_86
    .catchall {:try_start_7e .. :try_end_86} :catchall_53

    .line 323
    :sswitch_data_86
    .sparse-switch
        0xc9 -> :sswitch_5e
        0x134 -> :sswitch_70
        0x1f7 -> :sswitch_7e
    .end sparse-switch
.end method

.method private b()V
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Ltc;->a:LtZ;

    invoke-virtual {v0}, LtZ;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 230
    new-instance v0, LsZ;

    invoke-direct {v0}, LsZ;-><init>()V

    throw v0

    .line 232
    :cond_e
    return-void
.end method

.method private b()Z
    .registers 2

    .prologue
    .line 306
    invoke-virtual {p0}, Ltc;->b()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 307
    invoke-direct {p0, v0}, Ltc;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Z

    move-result v0

    return v0
.end method

.method private c()V
    .registers 3

    .prologue
    .line 235
    iget-object v0, p0, Ltc;->a:LXL;

    invoke-virtual {v0}, LXL;->a()I

    move-result v0

    iget v1, p0, Ltc;->a:I

    if-gt v0, v1, :cond_1b

    const/4 v0, 0x1

    :goto_b
    const-string v1, "backoff called after too many failures."

    invoke-static {v0, v1}, LafQ;->b(ZLjava/lang/Object;)V

    .line 238
    :try_start_10
    iget-object v0, p0, Ltc;->a:LXL;

    invoke-virtual {v0}, LXL;->b()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_2b
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_15} :catch_1d

    .line 242
    iget-object v0, p0, Ltc;->a:LXL;

    invoke-virtual {v0}, LXL;->c()V

    .line 244
    :goto_1a
    return-void

    .line 235
    :cond_1b
    const/4 v0, 0x0

    goto :goto_b

    .line 239
    :catch_1d
    move-exception v0

    .line 240
    :try_start_1e
    const-string v0, "DocsUploaderImpl"

    const-string v1, "Backoff sleep interrupted."

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_2b

    .line 242
    iget-object v0, p0, Ltc;->a:LXL;

    invoke-virtual {v0}, LXL;->c()V

    goto :goto_1a

    :catchall_2b
    move-exception v0

    iget-object v1, p0, Ltc;->a:LXL;

    invoke-virtual {v1}, LXL;->c()V

    throw v0
.end method

.method private d()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 259
    iget-object v0, p0, Ltc;->a:LtB;

    invoke-virtual {v0}, LtB;->a()Z

    move-result v3

    .line 260
    if-eqz v3, :cond_95

    iget-object v0, p0, Ltc;->a:LtB;

    invoke-virtual {v0}, LtB;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "image/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_95

    move v0, v1

    .line 261
    :goto_1d
    const-string v4, "https://docs.google.com/feeds/upload/create-session/default/private/full?convert=%1$b&ocr=%2$b"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-virtual {p0, v0}, Ltc;->a(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 266
    :try_start_36
    iget-object v2, p0, Ltc;->a:Ltb;

    iget-object v3, p0, Ltc;->a:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Ltb;->a(Ltb;Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 267
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    .line 268
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 269
    const/16 v4, 0xc8

    if-eq v3, v4, :cond_97

    .line 270
    new-instance v0, LtH;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to upload item: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to upload "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ltc;->a:LtB;

    invoke-virtual {v3}, LtB;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LtH;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_81
    .catchall {:try_start_36 .. :try_end_81} :catchall_81

    .line 280
    :catchall_81
    move-exception v0

    iget-object v1, p0, Ltc;->a:Ltb;

    invoke-static {v1}, Ltb;->a(Ltb;)LIL;

    move-result-object v1

    invoke-interface {v1}, LIL;->a()V

    .line 281
    iget-object v1, p0, Ltc;->a:Ltb;

    invoke-static {v1}, Ltb;->a(Ltb;)LIL;

    move-result-object v1

    invoke-interface {v1}, LIL;->b()V

    throw v0

    :cond_95
    move v0, v2

    .line 260
    goto :goto_1d

    .line 274
    :cond_97
    :try_start_97
    const-string v2, "Location"

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_a2

    array-length v2, v0

    if-eq v2, v1, :cond_aa

    .line 276
    :cond_a2
    new-instance v0, LtH;

    const-string v1, "Unable to upload item: Server upload URI invalid."

    invoke-direct {v0, v1}, LtH;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_aa
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltc;->b:Ljava/lang/String;
    :try_end_b3
    .catchall {:try_start_97 .. :try_end_b3} :catchall_81

    .line 280
    iget-object v0, p0, Ltc;->a:Ltb;

    invoke-static {v0}, Ltb;->a(Ltb;)LIL;

    move-result-object v0

    invoke-interface {v0}, LIL;->a()V

    .line 281
    iget-object v0, p0, Ltc;->a:Ltb;

    invoke-static {v0}, Ltb;->a(Ltb;)LIL;

    move-result-object v0

    invoke-interface {v0}, LIL;->b()V

    .line 283
    return-void
.end method


# virtual methods
.method a()Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 13

    .prologue
    .line 375
    :try_start_0
    new-instance v7, Lorg/apache/http/client/methods/HttpPut;

    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Ltc;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/net/URI;)V
    :try_end_c
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_c} :catch_a7

    .line 380
    const-string v0, "Content-Type"

    iget-object v1, p0, Ltc;->a:LtB;

    invoke-virtual {v1}, LtB;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v0, "GData-Version"

    const-string v1, "3.0"

    invoke-virtual {v7, v0, v1}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v0, "X-Upload-Content-Type"

    iget-object v1, p0, Ltc;->a:LtB;

    invoke-virtual {v1}, LtB;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Ltc;->a:LtB;

    invoke-virtual {v0}, LtB;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Ltc;->a:J

    sub-long/2addr v0, v2

    .line 386
    const-wide/32 v2, 0x40000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 387
    const-string v0, "Content-Range"

    const-string v1, "bytes %d-%d/%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Ltc;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Ltc;->a:J

    add-long/2addr v4, v8

    const-wide/16 v10, 0x1

    sub-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Ltc;->a:LtB;

    invoke-virtual {v4}, LtB;->a()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :try_start_72
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Ltc;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_7d} :catch_c3

    .line 396
    new-instance v0, LVP;

    new-instance v2, LtL;

    iget-object v3, p0, Ltc;->a:Lua;

    invoke-direct {v2, v3}, LtL;-><init>(Lua;)V

    iget-object v3, p0, Ltc;->a:LtB;

    invoke-virtual {v3}, LtB;->a()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    int-to-long v3, v3

    iget-wide v5, p0, Ltc;->a:J

    long-to-int v5, v5

    int-to-long v5, v5

    invoke-direct/range {v0 .. v6}, LVP;-><init>(Ljava/io/InputStream;LVd;JJ)V

    .line 399
    iget-wide v1, p0, Ltc;->a:J

    add-long/2addr v1, v8

    iput-wide v1, p0, Ltc;->a:J

    .line 400
    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    invoke-direct {v1, v0, v8, v9}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 401
    invoke-virtual {v7, v1}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 403
    return-object v7

    .line 376
    :catch_a7
    move-exception v0

    .line 377
    new-instance v1, LtH;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltc;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LtH;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 393
    :catch_c3
    move-exception v0

    .line 394
    new-instance v1, LtH;

    const-string v2, "Unable to read input file"

    invoke-direct {v1, v2, v0}, LtH;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method a(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 6
    .parameter

    .prologue
    .line 355
    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V
    :try_end_a
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_a} :catch_4a

    .line 360
    const-string v1, "GData-Version"

    const-string v2, "3.0"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Ltc;->a:LtB;

    invoke-virtual {v1}, LtB;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    const-string v2, "Slug"

    invoke-virtual {v0, v2, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v1, "Content-Type"

    iget-object v2, p0, Ltc;->a:LtB;

    invoke-virtual {v2}, LtB;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v1, "X-Upload-Content-Type"

    iget-object v2, p0, Ltc;->a:LtB;

    invoke-virtual {v2}, LtB;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v1, "X-Upload-Content-Length"

    iget-object v2, p0, Ltc;->a:LtB;

    invoke-virtual {v2}, LtB;->a()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    return-object v0

    .line 356
    :catch_4a
    move-exception v0

    .line 357
    new-instance v1, LtH;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LtH;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a()V
    .registers 11

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 153
    :try_start_2
    const-string v0, "DocsUploaderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uploading as "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Ltc;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Ltc;->a:LtB;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Ltc;->a:LtB;

    invoke-virtual {v0}, LtB;->a()LtB;

    move-result-object v0

    iput-object v0, p0, Ltc;->a:LtB;

    .line 158
    invoke-direct {p0}, Ltc;->b()V

    .line 160
    iget-object v0, p0, Ltc;->a:Ltb;

    invoke-static {v0}, Ltb;->a(Ltb;)LtI;

    move-result-object v0

    iget-object v1, p0, Ltc;->a:LtB;

    invoke-interface {v0, v1}, LtI;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LtB;

    iput-object v0, p0, Ltc;->a:LtB;
    :try_end_43
    .catchall {:try_start_2 .. :try_end_43} :catchall_10e
    .catch LsZ; {:try_start_2 .. :try_end_43} :catch_8f
    .catch LtH; {:try_start_2 .. :try_end_43} :catch_cd

    .line 163
    :try_start_43
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Ltc;->a:LtB;

    invoke-virtual {v1}, LtB;->a()Ljava/io/File;

    move-result-object v1

    const-string v4, "r"

    invoke-direct {v0, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Ltc;->a:Ljava/io/RandomAccessFile;
    :try_end_52
    .catchall {:try_start_43 .. :try_end_52} :catchall_10e
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_52} :catch_86
    .catch LsZ; {:try_start_43 .. :try_end_52} :catch_8f
    .catch LtH; {:try_start_43 .. :try_end_52} :catch_cd

    .line 167
    :try_start_52
    iget-object v0, p0, Ltc;->a:Lua;

    invoke-interface {v0}, Lua;->a()V

    .line 169
    invoke-direct {p0}, Ltc;->d()V

    .line 173
    iget-object v0, p0, Ltc;->a:LXL;

    invoke-virtual {v0}, LXL;->a()V

    move v1, v2

    .line 174
    :goto_60
    if-nez v1, :cond_118

    .line 175
    invoke-direct {p0}, Ltc;->b()V
    :try_end_65
    .catchall {:try_start_52 .. :try_end_65} :catchall_10e
    .catch LsZ; {:try_start_52 .. :try_end_65} :catch_8f
    .catch LtH; {:try_start_52 .. :try_end_65} :catch_cd

    .line 179
    :try_start_65
    invoke-direct {p0}, Ltc;->a()Z
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_10e
    .catch LtK; {:try_start_65 .. :try_end_68} :catch_9b
    .catch LsZ; {:try_start_65 .. :try_end_68} :catch_8f
    .catch LtH; {:try_start_65 .. :try_end_68} :catch_cd

    move-result v1

    .line 181
    :try_start_69
    iget-object v0, p0, Ltc;->a:LXL;

    invoke-virtual {v0}, LXL;->a()V
    :try_end_6e
    .catchall {:try_start_69 .. :try_end_6e} :catchall_10e
    .catch LtK; {:try_start_69 .. :try_end_6e} :catch_12d
    .catch LsZ; {:try_start_69 .. :try_end_6e} :catch_8f
    .catch LtH; {:try_start_69 .. :try_end_6e} :catch_cd

    move v4, v1

    move v1, v2

    .line 190
    :cond_70
    :goto_70
    if-eqz v1, :cond_115

    .line 191
    :try_start_72
    invoke-direct {p0}, Ltc;->b()V

    .line 193
    const-wide/16 v5, -0x1

    iput-wide v5, p0, Ltc;->a:J

    .line 194
    invoke-direct {p0}, Ltc;->c()V

    .line 196
    invoke-direct {p0}, Ltc;->b()V
    :try_end_7f
    .catchall {:try_start_72 .. :try_end_7f} :catchall_10e
    .catch LsZ; {:try_start_72 .. :try_end_7f} :catch_8f
    .catch LtH; {:try_start_72 .. :try_end_7f} :catch_cd

    .line 198
    :try_start_7f
    invoke-direct {p0}, Ltc;->b()Z
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_10e
    .catch LtK; {:try_start_7f .. :try_end_82} :catch_de
    .catch LsZ; {:try_start_7f .. :try_end_82} :catch_8f
    .catch LtH; {:try_start_7f .. :try_end_82} :catch_cd

    move-result v1

    move v4, v1

    move v1, v2

    .line 206
    goto :goto_70

    .line 164
    :catch_86
    move-exception v0

    .line 165
    :try_start_87
    new-instance v1, LtH;

    const-string v2, "Unable to upload file: "

    invoke-direct {v1, v2, v0}, LtH;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_8f
    .catchall {:try_start_87 .. :try_end_8f} :catchall_10e
    .catch LsZ; {:try_start_87 .. :try_end_8f} :catch_8f
    .catch LtH; {:try_start_87 .. :try_end_8f} :catch_cd

    .line 214
    :catch_8f
    move-exception v0

    .line 215
    :try_start_90
    iget-object v0, p0, Ltc;->a:Lua;

    invoke-interface {v0}, Lua;->c()V
    :try_end_95
    .catchall {:try_start_90 .. :try_end_95} :catchall_10e

    .line 221
    iget-object v0, p0, Ltc;->a:LtB;

    invoke-virtual {v0}, LtB;->a()V

    .line 223
    :goto_9a
    return-void

    .line 182
    :catch_9b
    move-exception v0

    move v4, v1

    move v1, v3

    .line 183
    :goto_9e
    :try_start_9e
    const-string v5, "DocsUploaderImpl"

    const-string v6, "Retrying chunk - failures %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Ltc;->a:LXL;

    invoke-virtual {v9}, LXL;->a()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v5, p0, Ltc;->a:LXL;

    invoke-virtual {v5}, LXL;->a()I

    move-result v5

    iget v6, p0, Ltc;->a:I

    if-lt v5, v6, :cond_70

    .line 186
    new-instance v1, LtH;

    const-string v2, "Error uploading after multiple retries."

    invoke-direct {v1, v2, v0}, LtH;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_cd
    .catchall {:try_start_9e .. :try_end_cd} :catchall_10e
    .catch LsZ; {:try_start_9e .. :try_end_cd} :catch_8f
    .catch LtH; {:try_start_9e .. :try_end_cd} :catch_cd

    .line 216
    :catch_cd
    move-exception v0

    .line 217
    :try_start_ce
    iget-object v1, p0, Ltc;->a:LtZ;

    invoke-virtual {v1}, LtZ;->b()V

    .line 218
    iget-object v1, p0, Ltc;->a:Lua;

    invoke-interface {v1, v0}, Lua;->a(LtH;)V
    :try_end_d8
    .catchall {:try_start_ce .. :try_end_d8} :catchall_10e

    .line 221
    iget-object v0, p0, Ltc;->a:LtB;

    invoke-virtual {v0}, LtB;->a()V

    goto :goto_9a

    .line 200
    :catch_de
    move-exception v0

    .line 201
    :try_start_df
    const-string v5, "DocsUploaderImpl"

    const-string v6, "Upload status request failed - failures %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Ltc;->a:LXL;

    invoke-virtual {v9}, LXL;->a()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v5, p0, Ltc;->a:LXL;

    invoke-virtual {v5}, LXL;->a()I

    move-result v5

    iget v6, p0, Ltc;->a:I

    if-lt v5, v6, :cond_70

    .line 204
    new-instance v1, LtH;

    const-string v2, "Error uploading after multiple retries."

    invoke-direct {v1, v2, v0}, LtH;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_10e
    .catchall {:try_start_df .. :try_end_10e} :catchall_10e
    .catch LsZ; {:try_start_df .. :try_end_10e} :catch_8f
    .catch LtH; {:try_start_df .. :try_end_10e} :catch_cd

    .line 221
    :catchall_10e
    move-exception v0

    iget-object v1, p0, Ltc;->a:LtB;

    invoke-virtual {v1}, LtB;->a()V

    throw v0

    :cond_115
    move v1, v4

    .line 208
    goto/16 :goto_60

    .line 210
    :cond_118
    :try_start_118
    invoke-direct {p0}, Ltc;->b()V

    .line 212
    iget-object v0, p0, Ltc;->a:LtZ;

    const/16 v1, 0x64

    iput v1, v0, LtZ;->a:I

    .line 213
    iget-object v0, p0, Ltc;->a:Lua;

    invoke-interface {v0}, Lua;->b()V
    :try_end_126
    .catchall {:try_start_118 .. :try_end_126} :catchall_10e
    .catch LsZ; {:try_start_118 .. :try_end_126} :catch_8f
    .catch LtH; {:try_start_118 .. :try_end_126} :catch_cd

    .line 221
    iget-object v0, p0, Ltc;->a:LtB;

    invoke-virtual {v0}, LtB;->a()V

    goto/16 :goto_9a

    .line 182
    :catch_12d
    move-exception v0

    move v4, v1

    move v1, v2

    goto/16 :goto_9e
.end method

.method a(Lorg/apache/http/HttpResponse;)V
    .registers 14
    .parameter

    .prologue
    .line 425
    const-string v0, "Location"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_15

    aget-object v3, v1, v0

    .line 426
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltc;->b:Ljava/lang/String;

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 430
    :cond_15
    const-string v0, "Range"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 431
    const-string v0, "DocsUploaderImpl"

    const-string v1, "Resumable upload response missing range header - attempting to proceed."

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_24
    const-string v0, "Range"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_2d
    if-ge v1, v3, :cond_e4

    aget-object v0, v2, v1

    .line 434
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltc;->a(Ljava/lang/String;)LsW;

    move-result-object v4

    .line 435
    const-string v0, "DocsUploaderImpl"

    const-string v5, "Resumable upload range = %d-%d (expected %d)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, v4, LsW;->a:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-wide v8, v4, LsW;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-wide v8, p0, Ltc;->a:J

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-wide v5, v4, LsW;->a:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_75

    .line 440
    new-instance v0, LtH;

    const-string v1, "Unable to upload item: Bytes lost in transmission."

    invoke-direct {v0, v1}, LtH;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_75
    iget-wide v5, p0, Ltc;->a:J

    const-wide/16 v7, -0x1

    cmp-long v0, v5, v7

    if-eqz v0, :cond_d4

    iget-wide v5, v4, LsW;->b:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iget-wide v7, p0, Ltc;->a:J

    cmp-long v0, v5, v7

    if-eqz v0, :cond_d4

    const/4 v0, 0x1

    .line 444
    :goto_89
    if-eqz v0, :cond_ab

    .line 445
    const-string v5, "DocsUploaderImpl"

    const-string v6, "Upload server byterange mismatch: we sent %d bytes, server acks %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-wide v9, p0, Ltc;->a:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-wide v9, v4, LsW;->b:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_ab
    iget-wide v4, v4, LsW;->b:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Ltc;->a:J

    .line 451
    :try_start_b2
    iget-object v4, p0, Ltc;->a:Ljava/io/RandomAccessFile;

    iget-wide v5, p0, Ltc;->a:J

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b9} :catch_d6

    .line 455
    if-eqz v0, :cond_df

    .line 457
    iget-object v0, p0, Ltc;->a:Lua;

    iget-wide v1, p0, Ltc;->a:J

    iget-object v3, p0, Ltc;->a:LtB;

    invoke-virtual {v3}, LtB;->a()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lua;->a(JJ)V

    .line 458
    new-instance v0, LtK;

    const-string v1, "Unable to upload item: Bytes lost in transmission."

    invoke-direct {v0, v1}, LtK;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_d4
    const/4 v0, 0x0

    goto :goto_89

    .line 452
    :catch_d6
    move-exception v0

    .line 453
    new-instance v1, LtH;

    const-string v2, "Error resending file data"

    invoke-direct {v1, v2, v0}, LtH;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 433
    :cond_df
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2d

    .line 461
    :cond_e4
    return-void
.end method

.method b()Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 6

    .prologue
    .line 409
    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    new-instance v1, Ljava/net/URI;

    iget-object v2, p0, Ltc;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/net/URI;)V
    :try_end_c
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_c} :catch_45

    .line 414
    const-string v1, "GData-Version"

    const-string v2, "3.0"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v1, "Content-Range"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes */"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltc;->a:LtB;

    invoke-virtual {v3}, LtB;->a()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 420
    return-object v0

    .line 410
    :catch_45
    move-exception v0

    .line 411
    new-instance v1, LtH;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltc;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LtH;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
