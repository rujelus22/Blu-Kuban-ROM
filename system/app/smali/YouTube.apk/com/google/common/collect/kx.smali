.class final Lcom/google/common/collect/kx;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/kt;


# direct methods
.method constructor <init>(Lcom/google/common/collect/kt;)V
    .registers 2
    .parameter

    .prologue
    .line 646
    iput-object p1, p0, Lcom/google/common/collect/kx;->a:Lcom/google/common/collect/kt;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/google/common/collect/kx;->a:Lcom/google/common/collect/kt;

    invoke-virtual {v0}, Lcom/google/common/collect/kt;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 669
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 660
    iget-object v0, p0, Lcom/google/common/collect/kx;->a:Lcom/google/common/collect/kt;

    iget-object v0, v0, Lcom/google/common/collect/kt;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/kx;->a:Lcom/google/common/collect/kt;

    iget-object v1, v1, Lcom/google/common/collect/kt;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/StandardTable;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .registers 3

    .prologue
    .line 656
    iget-object v0, p0, Lcom/google/common/collect/kx;->a:Lcom/google/common/collect/kt;

    iget-object v0, v0, Lcom/google/common/collect/kt;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/kx;->a:Lcom/google/common/collect/kt;

    iget-object v1, v1, Lcom/google/common/collect/kt;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/StandardTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 648
    iget-object v0, p0, Lcom/google/common/collect/kx;->a:Lcom/google/common/collect/kt;

    invoke-static {v0}, Lcom/google/common/collect/StandardTable;->keyIteratorImpl(Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 664
    iget-object v0, p0, Lcom/google/common/collect/kx;->a:Lcom/google/common/collect/kt;

    iget-object v0, v0, Lcom/google/common/collect/kt;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/kx;->a:Lcom/google/common/collect/kt;

    iget-object v1, v1, Lcom/google/common/collect/kt;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/StandardTable;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 5
    .parameter

    .prologue
    .line 672
    const/4 v0, 0x0

    .line 673
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 674
    invoke-virtual {p0, v2}, Lcom/google/common/collect/kx;->remove(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_5

    .line 676
    :cond_15
    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 4
    .parameter

    .prologue
    .line 680
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    new-instance v0, Lcom/google/common/collect/ky;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ky;-><init>(Lcom/google/common/collect/kx;Ljava/util/Collection;)V

    .line 687
    iget-object v1, p0, Lcom/google/common/collect/kx;->a:Lcom/google/common/collect/kt;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/kt;->a(Lcom/google/common/base/ah;)Z

    move-result v0

    return v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/google/common/collect/kx;->a:Lcom/google/common/collect/kt;

    invoke-virtual {v0}, Lcom/google/common/collect/kt;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
