.class public Lcom/google/android/maps/driveabout/vector/dA;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ln/az;[B)Ljava/util/List;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v1

    .line 143
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0}, Ln/az;->a()I

    move-result v2

    if-ge v0, v2, :cond_3b

    .line 144
    new-instance v2, Ln/Q;

    invoke-direct {v2}, Ln/Q;-><init>()V

    .line 145
    new-instance v3, Ln/Q;

    invoke-direct {v3}, Ln/Q;-><init>()V

    .line 146
    new-instance v4, Ln/Q;

    invoke-direct {v4}, Ln/Q;-><init>()V

    .line 148
    invoke-virtual {p0, v0, v2, v3, v4}, Ln/az;->a(ILn/Q;Ln/Q;Ln/Q;)V

    .line 150
    aget-byte v5, p1, v0

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_26

    .line 151
    invoke-static {v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/dA;->a(Ljava/util/Map;Ln/Q;Ln/Q;)V

    .line 153
    :cond_26
    aget-byte v5, p1, v0

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2f

    .line 154
    invoke-static {v1, v3, v4}, Lcom/google/android/maps/driveabout/vector/dA;->a(Ljava/util/Map;Ln/Q;Ln/Q;)V

    .line 156
    :cond_2f
    aget-byte v3, p1, v0

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_38

    .line 157
    invoke-static {v1, v4, v2}, Lcom/google/android/maps/driveabout/vector/dA;->a(Ljava/util/Map;Ln/Q;Ln/Q;)V

    .line 143
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 163
    :cond_3b
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/dm;->a(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    .line 164
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/cx;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 166
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/dB;

    .line 167
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dB;->c()Ln/U;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 170
    :cond_63
    return-object v1
.end method

.method private static a(Ljava/util/Map;Ln/Q;Ln/Q;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    new-instance v2, Lcom/google/android/maps/driveabout/vector/dB;

    invoke-direct {v2, p1, p2}, Lcom/google/android/maps/driveabout/vector/dB;-><init>(Ln/Q;Ln/Q;)V

    .line 106
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/dB;

    .line 107
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/dB;

    .line 109
    if-eqz v0, :cond_27

    .line 113
    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/vector/dB;->a(Lcom/google/android/maps/driveabout/vector/dB;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 114
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dB;->a()Ln/Q;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dB;->b()Ln/Q;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_27
    if-eqz v1, :cond_3f

    if-eq v1, v0, :cond_3f

    .line 123
    invoke-virtual {v2, v1}, Lcom/google/android/maps/driveabout/vector/dB;->a(Lcom/google/android/maps/driveabout/vector/dB;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 124
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dB;->a()Ln/Q;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dB;->b()Ln/Q;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_3f
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/dB;->a()Ln/Q;

    move-result-object v0

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/dB;->b()Ln/Q;

    move-result-object v0

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-void
.end method
