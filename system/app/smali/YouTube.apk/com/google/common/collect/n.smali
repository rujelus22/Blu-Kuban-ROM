.class final Lcom/google/common/collect/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Ljava/util/Map$Entry;

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Lcom/google/common/collect/m;


# direct methods
.method constructor <init>(Lcom/google/common/collect/m;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/google/common/collect/n;->c:Lcom/google/common/collect/m;

    iput-object p2, p0, Lcom/google/common/collect/n;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/common/collect/n;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/common/collect/n;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/n;->a:Ljava/util/Map$Entry;

    .line 365
    iget-object v0, p0, Lcom/google/common/collect/n;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 369
    iget-object v0, p0, Lcom/google/common/collect/n;->a:Ljava/util/Map$Entry;

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    :goto_6
    const-string v2, "no calls to next() since the last call to remove()"

    invoke-static {v0, v2}, Lcom/google/common/base/t;->b(ZLjava/lang/Object;)V

    .line 371
    iget-object v0, p0, Lcom/google/common/collect/n;->c:Lcom/google/common/collect/m;

    iget-object v2, v0, Lcom/google/common/collect/m;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-object v0, p0, Lcom/google/common/collect/n;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$222(Lcom/google/common/collect/AbstractMapBasedMultiset;J)J

    .line 372
    iget-object v0, p0, Lcom/google/common/collect/n;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/n;->a:Ljava/util/Map$Entry;

    .line 374
    return-void

    :cond_28
    move v0, v1

    .line 369
    goto :goto_6
.end method
