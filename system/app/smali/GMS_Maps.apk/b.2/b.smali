.class Lb/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lc/t;


# direct methods
.method public constructor <init>(Lc/t;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b;->a:Lc/t;

    return-void
.end method

.method private a(Lb/f;Z)Le/x;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Lb/f;->b()Le/u;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    if-eqz p2, :cond_11

    iget-object v1, v1, Le/u;->c:Le/a;

    :goto_c
    if-eqz v1, :cond_7

    iget-object v0, v1, Le/n;->c:Le/x;

    goto :goto_7

    :cond_11
    iget-object v1, v1, Le/u;->b:Le/K;

    goto :goto_c
.end method

.method private a(Lb/f;Lb/f;Z)Ljava/lang/Double;
    .registers 6

    invoke-direct {p0, p1, p3}, Lb/b;->a(Lb/f;Z)Le/x;

    move-result-object v0

    invoke-direct {p0, p2, p3}, Lb/b;->a(Lb/f;Z)Le/x;

    move-result-object v1

    if-eqz v0, :cond_c

    if-nez v1, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    invoke-static {v0, v1}, Lcom/google/android/location/localizer/b;->a(Le/x;Le/x;)I

    move-result v1

    if-eqz p3, :cond_20

    const/16 v0, 0x1388

    :goto_16
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_d

    :cond_20
    const/16 v0, 0x3e8

    goto :goto_16
.end method

.method private a(Ljava/util/Set;)Ljava/lang/Double;
    .registers 9

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v3, p0, Lb/b;->a:Lc/t;

    invoke-virtual {v3, v0}, Lc/t;->a(Ljava/lang/Object;)Lc/b;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Lc/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/H;

    iget v0, v0, Le/H;->c:I

    div-int/lit16 v0, v0, 0x3e8

    if-eqz v1, :cond_2e

    int-to-double v3, v0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpg-double v3, v3, v5

    if-gez v3, :cond_36

    :cond_2e
    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_33
    move-object v1, v0

    goto :goto_5

    :cond_35
    return-object v1

    :cond_36
    move-object v0, v1

    goto :goto_33
.end method

.method private a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Ljava/lang/Double;
    .registers 9

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_12

    const/4 v0, 0x0

    :goto_11
    return-object v0

    :cond_12
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v1

    int-to-double v1, v1

    int-to-double v3, v0

    div-double v0, v1, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_11
.end method

.method private a(Le/L;)Ljava/util/Set;
    .registers 5

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p1}, Le/L;->a()I

    move-result v2

    if-ge v0, v2, :cond_18

    invoke-virtual {p1, v0}, Le/L;->a(I)Le/M;

    move-result-object v2

    iget-object v2, v2, Le/M;->a:Ljava/lang/Long;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_18
    return-object v1
.end method

.method private a(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .registers 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/util/Map;)V
    .registers 9

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v2, Lb/d;->e:Lb/d;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/f;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/f;

    invoke-direct {p0, v0, v1, v3}, Lb/b;->a(Lb/f;Lb/f;Z)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p2, v2, v0}, Lb/b;->a(Ljava/util/Map;Lb/d;Ljava/lang/Double;)V

    sget-object v2, Lb/d;->f:Lb/d;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/f;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/f;

    invoke-direct {p0, v0, v1, v3}, Lb/b;->a(Lb/f;Lb/f;Z)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p2, v2, v0}, Lb/b;->a(Ljava/util/Map;Lb/d;Ljava/lang/Double;)V

    sget-object v2, Lb/d;->g:Lb/d;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/f;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/f;

    invoke-direct {p0, v0, v1, v3}, Lb/b;->a(Lb/f;Lb/f;Z)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p2, v2, v0}, Lb/b;->a(Ljava/util/Map;Lb/d;Ljava/lang/Double;)V

    sget-object v2, Lb/d;->h:Lb/d;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/f;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/f;

    invoke-direct {p0, v0, v1, v4}, Lb/b;->a(Lb/f;Lb/f;Z)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p2, v2, v0}, Lb/b;->a(Ljava/util/Map;Lb/d;Ljava/lang/Double;)V

    return-void
.end method

.method private a(Ljava/util/Map;Lb/d;Ljava/lang/Double;)V
    .registers 4

    if-eqz p3, :cond_5

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method private b(Ljava/util/List;Ljava/util/Map;)V
    .registers 9

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/f;

    invoke-virtual {v0}, Lb/f;->a()Le/L;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/b;->a(Le/L;)Ljava/util/Set;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/f;

    invoke-virtual {v0}, Lb/f;->a()Le/L;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/b;->a(Le/L;)Ljava/util/Set;

    move-result-object v2

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/f;

    invoke-virtual {v0}, Lb/f;->a()Le/L;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/b;->a(Le/L;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lb/b;->a(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    sget-object v4, Lb/d;->a:Lb/d;

    invoke-direct {p0, v1, v0, v3}, Lb/b;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, p2, v4, v1}, Lb/b;->a(Ljava/util/Map;Lb/d;Ljava/lang/Double;)V

    sget-object v1, Lb/d;->b:Lb/d;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {p2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/d;->c:Lb/d;

    invoke-direct {p0, v3}, Lb/b;->a(Ljava/util/Set;)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {p0, p2, v1, v3}, Lb/b;->a(Ljava/util/Map;Lb/d;Ljava/lang/Double;)V

    invoke-direct {p0, v2, v0}, Lb/b;->a(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sget-object v3, Lb/d;->d:Lb/d;

    invoke-direct {p0, v2, v0, v1}, Lb/b;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p2, v3, v0}, Lb/b;->a(Ljava/util/Map;Lb/d;Ljava/lang/Double;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/util/Map;
    .registers 5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_24

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t compute features for history of size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0}, Lb/b;->b(Ljava/util/List;Ljava/util/Map;)V

    invoke-direct {p0, p1, v0}, Lb/b;->a(Ljava/util/List;Ljava/util/Map;)V

    return-object v0
.end method
