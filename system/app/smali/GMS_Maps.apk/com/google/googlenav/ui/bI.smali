.class public Lcom/google/googlenav/ui/bi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/googlenav/ui/bl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 70
    new-instance v0, Lcom/google/googlenav/ui/bk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/bk;-><init>(Lcom/google/googlenav/ui/bj;)V

    sput-object v0, Lcom/google/googlenav/ui/bi;->a:Lcom/google/googlenav/ui/bl;

    return-void
.end method

.method public static a()I
    .registers 10

    .prologue
    const/4 v1, 0x1

    .line 348
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 352
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x7

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const v8, 0x36ee80

    mul-int/2addr v7, v8

    const/16 v8, 0xc

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const v9, 0xea60

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    const/16 v8, 0xd

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    mul-int/lit16 v8, v8, 0x3e8

    add-int/2addr v7, v8

    const/16 v8, 0xe

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v0

    return v0
.end method

.method public static a(III)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 633
    mul-int/lit8 v0, p0, 0x18

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v1, p1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    mul-int/lit8 v1, p2, 0x3c

    add-int/2addr v0, v1

    return v0
.end method

.method public static a(J)I
    .registers 6
    .parameter

    .prologue
    .line 614
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 615
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 616
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/googlenav/bK;->a(I)I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/google/googlenav/ui/bi;->a(III)I

    move-result v0

    return v0
.end method

.method public static a(Lad/b;)J
    .registers 5
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 391
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v2

    if-nez v2, :cond_b

    .line 395
    :cond_a
    :goto_a
    return-wide v0

    .line 394
    :cond_b
    invoke-virtual {p0}, Lad/b;->Q()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 395
    const/4 v3, 0x1

    invoke-static {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;IJ)J

    move-result-wide v0

    goto :goto_a
.end method

