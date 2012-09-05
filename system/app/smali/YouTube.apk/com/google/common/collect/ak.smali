.class Lcom/google/common/collect/ak;
.super Lcom/google/common/collect/ai;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;


# instance fields
.field final synthetic g:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/ai;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 688
    iput-object p1, p0, Lcom/google/common/collect/ak;->g:Lcom/google/common/collect/AbstractMultimap;

    .line 689
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/ai;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/ai;)V

    .line 690
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/google/common/collect/ak;->a()V

    .line 724
    iget-object v0, p0, Lcom/google/common/collect/ai;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 725
    invoke-virtual {p0}, Lcom/google/common/collect/ak;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 726
    iget-object v1, p0, Lcom/google/common/collect/ak;->g:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMultimap;->access$208(Lcom/google/common/collect/AbstractMultimap;)I

    .line 727
    if-eqz v0, :cond_1a

    .line 728
    invoke-virtual {p0}, Lcom/google/common/collect/ak;->c()V

    .line 730
    :cond_1a
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 697
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 698
    const/4 v0, 0x0

    .line 709
    :cond_7
    :goto_7
    return v0

    .line 700
    :cond_8
    invoke-virtual {p0}, Lcom/google/common/collect/ak;->size()I

    move-result v1

    .line 701
    invoke-virtual {p0}, Lcom/google/common/collect/ak;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 702
    if-eqz v0, :cond_7

    .line 703
    iget-object v2, p0, Lcom/google/common/collect/ai;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 704
    iget-object v3, p0, Lcom/google/common/collect/ak;->g:Lcom/google/common/collect/AbstractMultimap;

    sub-int/2addr v2, v1

    invoke-static {v3, v2}, Lcom/google/common/collect/AbstractMultimap;->access$212(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 705
    if-nez v1, :cond_7

    .line 706
    invoke-virtual {p0}, Lcom/google/common/collect/ak;->c()V

    goto :goto_7
.end method

.method final d()Ljava/util/List;
    .registers 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/common/collect/ai;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 713
    invoke-virtual {p0}, Lcom/google/common/collect/ak;->a()V

    .line 714
    invoke-virtual {p0}, Lcom/google/common/collect/ak;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/google/common/collect/ak;->a()V

    .line 742
    invoke-virtual {p0}, Lcom/google/common/collect/ak;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/google/common/collect/ak;->a()V

    .line 747
    invoke-virtual {p0}, Lcom/google/common/collect/ak;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2

    .prologue
    .line 751
    invoke-virtual {p0}, Lcom/google/common/collect/ak;->a()V

    .line 752
    new-instance v0, Lcom/google/common/collect/al;

    invoke-direct {v0, p0}, Lcom/google/common/collect/al;-><init>(Lcom/google/common/collect/ak;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .parameter

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/google/common/collect/ak;->a()V

    .line 757
    new-instance v0, Lcom/google/common/collect/al;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/al;-><init>(Lcom/google/common/collect/ak;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 733
    invoke-virtual {p0}, Lcom/google/common/collect/ak;->a()V

    .line 734
    invoke-virtual {p0}, Lcom/google/common/collect/ak;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 735
    iget-object v1, p0, Lcom/google/common/collect/ak;->g:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMultimap;->access$210(Lcom/google/common/collect/AbstractMultimap;)I

    .line 736
    invoke-virtual {p0}, Lcom/google/common/collect/ak;->b()V

    .line 737
    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/google/common/collect/ak;->a()V

    .line 719
    invoke-virtual {p0}, Lcom/google/common/collect/ak;->d()Ljava/util/List;

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
    .line 762
    invoke-virtual {p0}, Lcom/google/common/collect/ak;->a()V

    .line 763
    iget-object v0, p0, Lcom/google/common/collect/ak;->g:Lcom/google/common/collect/AbstractMultimap;

    iget-object v1, p0, Lcom/google/common/collect/ai;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/collect/ak;->d()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/google/common/collect/fu;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/ai;->d:Lcom/google/common/collect/ai;

    if-nez v3, :cond_18

    :goto_13
    #calls: Lcom/google/common/collect/AbstractMultimap;->wrapList(Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/ai;)Ljava/util/List;
    invoke-static {v0, v1, v2, p0}, Lcom/google/common/collect/AbstractMultimap;->access$300(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/ai;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_18
    iget-object p0, p0, Lcom/google/common/collect/ai;->d:Lcom/google/common/collect/ai;

    goto :goto_13
.end method
