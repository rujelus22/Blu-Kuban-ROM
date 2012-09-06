.class Lcom/google/common/collect/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Ljava/util/Map$Entry;

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Lcom/google/common/collect/s;


# direct methods
.method constructor <init>(Lcom/google/common/collect/s;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/common/collect/t;->c:Lcom/google/common/collect/s;

    iput-object p2, p0, Lcom/google/common/collect/t;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/cN;
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/common/collect/t;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 113
    iput-object v0, p0, Lcom/google/common/collect/t;->a:Ljava/util/Map$Entry;

    .line 114
    new-instance v1, Lcom/google/common/collect/u;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/u;-><init>(Lcom/google/common/collect/t;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/common/collect/t;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/google/common/collect/t;->a()Lcom/google/common/collect/cN;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 135
    iget-object v0, p0, Lcom/google/common/collect/t;->a:Ljava/util/Map$Entry;

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    :goto_6
    const-string v2, "no calls to next() since the last call to remove()"

    invoke-static {v0, v2}, Lcom/google/common/base/P;->b(ZLjava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/google/common/collect/t;->c:Lcom/google/common/collect/s;

    iget-object v2, v0, Lcom/google/common/collect/s;->a:Lcom/google/common/collect/q;

    iget-object v0, p0, Lcom/google/common/collect/t;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lcom/google/common/collect/q;->a(Lcom/google/common/collect/q;J)J

    .line 138
    iget-object v0, p0, Lcom/google/common/collect/t;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/t;->a:Ljava/util/Map$Entry;

    .line 140
    return-void

    :cond_28
    move v0, v1

    .line 135
    goto :goto_6
.end method
