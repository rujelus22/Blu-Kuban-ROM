.class final Lcom/google/common/collect/an;
.super Lcom/google/common/collect/ai;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedSet;


# instance fields
.field final synthetic a:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/ai;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 642
    iput-object p1, p0, Lcom/google/common/collect/an;->a:Lcom/google/common/collect/AbstractMultimap;

    .line 643
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/ai;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/ai;)V

    .line 644
    return-void
.end method

.method private d()Ljava/util/SortedSet;
    .registers 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/google/common/collect/ai;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .registers 2

    .prologue
    .line 651
    invoke-direct {p0}, Lcom/google/common/collect/an;->d()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final first()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/google/common/collect/an;->a()V

    .line 656
    invoke-direct {p0}, Lcom/google/common/collect/an;->d()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 7
    .parameter

    .prologue
    .line 665
    invoke-virtual {p0}, Lcom/google/common/collect/an;->a()V

    .line 666
    new-instance v0, Lcom/google/common/collect/an;

    iget-object v1, p0, Lcom/google/common/collect/an;->a:Lcom/google/common/collect/AbstractMultimap;

    iget-object v2, p0, Lcom/google/common/collect/ai;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/an;->d()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    iget-object v4, p0, Lcom/google/common/collect/ai;->d:Lcom/google/common/collect/ai;

    if-nez v4, :cond_19

    :goto_15
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/common/collect/an;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/ai;)V

    return-object v0

    :cond_19
    iget-object p0, p0, Lcom/google/common/collect/ai;->d:Lcom/google/common/collect/ai;

    goto :goto_15
.end method

.method public final last()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/google/common/collect/an;->a()V

    .line 661
    invoke-direct {p0}, Lcom/google/common/collect/an;->d()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/google/common/collect/an;->a()V

    .line 673
    new-instance v0, Lcom/google/common/collect/an;

    iget-object v1, p0, Lcom/google/common/collect/an;->a:Lcom/google/common/collect/AbstractMultimap;

    iget-object v2, p0, Lcom/google/common/collect/ai;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/an;->d()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    iget-object v4, p0, Lcom/google/common/collect/ai;->d:Lcom/google/common/collect/ai;

    if-nez v4, :cond_19

    :goto_15
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/common/collect/an;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/ai;)V

    return-object v0

    :cond_19
    iget-object p0, p0, Lcom/google/common/collect/ai;->d:Lcom/google/common/collect/ai;

    goto :goto_15
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 7
    .parameter

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/google/common/collect/an;->a()V

    .line 680
    new-instance v0, Lcom/google/common/collect/an;

    iget-object v1, p0, Lcom/google/common/collect/an;->a:Lcom/google/common/collect/AbstractMultimap;

    iget-object v2, p0, Lcom/google/common/collect/ai;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/an;->d()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    iget-object v4, p0, Lcom/google/common/collect/ai;->d:Lcom/google/common/collect/ai;

    if-nez v4, :cond_19

    :goto_15
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/common/collect/an;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/ai;)V

    return-object v0

    :cond_19
    iget-object p0, p0, Lcom/google/common/collect/ai;->d:Lcom/google/common/collect/ai;

    goto :goto_15
.end method