.method public static a(Ljava/util/Date;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 7
    .parameter

    .prologue
    .line 554
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/o;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 555
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 557
    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 489
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/googlenav/ui/bi;->a(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(IZ)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter

    .prologue
    const v1, 0x15180

    const/16 v0, 0x3c

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 494
    if-ge p0, v0, :cond_b

    move p0, v0

    .line 498
    :cond_b
    div-int v0, p0, v1

    .line 499
    rem-int v1, p0, v1

    div-int/lit16 v1, v1, 0xe10

    .line 500
    rem-int/lit16 v2, p0, 0xe10

    rem-int/lit16 v2, v2, 0xe10

    div-int/lit8 v2, v2, 0x3c

    .line 502
    if-lez v0, :cond_54

    .line 503
    if-eqz p1, :cond_34

    .line 504
    const/16 v2, 0x109

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 518
    :goto_33
    return-object v0

    .line 508
    :cond_34
    const/16 v3, 0x10a

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    .line 513
    :cond_54
    if-lez v1, :cond_6f

    .line 514
    const/16 v0, 0x10b

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v0, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    .line 518
    :cond_6f
    const/16 v0, 0x10c

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_33
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 375
    if-eqz p0, :cond_9

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 377
    :cond_9
    const-string v0, ""

    .line 381
    :goto_b
    return-object v0

    .line 380
    :cond_c
    invoke-static {p0}, Lcom/google/googlenav/ui/bi;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/Calendar;

    move-result-object v0

    .line 381
    invoke-static {v0, p1}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public static a(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Calendar;Z)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v1, 0xc

    .line 92
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 93
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 96
    invoke-static {}, Lcom/google/googlenav/K;->c()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 97
    if-eqz p1, :cond_3d

    .line 98
    if-lt v2, v1, :cond_36

    const/16 v0, 0x5b8

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_1f
    rem-int/lit8 v2, v2, 0xc

    .line 107
    if-nez v2, :cond_66

    .line 110
    :goto_23
    new-array v2, v6, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v3}, Lcom/google/googlenav/ui/bi;->c(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    :goto_35
    return-object v0

    .line 98
    :cond_36
    const/16 v0, 0x5b6

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 102
    :cond_3d
    if-lt v2, v1, :cond_46

    const/16 v0, 0x5b7

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_46
    const/16 v0, 0x5b5

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 113
    :cond_4d
    const/16 v0, 0x5b9

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    new-array v1, v6, [Ljava/lang/String;

    invoke-static {v2}, Lcom/google/googlenav/ui/bi;->c(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v3}, Lcom/google/googlenav/ui/bi;->c(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_35

    :cond_66
    move v1, v2

    goto :goto_23
.end method

.method public static a(JJ)Z
    .registers 12
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 654
    sget-object v2, Lcom/google/googlenav/ui/bi;->a:Lcom/google/googlenav/ui/bl;

    invoke-interface {v2}, Lcom/google/googlenav/ui/bl;->a()J

    move-result-wide v2

    .line 655
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-nez v4, :cond_1b

    .line 656
    sub-long/2addr v2, p0

    div-long/2addr v2, v6

    const-wide/16 v4, 0x258

    cmp-long v2, v2, v4

    if-lez v2, :cond_19

    .line 659
    :cond_18
    :goto_18
    return v0

    :cond_19
    move v0, v1

    .line 656
    goto :goto_18

    .line 659
    :cond_1b
    div-long/2addr v2, v6

    const-wide/16 v4, 0x3c

    add-long/2addr v4, p2

    cmp-long v2, v2, v4

    if-gez v2, :cond_18

    move v0, v1

    goto :goto_18
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 4
    .parameter

    .prologue
    .line 315
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    invoke-static {}, Lcom/google/googlenav/ui/bi;->a()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;JI)Z

    move-result v0

    return v0
.end method

.method protected static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;JI)Z
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 325
    invoke-static {p0}, Lcom/google/googlenav/ui/bi;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)I

    move-result v0

    .line 326
    if-eq v0, p3, :cond_8

    .line 327
    const/4 v0, 0x1

    .line 338
    :goto_7
    return v0

    .line 330
    :cond_8
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 331
    new-instance v2, Ljava/util/Date;

    int-to-long v3, p3

    add-long/2addr v3, p1

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 332
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 333
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 334
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 336
    invoke-static {p0}, Lcom/google/googlenav/ui/bi;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)J

    move-result-wide v5

    .line 337
    new-instance v7, Ljava/util/Date;

    int-to-long v8, v0

    add-long/2addr v5, v8

    invoke-direct {v7, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 338
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, v4, :cond_4e

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, v3, :cond_4e

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eq v0, v2, :cond_50

    :cond_4e
    const/4 v0, 0x1

    goto :goto_7

    :cond_50
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static b(I)Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    .line 599
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 602
    new-instance v1, Ljava/util/Date;

    const-wide/32 v2, 0x14997000

    int-to-long v4, p0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 604
    invoke-static {v0}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 362
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 471
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 472
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 473
    const/16 v2, 0xde

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 122
    const/16 v0, 0xa

    if-ge p0, v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_17
    return-object v0

    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method public static c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 403
    if-eqz p0, :cond_9

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 405
    :cond_9
    const-string v0, ""

    .line 409
    :goto_b
    return-object v0

    .line 408
    :cond_c
    invoke-static {p0}, Lcom/google/googlenav/ui/bi;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/Calendar;

    move-result-object v0

    .line 409
    invoke-static {v0}, Lcom/google/googlenav/ui/bi;->b(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public static d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)J
    .registers 5
    .parameter

    .prologue
    .line 433
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/Date;
    .registers 7
    .parameter

    .prologue
    .line 585
    invoke-static {p0}, Lcom/google/googlenav/ui/bi;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)J

    move-result-wide v0

    .line 586
    invoke-static {p0}, Lcom/google/googlenav/ui/bi;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)I

    move-result v2

    invoke-static {}, Lcom/google/googlenav/ui/bi;->a()I

    move-result v3

    sub-int/2addr v2, v3

    .line 588
    new-instance v3, Ljava/util/Date;

    int-to-long v4, v2

    add-long/2addr v0, v4

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 589
    return-object v3
.end method

.method public static f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 9
    .parameter

    .prologue
    const-wide/32 v6, 0x5265c00

    .line 670
    sget-object v0, Lcom/google/googlenav/ui/bi;->a:Lcom/google/googlenav/ui/bl;

    invoke-interface {v0}, Lcom/google/googlenav/ui/bl;->a()J

    move-result-wide v0

    invoke-static {p0}, Lcom/google/googlenav/ui/bi;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    rem-long/2addr v0, v6

    invoke-static {p0}, Lcom/google/googlenav/ui/bi;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)J

    move-result-wide v2

    invoke-static {p0}, Lcom/google/googlenav/ui/bi;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    rem-long/2addr v2, v6

    cmp-long v0, v0, v2

    if-lez v0, :cond_21

    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private static g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/Calendar;
    .registers 8
    .parameter

    .prologue
    .line 414
    invoke-static {p0}, Lcom/google/googlenav/ui/bi;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)J

    move-result-wide v0

    .line 421
    invoke-static {p0}, Lcom/google/googlenav/ui/bi;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)I

    move-result v2

    .line 423
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    .line 424
    new-instance v4, Ljava/util/Date;

    int-to-long v5, v2

    add-long/2addr v0, v5

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 425
    return-object v3
.end method

.method private static h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)I
    .registers 3
    .parameter

    .prologue
    .line 442
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    const v1, 0xea60

    mul-int/2addr v0, v1

    return v0
.end method
