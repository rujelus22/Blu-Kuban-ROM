.class public final Lcom/google/common/collect/dm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/util/Set;)I
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1122
    .line 1123
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1124
    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_16
    add-int/2addr v0, v2

    goto :goto_6

    :cond_18
    move v2, v1

    goto :goto_16

    .line 1126
    :cond_1a
    return v0
.end method

.method public static a()Ljava/util/HashSet;
    .registers 1

    .prologue
    .line 159
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;)Ljava/util/HashSet;
    .registers 3
    .parameter

    .prologue
    .line 210
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Lcom/google/common/collect/R;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_d
    return-object v0

    :cond_e
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/dm;->a(Ljava/util/Iterator;)Ljava/util/HashSet;

    move-result-object v0

    goto :goto_d
.end method

.method public static a(Ljava/util/Iterator;)Ljava/util/HashSet;
    .registers 3
    .parameter

    .prologue
    .line 229
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v0

    .line 230
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 231
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 233
    :cond_12
    return-object v0
.end method

.method public static varargs a([Ljava/lang/Object;)Ljava/util/HashSet;
    .registers 3
    .parameter

    .prologue
    .line 177
    array-length v0, p0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->b(I)I

    move-result v0

    .line 178
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 179
    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 180
    return-object v1
.end method

.method public static a(Ljava/util/Map;)Ljava/util/Set;
    .registers 2
    .parameter

    .prologue
    .line 436
    new-instance v0, Lcom/google/common/collect/dn;

    invoke-direct {v0, p0}, Lcom/google/common/collect/dn;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method static a(Ljava/util/Set;Ljava/lang/Object;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1133
    if-ne p0, p1, :cond_6

    move v1, v0

    .line 1147
    :cond_5
    :goto_5
    return v1

    .line 1136
    :cond_6
    instance-of v2, p1, Ljava/util/Set;

    if-eqz v2, :cond_5

    .line 1137
    check-cast p1, Ljava/util/Set;

    .line 1140
    :try_start_c
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v2, v3, :cond_1e

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_19} :catch_22
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_19} :catch_20

    move-result v2

    if-eqz v2, :cond_1e

    :goto_1c
    move v1, v0

    goto :goto_5

    :cond_1e
    move v0, v1

    goto :goto_1c

    .line 1143
    :catch_20
    move-exception v0

    goto :goto_5

    .line 1141
    :catch_22
    move-exception v0

    goto :goto_5
.end method

.method public static b()Ljava/util/LinkedHashSet;
    .registers 1

    .prologue
    .line 247
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method

.method public static b(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;
    .registers 4
    .parameter

    .prologue
    .line 263
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_e

    .line 264
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p0}, Lcom/google/common/collect/R;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 270
    :cond_d
    return-object v0

    .line 266
    :cond_e
    invoke-static {}, Lcom/google/common/collect/dm;->b()Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 267
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 268
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_16
.end method

.method public static c()Ljava/util/TreeSet;
    .registers 1

    .prologue
    .line 286
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    return-object v0
.end method

.method public static d()Ljava/util/Set;
    .registers 1

    .prologue
    .line 340
    invoke-static {}, Lcom/google/common/collect/Maps;->d()Ljava/util/IdentityHashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/dm;->a(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
