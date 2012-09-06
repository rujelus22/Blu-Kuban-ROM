.class final Ldbxyzptlk/o/h;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lorg/apache/http/conn/ConnectionKeepAliveStrategy;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldbxyzptlk/o/b;)V
    .registers 2
    .parameter

    .prologue
    .line 353
    invoke-direct {p0}, Ldbxyzptlk/o/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 357
    const-wide/16 v0, 0x4e20

    .line 359
    new-instance v2, Lorg/apache/http/message/BasicHeaderElementIterator;

    const-string v3, "Keep-Alive"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/message/BasicHeaderElementIterator;-><init>(Lorg/apache/http/HeaderIterator;)V

    .line 361
    :cond_d
    :goto_d
    invoke-interface {v2}, Lorg/apache/http/HeaderElementIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 362
    invoke-interface {v2}, Lorg/apache/http/HeaderElementIterator;->nextElement()Lorg/apache/http/HeaderElement;

    move-result-object v3

    .line 363
    invoke-interface {v3}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v4

    .line 364
    invoke-interface {v3}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 365
    if-eqz v3, :cond_d

    const-string v5, "timeout"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 367
    :try_start_29
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_33} :catch_36

    move-result-wide v0

    goto :goto_d

    .line 372
    :cond_35
    return-wide v0

    .line 368
    :catch_36
    move-exception v3

    goto :goto_d
.end method
