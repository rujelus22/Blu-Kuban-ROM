.class final Lcom/google/common/collect/n;
.super Lcom/google/common/collect/dc;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/AbstractMapBasedMultiset;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset;Ljava/util/Map;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/google/common/collect/n;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/dc;-><init>()V

    .line 332
    iput-object p2, p0, Lcom/google/common/collect/n;->b:Ljava/util/Map;

    .line 333
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/n;->c:Ljava/util/Set;

    .line 334
    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Set;
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/common/collect/n;->c:Ljava/util/Set;

    return-object v0
.end method

.method public final clear()V
    .registers 3

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/common/collect/n;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/n;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    #getter for: Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$000(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v1

    if-ne v0, v1, :cond_10

    .line 382
    iget-object v0, p0, Lcom/google/common/collect/n;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->clear()V

    .line 390
    :cond_f
    return-void

    .line 384
    :cond_10
    invoke-virtual {p0}, Lcom/google/common/collect/n;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 385
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 386
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 387
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_14
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/common/collect/n;->c:Ljava/util/Set;

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/common/collect/n;->c:Ljava/util/Set;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/common/collect/n;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 343
    new-instance v1, Lcom/google/common/collect/o;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/o;-><init>(Lcom/google/common/collect/n;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/common/collect/n;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-object v1, p0, Lcom/google/common/collect/n;->b:Ljava/util/Map;

    #calls: Lcom/google/common/collect/AbstractMapBasedMultiset;->removeAllOccurrences(Ljava/lang/Object;Ljava/util/Map;)I
    invoke-static {v0, p1, v1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$200(Lcom/google/common/collect/AbstractMapBasedMultiset;Ljava/lang/Object;Ljava/util/Map;)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/google/common/collect/n;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/ee;->a(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/google/common/collect/n;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/ee;->b(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
