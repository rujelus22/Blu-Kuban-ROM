.class public final Ldbxyzptlk/l/h;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ldbxyzptlk/l/k;


# direct methods
.method private constructor <init>(Lorg/apache/http/HttpResponse;)V
    .registers 7
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-object v0, p0, Ldbxyzptlk/l/h;->a:Ljava/lang/String;

    .line 367
    iput-wide v3, p0, Ldbxyzptlk/l/h;->b:J

    .line 368
    iput-object v0, p0, Ldbxyzptlk/l/h;->c:Ljava/lang/String;

    .line 369
    iput-object v0, p0, Ldbxyzptlk/l/h;->d:Ldbxyzptlk/l/k;

    .line 374
    invoke-static {p1}, Ldbxyzptlk/l/h;->a(Lorg/apache/http/HttpResponse;)Ldbxyzptlk/l/k;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/l/h;->d:Ldbxyzptlk/l/k;

    .line 375
    iget-object v0, p0, Ldbxyzptlk/l/h;->d:Ldbxyzptlk/l/k;

    if-nez v0, :cond_21

    .line 376
    new-instance v0, Ldbxyzptlk/m/d;

    const-string v1, "Error parsing metadata."

    invoke-direct {v0, v1}, Ldbxyzptlk/m/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_21
    iget-object v0, p0, Ldbxyzptlk/l/h;->d:Ldbxyzptlk/l/k;

    invoke-static {p1, v0}, Ldbxyzptlk/l/h;->a(Lorg/apache/http/HttpResponse;Ldbxyzptlk/l/k;)J

    move-result-wide v0

    iput-wide v0, p0, Ldbxyzptlk/l/h;->b:J

    .line 380
    iget-wide v0, p0, Ldbxyzptlk/l/h;->b:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_37

    .line 381
    new-instance v0, Ldbxyzptlk/m/d;

    const-string v1, "Error determining file size."

    invoke-direct {v0, v1}, Ldbxyzptlk/m/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_37
    const-string v0, "Content-Type"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 386
    if-eqz v0, :cond_6d

    .line 387
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 388
    if-eqz v0, :cond_6d

    .line 389
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 390
    array-length v1, v0

    if-lez v1, :cond_57

    .line 391
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldbxyzptlk/l/h;->a:Ljava/lang/String;

    .line 393
    :cond_57
    array-length v1, v0

    if-le v1, v2, :cond_6d

    .line 394
    aget-object v0, v0, v2

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 395
    array-length v1, v0

    if-le v1, v2, :cond_6d

    .line 396
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/l/h;->c:Ljava/lang/String;

    .line 401
    :cond_6d
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/http/HttpResponse;Ldbxyzptlk/l/b;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 364
    invoke-direct {p0, p1}, Ldbxyzptlk/l/h;-><init>(Lorg/apache/http/HttpResponse;)V

    return-void
.end method

.method private static a(Lorg/apache/http/HttpResponse;Ldbxyzptlk/l/k;)J
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 447
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    .line 448
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_f

    .line 457
    :goto_e
    return-wide v0

    .line 453
    :cond_f
    if-eqz p1, :cond_14

    .line 454
    iget-wide v0, p1, Ldbxyzptlk/l/k;->h:J

    goto :goto_e

    .line 457
    :cond_14
    const-wide/16 v0, -0x1

    goto :goto_e
.end method

.method private static a(Lorg/apache/http/HttpResponse;)Ldbxyzptlk/l/k;
    .registers 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 412
    if-nez p0, :cond_5

    move-object v0, v1

    .line 430
    :goto_4
    return-object v0

    .line 416
    :cond_5
    const-string v0, "X-Dropbox-Metadata"

    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 418
    if-nez v0, :cond_f

    move-object v0, v1

    .line 419
    goto :goto_4

    .line 423
    :cond_f
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-static {v0}, Ldbxyzptlk/B/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 425
    if-nez v0, :cond_1b

    move-object v0, v1

    .line 426
    goto :goto_4

    .line 429
    :cond_1b
    check-cast v0, Ljava/util/Map;

    .line 430
    new-instance v1, Ldbxyzptlk/l/k;

    invoke-direct {v1, v0}, Ldbxyzptlk/l/k;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    goto :goto_4
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Ldbxyzptlk/l/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()J
    .registers 3

    .prologue
    .line 480
    iget-wide v0, p0, Ldbxyzptlk/l/h;->b:J

    return-wide v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 488
    iget-object v0, p0, Ldbxyzptlk/l/h;->c:Ljava/lang/String;

    return-object v0
.end method
