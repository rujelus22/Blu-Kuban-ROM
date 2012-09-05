.class public La/x;
.super Ljava/lang/Object;


# instance fields
.field a:J

.field b:J

.field private final c:Ljava/util/List;

.field private final d:Li/E;

.field private final e:La/w;

.field private f:La/o;

.field private g:Ljava/util/Random;


# direct methods
.method constructor <init>(Li/E;Ljava/util/List;La/o;La/w;)V
    .registers 11

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, La/x;-><init>(Li/E;Ljava/util/List;La/o;La/w;Ljava/util/Random;)V

    return-void
.end method

.method constructor <init>(Li/E;Ljava/util/List;La/o;La/w;Ljava/util/Random;)V
    .registers 12

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, La/x;->a:J

    iput-wide v0, p0, La/x;->b:J

    new-instance v0, La/y;

    invoke-direct {v0, p0}, La/y;-><init>(La/x;)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x1

    move v1, v0

    :goto_13
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3b

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/z;

    iget-wide v2, v0, La/z;->a:J

    add-int/lit8 v0, v1, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/z;

    iget-wide v4, v0, La/z;->b:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_37

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Collection time span should not overlap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    :cond_3b
    iput-object p2, p0, La/x;->c:Ljava/util/List;

    iput-object p1, p0, La/x;->d:Li/E;

    iput-object p3, p0, La/x;->f:La/o;

    iput-object p5, p0, La/x;->g:Ljava/util/Random;

    iput-object p4, p0, La/x;->e:La/w;

    return-void
.end method

.method static a(IIII)J
    .registers 10

    int-to-long v0, p0

    const-wide/32 v2, 0x36ee80

    mul-long/2addr v0, v2

    int-to-long v2, p1

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    int-to-long v2, p2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    int-to-long v2, p3

    add-long/2addr v0, v2

    return-wide v0
.end method

