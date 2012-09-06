.class public final Lcom/google/common/collect/Sets;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/util/Set;)I
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1253
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1254
    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_16
    add-int/2addr v0, v2

    goto :goto_6

    :cond_18
    move v2, v1

    goto :goto_16

    .line 1256
    :cond_1a
    return v0
.end method

.method public static a(I)Ljava/util/HashSet;
    .registers 3
    .parameter

    .prologue
    .line 194
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Lcom/google/common/collect/Maps;->b(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;)Ljava/util/HashSet;
    .registers 3
    .parameter

    .prologue
    .line 211
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Lcom/google/common/collect/cf;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_d
    return-object v0

    :cond_e
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->a(Ljava/util/Iterator;)Ljava/util/HashSet;

    move-result-object v0

    goto :goto_d
.end method

.method private static a(Ljava/util/Iterator;)Ljava/util/HashSet;
    .registers 3
    .parameter

    .prologue
    .line 230
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 231
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 232
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 234
    :cond_13
    return-object v0
.end method

.method public static varargs a([Ljava/lang/Object;)Ljava/util/HashSet;
    .registers 2
    .parameter

    .prologue
    .line 175
    array-length v0, p0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->a(I)Ljava/util/HashSet;

    move-result-object v0

    .line 176
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 177
    return-object v0
.end method

.method public static a(Ljava/util/Map;)Ljava/util/Set;
    .registers 2
    .parameter

    .prologue
    .line 454
    new-instance v0, Lcom/google/common/collect/Sets$SetFromMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Sets$SetFromMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method static a(Ljava/util/Set;Ljava/lang/Object;)Z
    .registers 6
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1263
    if-ne p0, p1, :cond_5

    .line 1277
    :cond_4
    :goto_4
    return v0

    .line 1266
    :cond_5
    instance-of v2, p1, Ljava/util/Set;

    if-eqz v2, :cond_23

    .line 1267
    check-cast p1, Ljava/util/Set;

    .line 1270
    :try_start_b
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v2, v3, :cond_1b

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_18} :catch_1d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_18} :catch_20

    move-result v2

    if-nez v2, :cond_4

    :cond_1b
    move v0, v1

    goto :goto_4

    .line 1272
    :catch_1d
    move-exception v0

    move v0, v1

    goto :goto_4

    .line 1274
    :catch_20
    move-exception v0

    move v0, v1

    goto :goto_4

    :cond_23
    move v0, v1

    .line 1277
    goto :goto_4
.end method
