.class Lcom/google/common/collect/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final a:Ljava/util/Iterator;

.field final b:Ljava/util/Collection;

.field final synthetic c:Lcom/google/common/collect/ai;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ai;)V
    .registers 4
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/google/common/collect/aj;->c:Lcom/google/common/collect/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iget-object v0, p0, Lcom/google/common/collect/aj;->c:Lcom/google/common/collect/ai;

    iget-object v0, v0, Lcom/google/common/collect/ai;->c:Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/common/collect/aj;->b:Ljava/util/Collection;

    .line 491
    iget-object v0, p1, Lcom/google/common/collect/ai;->f:Lcom/google/common/collect/AbstractMultimap;

    iget-object v1, p1, Lcom/google/common/collect/ai;->c:Ljava/util/Collection;

    #calls: Lcom/google/common/collect/AbstractMultimap;->iteratorOrListIterator(Ljava/util/Collection;)Ljava/util/Iterator;
    invoke-static {v0, v1}, Lcom/google/common/collect/AbstractMultimap;->access$100(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aj;->a:Ljava/util/Iterator;

    .line 492
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ai;Ljava/util/Iterator;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/google/common/collect/aj;->c:Lcom/google/common/collect/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iget-object v0, p0, Lcom/google/common/collect/aj;->c:Lcom/google/common/collect/ai;

    iget-object v0, v0, Lcom/google/common/collect/ai;->c:Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/common/collect/aj;->b:Ljava/util/Collection;

    .line 495
    iput-object p2, p0, Lcom/google/common/collect/aj;->a:Ljava/util/Iterator;

    .line 496
    return-void
.end method


# virtual methods
.method final a()V
    .registers 3

    .prologue
    .line 503
    iget-object v0, p0, Lcom/google/common/collect/aj;->c:Lcom/google/common/collect/ai;

    invoke-virtual {v0}, Lcom/google/common/collect/ai;->a()V

    .line 504
    iget-object v0, p0, Lcom/google/common/collect/aj;->c:Lcom/google/common/collect/ai;

    iget-object v0, v0, Lcom/google/common/collect/ai;->c:Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/common/collect/aj;->b:Ljava/util/Collection;

    if-eq v0, v1, :cond_13

    .line 505
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 507
    :cond_13
    return-void
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/google/common/collect/aj;->a()V

    .line 511
    iget-object v0, p0, Lcom/google/common/collect/aj;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/google/common/collect/aj;->a()V

    .line 516
    iget-object v0, p0, Lcom/google/common/collect/aj;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/common/collect/aj;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 521
    iget-object v0, p0, Lcom/google/common/collect/aj;->c:Lcom/google/common/collect/ai;

    iget-object v0, v0, Lcom/google/common/collect/ai;->f:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->access$210(Lcom/google/common/collect/AbstractMultimap;)I

    .line 522
    iget-object v0, p0, Lcom/google/common/collect/aj;->c:Lcom/google/common/collect/ai;

    invoke-virtual {v0}, Lcom/google/common/collect/ai;->b()V

    .line 523
    return-void
.end method
