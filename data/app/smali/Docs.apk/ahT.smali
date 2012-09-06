.class LahT;
.super LahR;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LahI",
        "<TK;TV;>.ahR;",
        "Ljava/util/List",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic c:LahI;


# direct methods
.method constructor <init>(LahI;Ljava/lang/Object;Ljava/util/List;LahR;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List",
            "<TV;>;",
            "LahI",
            "<TK;TV;>.ahR;)V"
        }
    .end annotation

    .prologue
    .line 711
    iput-object p1, p0, LahT;->c:LahI;

    .line 712
    invoke-direct {p0, p1, p2, p3, p4}, LahR;-><init>(LahI;Ljava/lang/Object;Ljava/util/Collection;LahR;)V

    .line 713
    return-void
.end method


# virtual methods
.method a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 716
    invoke-virtual {p0}, LahT;->a()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public add(ILjava/lang/Object;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .prologue
    .line 750
    invoke-virtual {p0}, LahT;->a()V

    .line 751
    invoke-virtual {p0}, LahT;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 752
    invoke-virtual {p0}, LahT;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 753
    iget-object v1, p0, LahT;->c:LahI;

    invoke-static {v1}, LahI;->b(LahI;)I

    .line 754
    if-eqz v0, :cond_1c

    .line 755
    invoke-virtual {p0}, LahT;->c()V

    .line 757
    :cond_1c
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TV;>;)Z"
        }
    .end annotation

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
    invoke-virtual {p0}, LahT;->size()I

    move-result v1

    .line 725
    invoke-virtual {p0}, LahT;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 726
    if-eqz v0, :cond_7

    .line 727
    invoke-virtual {p0}, LahT;->a()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 728
    iget-object v3, p0, LahT;->c:LahI;

    sub-int/2addr v2, v1

    invoke-static {v3, v2}, LahI;->a(LahI;I)I

    .line 729
    if-nez v1, :cond_7

    .line 730
    invoke-virtual {p0}, LahT;->c()V

    goto :goto_7
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 738
    invoke-virtual {p0}, LahT;->a()V

    .line 739
    invoke-virtual {p0}, LahT;->a()Ljava/util/List;

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
    invoke-virtual {p0}, LahT;->a()V

    .line 771
    invoke-virtual {p0}, LahT;->a()Ljava/util/List;

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
    invoke-virtual {p0}, LahT;->a()V

    .line 777
    invoke-virtual {p0}, LahT;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 782
    invoke-virtual {p0}, LahT;->a()V

    .line 783
    new-instance v0, LahU;

    invoke-direct {v0, p0}, LahU;-><init>(LahT;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 788
    invoke-virtual {p0}, LahT;->a()V

    .line 789
    new-instance v0, LahU;

    invoke-direct {v0, p0, p1}, LahU;-><init>(LahT;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 761
    invoke-virtual {p0}, LahT;->a()V

    .line 762
    invoke-virtual {p0}, LahT;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 763
    iget-object v1, p0, LahT;->c:LahI;

    invoke-static {v1}, LahI;->a(LahI;)I

    .line 764
    invoke-virtual {p0}, LahT;->b()V

    .line 765
    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 744
    invoke-virtual {p0}, LahT;->a()V

    .line 745
    invoke-virtual {p0}, LahT;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 794
    invoke-virtual {p0}, LahT;->a()V

    .line 795
    iget-object v0, p0, LahT;->c:LahI;

    invoke-virtual {p0}, LahT;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, LahT;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, LahT;->a()LahR;

    move-result-object v3

    if-nez v3, :cond_1c

    :goto_17
    invoke-static {v0, v1, v2, p0}, LahI;->a(LahI;Ljava/lang/Object;Ljava/util/List;LahR;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1c
    invoke-virtual {p0}, LahT;->a()LahR;

    move-result-object p0

    goto :goto_17
.end method
