.class Lcom/google/common/collect/cz;
.super Ljava/util/AbstractList;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 3
    .parameter

    .prologue
    .line 733
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 734
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/common/collect/cz;->a:Ljava/util/List;

    .line 735
    return-void
.end method

.method private a(I)I
    .registers 3
    .parameter

    .prologue
    .line 742
    invoke-virtual {p0}, Lcom/google/common/collect/cz;->size()I

    move-result v0

    .line 743
    invoke-static {p1, v0}, Lcom/google/common/base/P;->a(II)I

    .line 744
    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method

.method static synthetic a(Lcom/google/common/collect/cz;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 730
    invoke-direct {p0, p1}, Lcom/google/common/collect/cz;->b(I)I

    move-result v0

    return v0
.end method

.method private b(I)I
    .registers 3
    .parameter

    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/google/common/collect/cz;->size()I

    move-result v0

    .line 749
    invoke-static {p1, v0}, Lcom/google/common/base/P;->b(II)I

    .line 750
    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method a()Ljava/util/List;
    .registers 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/google/common/collect/cz;->a:Ljava/util/List;

    return-object v0
.end method

.method public add(ILjava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 754
    iget-object v0, p0, Lcom/google/common/collect/cz;->a:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/common/collect/cz;->b(I)I

    move-result v1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 755
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 758
    iget-object v0, p0, Lcom/google/common/collect/cz;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 759
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 786
    iget-object v0, p0, Lcom/google/common/collect/cz;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 790
    iget-object v0, p0, Lcom/google/common/collect/cz;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 774
    iget-object v0, p0, Lcom/google/common/collect/cz;->a:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/common/collect/cz;->a(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 800
    iget-object v0, p0, Lcom/google/common/collect/cz;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 801
    if-ltz v0, :cond_d

    invoke-direct {p0, v0}, Lcom/google/common/collect/cz;->a(I)I

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/google/common/collect/cz;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/google/common/collect/cz;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 805
    iget-object v0, p0, Lcom/google/common/collect/cz;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 806
    if-ltz v0, :cond_d

    invoke-direct {p0, v0}, Lcom/google/common/collect/cz;->a(I)I

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 4
    .parameter

    .prologue
    .line 814
    invoke-direct {p0, p1}, Lcom/google/common/collect/cz;->b(I)I

    move-result v0

    .line 815
    iget-object v1, p0, Lcom/google/common/collect/cz;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 816
    new-instance v1, Lcom/google/common/collect/cA;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/cA;-><init>(Lcom/google/common/collect/cz;Ljava/util/ListIterator;)V

    return-object v1
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 762
    iget-object v0, p0, Lcom/google/common/collect/cz;->a:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/common/collect/cz;->a(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected removeRange(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 766
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/cz;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 767
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 770
    iget-object v0, p0, Lcom/google/common/collect/cz;->a:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/common/collect/cz;->a(I)I

    move-result v1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 782
    iget-object v0, p0, Lcom/google/common/collect/cz;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 794
    invoke-virtual {p0}, Lcom/google/common/collect/cz;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/P;->a(III)V

    .line 795
    iget-object v0, p0, Lcom/google/common/collect/cz;->a:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/google/common/collect/cz;->b(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/google/common/collect/cz;->b(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/cx;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
