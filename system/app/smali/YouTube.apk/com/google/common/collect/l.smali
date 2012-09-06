.class final Lcom/google/common/collect/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Ljava/util/Map$Entry;

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Lcom/google/common/collect/AbstractMapBasedMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/common/collect/l;->c:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iput-object p2, p0, Lcom/google/common/collect/l;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/common/collect/l;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/common/collect/l;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/l;->a:Ljava/util/Map$Entry;

    new-instance v1, Lcom/google/common/collect/m;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/m;-><init>(Lcom/google/common/collect/l;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public final remove()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v0, p0, Lcom/google/common/collect/l;->a:Ljava/util/Map$Entry;

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    :goto_6
    const-string v2, "no calls to next() since the last call to remove()"

    invoke-static {v0, v2}, Lcom/google/common/base/ag;->b(ZLjava/lang/Object;)V

    .line 129
    iget-object v2, p0, Lcom/google/common/collect/l;->c:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-object v0, p0, Lcom/google/common/collect/l;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Count;->getAndSet(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$122(Lcom/google/common/collect/AbstractMapBasedMultiset;J)J

    .line 130
    iget-object v0, p0, Lcom/google/common/collect/l;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/l;->a:Ljava/util/Map$Entry;

    .line 132
    return-void

    :cond_26
    move v0, v1

    .line 127
    goto :goto_6
.end method
