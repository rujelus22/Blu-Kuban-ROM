.class public Lcom/google/googlenav/ui/bq;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/googlenav/ui/bt;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/googlenav/ui/bs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/bs;-><init>(Lcom/google/googlenav/ui/br;)V

    sput-object v0, Lcom/google/googlenav/ui/bq;->a:Lcom/google/googlenav/ui/bt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .registers 10

    const/4 v1, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

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

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/googlenav/bF;->a(I)I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/google/googlenav/ui/bq;->a(III)I

    move-result v0

    return v0
.end method

.method public static a(Lau/b;)J
    .registers 5

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v2

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return-wide v0

    :cond_b
    invoke-virtual {p0}, Lau/b;->R()Lam/b;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v0, v1}, Lam/g;->a(Lam/b;IJ)J

    move-result-wide v0

    goto :goto_a
.end method

.method public static a(Ljava/util/Date;)Lam/b;
    .registers 7

    new-instance v0, Lam/b;

    sget-object v1, LbD/i;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lam/b;->b(IJ)V

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/googlenav/ui/bq;->a(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(IZ)Ljava/lang/String;
    .registers 10

    const v1, 0x15180

    const/16 v0, 0x3c

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-ge p0, v0, :cond_b

    move p0, v0

    :cond_b
    div-int v0, p0, v1

    rem-int v1, p0, v1

    div-int/lit16 v1, v1, 0xe10

    rem-int/lit16 v2, p0, 0xe10

    rem-int/lit16 v2, v2, 0xe10

    div-int/lit8 v2, v2, 0x3c

    if-lez v0, :cond_54

    if-eqz p1, :cond_34

    const/16 v2, 0xf6

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_33
    return-object v0

    :cond_34
    const/16 v3, 0xf7

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

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

    invoke-static {v3, v4}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    :cond_54
    if-lez v1, :cond_6f

    const/16 v0, 0xf8

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v0, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    :cond_6f
    const/16 v0, 0xf9

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_33
.end method

.method public static a(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v1, 0xc

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {}, Lcom/google/googlenav/M;->c()Z

    move-result v0

    if-eqz v0, :cond_3b

    if-lt v2, v1, :cond_34

    const/16 v0, 0x4bd

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_1d
    rem-int/lit8 v2, v2, 0xc

    if-nez v2, :cond_54

    :goto_21
    new-array v2, v6, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v3}, Lcom/google/googlenav/ui/bq;->c(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_33
    return-object v0

    :cond_34
    const/16 v0, 0x4bc

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_3b
    const/16 v0, 0x4be

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    invoke-static {v2}, Lcom/google/googlenav/ui/bq;->c(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v3}, Lcom/google/googlenav/ui/bq;->c(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    :cond_54
    move v1, v2

    goto :goto_21
.end method

.method public static a(JJ)Z
    .registers 12

    const-wide/16 v6, 0x3e8

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/google/googlenav/ui/bq;->a:Lcom/google/googlenav/ui/bt;

    invoke-interface {v2}, Lcom/google/googlenav/ui/bt;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-nez v4, :cond_1b

    sub-long/2addr v2, p0

    div-long/2addr v2, v6

    const-wide/16 v4, 0x258

    cmp-long v2, v2, v4

    if-lez v2, :cond_19

    :cond_18
    :goto_18
    return v0

    :cond_19
    move v0, v1

    goto :goto_18

    :cond_1b
    div-long/2addr v2, v6

    const-wide/16 v4, 0x3c

    add-long/2addr v4, p2

    cmp-long v2, v2, v4

    if-gez v2, :cond_18

    move v0, v1

    goto :goto_18
.end method

.method public static a(Lam/b;)Z
    .registers 4

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    invoke-static {}, Lcom/google/googlenav/ui/bq;->a()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/google/googlenav/ui/bq;->a(Lam/b;JI)Z

    move-result v0

    return v0
.end method

.method protected static a(Lam/b;JI)Z
    .registers 14

    invoke-static {p0}, Lcom/google/googlenav/ui/bq;->g(Lam/b;)I

    move-result v0

    if-eq v0, p3, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    int-to-long v3, p3

    add-long/2addr v3, p1

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {p0}, Lcom/google/googlenav/ui/bq;->d(Lam/b;)J

    move-result-wide v5

    new-instance v7, Ljava/util/Date;

    int-to-long v8, v0

    add-long/2addr v5, v8

    invoke-direct {v7, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

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

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    const-wide/32 v2, 0x14997000

    int-to-long v4, p0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {v0}, Lcom/google/googlenav/ui/bq;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lam/b;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_9

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lam/b;->k(I)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_9
    const-string v0, ""

    :goto_b
    return-object v0

    :cond_c
    invoke-static {p0}, Lcom/google/googlenav/ui/bq;->f(Lam/b;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bq;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public static b(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 6

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xd0

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

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

    invoke-static {v2, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(I)Ljava/lang/String;
    .registers 3

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

.method public static c(Lam/b;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_9

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lam/b;->k(I)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_9
    const-string v0, ""

    :goto_b
    return-object v0

    :cond_c
    invoke-static {p0}, Lcom/google/googlenav/ui/bq;->f(Lam/b;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bq;->b(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public static d(Lam/b;)J
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lam/b;->e(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static e(Lam/b;)Ljava/util/Date;
    .registers 7

    invoke-static {p0}, Lcom/google/googlenav/ui/bq;->d(Lam/b;)J

    move-result-wide v0

    invoke-static {p0}, Lcom/google/googlenav/ui/bq;->g(Lam/b;)I

    move-result v2

    invoke-static {}, Lcom/google/googlenav/ui/bq;->a()I

    move-result v3

    sub-int/2addr v2, v3

    new-instance v3, Ljava/util/Date;

    int-to-long v4, v2

    add-long/2addr v0, v4

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v3
.end method

.method private static f(Lam/b;)Ljava/util/Calendar;
    .registers 8

    invoke-static {p0}, Lcom/google/googlenav/ui/bq;->d(Lam/b;)J

    move-result-wide v0

    invoke-static {p0}, Lcom/google/googlenav/ui/bq;->g(Lam/b;)I

    move-result v2

    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    int-to-long v5, v2

    add-long/2addr v0, v5

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object v3
.end method

.method private static g(Lam/b;)I
    .registers 3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lam/b;->d(I)I

    move-result v0

    const v1, 0xea60

    mul-int/2addr v0, v1

    return v0
.end method
