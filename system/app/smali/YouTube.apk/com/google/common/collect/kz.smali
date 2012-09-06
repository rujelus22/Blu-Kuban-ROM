.class final Lcom/google/common/collect/kz;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/kt;


# direct methods
.method constructor <init>(Lcom/google/common/collect/kt;)V
    .registers 2
    .parameter

    .prologue
    .line 691
    iput-object p1, p0, Lcom/google/common/collect/kz;->a:Lcom/google/common/collect/kt;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/google/common/collect/kz;->a:Lcom/google/common/collect/kt;

    invoke-virtual {v0}, Lcom/google/common/collect/kt;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 706
    return-void
.end method

.method public final isEmpty()Z
    .registers 3

    .prologue
    .line 701
    iget-object v0, p0, Lcom/google/common/collect/kz;->a:Lcom/google/common/collect/kt;

    iget-object v0, v0, Lcom/google/common/collect/kt;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/kz;->a:Lcom/google/common/collect/kt;

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
    .line 693
    iget-object v0, p0, Lcom/google/common/collect/kz;->a:Lcom/google/common/collect/kt;

    invoke-static {v0}, Lcom/google/common/collect/StandardTable;->valueIteratorImpl(Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 709
    if-nez p1, :cond_5

    move v0, v1

    .line 723
    :goto_4
    return v0

    .line 712
    :cond_5
    iget-object v0, p0, Lcom/google/common/collect/kz;->a:Lcom/google/common/collect/kt;

    iget-object v0, v0, Lcom/google/common/collect/kt;->d:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 713
    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 714
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 715
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Lcom/google/common/collect/ImmutableEntry;

    iget-object v5, p0, Lcom/google/common/collect/kz;->a:Lcom/google/common/collect/kt;

    iget-object v5, v5, Lcom/google/common/collect/kt;->a:Ljava/lang/Object;

    invoke-direct {v4, v5, p1}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 717
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 718
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 720
    :cond_3b
    const/4 v0, 0x1

    goto :goto_4

    :cond_3d
    move v0, v1

    .line 723
    goto :goto_4
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 4
    .parameter

    .prologue
    .line 727
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    new-instance v0, Lcom/google/common/collect/la;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/la;-><init>(Lcom/google/common/collect/kz;Ljava/util/Collection;)V

    .line 734
    iget-object v1, p0, Lcom/google/common/collect/kz;->a:Lcom/google/common/collect/kt;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/kt;->a(Lcom/google/common/base/ah;)Z

    move-result v0

    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 4
    .parameter

    .prologue
    .line 738
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    new-instance v0, Lcom/google/common/collect/lb;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/lb;-><init>(Lcom/google/common/collect/kz;Ljava/util/Collection;)V

    .line 745
    iget-object v1, p0, Lcom/google/common/collect/kz;->a:Lcom/google/common/collect/kt;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/kt;->a(Lcom/google/common/base/ah;)Z

    move-result v0

    return v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/google/common/collect/kz;->a:Lcom/google/common/collect/kt;

    invoke-virtual {v0}, Lcom/google/common/collect/kt;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
