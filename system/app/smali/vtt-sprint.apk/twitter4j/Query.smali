.class public final Ltwitter4j/Query;
.super Ljava/lang/Object;
.source "Query.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final KILOMETERS:Ljava/lang/String; = "km"

.field public static final MILES:Ljava/lang/String; = "mi"

.field public static final MIXED:Ljava/lang/String; = "mixed"

.field public static final POPULAR:Ljava/lang/String; = "popular"

.field public static final RECENT:Ljava/lang/String; = "recent"

.field private static final serialVersionUID:J = -0x7086ea5335d69f40L


# instance fields
.field private geocode:Ljava/lang/String;

.field private lang:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private maxId:J

.field private page:I

.field private query:Ljava/lang/String;

.field private resultType:Ljava/lang/String;

.field private rpp:I

.field private since:Ljava/lang/String;

.field private sinceId:J

.field private until:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    .line 37
    iput-wide v2, p0, Ltwitter4j/Query;->maxId:J

    .line 38
    iput v1, p0, Ltwitter4j/Query;->rpp:I

    .line 39
    iput v1, p0, Ltwitter4j/Query;->page:I

    .line 40
    iput-object v0, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    .line 41
    iput-wide v2, p0, Ltwitter4j/Query;->sinceId:J

    .line 42
    iput-object v0, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .parameter "query"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    .line 37
    iput-wide v2, p0, Ltwitter4j/Query;->maxId:J

    .line 38
    iput v1, p0, Ltwitter4j/Query;->rpp:I

    .line 39
    iput v1, p0, Ltwitter4j/Query;->page:I

    .line 40
    iput-object v0, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    .line 41
    iput-wide v2, p0, Ltwitter4j/Query;->sinceId:J

    .line 42
    iput-object v0, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private appendParameter(Ljava/lang/String;JLjava/util/List;)V
    .registers 7
    .parameter "name"
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 440
    .local p4, params:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p2

    if-gtz v0, :cond_12

    .line 441
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_12
    return-void
.end method

