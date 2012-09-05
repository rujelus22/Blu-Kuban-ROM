.class public Lcom/google/android/maps/driveabout/vector/cP;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lt/ai;[B)Ljava/util/List;
    .registers 8

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v1

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0}, Lt/ai;->a()I

    move-result v2

    if-ge v0, v2, :cond_3b

    new-instance v2, Lt/L;

    invoke-direct {v2}, Lt/L;-><init>()V

    new-instance v3, Lt/L;

    invoke-direct {v3}, Lt/L;-><init>()V

    new-instance v4, Lt/L;

    invoke-direct {v4}, Lt/L;-><init>()V

    invoke-virtual {p0, v0, v2, v3, v4}, Lt/ai;->a(ILt/L;Lt/L;Lt/L;)V

    aget-byte v5, p1, v0

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_26

    invoke-static {v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/cP;->a(Ljava/util/Map;Lt/L;Lt/L;)V

    :cond_26
    aget-byte v5, p1, v0

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2f

    invoke-static {v1, v3, v4}, Lcom/google/android/maps/driveabout/vector/cP;->a(Ljava/util/Map;Lt/L;Lt/L;)V

    :cond_2f
    aget-byte v3, p1, v0

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_38

    invoke-static {v1, v4, v2}, Lcom/google/android/maps/driveabout/vector/cP;->a(Ljava/util/Map;Lt/L;Lt/L;)V

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_3b
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, LK/cw;->a(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, LK/bR;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cQ;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cQ;->c()Lt/P;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    :cond_63
    return-object v1
.end method

.method private static a(Ljava/util/Map;Lt/L;Lt/L;)V
    .registers 7

    new-instance v2, Lcom/google/android/maps/driveabout/vector/cQ;

    invoke-direct {v2, p1, p2}, Lcom/google/android/maps/driveabout/vector/cQ;-><init>(Lt/L;Lt/L;)V

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cQ;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/cQ;

    if-eqz v0, :cond_27

    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/vector/cQ;->a(Lcom/google/android/maps/driveabout/vector/cQ;)Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cQ;->a()Lt/L;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cQ;->b()Lt/L;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    if-eqz v1, :cond_3f

    if-eq v1, v0, :cond_3f

    invoke-virtual {v2, v1}, Lcom/google/android/maps/driveabout/vector/cQ;->a(Lcom/google/android/maps/driveabout/vector/cQ;)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cQ;->a()Lt/L;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cQ;->b()Lt/L;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/cQ;->a()Lt/L;

    move-result-object v0

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/cQ;->b()Lt/L;

    move-result-object v0

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
