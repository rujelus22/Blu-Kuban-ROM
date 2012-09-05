.class public La/i;
.super Ljava/lang/Object;


# instance fields
.field private final a:La/q;

.field private final b:LW/a;

.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>(LW/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/q;

    invoke-direct {v0}, La/q;-><init>()V

    iput-object v0, p0, La/i;->a:La/q;

    iput-object p1, p0, La/i;->b:LW/a;

    return-void
.end method

.method static a(LW/a;)Ljava/util/SortedMap;
    .registers 12

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    const/4 v0, 0x0

    :goto_a
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, LW/a;->i(I)I

    move-result v1

    if-ge v0, v1, :cond_7d

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, LW/a;->d(II)LW/a;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, LW/a;->h(I)Z

    move-result v2

    if-eqz v2, :cond_7a

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, LW/a;->f(I)LW/a;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, LW/f;->a(LW/a;I)J

    move-result-wide v2

    const/16 v5, 0x9

    invoke-virtual {v1, v5}, LW/a;->f(I)LW/a;

    move-result-object v5

    const/4 v1, 0x0

    :goto_30
    const/4 v6, 0x3

    invoke-virtual {v5, v6}, LW/a;->i(I)I

    move-result v6

    if-ge v1, v6, :cond_7a

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v1}, LW/a;->d(II)LW/a;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, LW/a;->h(I)Z

    move-result v7

    if-eqz v7, :cond_77

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, LW/a;->h(I)Z

    move-result v7

    if-eqz v7, :cond_77

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, LW/a;->h(I)Z

    move-result v7

    if-eqz v7, :cond_77

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, LW/a;->h(I)Z

    move-result v7

    if-eqz v7, :cond_61

    const/4 v7, 0x7

    invoke-static {v6, v7}, LW/f;->a(LW/a;I)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    add-long/2addr v2, v7

    :cond_61
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, LW/a;->h(I)Z

    move-result v7

    if-eqz v7, :cond_70

    const/16 v7, 0x8

    invoke-static {v6, v7}, LW/f;->a(LW/a;I)J

    move-result-wide v7

    add-long/2addr v2, v7

    :cond_70
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7, v6}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_77
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_7a
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_7d
    move-object v0, v4

    goto :goto_3
.end method

.method private b(LW/a;)V
    .registers 10

    iget-object v0, p0, La/i;->c:Ljava/util/List;

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, La/i;->c:Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-static {p1}, La/i;->a(LW/a;)Ljava/util/SortedMap;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v3}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide v0, v1

    :cond_2c
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide v6, 0x12a05f200L

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v2, v6}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    const-wide v6, 0x9502f900L

    add-long/2addr v0, v6

    invoke-interface {v2}, Ljava/util/SortedMap;->size()I

    move-result v6

    const/16 v7, 0x32

    if-lt v6, v7, :cond_57

    iget-object v6, p0, La/i;->c:Ljava/util/List;

    iget-object v7, p0, La/i;->a:La/q;

    invoke-virtual {v7, v2}, La/q;->a(Ljava/util/SortedMap;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_57
    cmp-long v2, v0, v4

    if-ltz v2, :cond_2c

    goto :goto_4
.end method

.method private b(Ljava/util/Map;)Z
    .registers 10

    const/4 v2, 0x0

    sget-object v0, La/r;->d:La/r;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    sget-object v1, La/r;->e:La/r;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Double;

    move v3, v2

    :goto_12
    const/4 v4, 0x3

    if-ge v3, v4, :cond_31

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4008

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2e

    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_31
    move v0, v2

    goto :goto_2d
.end method


# virtual methods
.method public a()Z
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, La/i;->b:LW/a;

    invoke-direct {p0, v0}, La/i;->b(LW/a;)V

    iget-object v0, p0, La/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return v2

    :cond_f
    iget-object v0, p0, La/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, La/i;->b(Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {p0, v0}, La/i;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_3e

    add-int/lit8 v0, v1, 0x1

    :goto_30
    move v1, v0

    goto :goto_16

    :cond_32
    mul-int/lit8 v0, v1, 0x2

    iget-object v1, p0, La/i;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_e

    const/4 v2, 0x1

    goto :goto_e

    :cond_3e
    move v0, v1

    goto :goto_30
.end method

.method a(Ljava/util/Map;)Z
    .registers 8

    const/4 v1, 0x0

    if-nez p1, :cond_4

    :goto_3
    return v1

    :cond_4
    sget-object v0, La/r;->c:La/r;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff8

    cmpl-double v2, v2, v4

    if-lez v2, :cond_27

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x401c

    cmpg-double v0, v2, v4

    if-gez v0, :cond_27

    const/4 v0, 0x1

    :goto_25
    move v1, v0

    goto :goto_3

    :cond_27
    move v0, v1

    goto :goto_25
.end method