.method static a(J)J
    .registers 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {v0}, La/x;->a(Ljava/util/Calendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(La/z;Ljava/util/Calendar;)J
    .registers 11

    invoke-virtual {p1, p2}, La/z;->b(Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p1, p2}, La/z;->c(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {p2}, La/x;->a(Ljava/util/Calendar;)J

    move-result-wide v0

    move-wide v4, v0

    move-wide v0, v2

    :goto_10
    const-wide/32 v2, 0x249f00

    sub-long v2, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_2f

    :goto_1b
    iget-object v2, p0, La/x;->g:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    long-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    add-long/2addr v0, v4

    return-wide v0

    :cond_26
    invoke-virtual {p1}, La/z;->a()J

    move-result-wide v2

    iget-wide v0, p1, La/z;->a:J

    move-wide v4, v0

    move-wide v0, v2

    goto :goto_10

    :cond_2f
    move-wide v0, v2

    goto :goto_1b
.end method

.method private a(La/z;Ljava/util/Calendar;I)J
    .registers 13

    const-wide v0, 0x7fffffffffffffffL

    const-wide/32 v7, 0x493e0

    if-nez p3, :cond_b

    :cond_a
    :goto_a
    return-wide v0

    :cond_b
    invoke-virtual {p1, p2}, La/z;->c(Ljava/util/Calendar;)J

    move-result-wide v2

    :cond_f
    int-to-long v4, p3

    div-long v4, v2, v4

    add-int/lit8 p3, p3, -0x1

    cmp-long v6, v4, v7

    if-gtz v6, :cond_1a

    if-gtz p3, :cond_f

    :cond_1a
    cmp-long v2, v4, v7

    if-lez v2, :cond_a

    sub-long v2, v4, v7

    long-to-double v2, v2

    iget-object v4, p0, La/x;->g:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v2, v7

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, La/x;->a(J)J

    move-result-wide v2

    iget-wide v4, p1, La/z;->b:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_a

    move-wide v0, v2

    goto :goto_a
.end method

.method static a(Ljava/util/Calendar;)J
    .registers 5

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xe

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, La/x;->a(IIII)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Ljava/util/Calendar;La/z;ZI)J
    .registers 12

    const/4 v6, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_27

    iget-object v0, p0, La/x;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/z;

    invoke-direct {p0, v0, p1}, La/x;->a(La/z;Ljava/util/Calendar;)J

    move-result-wide v0

    move v2, v3

    :cond_12
    :goto_12
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-static {v4, v0, v1}, La/x;->a(Ljava/util/Calendar;J)V

    if-eqz v2, :cond_1e

    invoke-virtual {v4, v6, v3}, Ljava/util/Calendar;->add(II)V

    :cond_1e
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, La/x;->c(J)J

    move-result-wide v0

    :goto_26
    return-wide v0

    :cond_27
    if-eqz p3, :cond_3f

    invoke-direct {p0, p2, p1, p4}, La/x;->a(La/z;Ljava/util/Calendar;I)J

    move-result-wide v0

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v0, v4

    if-nez v4, :cond_12

    invoke-direct {p0, p2}, La/x;->a(La/z;)La/z;

    move-result-object v0

    invoke-direct {p0, p1, v0, v2, v6}, La/x;->a(Ljava/util/Calendar;La/z;ZI)J

    move-result-wide v0

    goto :goto_26

    :cond_3f
    invoke-direct {p0, p2, p1}, La/x;->a(La/z;Ljava/util/Calendar;)J

    move-result-wide v0

    goto :goto_12
.end method

.method private a(La/z;)La/z;
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, La/x;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2c

    iget-object v2, p0, La/x;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_29

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, La/x;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_1e

    move-object v0, v1

    :goto_1d
    return-object v0

    :cond_1e
    iget-object v1, p0, La/x;->c:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/z;

    goto :goto_1d

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2c
    move-object v0, v1

    goto :goto_1d
.end method

.method private a(Ljava/util/Calendar;La/z;)Le/v;
    .registers 11

    const/4 v7, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Le/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Le/v;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    iget-object v1, p0, La/x;->f:La/o;

    invoke-virtual {v1}, La/o;->d()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v0

    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW/a;

    invoke-virtual {v0, v7}, LW/a;->h(I)Z

    move-result v5

    if-eqz v5, :cond_65

    invoke-virtual {v0, v7}, LW/a;->d(I)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {p1, v3}, La/x;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v5

    if-eqz v5, :cond_65

    invoke-virtual {p2, v3}, La/z;->b(Ljava/util/Calendar;)Z

    move-result v5

    if-eqz v5, :cond_65

    invoke-virtual {p0, v0}, La/x;->a(LW/a;)Z

    move-result v0

    if-eqz v0, :cond_53

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    move v1, v2

    :goto_50
    move v2, v1

    move v1, v0

    goto :goto_21

    :cond_53
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    move v1, v2

    goto :goto_50

    :cond_58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Le/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Le/v;

    move-result-object v0

    goto :goto_10

    :cond_65
    move v0, v1

    move v1, v2

    goto :goto_50
.end method

.method static a(Ljava/util/Calendar;J)V
    .registers 12

    const-wide/32 v3, 0x36ee80

    const-wide/32 v7, 0xea60

    const-wide/16 v5, 0x3e8

    const/16 v0, 0xb

    div-long v1, p1, v3

    long-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    rem-long v0, p1, v3

    const/16 v2, 0xc

    div-long v3, v0, v7

    long-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Ljava/util/Calendar;->set(II)V

    rem-long/2addr v0, v7

    const/16 v2, 0xd

    div-long v3, v0, v5

    long-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Ljava/util/Calendar;->set(II)V

    rem-long/2addr v0, v5

    const/16 v2, 0xe

    long-to-int v0, v0

    invoke-virtual {p0, v2, v0}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method static a(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .registers 7

    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_22

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_22

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_22

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private b(Ljava/util/Calendar;)La/z;
    .registers 5

    iget-object v0, p0, La/x;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/z;

    invoke-virtual {v0, p1}, La/z;->a(Ljava/util/Calendar;)Z

    move-result v2

    if-nez v2, :cond_6

    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private b(Ljava/util/Calendar;Ljava/util/Calendar;)La/z;
    .registers 10

    invoke-static {p1, p2}, La/x;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {p1}, La/x;->a(Ljava/util/Calendar;)J

    move-result-wide v1

    invoke-static {p2}, La/x;->a(Ljava/util/Calendar;)J

    move-result-wide v3

    iget-object v0, p0, La/x;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/z;

    invoke-virtual {v0, v1, v2}, La/z;->b(J)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-virtual {v0, v3, v4}, La/z;->b(J)Z

    move-result v6

    if-eqz v6, :cond_14

    :goto_2c
    return-object v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method static b(J)Ljava/lang/String;
    .registers 13

    const-wide/32 v2, 0x36ee80

    const-wide/32 v6, 0xea60

    const-wide/16 v8, 0x3e8

    div-long v0, p0, v2

    rem-long v2, p0, v2

    div-long v4, v2, v6

    rem-long/2addr v2, v6

    div-long v6, v2, v8

    rem-long/2addr v2, v8

    const-string v8, "%02d:%02d:%02d:%02d"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v10

    const/4 v0, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v0

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(J)J
    .registers 7

    iget-wide v0, p0, La/x;->a:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, La/x;->d:Li/E;

    invoke-interface {v0}, Li/E;->c()J

    move-result-wide v0

    sub-long v0, p1, v0

    iget-object v2, p0, La/x;->d:Li/E;

    const/4 v3, 0x6

    invoke-interface {v2, v3, v0, v1}, Li/E;->a(IJ)V

    iget-object v2, p0, La/x;->f:La/o;

    invoke-virtual {v2, p1, p2}, La/o;->a(J)V

    iput-wide p1, p0, La/x;->a:J

    iput-wide v0, p0, La/x;->b:J

    :goto_1d
    return-wide v0

    :cond_1e
    iget-wide v0, p0, La/x;->b:J

    goto :goto_1d
.end method


# virtual methods
.method public a()J
    .registers 13

    const-wide v0, 0x7fffffffffffffffL

    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    iget-object v5, p0, La/x;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_11

    :cond_10
    :goto_10
    return-wide v0

    :cond_11
    iget-object v5, p0, La/x;->e:La/w;

    invoke-virtual {v5}, La/w;->b()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    iget-object v0, p0, La/x;->d:Li/E;

    invoke-interface {v0}, Li/E;->b()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, La/x;->f:La/o;

    invoke-virtual {v0}, La/o;->e()J

    move-result-wide v0

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const-wide/32 v8, 0x493e0

    sub-long/2addr v5, v8

    cmp-long v8, v0, v3

    if-eqz v8, :cond_54

    const-wide/32 v8, 0x5265c00

    sub-long v8, v0, v8

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_54

    cmp-long v5, v5, v0

    if-gez v5, :cond_54

    iget-wide v2, p0, La/x;->a:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_4f

    :cond_4f
    invoke-direct {p0, v0, v1}, La/x;->c(J)J

    move-result-wide v0

    goto :goto_10

    :cond_54
    iget-object v0, p0, La/x;->f:La/o;

    invoke-virtual {v0}, La/o;->c()LW/a;

    move-result-object v0

    if-nez v0, :cond_b5

    move-wide v5, v3

    :goto_5d
    if-nez v0, :cond_ba

    move v0, v2

    :goto_60
    const-wide/16 v8, -0x1

    cmp-long v1, v5, v8

    if-nez v1, :cond_d6

    move v1, v2

    :goto_67
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_7b
    invoke-direct {p0, v0, v7}, La/x;->b(Ljava/util/Calendar;Ljava/util/Calendar;)La/z;

    move-result-object v3

    invoke-direct {p0, v7, v3}, La/x;->a(Ljava/util/Calendar;La/z;)Le/v;

    move-result-object v4

    if-eqz v3, :cond_bf

    if-nez v1, :cond_bf

    iget-object v0, v4, Le/v;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_bf

    iget-object v0, v4, Le/v;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v5, 0x5

    if-ge v0, v5, :cond_bf

    :goto_9c
    if-eqz v1, :cond_c6

    if-nez v3, :cond_c1

    invoke-direct {p0, v7}, La/x;->b(Ljava/util/Calendar;)La/z;

    move-result-object v0

    :goto_a4
    move-object v1, v0

    :goto_a5
    iget-object v0, v4, Le/v;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x5

    invoke-direct {p0, v7, v1, v2, v0}, La/x;->a(Ljava/util/Calendar;La/z;ZI)J

    move-result-wide v0

    goto/16 :goto_10

    :cond_b5
    invoke-virtual {v0, v2}, LW/a;->d(I)J

    move-result-wide v5

    goto :goto_5d

    :cond_ba
    invoke-virtual {p0, v0}, La/x;->a(LW/a;)Z

    move-result v0

    goto :goto_60

    :cond_bf
    const/4 v2, 0x0

    goto :goto_9c

    :cond_c1
    invoke-direct {p0, v3}, La/x;->a(La/z;)La/z;

    move-result-object v0

    goto :goto_a4

    :cond_c6
    if-nez v2, :cond_ca

    if-nez v3, :cond_d0

    :cond_ca
    invoke-direct {p0, v7}, La/x;->b(Ljava/util/Calendar;)La/z;

    move-result-object v0

    move-object v1, v0

    goto :goto_a5

    :cond_d0
    invoke-direct {p0, v3}, La/x;->a(La/z;)La/z;

    move-result-object v0

    move-object v1, v0

    goto :goto_a5

    :cond_d6
    move v1, v0

    move-wide v3, v5

    goto :goto_67
.end method

.method a(LW/a;)Z
    .registers 7

    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x3

    invoke-virtual {p1, v4}, LW/a;->h(I)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p1, v4}, LW/a;->a(I)Z

    move-result v0

    :cond_e
    :goto_e
    return v0

    :cond_f
    invoke-virtual {p1, v3}, LW/a;->h(I)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p1, v3}, LW/a;->c(I)I

    move-result v2

    if-eq v2, v1, :cond_20

    const/4 v3, 0x2

    if-eq v2, v3, :cond_20

    if-ne v2, v4, :cond_e

    :cond_20
    move v0, v1

    goto :goto_e
.end method

.method public b()V
    .registers 5

    const-wide/16 v2, -0x1

    iget-object v0, p0, La/x;->d:Li/E;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Li/E;->a(I)V

    iget-object v0, p0, La/x;->f:La/o;

    invoke-virtual {v0}, La/o;->k()V

    iput-wide v2, p0, La/x;->a:J

    iput-wide v2, p0, La/x;->b:J

    return-void
.end method
