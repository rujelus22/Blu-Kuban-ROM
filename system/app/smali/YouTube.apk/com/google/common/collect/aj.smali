.class final Lcom/google/common/collect/aj;
.super Lcom/google/common/collect/ae;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedSet;


# instance fields
.field final synthetic a:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/ae;)V
    .registers 5
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 658
    iput-object p1, p0, Lcom/google/common/collect/aj;->a:Lcom/google/common/collect/AbstractMultimap;

    .line 659
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/ae;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/ae;)V

    .line 660
    return-void
.end method

.method private d()Ljava/util/SortedSet;
    .registers 2

    .prologue
    .line 663
    iget-object v0, p0, Lcom/google/common/collect/ae;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .registers 2

    .prologue
    .line 668
    invoke-direct {p0}, Lcom/google/common/collect/aj;->d()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final first()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/google/common/collect/aj;->a()V

    .line 674
    invoke-direct {p0}, Lcom/google/common/collect/aj;->d()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 7
    .parameter

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/google/common/collect/aj;->a()V

    .line 686
    new-instance v0, Lcom/google/common/collect/aj;

    iget-object v1, p0, Lcom/google/common/collect/aj;->a:Lcom/google/common/collect/AbstractMultimap;

    iget-object v2, p0, Lcom/google/common/collect/ae;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/aj;->d()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    iget-object v4, p0, Lcom/google/common/collect/ae;->d:Lcom/google/common/collect/ae;

    if-nez v4, :cond_19

    :goto_15
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/common/collect/aj;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/ae;)V

    return-object v0

    :cond_19
    iget-object p0, p0, Lcom/google/common/collect/ae;->d:Lcom/google/common/collect/ae;

    goto :goto_15
.end method

.method public final last()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/google/common/collect/aj;->a()V

    .line 680
    invoke-direct {p0}, Lcom/google/common/collect/aj;->d()Ljava/util/SortedSet;

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
    .line 693
    invoke-virtual {p0}, Lcom/google/common/collect/aj;->a()V

    .line 694
    new-instance v0, Lcom/google/common/collect/aj;

    iget-object v1, p0, Lcom/google/common/collect/aj;->a:Lcom/google/common/collect/AbstractMultimap;

    iget-object v2, p0, Lcom/google/common/collect/ae;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/aj;->d()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    iget-object v4, p0, Lcom/google/common/collect/ae;->d:Lcom/google/common/collect/ae;

    if-nez v4, :cond_19

    :goto_15
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/common/collect/aj;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/ae;)V

    return-object v0

    :cond_19
    iget-object p0, p0, Lcom/google/common/collect/ae;->d:Lcom/google/common/collect/ae;

    goto :goto_15
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 7
    .parameter

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/google/common/collect/aj;->a()V

    .line 702
    new-instance v0, Lcom/google/common/collect/aj;

    iget-object v1, p0, Lcom/google/common/collect/aj;->a:Lcom/google/common/collect/AbstractMultimap;

    iget-object v2, p0, Lcom/google/common/collect/ae;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/aj;->d()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    iget-object v4, p0, Lcom/google/common/collect/ae;->d:Lcom/google/common/collect/ae;

    if-nez v4, :cond_19

    :goto_15
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/common/collect/aj;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/ae;)V

    return-object v0

    :cond_19
    iget-object p0, p0, Lcom/google/common/collect/ae;->d:Lcom/google/common/collect/ae;

    goto :goto_15
.end method
