.class public Lw/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/util/Set;Ljava/util/Set;I)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    .line 101
    if-nez p2, :cond_13

    .line 108
    :cond_12
    return p2

    .line 104
    :cond_13
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    add-int/lit8 p2, p2, -0x1

    goto :goto_4
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/cY;ILjava/util/Collection;Ln/Q;ILjava/util/LinkedHashSet;)Ljava/util/LinkedHashSet;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 194
    if-nez p5, :cond_9

    .line 195
    invoke-static {}, Lcom/google/common/collect/dm;->b()Ljava/util/LinkedHashSet;

    move-result-object p5

    .line 199
    :cond_9
    invoke-static {p2}, Lcom/google/common/collect/dm;->b(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 203
    invoke-static {v0}, Lw/c;->b(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 206
    invoke-static {p0, v0, p3}, Lw/c;->a(Lcom/google/android/maps/driveabout/vector/cY;Ljava/util/Set;Ln/Q;)Ljava/util/Set;

    move-result-object v3

    .line 207
    invoke-static {p0, v1, p3}, Lw/c;->a(Lcom/google/android/maps/driveabout/vector/cY;Ljava/util/Set;Ln/Q;)Ljava/util/Set;

    move-result-object v1

    .line 209
    const/4 v0, 0x0

    move-object v4, v1

    move-object v5, v3

    move v1, v2

    move v3, v0

    .line 228
    :goto_1e
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7d

    if-lez p4, :cond_7d

    if-gt v1, p1, :cond_7d

    if-ge v3, v8, :cond_7d

    .line 230
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    invoke-virtual {v0}, Ln/am;->b()I

    move-result v0

    .line 233
    const/16 v6, 0xd

    if-gt v0, v6, :cond_57

    .line 234
    if-ge v3, v2, :cond_44

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, v7, :cond_4e

    :cond_44
    if-ge v3, v7, :cond_49

    const/4 v0, 0x4

    if-ge v1, v0, :cond_4e

    :cond_49
    if-ge v3, v8, :cond_57

    const/4 v0, 0x6

    if-lt v1, v0, :cond_57

    .line 239
    :cond_4e
    invoke-static {v5, p5, p4}, Lw/c;->a(Ljava/util/Set;Ljava/util/Set;I)I

    move-result v0

    .line 241
    if-eq p4, v0, :cond_7e

    .line 242
    add-int/lit8 v3, v3, 0x1

    move p4, v0

    .line 252
    :cond_57
    :goto_57
    if-eqz v4, :cond_65

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, v7, :cond_61

    if-lt v1, v8, :cond_65

    .line 253
    :cond_61
    invoke-interface {v5, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 254
    const/4 v4, 0x0

    .line 297
    :cond_65
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v0

    if-gt v0, v7, :cond_6f

    .line 298
    invoke-static {v5}, Lw/c;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    .line 301
    :cond_6f
    if-eqz v4, :cond_75

    .line 302
    invoke-static {p0, v4, p3}, Lw/c;->a(Lcom/google/android/maps/driveabout/vector/cY;Ljava/util/Set;Ln/Q;)Ljava/util/Set;

    move-result-object v4

    .line 304
    :cond_75
    invoke-static {p0, v5, p3}, Lw/c;->a(Lcom/google/android/maps/driveabout/vector/cY;Ljava/util/Set;Ln/Q;)Ljava/util/Set;

    move-result-object v5

    .line 306
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 307
    goto :goto_1e

    .line 309
    :cond_7d
    return-object p5

    :cond_7e
    move p4, v0

    goto :goto_57
.end method

.method private static a(Lcom/google/android/maps/driveabout/vector/cY;Ljava/util/Set;Ln/Q;)Ljava/util/Set;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-static {}, Lcom/google/common/collect/dm;->b()Ljava/util/LinkedHashSet;

    move-result-object v1

    .line 44
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    .line 45
    invoke-interface {p0, v0, p2}, Lcom/google/android/maps/driveabout/vector/cY;->a(Ln/am;Ln/Q;)Ln/am;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_8

    .line 47
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 50
    :cond_1e
    return-object v1
.end method

.method public static a(Ljava/util/Set;)Ljava/util/Set;
    .registers 13
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v11, 0x1

    .line 65
    invoke-static {}, Lcom/google/common/collect/dm;->b()Ljava/util/LinkedHashSet;

    move-result-object v4

    .line 66
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    .line 67
    invoke-virtual {v0}, Ln/am;->b()I

    move-result v1

    shl-int v6, v11, v1

    .line 68
    add-int/lit8 v7, v6, -0x1

    move v3, v2

    .line 69
    :goto_1f
    if-gt v3, v11, :cond_a

    move v1, v2

    .line 70
    :goto_22
    if-gt v1, v11, :cond_43

    .line 71
    invoke-virtual {v0}, Ln/am;->d()I

    move-result v8

    add-int/2addr v8, v1

    .line 74
    if-ltz v8, :cond_2d

    if-lt v8, v6, :cond_30

    .line 70
    :cond_2d
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 83
    :cond_30
    invoke-virtual {v0}, Ln/am;->b()I

    move-result v9

    invoke-virtual {v0}, Ln/am;->c()I

    move-result v10

    add-int/2addr v10, v3

    add-int/2addr v10, v6

    and-int/2addr v10, v7

    invoke-virtual {v0, v9, v10, v8}, Ln/am;->a(III)Ln/am;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 69
    :cond_43
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1f

    .line 89
    :cond_47
    return-object v4
.end method

.method public static b(Ljava/util/Set;)Ljava/util/Set;
    .registers 15
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 124
    invoke-static {}, Lcom/google/common/collect/dm;->b()Ljava/util/LinkedHashSet;

    move-result-object v9

    .line 125
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    move-object v0, v9

    .line 170
    :goto_d
    return-object v0

    .line 128
    :cond_e
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    .line 129
    invoke-virtual {v0}, Ln/am;->b()I

    move-result v10

    .line 130
    shl-int v5, v3, v10

    .line 131
    add-int/lit8 v11, v5, -0x1

    .line 132
    shr-int/lit8 v12, v5, 0x1

    .line 136
    invoke-virtual {v0}, Ln/am;->c()I

    move-result v1

    .line 137
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v1

    :goto_2b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln/am;

    .line 138
    invoke-virtual {v1}, Ln/am;->c()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v2, v1

    goto :goto_2b

    .line 140
    :cond_41
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_45
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln/am;

    .line 141
    invoke-virtual {v1}, Ln/am;->c()I

    move-result v1

    sub-int/2addr v1, v2

    if-lt v1, v12, :cond_45

    move v2, v3

    .line 152
    :goto_59
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v3, v5

    move v6, v4

    move v7, v5

    :goto_60
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln/am;

    .line 153
    invoke-virtual {v1}, Ln/am;->c()I

    move-result v8

    .line 154
    if-eqz v2, :cond_75

    if-ge v8, v12, :cond_75

    .line 155
    add-int/2addr v8, v5

    .line 157
    :cond_75
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 158
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 159
    invoke-virtual {v1}, Ln/am;->d()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 160
    invoke-virtual {v1}, Ln/am;->d()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_60

    .line 165
    :cond_8e
    and-int v1, v7, v11

    invoke-virtual {v0, v10, v1, v3}, Ln/am;->a(III)Ln/am;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    and-int v1, v7, v11

    invoke-virtual {v0, v10, v1, v4}, Ln/am;->a(III)Ln/am;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    and-int v1, v6, v11

    invoke-virtual {v0, v10, v1, v3}, Ln/am;->a(III)Ln/am;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    and-int v1, v6, v11

    invoke-virtual {v0, v10, v1, v4}, Ln/am;->a(III)Ln/am;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v0, v9

    .line 170
    goto/16 :goto_d

    :cond_b5
    move v2, v4

    goto :goto_59
.end method
