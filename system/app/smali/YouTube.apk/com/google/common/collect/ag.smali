.class Lcom/google/common/collect/ag;
.super Lcom/google/common/collect/ae;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;


# instance fields
.field final synthetic g:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/ae;)V
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
    .line 711
    iput-object p1, p0, Lcom/google/common/collect/ag;->g:Lcom/google/common/collect/AbstractMultimap;

    .line 712
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/ae;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/ae;)V

    .line 713
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/google/common/collect/ag;->a()V

    .line 751
    iget-object v0, p0, Lcom/google/common/collect/ae;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 752
    invoke-virtual {p0}, Lcom/google/common/collect/ag;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 753
    iget-object v1, p0, Lcom/google/common/collect/ag;->g:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMultimap;->access$208(Lcom/google/common/collect/AbstractMultimap;)I

    .line 754
    if-eqz v0, :cond_1a

    .line 755
    invoke-virtual {p0}, Lcom/google/common/collect/ag;->c()V

    .line 757
    :cond_1a
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 721
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 722
    const/4 v0, 0x0

    .line 733
    :cond_7
    :goto_7
    return v0

    .line 724
    :cond_8
    invoke-virtual {p0}, Lcom/google/common/collect/ag;->size()I

    move-result v1

    .line 725
    invoke-virtual {p0}, Lcom/google/common/collect/ag;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 726
    if-eqz v0, :cond_7

    .line 727
    iget-object v2, p0, Lcom/google/common/collect/ae;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 728
    iget-object v3, p0, Lcom/google/common/collect/ag;->g:Lcom/google/common/collect/AbstractMultimap;

    sub-int/2addr v2, v1

    invoke-static {v3, v2}, Lcom/google/common/collect/AbstractMultimap;->access$212(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 729
    if-nez v1, :cond_7

    .line 730
    invoke-virtual {p0}, Lcom/google/common/collect/ag;->c()V

    goto :goto_7
.end method

.method final d()Ljava/util/List;
    .registers 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/google/common/collect/ae;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 738
    invoke-virtual {p0}, Lcom/google/common/collect/ag;->a()V

    .line 739
    invoke-virtual {p0}, Lcom/google/common/collect/ag;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/google/common/collect/ag;->a()V

    .line 771
    invoke-virtual {p0}, Lcom/google/common/collect/ag;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/google/common/collect/ag;->a()V

    .line 777
    invoke-virtual {p0}, Lcom/google/common/collect/ag;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2

    .prologue
    .line 782
    invoke-virtual {p0}, Lcom/google/common/collect/ag;->a()V

    .line 783
    new-instance v0, Lcom/google/common/collect/ah;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ah;-><init>(Lcom/google/common/collect/ag;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .parameter

    .prologue
    .line 788
    invoke-virtual {p0}, Lcom/google/common/collect/ag;->a()V

    .line 789
    new-instance v0, Lcom/google/common/collect/ah;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ah;-><init>(Lcom/google/common/collect/ag;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/google/common/collect/ag;->a()V

    .line 762
    invoke-virtual {p0}, Lcom/google/common/collect/ag;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 763
    iget-object v1, p0, Lcom/google/common/collect/ag;->g:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMultimap;->access$210(Lcom/google/common/collect/AbstractMultimap;)I

    .line 764
    invoke-virtual {p0}, Lcom/google/common/collect/ag;->b()V

    .line 765
    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/google/common/collect/ag;->a()V

    .line 745
    invoke-virtual {p0}, Lcom/google/common/collect/ag;->d()Ljava/util/List;

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
    .line 794
    invoke-virtual {p0}, Lcom/google/common/collect/ag;->a()V

    .line 795
    iget-object v0, p0, Lcom/google/common/collect/ag;->g:Lcom/google/common/collect/AbstractMultimap;

    iget-object v1, p0, Lcom/google/common/collect/ae;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/collect/ag;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/ae;->d:Lcom/google/common/collect/ae;

    if-nez v3, :cond_18

    :goto_13
    #calls: Lcom/google/common/collect/AbstractMultimap;->wrapList(Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/ae;)Ljava/util/List;
    invoke-static {v0, v1, v2, p0}, Lcom/google/common/collect/AbstractMultimap;->access$300(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/ae;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_18
    iget-object p0, p0, Lcom/google/common/collect/ae;->d:Lcom/google/common/collect/ae;

    goto :goto_13
.end method
