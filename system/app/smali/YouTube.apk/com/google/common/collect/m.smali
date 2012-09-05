.class Lcom/google/common/collect/m;
.super Lcom/google/common/collect/bt;
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
    .line 342
    iput-object p1, p0, Lcom/google/common/collect/m;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/bt;-><init>()V

    .line 343
    iput-object p2, p0, Lcom/google/common/collect/m;->b:Ljava/util/Map;

    .line 344
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/m;->c:Ljava/util/Set;

    .line 345
    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Set;
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/common/collect/m;->c:Ljava/util/Set;

    return-object v0
.end method

.method public final b()Ljava/util/Map;
    .registers 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/common/collect/m;->b:Ljava/util/Map;

    return-object v0
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/common/collect/m;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/m;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    #getter for: Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$100(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v1

    if-ne v0, v1, :cond_10

    .line 392
    iget-object v0, p0, Lcom/google/common/collect/m;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->clear()V

    .line 400
    :cond_f
    return-void

    .line 394
    :cond_10
    invoke-virtual {p0}, Lcom/google/common/collect/m;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 395
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 396
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 397
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_14
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/common/collect/m;->c:Ljava/util/Set;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/common/collect/m;->c:Ljava/util/Set;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/common/collect/m;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 356
    new-instance v1, Lcom/google/common/collect/n;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/n;-><init>(Lcom/google/common/collect/m;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/common/collect/m;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-object v1, p0, Lcom/google/common/collect/m;->b:Ljava/util/Map;

    #calls: Lcom/google/common/collect/AbstractMapBasedMultiset;->removeAllOccurrences(Ljava/lang/Object;Ljava/util/Map;)I
    invoke-static {v0, p1, v1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$300(Lcom/google/common/collect/AbstractMapBasedMultiset;Ljava/lang/Object;Ljava/util/Map;)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/google/common/collect/m;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/cr;->a(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/google/common/collect/m;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/cr;->b(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