.method private appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .parameter "name"
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p3, params:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    if-eqz p2, :cond_a

    .line 435
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {v0, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_a
    return-void
.end method


# virtual methods
.method asHttpParameterArray()[Ltwitter4j/internal/http/HttpParameter;
    .registers 6

    .prologue
    .line 417
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .local v1, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltwitter4j/internal/http/HttpParameter;>;"
    const-string v2, "q"

    iget-object v3, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 419
    const-string v2, "lang"

    iget-object v3, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 420
    const-string v2, "locale"

    iget-object v3, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 421
    const-string v2, "max_id"

    iget-wide v3, p0, Ltwitter4j/Query;->maxId:J

    invoke-direct {p0, v2, v3, v4, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;JLjava/util/List;)V

    .line 422
    const-string v2, "rpp"

    iget v3, p0, Ltwitter4j/Query;->rpp:I

    int-to-long v3, v3

    invoke-direct {p0, v2, v3, v4, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;JLjava/util/List;)V

    .line 423
    const-string v2, "page"

    iget v3, p0, Ltwitter4j/Query;->page:I

    int-to-long v3, v3

    invoke-direct {p0, v2, v3, v4, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;JLjava/util/List;)V

    .line 424
    const-string v2, "since"

    iget-object v3, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 425
    const-string v2, "since_id"

    iget-wide v3, p0, Ltwitter4j/Query;->sinceId:J

    invoke-direct {p0, v2, v3, v4, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;JLjava/util/List;)V

    .line 426
    const-string v2, "geocode"

    iget-object v3, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 427
    const-string v2, "until"

    iget-object v3, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 428
    const-string v2, "result_type"

    iget-object v3, p0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 429
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ltwitter4j/internal/http/HttpParameter;

    .line 430
    .local v0, paramArray:[Ltwitter4j/internal/http/HttpParameter;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ltwitter4j/internal/http/HttpParameter;

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 447
    if-ne p0, p1, :cond_5

    .line 471
    :cond_4
    :goto_4
    return v1

    .line 448
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 450
    check-cast v0, Ltwitter4j/Query;

    .line 452
    .local v0, query1:Ltwitter4j/Query;
    iget-wide v3, p0, Ltwitter4j/Query;->maxId:J

    iget-wide v5, v0, Ltwitter4j/Query;->maxId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_20

    move v1, v2

    goto :goto_4

    .line 453
    :cond_20
    iget v3, p0, Ltwitter4j/Query;->page:I

    iget v4, v0, Ltwitter4j/Query;->page:I

    if-eq v3, v4, :cond_28

    move v1, v2

    goto :goto_4

    .line 454
    :cond_28
    iget v3, p0, Ltwitter4j/Query;->rpp:I

    iget v4, v0, Ltwitter4j/Query;->rpp:I

    if-eq v3, v4, :cond_30

    move v1, v2

    goto :goto_4

    .line 455
    :cond_30
    iget-wide v3, p0, Ltwitter4j/Query;->sinceId:J

    iget-wide v5, v0, Ltwitter4j/Query;->sinceId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3a

    move v1, v2

    goto :goto_4

    .line 456
    :cond_3a
    iget-object v3, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    if-eqz v3, :cond_4a

    iget-object v3, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    :cond_48
    move v1, v2

    .line 457
    goto :goto_4

    .line 456
    :cond_4a
    iget-object v3, v0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    if-nez v3, :cond_48

    .line 458
    :cond_4e
    iget-object v3, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    if-eqz v3, :cond_5e

    iget-object v3, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_62

    :cond_5c
    move v1, v2

    .line 459
    goto :goto_4

    .line 458
    :cond_5e
    iget-object v3, v0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    if-nez v3, :cond_5c

    .line 460
    :cond_62
    iget-object v3, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    if-eqz v3, :cond_72

    iget-object v3, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_76

    :cond_70
    move v1, v2

    .line 461
    goto :goto_4

    .line 460
    :cond_72
    iget-object v3, v0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    if-nez v3, :cond_70

    .line 462
    :cond_76
    iget-object v3, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    if-eqz v3, :cond_87

    iget-object v3, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/Query;->query:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8b

    :cond_84
    move v1, v2

    .line 463
    goto/16 :goto_4

    .line 462
    :cond_87
    iget-object v3, v0, Ltwitter4j/Query;->query:Ljava/lang/String;

    if-nez v3, :cond_84

    .line 464
    :cond_8b
    iget-object v3, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    if-eqz v3, :cond_9c

    iget-object v3, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/Query;->since:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a0

    :cond_99
    move v1, v2

    .line 465
    goto/16 :goto_4

    .line 464
    :cond_9c
    iget-object v3, v0, Ltwitter4j/Query;->since:Ljava/lang/String;

    if-nez v3, :cond_99

    .line 466
    :cond_a0
    iget-object v3, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    if-eqz v3, :cond_b1

    iget-object v3, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/Query;->until:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b5

    :cond_ae
    move v1, v2

    .line 467
    goto/16 :goto_4

    .line 466
    :cond_b1
    iget-object v3, v0, Ltwitter4j/Query;->until:Ljava/lang/String;

    if-nez v3, :cond_ae

    .line 468
    :cond_b5
    iget-object v3, p0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    if-eqz v3, :cond_c6

    iget-object v3, p0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_c3
    move v1, v2

    .line 469
    goto/16 :goto_4

    .line 468
    :cond_c6
    iget-object v3, v0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_c3
.end method

.method public geoCode(Ltwitter4j/GeoLocation;DLjava/lang/String;)Ltwitter4j/Query;
    .registers 5
    .parameter "location"
    .parameter "radius"
    .parameter "unit"

    .prologue
    .line 339
    invoke-virtual {p0, p1, p2, p3, p4}, Ltwitter4j/Query;->setGeoCode(Ltwitter4j/GeoLocation;DLjava/lang/String;)V

    .line 340
    return-object p0
.end method

.method public getGeocode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxId()J
    .registers 3

    .prologue
    .line 157
    iget-wide v0, p0, Ltwitter4j/Query;->maxId:J

    return-wide v0
.end method

.method public getPage()I
    .registers 2

    .prologue
    .line 218
    iget v0, p0, Ltwitter4j/Query;->page:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getResultType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 391
    iget-object v0, p0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    return-object v0
.end method

.method public getRpp()I
    .registers 2

    .prologue
    .line 188
    iget v0, p0, Ltwitter4j/Query;->rpp:I

    return v0
.end method

.method public getSince()Ljava/lang/String;
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    return-object v0
.end method

.method public getSinceId()J
    .registers 3

    .prologue
    .line 280
    iget-wide v0, p0, Ltwitter4j/Query;->sinceId:J

    return-wide v0
.end method

.method public getUntil()Ljava/lang/String;
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 9

    .prologue
    const/16 v7, 0x20

    const/4 v1, 0x0

    .line 476
    iget-object v2, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    if-eqz v2, :cond_84

    iget-object v2, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 477
    .local v0, result:I
    :goto_d
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    if-eqz v2, :cond_86

    iget-object v2, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_19
    add-int v0, v3, v2

    .line 478
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    if-eqz v2, :cond_88

    iget-object v2, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_27
    add-int v0, v3, v2

    .line 479
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v3, p0, Ltwitter4j/Query;->maxId:J

    iget-wide v5, p0, Ltwitter4j/Query;->maxId:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v2, v3

    .line 480
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Ltwitter4j/Query;->rpp:I

    add-int v0, v2, v3

    .line 481
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Ltwitter4j/Query;->page:I

    add-int v0, v2, v3

    .line 482
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    if-eqz v2, :cond_8a

    iget-object v2, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4c
    add-int v0, v3, v2

    .line 483
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v3, p0, Ltwitter4j/Query;->sinceId:J

    iget-wide v5, p0, Ltwitter4j/Query;->sinceId:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v2, v3

    .line 484
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    if-eqz v2, :cond_8c

    iget-object v2, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_65
    add-int v0, v3, v2

    .line 485
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    if-eqz v2, :cond_8e

    iget-object v2, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_73
    add-int v0, v3, v2

    .line 486
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    if-eqz v3, :cond_81

    iget-object v1, p0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_81
    add-int v0, v2, v1

    .line 487
    return v0

    .end local v0           #result:I
    :cond_84
    move v0, v1

    .line 476
    goto :goto_d

    .restart local v0       #result:I
    :cond_86
    move v2, v1

    .line 477
    goto :goto_19

    :cond_88
    move v2, v1

    .line 478
    goto :goto_27

    :cond_8a
    move v2, v1

    .line 482
    goto :goto_4c

    :cond_8c
    move v2, v1

    .line 484
    goto :goto_65

    :cond_8e
    move v2, v1

    .line 485
    goto :goto_73
.end method

.method public lang(Ljava/lang/String;)Ltwitter4j/Query;
    .registers 2
    .parameter "lang"

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Ltwitter4j/Query;->setLang(Ljava/lang/String;)V

    .line 115
    return-object p0
.end method

.method public locale(Ljava/lang/String;)Ltwitter4j/Query;
    .registers 2
    .parameter "locale"

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Ltwitter4j/Query;->setLocale(Ljava/lang/String;)V

    .line 147
    return-object p0
.end method

.method public maxId(J)Ltwitter4j/Query;
    .registers 3
    .parameter "maxId"

    .prologue
    .line 178
    invoke-virtual {p0, p1, p2}, Ltwitter4j/Query;->setMaxId(J)V

    .line 179
    return-object p0
.end method

.method public page(I)Ltwitter4j/Query;
    .registers 2
    .parameter "page"

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Ltwitter4j/Query;->setPage(I)V

    .line 239
    return-object p0
.end method

.method public query(Ljava/lang/String;)Ltwitter4j/Query;
    .registers 2
    .parameter "query"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Ltwitter4j/Query;->setQuery(Ljava/lang/String;)V

    .line 85
    return-object p0
.end method

.method public resultType(Ljava/lang/String;)Ltwitter4j/Query;
    .registers 2
    .parameter "resultType"

    .prologue
    .line 412
    invoke-virtual {p0, p1}, Ltwitter4j/Query;->setResultType(Ljava/lang/String;)V

    .line 413
    return-object p0
.end method

.method public rpp(I)Ltwitter4j/Query;
    .registers 2
    .parameter "rpp"

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Ltwitter4j/Query;->setRpp(I)V

    .line 209
    return-object p0
.end method

.method public setGeoCode(Ltwitter4j/GeoLocation;DLjava/lang/String;)V
    .registers 8
    .parameter "location"
    .parameter "radius"
    .parameter "unit"

    .prologue
    .line 325
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ltwitter4j/GeoLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ltwitter4j/GeoLocation;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .registers 2
    .parameter "lang"

    .prologue
    .line 103
    iput-object p1, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .registers 2
    .parameter "locale"

    .prologue
    .line 135
    iput-object p1, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setMaxId(J)V
    .registers 3
    .parameter "maxId"

    .prologue
    .line 167
    iput-wide p1, p0, Ltwitter4j/Query;->maxId:J

    .line 168
    return-void
.end method

.method public setPage(I)V
    .registers 2
    .parameter "page"

    .prologue
    .line 227
    iput p1, p0, Ltwitter4j/Query;->page:I

    .line 228
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .registers 2
    .parameter "query"

    .prologue
    .line 71
    iput-object p1, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setResultType(Ljava/lang/String;)V
    .registers 2
    .parameter "resultType"

    .prologue
    .line 401
    iput-object p1, p0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    .line 402
    return-void
.end method

.method public setRpp(I)V
    .registers 2
    .parameter "rpp"

    .prologue
    .line 197
    iput p1, p0, Ltwitter4j/Query;->rpp:I

    .line 198
    return-void
.end method

.method public setSince(Ljava/lang/String;)V
    .registers 2
    .parameter "since"

    .prologue
    .line 259
    iput-object p1, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setSinceId(J)V
    .registers 3
    .parameter "sinceId"

    .prologue
    .line 289
    iput-wide p1, p0, Ltwitter4j/Query;->sinceId:J

    .line 290
    return-void
.end method

.method public setUntil(Ljava/lang/String;)V
    .registers 2
    .parameter "until"

    .prologue
    .line 360
    iput-object p1, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public since(Ljava/lang/String;)Ltwitter4j/Query;
    .registers 2
    .parameter "since"

    .prologue
    .line 270
    invoke-virtual {p0, p1}, Ltwitter4j/Query;->setSince(Ljava/lang/String;)V

    .line 271
    return-object p0
.end method

.method public sinceId(J)Ltwitter4j/Query;
    .registers 3
    .parameter "sinceId"

    .prologue
    .line 300
    invoke-virtual {p0, p1, p2}, Ltwitter4j/Query;->setSinceId(J)V

    .line 301
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x27

    .line 492
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Query{query=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", lang=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", locale=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", maxId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/Query;->maxId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", rpp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/Query;->rpp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/Query;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", since=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", sinceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/Query;->sinceId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", geocode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", until=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", resultType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public until(Ljava/lang/String;)Ltwitter4j/Query;
    .registers 2
    .parameter "until"

    .prologue
    .line 371
    invoke-virtual {p0, p1}, Ltwitter4j/Query;->setUntil(Ljava/lang/String;)V

    .line 372
    return-object p0
.end method
