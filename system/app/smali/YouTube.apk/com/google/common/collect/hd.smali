.class abstract Lcom/google/common/collect/hd;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 2228
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Ljava/util/Map;
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 2236
    invoke-virtual {p0}, Lcom/google/common/collect/hd;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2237
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2240
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_2a

    .line 2241
    check-cast p1, Ljava/util/Map$Entry;

    .line 2242
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2243
    invoke-virtual {p0}, Lcom/google/common/collect/hd;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2244
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    if-nez v2, :cond_29

    invoke-virtual {p0}, Lcom/google/common/collect/hd;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    :cond_29
    const/4 v0, 0x1

    .line 2247
    :cond_2a
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 2251
    invoke-virtual {p0}, Lcom/google/common/collect/hd;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 2255
    invoke-virtual {p0, p1}, Lcom/google/common/collect/hd;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2256
    check-cast p1, Ljava/util/Map$Entry;

    .line 2257
    invoke-virtual {p0}, Lcom/google/common/collect/hd;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 2259
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 5
    .parameter

    .prologue
    .line 2264
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-super {p0, v0}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z
    :try_end_9
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    .line 2271
    :cond_a
    return v0

    .line 2267
    :catch_b
    move-exception v0

    const/4 v0, 0x1

    .line 2268
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2269
    invoke-virtual {p0, v2}, Lcom/google/common/collect/hd;->remove(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_11
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 6
    .parameter

    .prologue
    .line 2277
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-super {p0, v0}, Ljava/util/AbstractSet;->retainAll(Ljava/util/Collection;)Z
    :try_end_9
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    .line 2287
    :goto_a
    return v0

    .line 2280
    :catch_b
    move-exception v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->a(I)Ljava/util/HashSet;

    move-result-object v1

    .line 2281
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2282
    invoke-virtual {p0, v0}, Lcom/google/common/collect/hd;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2283
    check-cast v0, Ljava/util/Map$Entry;

    .line 2284
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 2287
    :cond_32
    invoke-virtual {p0}, Lcom/google/common/collect/hd;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_a
.end method

.method public size()I
    .registers 2

    .prologue
    .line 2232
    invoke-virtual {p0}, Lcom/google/common/collect/hd;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
