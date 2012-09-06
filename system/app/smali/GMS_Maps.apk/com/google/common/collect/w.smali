.class Lcom/google/common/collect/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Ljava/util/Map$Entry;

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Lcom/google/common/collect/v;


# direct methods
.method constructor <init>(Lcom/google/common/collect/v;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/google/common/collect/w;->c:Lcom/google/common/collect/v;

    iput-object p2, p0, Lcom/google/common/collect/w;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/common/collect/w;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/common/collect/w;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/w;->a:Ljava/util/Map$Entry;

    .line 380
    iget-object v0, p0, Lcom/google/common/collect/w;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 385
    iget-object v0, p0, Lcom/google/common/collect/w;->a:Ljava/util/Map$Entry;

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    :goto_6
    const-string v2, "no calls to next() since the last call to remove()"

    invoke-static {v0, v2}, Lcom/google/common/base/P;->b(ZLjava/lang/Object;)V

    .line 387
    iget-object v0, p0, Lcom/google/common/collect/w;->c:Lcom/google/common/collect/v;

    iget-object v2, v0, Lcom/google/common/collect/v;->a:Lcom/google/common/collect/q;

    iget-object v0, p0, Lcom/google/common/collect/w;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lcom/google/common/collect/q;->a(Lcom/google/common/collect/q;J)J

    .line 388
    iget-object v0, p0, Lcom/google/common/collect/w;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 389
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/w;->a:Ljava/util/Map$Entry;

    .line 390
    return-void

    :cond_28
    move v0, v1

    .line 385
    goto :goto_6
.end method
