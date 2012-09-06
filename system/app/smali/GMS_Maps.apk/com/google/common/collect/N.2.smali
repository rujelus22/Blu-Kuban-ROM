.class Lcom/google/common/collect/N;
.super Lcom/google/common/collect/I;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedSet;


# instance fields
.field final synthetic a:Lcom/google/common/collect/z;


# direct methods
.method constructor <init>(Lcom/google/common/collect/z;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/I;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 657
    iput-object p1, p0, Lcom/google/common/collect/N;->a:Lcom/google/common/collect/z;

    .line 658
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/I;-><init>(Lcom/google/common/collect/z;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/I;)V

    .line 659
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 2

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/google/common/collect/N;->g()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/google/common/collect/N;->a()V

    .line 673
    invoke-virtual {p0}, Lcom/google/common/collect/N;->g()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method g()Ljava/util/SortedSet;
    .registers 2

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/google/common/collect/N;->e()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 7
    .parameter

    .prologue
    .line 684
    invoke-virtual {p0}, Lcom/google/common/collect/N;->a()V

    .line 685
    new-instance v0, Lcom/google/common/collect/N;

    iget-object v1, p0, Lcom/google/common/collect/N;->a:Lcom/google/common/collect/z;

    invoke-virtual {p0}, Lcom/google/common/collect/N;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/N;->g()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/common/collect/N;->f()Lcom/google/common/collect/I;

    move-result-object v4

    if-nez v4, :cond_1d

    :goto_19
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/common/collect/N;-><init>(Lcom/google/common/collect/z;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/I;)V

    return-object v0

    :cond_1d
    invoke-virtual {p0}, Lcom/google/common/collect/N;->f()Lcom/google/common/collect/I;

    move-result-object p0

    goto :goto_19
.end method

.method public last()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/google/common/collect/N;->a()V

    .line 679
    invoke-virtual {p0}, Lcom/google/common/collect/N;->g()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/google/common/collect/N;->a()V

    .line 693
    new-instance v0, Lcom/google/common/collect/N;

    iget-object v1, p0, Lcom/google/common/collect/N;->a:Lcom/google/common/collect/z;

    invoke-virtual {p0}, Lcom/google/common/collect/N;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/N;->g()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/common/collect/N;->f()Lcom/google/common/collect/I;

    move-result-object v4

    if-nez v4, :cond_1d

    :goto_19
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/common/collect/N;-><init>(Lcom/google/common/collect/z;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/I;)V

    return-object v0

    :cond_1d
    invoke-virtual {p0}, Lcom/google/common/collect/N;->f()Lcom/google/common/collect/I;

    move-result-object p0

    goto :goto_19
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 7
    .parameter

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/google/common/collect/N;->a()V

    .line 701
    new-instance v0, Lcom/google/common/collect/N;

    iget-object v1, p0, Lcom/google/common/collect/N;->a:Lcom/google/common/collect/z;

    invoke-virtual {p0}, Lcom/google/common/collect/N;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/N;->g()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/common/collect/N;->f()Lcom/google/common/collect/I;

    move-result-object v4

    if-nez v4, :cond_1d

    :goto_19
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/common/collect/N;-><init>(Lcom/google/common/collect/z;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/I;)V

    return-object v0

    :cond_1d
    invoke-virtual {p0}, Lcom/google/common/collect/N;->f()Lcom/google/common/collect/I;

    move-result-object p0

    goto :goto_19
.end method
