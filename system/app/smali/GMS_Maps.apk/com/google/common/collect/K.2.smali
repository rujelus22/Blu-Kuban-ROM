.class Lcom/google/common/collect/K;
.super Lcom/google/common/collect/I;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;


# instance fields
.field final synthetic g:Lcom/google/common/collect/z;


# direct methods
.method constructor <init>(Lcom/google/common/collect/z;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/I;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 710
    iput-object p1, p0, Lcom/google/common/collect/K;->g:Lcom/google/common/collect/z;

    .line 711
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/I;-><init>(Lcom/google/common/collect/z;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/I;)V

    .line 712
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 749
    invoke-virtual {p0}, Lcom/google/common/collect/K;->a()V

    .line 750
    invoke-virtual {p0}, Lcom/google/common/collect/K;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 751
    invoke-virtual {p0}, Lcom/google/common/collect/K;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 752
    iget-object v1, p0, Lcom/google/common/collect/K;->g:Lcom/google/common/collect/z;

    invoke-static {v1}, Lcom/google/common/collect/z;->c(Lcom/google/common/collect/z;)I

    .line 753
    if-eqz v0, :cond_1c

    .line 754
    invoke-virtual {p0}, Lcom/google/common/collect/K;->d()V

    .line 756
    :cond_1c
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 720
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 721
    const/4 v0, 0x0

    .line 732
    :cond_7
    :goto_7
    return v0

    .line 723
    :cond_8
    invoke-virtual {p0}, Lcom/google/common/collect/K;->size()I

    move-result v1

    .line 724
    invoke-virtual {p0}, Lcom/google/common/collect/K;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 725
    if-eqz v0, :cond_7

    .line 726
    invoke-virtual {p0}, Lcom/google/common/collect/K;->e()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 727
    iget-object v3, p0, Lcom/google/common/collect/K;->g:Lcom/google/common/collect/z;

    sub-int/2addr v2, v1

    invoke-static {v3, v2}, Lcom/google/common/collect/z;->a(Lcom/google/common/collect/z;I)I

    .line 728
    if-nez v1, :cond_7

    .line 729
    invoke-virtual {p0}, Lcom/google/common/collect/K;->d()V

    goto :goto_7
.end method

.method g()Ljava/util/List;
    .registers 2

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/google/common/collect/K;->e()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/google/common/collect/K;->a()V

    .line 738
    invoke-virtual {p0}, Lcom/google/common/collect/K;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/google/common/collect/K;->a()V

    .line 770
    invoke-virtual {p0}, Lcom/google/common/collect/K;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/google/common/collect/K;->a()V

    .line 776
    invoke-virtual {p0}, Lcom/google/common/collect/K;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/google/common/collect/K;->a()V

    .line 782
    new-instance v0, Lcom/google/common/collect/L;

    invoke-direct {v0, p0}, Lcom/google/common/collect/L;-><init>(Lcom/google/common/collect/K;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .parameter

    .prologue
    .line 787
    invoke-virtual {p0}, Lcom/google/common/collect/K;->a()V

    .line 788
    new-instance v0, Lcom/google/common/collect/L;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/L;-><init>(Lcom/google/common/collect/K;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/google/common/collect/K;->a()V

    .line 761
    invoke-virtual {p0}, Lcom/google/common/collect/K;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 762
    iget-object v1, p0, Lcom/google/common/collect/K;->g:Lcom/google/common/collect/z;

    invoke-static {v1}, Lcom/google/common/collect/z;->b(Lcom/google/common/collect/z;)I

    .line 763
    invoke-virtual {p0}, Lcom/google/common/collect/K;->b()V

    .line 764
    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 743
    invoke-virtual {p0}, Lcom/google/common/collect/K;->a()V

    .line 744
    invoke-virtual {p0}, Lcom/google/common/collect/K;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 793
    invoke-virtual {p0}, Lcom/google/common/collect/K;->a()V

    .line 794
    iget-object v0, p0, Lcom/google/common/collect/K;->g:Lcom/google/common/collect/z;

    invoke-virtual {p0}, Lcom/google/common/collect/K;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/K;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/K;->f()Lcom/google/common/collect/I;

    move-result-object v3

    if-nez v3, :cond_1c

    :goto_17
    invoke-static {v0, v1, v2, p0}, Lcom/google/common/collect/z;->a(Lcom/google/common/collect/z;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/I;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1c
    invoke-virtual {p0}, Lcom/google/common/collect/K;->f()Lcom/google/common/collect/I;

    move-result-object p0

    goto :goto_17
.end method
