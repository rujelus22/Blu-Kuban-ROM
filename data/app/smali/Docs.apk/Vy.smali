.class public LVy;
.super LVh;
.source "BinaryFileSynchronizer.java"


# instance fields
.field private final a:LIL;

.field private final a:LQN;

.field private final a:LVJ;

.field private final a:LXP;

.field private final a:LZU;

.field private final a:Llu;


# direct methods
.method public constructor <init>(Llu;LIL;LXP;LQN;LZU;LVJ;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, LVh;-><init>()V

    .line 98
    iput-object p1, p0, LVy;->a:Llu;

    .line 99
    iput-object p2, p0, LVy;->a:LIL;

    .line 100
    iput-object p3, p0, LVy;->a:LXP;

    .line 101
    iput-object p4, p0, LVy;->a:LQN;

    .line 102
    iput-object p5, p0, LVy;->a:LZU;

    .line 103
    iput-object p6, p0, LVy;->a:LVJ;

    .line 104
    return-void
.end method

.method private a(Ljava/io/InputStream;LVK;J)J
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 298
    :goto_1
    invoke-interface {p2}, LVK;->a()J

    move-result-wide v1

    cmp-long v1, p3, v1

    if-gez v1, :cond_53

    .line 299
    invoke-direct {p0}, LVy;->a()V

    .line 300
    invoke-interface {p2}, LVK;->a()J

    move-result-wide v1

    sub-long/2addr v1, p3

    const-wide/16 v3, 0x1000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 301
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 302
    invoke-virtual {p1, v2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 304
    const-string v2, "BinaryFileSynchronizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dumping data froms tream "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " target "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, LVK;->a()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    if-ltz v1, :cond_4b

    .line 307
    int-to-long v1, v1

    add-long/2addr p3, v1

    goto :goto_1

    .line 309
    :cond_4b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File truncated"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_53
    invoke-interface {p2}, LVK;->a()J

    move-result-wide v1

    cmp-long v1, p3, v1

    if-nez v1, :cond_5c

    const/4 v0, 0x1

    :cond_5c
    invoke-static {v0}, LafQ;->b(Z)V

    .line 314
    return-wide p3
.end method

.method private a(Ljava/lang/String;LkR;LQM;Lorg/apache/http/HttpResponse;)LVK;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 321
    const-string v1, "ETag"

    invoke-interface {p4, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 323
    if-eqz v1, :cond_32

    .line 324
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 327
    :goto_d
    const-string v1, "Content-Disposition"

    invoke-interface {p4, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 329
    if-eqz v1, :cond_30

    .line 330
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LZv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 336
    :goto_1d
    invoke-direct {p0}, LVy;->a()V

    .line 338
    iget-object v0, p0, LVy;->a:LQN;

    move-object v1, p2

    move-object v2, p1

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, LQN;->a(LkR;Ljava/lang/String;Ljava/lang/String;LQM;Ljava/lang/String;)LQO;

    move-result-object v0

    .line 340
    iget-object v1, p0, LVy;->a:LVJ;

    invoke-interface {v1, v0}, LVJ;->a(LQO;)LVK;

    move-result-object v0

    return-object v0

    :cond_30
    move-object v5, v0

    goto :goto_1d

    :cond_32
    move-object v3, v0

    goto :goto_d
.end method

.method private a(LVd;LVK;Lorg/apache/http/HttpResponse;JI)Ljava/io/InputStream;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 252
    invoke-direct {p0}, LVy;->a()V

    .line 254
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 255
    if-nez v0, :cond_11

    .line 256
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Response entity is null."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_11
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 260
    invoke-direct {p0, v1, p2, p4, p5}, LVy;->a(Ljava/io/InputStream;LVK;J)J

    move-result-wide v5

    .line 262
    if-eqz p1, :cond_45

    .line 263
    new-instance v0, LVP;

    int-to-long v3, p6

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, LVP;-><init>(Ljava/io/InputStream;LVd;JJ)V

    .line 267
    :goto_22
    invoke-direct {p0}, LVy;->a()V

    .line 273
    :try_start_25
    iget-object v1, p0, LVy;->a:LXP;

    iget-object v2, p0, LVy;->a:LXP;

    invoke-interface {p2, v2}, LVK;->a(LXP;)Ljava/io/OutputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, LXP;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    :try_end_31
    .catchall {:try_start_25 .. :try_end_31} :catchall_40

    .line 275
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 278
    invoke-direct {p0}, LVy;->a()V

    .line 283
    invoke-interface {p2}, LVK;->a()V

    .line 284
    if-eqz p1, :cond_3f

    .line 285
    invoke-interface {p1}, LVd;->b()V

    .line 287
    :cond_3f
    return-object v0

    .line 275
    :catchall_40
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1

    :cond_45
    move-object v0, v1

    goto :goto_22
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;LVK;)Lorg/apache/http/HttpResponse;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 350
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 351
    invoke-direct {p0, v1}, LVy;->a(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 352
    iget-object v0, p0, LVy;->a:LIL;

    invoke-interface {v0, v1}, LIL;->a(Lorg/apache/http/HttpRequest;)V

    .line 357
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "export"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_65

    const-string v0, "wise"

    .line 360
    :goto_20
    if-eqz p3, :cond_3d

    .line 362
    const-string v2, "If-Range"

    invoke-interface {p3}, LVK;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v2, "Range"

    new-instance v3, LsW;

    invoke-interface {p3}, LVK;->a()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, LsW;-><init>(J)V

    invoke-virtual {v3}, LsW;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_3d
    iget-object v2, p0, LVy;->a:LIL;

    const/4 v3, 0x5

    invoke-static {v2, p1, v1, v3, v0}, LJj;->a(LIL;Ljava/lang/String;Lorg/apache/http/client/methods/HttpRequestBase;ILjava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 370
    invoke-direct {p0}, LVy;->a()V

    .line 372
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 373
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_67

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xce

    if-eq v2, v3, :cond_67

    .line 375
    new-instance v0, Ljava/io/IOException;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_65
    const/4 v0, 0x0

    goto :goto_20

    .line 378
    :cond_67
    return-object v0
.end method

.method private a()V
    .registers 4

    .prologue
    .line 416
    invoke-static {}, Lcg;->b()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 417
    new-instance v0, LFy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - thread interrupted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LFy;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_23
    return-void
.end method

.method private a(LVd;Ljava/lang/String;Ljava/lang/Exception;LpQ;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 394
    const-string v0, "BinaryFileSynchronizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error synching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    if-eqz p1, :cond_21

    .line 397
    invoke-virtual {p4}, LpQ;->a()I

    move-result v0

    invoke-interface {p1, v0}, LVd;->a(I)V

    .line 400
    :cond_21
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .registers 4
    .parameter

    .prologue
    .line 382
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 384
    const v1, 0x1d4c0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 386
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 388
    invoke-interface {p1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 389
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;LkR;LQM;Lorg/apache/http/HttpResponse;LVK;)LVz;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 199
    const-wide/16 v2, 0x0

    .line 203
    invoke-interface {p4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v5, 0xce

    if-eq v1, v5, :cond_be

    .line 204
    if-eqz p5, :cond_35

    .line 205
    invoke-interface {p5}, LVK;->close()V

    .line 206
    const-string v1, "BinaryFileSynchronizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Recovery failed, status code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    move-object v5, v0

    .line 211
    :goto_36
    if-nez v5, :cond_6b

    .line 213
    invoke-direct {p0, p1, p2, p3, p4}, LVy;->a(Ljava/lang/String;LkR;LQM;Lorg/apache/http/HttpResponse;)LVK;

    move-result-object v5

    .line 215
    if-nez v5, :cond_5b

    .line 216
    const-string v1, "BinaryFileSynchronizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open document for writing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, LkR;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_5a
    return-object v0

    .line 220
    :cond_5b
    invoke-interface {p4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    long-to-int v4, v0

    .line 243
    :cond_64
    :goto_64
    new-instance v0, LVz;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, LVz;-><init>(LVy;JILVK;)V

    goto :goto_5a

    .line 223
    :cond_6b
    const-string v0, "Content-Range"

    invoke-interface {p4, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_64

    .line 226
    :try_start_73
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LsW;->a(Ljava/lang/String;)LsW;

    move-result-object v0

    .line 227
    iget-wide v2, v0, LsW;->a:J

    .line 228
    iget-wide v0, v0, LsW;->b:J

    long-to-int v4, v0

    .line 230
    invoke-interface {v5}, LVK;->a()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_9b

    .line 231
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Invalid parsed result"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_91
    .catch Ljava/text/ParseException; {:try_start_73 .. :try_end_91} :catch_91

    .line 235
    :catch_91
    move-exception v0

    .line 237
    invoke-interface {v5}, LVK;->close()V

    .line 239
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 234
    :cond_9b
    :try_start_9b
    const-string v0, "BinaryFileSynchronizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Recovered location "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " size "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catch Ljava/text/ParseException; {:try_start_9b .. :try_end_bd} :catch_91

    goto :goto_64

    :cond_be
    move-object v5, p5

    goto/16 :goto_36
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LVd;)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 407
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LVd;)V
    .registers 22
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    const/4 v14, 0x0

    .line 111
    const/4 v4, 0x0

    .line 112
    invoke-static/range {p5 .. p5}, LQM;->valueOf(Ljava/lang/String;)LQM;

    move-result-object v5

    .line 113
    const/4 v7, 0x0

    .line 117
    if-eqz p6, :cond_c

    .line 118
    :try_start_9
    invoke-interface/range {p6 .. p6}, LVd;->a()V

    .line 120
    :cond_c
    invoke-direct {p0}, LVy;->a()V

    .line 122
    iget-object v2, p0, LVy;->a:Llu;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Llu;->b(Ljava/lang/String;)LkG;
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_2fd
    .catch LFy; {:try_start_9 .. :try_end_16} :catch_112
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_9 .. :try_end_16} :catch_14d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_16} :catch_188
    .catch LJi; {:try_start_9 .. :try_end_16} :catch_1d6
    .catch Landroid/accounts/AuthenticatorException; {:try_start_9 .. :try_end_16} :catch_211
    .catch LFw; {:try_start_9 .. :try_end_16} :catch_24c
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_16} :catch_287
    .catch LJk; {:try_start_9 .. :try_end_16} :catch_2c2

    move-result-object v2

    .line 123
    if-nez v2, :cond_49

    .line 172
    if-eqz v14, :cond_1e

    .line 173
    :try_start_1b
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 175
    :cond_1e
    if-eqz v7, :cond_2f

    invoke-interface {v7}, LVK;->b()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 176
    invoke-interface {v7}, LVK;->a()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 177
    invoke-interface {v7}, LVK;->close()V
    :try_end_2f
    .catchall {:try_start_1b .. :try_end_2f} :catchall_42
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_2f} :catch_3b

    .line 185
    :cond_2f
    :goto_2f
    iget-object v2, p0, LVy;->a:LIL;

    invoke-interface {v2}, LIL;->b()V

    .line 188
    :goto_34
    return-void

    .line 179
    :cond_35
    :try_start_35
    iget-object v2, p0, LVy;->a:LVJ;

    invoke-interface {v2, v4, v5, v7}, LVJ;->a(LkR;LQM;LVK;)V
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_42
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3a} :catch_3b

    goto :goto_2f

    .line 182
    :catch_3b
    move-exception v2

    .line 183
    :try_start_3c
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_42

    .line 185
    :catchall_42
    move-exception v2

    iget-object v3, p0, LVy;->a:LIL;

    invoke-interface {v3}, LIL;->b()V

    throw v2

    .line 127
    :cond_49
    :try_start_49
    invoke-direct {p0}, LVy;->a()V

    .line 129
    iget-object v3, p0, LVy;->a:Llu;

    move-object/from16 v0, p1

    invoke-interface {v3, v2, v0}, Llu;->a(LkG;Ljava/lang/String;)LkR;
    :try_end_53
    .catchall {:try_start_49 .. :try_end_53} :catchall_2fd
    .catch LFy; {:try_start_49 .. :try_end_53} :catch_112
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_49 .. :try_end_53} :catch_14d
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_53} :catch_188
    .catch LJi; {:try_start_49 .. :try_end_53} :catch_1d6
    .catch Landroid/accounts/AuthenticatorException; {:try_start_49 .. :try_end_53} :catch_211
    .catch LFw; {:try_start_49 .. :try_end_53} :catch_24c
    .catch Ljava/net/URISyntaxException; {:try_start_49 .. :try_end_53} :catch_287
    .catch LJk; {:try_start_49 .. :try_end_53} :catch_2c2

    move-result-object v4

    .line 130
    if-nez v4, :cond_86

    .line 172
    if-eqz v14, :cond_5b

    .line 173
    :try_start_58
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 175
    :cond_5b
    if-eqz v7, :cond_6c

    invoke-interface {v7}, LVK;->b()Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 176
    invoke-interface {v7}, LVK;->a()Z

    move-result v2

    if-eqz v2, :cond_72

    .line 177
    invoke-interface {v7}, LVK;->close()V
    :try_end_6c
    .catchall {:try_start_58 .. :try_end_6c} :catchall_7f
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_6c} :catch_78

    .line 185
    :cond_6c
    :goto_6c
    iget-object v2, p0, LVy;->a:LIL;

    invoke-interface {v2}, LIL;->b()V

    goto :goto_34

    .line 179
    :cond_72
    :try_start_72
    iget-object v2, p0, LVy;->a:LVJ;

    invoke-interface {v2, v4, v5, v7}, LVJ;->a(LkR;LQM;LVK;)V
    :try_end_77
    .catchall {:try_start_72 .. :try_end_77} :catchall_7f
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_77} :catch_78

    goto :goto_6c

    .line 182
    :catch_78
    move-exception v2

    .line 183
    :try_start_79
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
    :try_end_7f
    .catchall {:try_start_79 .. :try_end_7f} :catchall_7f

    .line 185
    :catchall_7f
    move-exception v2

    iget-object v3, p0, LVy;->a:LIL;

    invoke-interface {v3}, LIL;->b()V

    throw v2

    .line 134
    :cond_86
    :try_start_86
    invoke-direct {p0}, LVy;->a()V

    .line 136
    iget-object v2, p0, LVy;->a:LVJ;

    invoke-interface {v2, v4, v5}, LVJ;->a(LkR;LQM;)LVK;

    move-result-object v7

    .line 138
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v1, v7}, LVy;->a(Ljava/lang/String;Ljava/lang/String;LVK;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    move-object v2, p0

    move-object/from16 v3, p4

    .line 140
    invoke-virtual/range {v2 .. v7}, LVy;->a(Ljava/lang/String;LkR;LQM;Lorg/apache/http/HttpResponse;LVK;)LVz;
    :try_end_9d
    .catchall {:try_start_86 .. :try_end_9d} :catchall_2fd
    .catch LFy; {:try_start_86 .. :try_end_9d} :catch_112
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_86 .. :try_end_9d} :catch_14d
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_9d} :catch_188
    .catch LJi; {:try_start_86 .. :try_end_9d} :catch_1d6
    .catch Landroid/accounts/AuthenticatorException; {:try_start_86 .. :try_end_9d} :catch_211
    .catch LFw; {:try_start_86 .. :try_end_9d} :catch_24c
    .catch Ljava/net/URISyntaxException; {:try_start_86 .. :try_end_9d} :catch_287
    .catch LJk; {:try_start_86 .. :try_end_9d} :catch_2c2

    move-result-object v2

    .line 142
    if-nez v2, :cond_d1

    .line 172
    if-eqz v14, :cond_a5

    .line 173
    :try_start_a2
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 175
    :cond_a5
    if-eqz v7, :cond_b6

    invoke-interface {v7}, LVK;->b()Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 176
    invoke-interface {v7}, LVK;->a()Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 177
    invoke-interface {v7}, LVK;->close()V
    :try_end_b6
    .catchall {:try_start_a2 .. :try_end_b6} :catchall_ca
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_b6} :catch_c3

    .line 185
    :cond_b6
    :goto_b6
    iget-object v2, p0, LVy;->a:LIL;

    invoke-interface {v2}, LIL;->b()V

    goto/16 :goto_34

    .line 179
    :cond_bd
    :try_start_bd
    iget-object v2, p0, LVy;->a:LVJ;

    invoke-interface {v2, v4, v5, v7}, LVJ;->a(LkR;LQM;LVK;)V
    :try_end_c2
    .catchall {:try_start_bd .. :try_end_c2} :catchall_ca
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c2} :catch_c3

    goto :goto_b6

    .line 182
    :catch_c3
    move-exception v2

    .line 183
    :try_start_c4
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
    :try_end_ca
    .catchall {:try_start_c4 .. :try_end_ca} :catchall_ca

    .line 185
    :catchall_ca
    move-exception v2

    iget-object v3, p0, LVy;->a:LIL;

    invoke-interface {v3}, LIL;->b()V

    throw v2

    .line 145
    :cond_d1
    :try_start_d1
    iget-object v3, v2, LVz;->a:LVK;
    :try_end_d3
    .catchall {:try_start_d1 .. :try_end_d3} :catchall_2fd
    .catch LFy; {:try_start_d1 .. :try_end_d3} :catch_112
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_d1 .. :try_end_d3} :catch_14d
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d3} :catch_188
    .catch LJi; {:try_start_d1 .. :try_end_d3} :catch_1d6
    .catch Landroid/accounts/AuthenticatorException; {:try_start_d1 .. :try_end_d3} :catch_211
    .catch LFw; {:try_start_d1 .. :try_end_d3} :catch_24c
    .catch Ljava/net/URISyntaxException; {:try_start_d1 .. :try_end_d3} :catch_287
    .catch LJk; {:try_start_d1 .. :try_end_d3} :catch_2c2

    .line 147
    :try_start_d3
    iget-object v9, v2, LVz;->a:LVK;

    iget-wide v11, v2, LVz;->a:J

    iget v13, v2, LVz;->a:I

    move-object v7, p0

    move-object/from16 v8, p6

    move-object v10, v6

    invoke-direct/range {v7 .. v13}, LVy;->a(LVd;LVK;Lorg/apache/http/HttpResponse;JI)Ljava/io/InputStream;
    :try_end_e0
    .catchall {:try_start_d3 .. :try_end_e0} :catchall_32e
    .catch LFy; {:try_start_d3 .. :try_end_e0} :catch_34c
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_d3 .. :try_end_e0} :catch_348
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_e0} :catch_344
    .catch LJi; {:try_start_d3 .. :try_end_e0} :catch_340
    .catch Landroid/accounts/AuthenticatorException; {:try_start_d3 .. :try_end_e0} :catch_33c
    .catch LFw; {:try_start_d3 .. :try_end_e0} :catch_338
    .catch Ljava/net/URISyntaxException; {:try_start_d3 .. :try_end_e0} :catch_334
    .catch LJk; {:try_start_d3 .. :try_end_e0} :catch_331

    move-result-object v2

    .line 172
    if-eqz v2, :cond_e6

    .line 173
    :try_start_e3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 175
    :cond_e6
    if-eqz v3, :cond_f7

    invoke-interface {v3}, LVK;->b()Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 176
    invoke-interface {v3}, LVK;->a()Z

    move-result v2

    if-eqz v2, :cond_fe

    .line 177
    invoke-interface {v3}, LVK;->close()V
    :try_end_f7
    .catchall {:try_start_e3 .. :try_end_f7} :catchall_10b
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_f7} :catch_104

    .line 185
    :cond_f7
    :goto_f7
    iget-object v2, p0, LVy;->a:LIL;

    invoke-interface {v2}, LIL;->b()V

    goto/16 :goto_34

    .line 179
    :cond_fe
    :try_start_fe
    iget-object v2, p0, LVy;->a:LVJ;

    invoke-interface {v2, v4, v5, v3}, LVJ;->a(LkR;LQM;LVK;)V
    :try_end_103
    .catchall {:try_start_fe .. :try_end_103} :catchall_10b
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_103} :catch_104

    goto :goto_f7

    .line 182
    :catch_104
    move-exception v2

    .line 183
    :try_start_105
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
    :try_end_10b
    .catchall {:try_start_105 .. :try_end_10b} :catchall_10b

    .line 185
    :catchall_10b
    move-exception v2

    iget-object v3, p0, LVy;->a:LIL;

    invoke-interface {v3}, LIL;->b()V

    throw v2

    .line 149
    :catch_112
    move-exception v2

    .line 150
    :goto_113
    :try_start_113
    sget-object v3, LpQ;->a:LpQ;

    move-object/from16 v0, p6

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v1, v2, v3}, LVy;->a(LVd;Ljava/lang/String;Ljava/lang/Exception;LpQ;)V
    :try_end_11c
    .catchall {:try_start_113 .. :try_end_11c} :catchall_2fd

    .line 172
    if-eqz v14, :cond_121

    .line 173
    :try_start_11e
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 175
    :cond_121
    if-eqz v7, :cond_132

    invoke-interface {v7}, LVK;->b()Z

    move-result v2

    if-eqz v2, :cond_132

    .line 176
    invoke-interface {v7}, LVK;->a()Z

    move-result v2

    if-eqz v2, :cond_139

    .line 177
    invoke-interface {v7}, LVK;->close()V
    :try_end_132
    .catchall {:try_start_11e .. :try_end_132} :catchall_146
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_132} :catch_13f

    .line 185
    :cond_132
    :goto_132
    iget-object v2, p0, LVy;->a:LIL;

    invoke-interface {v2}, LIL;->b()V

    goto/16 :goto_34

    .line 179
    :cond_139
    :try_start_139
    iget-object v2, p0, LVy;->a:LVJ;

    invoke-interface {v2, v4, v5, v7}, LVJ;->a(LkR;LQM;LVK;)V
    :try_end_13e
    .catchall {:try_start_139 .. :try_end_13e} :catchall_146
    .catch Ljava/io/IOException; {:try_start_139 .. :try_end_13e} :catch_13f

    goto :goto_132

    .line 182
    :catch_13f
    move-exception v2

    .line 183
    :try_start_140
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
    :try_end_146
    .catchall {:try_start_140 .. :try_end_146} :catchall_146

    .line 185
    :catchall_146
    move-exception v2

    iget-object v3, p0, LVy;->a:LIL;

    invoke-interface {v3}, LIL;->b()V

    throw v2

    .line 151
    :catch_14d
    move-exception v2

    .line 152
    :goto_14e
    :try_start_14e
    sget-object v3, LpQ;->h:LpQ;

    move-object/from16 v0, p6

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v1, v2, v3}, LVy;->a(LVd;Ljava/lang/String;Ljava/lang/Exception;LpQ;)V
    :try_end_157
    .catchall {:try_start_14e .. :try_end_157} :catchall_2fd

    .line 172
    if-eqz v14, :cond_15c

    .line 173
    :try_start_159
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 175
    :cond_15c
    if-eqz v7, :cond_16d

    invoke-interface {v7}, LVK;->b()Z

    move-result v2

    if-eqz v2, :cond_16d

    .line 176
    invoke-interface {v7}, LVK;->a()Z

    move-result v2

    if-eqz v2, :cond_174

    .line 177
    invoke-interface {v7}, LVK;->close()V
    :try_end_16d
    .catchall {:try_start_159 .. :try_end_16d} :catchall_181
    .catch Ljava/io/IOException; {:try_start_159 .. :try_end_16d} :catch_17a

    .line 185
    :cond_16d
    :goto_16d
    iget-object v2, p0, LVy;->a:LIL;

    invoke-interface {v2}, LIL;->b()V

    goto/16 :goto_34

    .line 179
    :cond_174
    :try_start_174
    iget-object v2, p0, LVy;->a:LVJ;

    invoke-interface {v2, v4, v5, v7}, LVJ;->a(LkR;LQM;LVK;)V
    :try_end_179
    .catchall {:try_start_174 .. :try_end_179} :catchall_181
    .catch Ljava/io/IOException; {:try_start_174 .. :try_end_179} :catch_17a

    goto :goto_16d

    .line 182
    :catch_17a
    move-exception v2

    .line 183
    :try_start_17b
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
    :try_end_181
    .catchall {:try_start_17b .. :try_end_181} :catchall_181

    .line 185
    :catchall_181
    move-exception v2

    iget-object v3, p0, LVy;->a:LIL;

    invoke-interface {v3}, LIL;->b()V

    throw v2

    .line 153
    :catch_188
    move-exception v2

    .line 154
    :goto_189
    if-eqz v4, :cond_1bf

    :try_start_18b
    invoke-virtual {v4}, LkR;->g()Z

    move-result v3

    if-eqz v3, :cond_1bf

    iget-object v3, p0, LVy;->a:LZU;

    invoke-interface {v3}, LZU;->b()Z

    move-result v3

    if-nez v3, :cond_1bf

    sget-object v3, LpQ;->e:LpQ;

    .line 159
    :goto_19b
    move-object/from16 v0, p6

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v1, v2, v3}, LVy;->a(LVd;Ljava/lang/String;Ljava/lang/Exception;LpQ;)V
    :try_end_1a2
    .catchall {:try_start_18b .. :try_end_1a2} :catchall_2fd

    .line 172
    if-eqz v14, :cond_1a7

    .line 173
    :try_start_1a4
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 175
    :cond_1a7
    if-eqz v7, :cond_1b8

    invoke-interface {v7}, LVK;->b()Z

    move-result v2

    if-eqz v2, :cond_1b8

    .line 176
    invoke-interface {v7}, LVK;->a()Z

    move-result v2

    if-eqz v2, :cond_1c2

    .line 177
    invoke-interface {v7}, LVK;->close()V
    :try_end_1b8
    .catchall {:try_start_1a4 .. :try_end_1b8} :catchall_1cf
    .catch Ljava/io/IOException; {:try_start_1a4 .. :try_end_1b8} :catch_1c8

    .line 185
    :cond_1b8
    :goto_1b8
    iget-object v2, p0, LVy;->a:LIL;

    invoke-interface {v2}, LIL;->b()V

    goto/16 :goto_34

    .line 154
    :cond_1bf
    :try_start_1bf
    sget-object v3, LpQ;->g:LpQ;
    :try_end_1c1
    .catchall {:try_start_1bf .. :try_end_1c1} :catchall_2fd

    goto :goto_19b

    .line 179
    :cond_1c2
    :try_start_1c2
    iget-object v2, p0, LVy;->a:LVJ;

    invoke-interface {v2, v4, v5, v7}, LVJ;->a(LkR;LQM;LVK;)V
    :try_end_1c7
    .catchall {:try_start_1c2 .. :try_end_1c7} :catchall_1cf
    .catch Ljava/io/IOException; {:try_start_1c2 .. :try_end_1c7} :catch_1c8

    goto :goto_1b8

    .line 182
    :catch_1c8
    move-exception v2

    .line 183
    :try_start_1c9
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
    :try_end_1cf
    .catchall {:try_start_1c9 .. :try_end_1cf} :catchall_1cf

    .line 185
    :catchall_1cf
    move-exception v2

    iget-object v3, p0, LVy;->a:LIL;

    invoke-interface {v3}, LIL;->b()V

    throw v2

    .line 160
    :catch_1d6
    move-exception v2

    .line 161
    :goto_1d7
    :try_start_1d7
    sget-object v3, LpQ;->f:LpQ;

    move-object/from16 v0, p6

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v1, v2, v3}, LVy;->a(LVd;Ljava/lang/String;Ljava/lang/Exception;LpQ;)V
    :try_end_1e0
    .catchall {:try_start_1d7 .. :try_end_1e0} :catchall_2fd

    .line 172
    if-eqz v14, :cond_1e5

    .line 173
    :try_start_1e2
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 175
    :cond_1e5
    if-eqz v7, :cond_1f6

    invoke-interface {v7}, LVK;->b()Z

    move-result v2

    if-eqz v2, :cond_1f6

    .line 176
    invoke-interface {v7}, LVK;->a()Z

    move-result v2

    if-eqz v2, :cond_1fd

    .line 177
    invoke-interface {v7}, LVK;->close()V
    :try_end_1f6
    .catchall {:try_start_1e2 .. :try_end_1f6} :catchall_20a
    .catch Ljava/io/IOException; {:try_start_1e2 .. :try_end_1f6} :catch_203

    .line 185
    :cond_1f6
    :goto_1f6
    iget-object v2, p0, LVy;->a:LIL;

    invoke-interface {v2}, LIL;->b()V

    goto/16 :goto_34

    .line 179
    :cond_1fd
    :try_start_1fd
    iget-object v2, p0, LVy;->a:LVJ;

    invoke-interface {v2, v4, v5, v7}, LVJ;->a(LkR;LQM;LVK;)V
    :try_end_202
    .catchall {:try_start_1fd .. :try_end_202} :catchall_20a
    .catch Ljava/io/IOException; {:try_start_1fd .. :try_end_202} :catch_203

    goto :goto_1f6

    .line 182
    :catch_203
    move-exception v2

    .line 183
    :try_start_204
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
    :try_end_20a
    .catchall {:try_start_204 .. :try_end_20a} :catchall_20a

    .line 185
    :catchall_20a
    move-exception v2

    iget-object v3, p0, LVy;->a:LIL;

    invoke-interface {v3}, LIL;->b()V

    throw v2

    .line 162
    :catch_211
    move-exception v2

    .line 163
    :goto_212
    :try_start_212
    sget-object v3, LpQ;->f:LpQ;

    move-object/from16 v0, p6

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v1, v2, v3}, LVy;->a(LVd;Ljava/lang/String;Ljava/lang/Exception;LpQ;)V
    :try_end_21b
    .catchall {:try_start_212 .. :try_end_21b} :catchall_2fd

    .line 172
    if-eqz v14, :cond_220

    .line 173
    :try_start_21d
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 175
    :cond_220
    if-eqz v7, :cond_231

    invoke-interface {v7}, LVK;->b()Z

    move-result v2

    if-eqz v2, :cond_231

    .line 176
    invoke-interface {v7}, LVK;->a()Z

    move-result v2

    if-eqz v2, :cond_238

    .line 177
    invoke-interface {v7}, LVK;->close()V
    :try_end_231
    .catchall {:try_start_21d .. :try_end_231} :catchall_245
    .catch Ljava/io/IOException; {:try_start_21d .. :try_end_231} :catch_23e

    .line 185
    :cond_231
    :goto_231
    iget-object v2, p0, LVy;->a:LIL;

    invoke-interface {v2}, LIL;->b()V

    goto/16 :goto_34

    .line 179
    :cond_238
    :try_start_238
    iget-object v2, p0, LVy;->a:LVJ;

    invoke-interface {v2, v4, v5, v7}, LVJ;->a(LkR;LQM;LVK;)V
    :try_end_23d
    .catchall {:try_start_238 .. :try_end_23d} :catchall_245
    .catch Ljava/io/IOException; {:try_start_238 .. :try_end_23d} :catch_23e

    goto :goto_231

    .line 182
    :catch_23e
    move-exception v2

    .line 183
    :try_start_23f
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
    :try_end_245
    .catchall {:try_start_23f .. :try_end_245} :catchall_245

    .line 185
    :catchall_245
    move-exception v2

    iget-object v3, p0, LVy;->a:LIL;

    invoke-interface {v3}, LIL;->b()V

    throw v2

    .line 164
    :catch_24c
    move-exception v2

    .line 165
    :goto_24d
    :try_start_24d
    sget-object v3, LpQ;->h:LpQ;

    move-object/from16 v0, p6

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v1, v2, v3}, LVy;->a(LVd;Ljava/lang/String;Ljava/lang/Exception;LpQ;)V
    :try_end_256
    .catchall {:try_start_24d .. :try_end_256} :catchall_2fd

    .line 172
    if-eqz v14, :cond_25b

    .line 173
    :try_start_258
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 175
    :cond_25b
    if-eqz v7, :cond_26c

    invoke-interface {v7}, LVK;->b()Z

    move-result v2

    if-eqz v2, :cond_26c

    .line 176
    invoke-interface {v7}, LVK;->a()Z

    move-result v2

    if-eqz v2, :cond_273

    .line 177
    invoke-interface {v7}, LVK;->close()V
    :try_end_26c
    .catchall {:try_start_258 .. :try_end_26c} :catchall_280
    .catch Ljava/io/IOException; {:try_start_258 .. :try_end_26c} :catch_279

    .line 185
    :cond_26c
    :goto_26c
    iget-object v2, p0, LVy;->a:LIL;

    invoke-interface {v2}, LIL;->b()V

    goto/16 :goto_34

    .line 179
    :cond_273
    :try_start_273
    iget-object v2, p0, LVy;->a:LVJ;

    invoke-interface {v2, v4, v5, v7}, LVJ;->a(LkR;LQM;LVK;)V
    :try_end_278
    .catchall {:try_start_273 .. :try_end_278} :catchall_280
    .catch Ljava/io/IOException; {:try_start_273 .. :try_end_278} :catch_279

    goto :goto_26c

    .line 182
    :catch_279
    move-exception v2

    .line 183
    :try_start_27a
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
    :try_end_280
    .catchall {:try_start_27a .. :try_end_280} :catchall_280

    .line 185
    :catchall_280
    move-exception v2

    iget-object v3, p0, LVy;->a:LIL;

    invoke-interface {v3}, LIL;->b()V

    throw v2

    .line 166
    :catch_287
    move-exception v2

    .line 167
    :goto_288
    :try_start_288
    sget-object v3, LpQ;->g:LpQ;

    move-object/from16 v0, p6

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v1, v2, v3}, LVy;->a(LVd;Ljava/lang/String;Ljava/lang/Exception;LpQ;)V
    :try_end_291
    .catchall {:try_start_288 .. :try_end_291} :catchall_2fd

    .line 172
    if-eqz v14, :cond_296

    .line 173
    :try_start_293
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 175
    :cond_296
    if-eqz v7, :cond_2a7

    invoke-interface {v7}, LVK;->b()Z

    move-result v2

    if-eqz v2, :cond_2a7

    .line 176
    invoke-interface {v7}, LVK;->a()Z

    move-result v2

    if-eqz v2, :cond_2ae

    .line 177
    invoke-interface {v7}, LVK;->close()V
    :try_end_2a7
    .catchall {:try_start_293 .. :try_end_2a7} :catchall_2bb
    .catch Ljava/io/IOException; {:try_start_293 .. :try_end_2a7} :catch_2b4

    .line 185
    :cond_2a7
    :goto_2a7
    iget-object v2, p0, LVy;->a:LIL;

    invoke-interface {v2}, LIL;->b()V

    goto/16 :goto_34

    .line 179
    :cond_2ae
    :try_start_2ae
    iget-object v2, p0, LVy;->a:LVJ;

    invoke-interface {v2, v4, v5, v7}, LVJ;->a(LkR;LQM;LVK;)V
    :try_end_2b3
    .catchall {:try_start_2ae .. :try_end_2b3} :catchall_2bb
    .catch Ljava/io/IOException; {:try_start_2ae .. :try_end_2b3} :catch_2b4

    goto :goto_2a7

    .line 182
    :catch_2b4
    move-exception v2

    .line 183
    :try_start_2b5
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
    :try_end_2bb
    .catchall {:try_start_2b5 .. :try_end_2bb} :catchall_2bb

    .line 185
    :catchall_2bb
    move-exception v2

    iget-object v3, p0, LVy;->a:LIL;

    invoke-interface {v3}, LIL;->b()V

    throw v2

    .line 168
    :catch_2c2
    move-exception v2

    .line 169
    :goto_2c3
    :try_start_2c3
    sget-object v3, LpQ;->g:LpQ;

    move-object/from16 v0, p6

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v1, v2, v3}, LVy;->a(LVd;Ljava/lang/String;Ljava/lang/Exception;LpQ;)V
    :try_end_2cc
    .catchall {:try_start_2c3 .. :try_end_2cc} :catchall_2fd

    .line 172
    if-eqz v14, :cond_2d1

    .line 173
    :try_start_2ce
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 175
    :cond_2d1
    if-eqz v7, :cond_2e2

    invoke-interface {v7}, LVK;->b()Z

    move-result v2

    if-eqz v2, :cond_2e2

    .line 176
    invoke-interface {v7}, LVK;->a()Z

    move-result v2

    if-eqz v2, :cond_2e9

    .line 177
    invoke-interface {v7}, LVK;->close()V
    :try_end_2e2
    .catchall {:try_start_2ce .. :try_end_2e2} :catchall_2f6
    .catch Ljava/io/IOException; {:try_start_2ce .. :try_end_2e2} :catch_2ef

    .line 185
    :cond_2e2
    :goto_2e2
    iget-object v2, p0, LVy;->a:LIL;

    invoke-interface {v2}, LIL;->b()V

    goto/16 :goto_34

    .line 179
    :cond_2e9
    :try_start_2e9
    iget-object v2, p0, LVy;->a:LVJ;

    invoke-interface {v2, v4, v5, v7}, LVJ;->a(LkR;LQM;LVK;)V
    :try_end_2ee
    .catchall {:try_start_2e9 .. :try_end_2ee} :catchall_2f6
    .catch Ljava/io/IOException; {:try_start_2e9 .. :try_end_2ee} :catch_2ef

    goto :goto_2e2

    .line 182
    :catch_2ef
    move-exception v2

    .line 183
    :try_start_2f0
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
    :try_end_2f6
    .catchall {:try_start_2f0 .. :try_end_2f6} :catchall_2f6

    .line 185
    :catchall_2f6
    move-exception v2

    iget-object v3, p0, LVy;->a:LIL;

    invoke-interface {v3}, LIL;->b()V

    throw v2

    .line 171
    :catchall_2fd
    move-exception v2

    .line 172
    :goto_2fe
    if-eqz v14, :cond_303

    .line 173
    :try_start_300
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 175
    :cond_303
    if-eqz v7, :cond_314

    invoke-interface {v7}, LVK;->b()Z

    move-result v3

    if-eqz v3, :cond_314

    .line 176
    invoke-interface {v7}, LVK;->a()Z

    move-result v3

    if-eqz v3, :cond_31a

    .line 177
    invoke-interface {v7}, LVK;->close()V
    :try_end_314
    .catchall {:try_start_300 .. :try_end_314} :catchall_327
    .catch Ljava/io/IOException; {:try_start_300 .. :try_end_314} :catch_320

    .line 185
    :cond_314
    :goto_314
    iget-object v3, p0, LVy;->a:LIL;

    invoke-interface {v3}, LIL;->b()V

    throw v2

    .line 179
    :cond_31a
    :try_start_31a
    iget-object v3, p0, LVy;->a:LVJ;

    invoke-interface {v3, v4, v5, v7}, LVJ;->a(LkR;LQM;LVK;)V
    :try_end_31f
    .catchall {:try_start_31a .. :try_end_31f} :catchall_327
    .catch Ljava/io/IOException; {:try_start_31a .. :try_end_31f} :catch_320

    goto :goto_314

    .line 182
    :catch_320
    move-exception v2

    .line 183
    :try_start_321
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
    :try_end_327
    .catchall {:try_start_321 .. :try_end_327} :catchall_327

    .line 185
    :catchall_327
    move-exception v2

    iget-object v3, p0, LVy;->a:LIL;

    invoke-interface {v3}, LIL;->b()V

    throw v2

    .line 171
    :catchall_32e
    move-exception v2

    move-object v7, v3

    goto :goto_2fe

    .line 168
    :catch_331
    move-exception v2

    move-object v7, v3

    goto :goto_2c3

    .line 166
    :catch_334
    move-exception v2

    move-object v7, v3

    goto/16 :goto_288

    .line 164
    :catch_338
    move-exception v2

    move-object v7, v3

    goto/16 :goto_24d

    .line 162
    :catch_33c
    move-exception v2

    move-object v7, v3

    goto/16 :goto_212

    .line 160
    :catch_340
    move-exception v2

    move-object v7, v3

    goto/16 :goto_1d7

    .line 153
    :catch_344
    move-exception v2

    move-object v7, v3

    goto/16 :goto_189

    .line 151
    :catch_348
    move-exception v2

    move-object v7, v3

    goto/16 :goto_14e

    .line 149
    :catch_34c
    move-exception v2

    move-object v7, v3

    goto/16 :goto_113
.end method
