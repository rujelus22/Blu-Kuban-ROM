.class final Lcom/google/common/cache/r;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;)V
    .registers 2
    .parameter

    .prologue
    .line 4525
    iput-object p1, p0, Lcom/google/common/cache/r;->a:Lcom/google/common/cache/LocalCache;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .prologue
    .line 4569
    iget-object v0, p0, Lcom/google/common/cache/r;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->clear()V

    .line 4570
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 4534
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_6

    .line 4544
    :cond_5
    :goto_5
    return v0

    .line 4537
    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    .line 4538
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 4539
    if-eqz v1, :cond_5

    .line 4542
    iget-object v2, p0, Lcom/google/common/cache/r;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v2, v1}, Lcom/google/common/cache/LocalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4544
    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/google/common/cache/r;->a:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->h:Lcom/google/common/base/Equivalence;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 4564
    iget-object v0, p0, Lcom/google/common/cache/r;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 4529
    new-instance v0, Lcom/google/common/cache/q;

    iget-object v1, p0, Lcom/google/common/cache/r;->a:Lcom/google/common/cache/LocalCache;

    invoke-direct {v0, v1}, Lcom/google/common/cache/q;-><init>(Lcom/google/common/cache/LocalCache;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 4549
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_6

    .line 4554
    :cond_5
    :goto_5
    return v0

    .line 4552
    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    .line 4553
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 4554
    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/google/common/cache/r;->a:Lcom/google/common/cache/LocalCache;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/common/cache/LocalCache;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 4559
    iget-object v0, p0, Lcom/google/common/cache/r;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->size()I

    move-result v0

    return v0
.end method
