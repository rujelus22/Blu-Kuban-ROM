.class final Lcom/google/common/collect/al;
.super Lcom/google/common/collect/aj;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final synthetic d:Lcom/google/common/collect/ak;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ak;)V
    .registers 2
    .parameter

    .prologue
    .line 771
    iput-object p1, p0, Lcom/google/common/collect/al;->d:Lcom/google/common/collect/ak;

    invoke-direct {p0, p1}, Lcom/google/common/collect/aj;-><init>(Lcom/google/common/collect/ai;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/ak;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 773
    iput-object p1, p0, Lcom/google/common/collect/al;->d:Lcom/google/common/collect/ak;

    .line 774
    invoke-virtual {p1}, Lcom/google/common/collect/ak;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/aj;-><init>(Lcom/google/common/collect/ai;Ljava/util/Iterator;)V

    .line 775
    return-void
.end method

.method private b()Ljava/util/ListIterator;
    .registers 2

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/google/common/collect/aj;->a()V

    iget-object v0, p0, Lcom/google/common/collect/aj;->a:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .registers 4
    .parameter

    .prologue
    .line 802
    iget-object v0, p0, Lcom/google/common/collect/al;->d:Lcom/google/common/collect/ak;

    invoke-virtual {v0}, Lcom/google/common/collect/ak;->isEmpty()Z

    move-result v0

    .line 803
    invoke-direct {p0}, Lcom/google/common/collect/al;->b()Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 804
    iget-object v1, p0, Lcom/google/common/collect/al;->d:Lcom/google/common/collect/ak;

    iget-object v1, v1, Lcom/google/common/collect/ak;->g:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMultimap;->access$208(Lcom/google/common/collect/AbstractMultimap;)I

    .line 805
    if-eqz v0, :cond_1b

    .line 806
    iget-object v0, p0, Lcom/google/common/collect/al;->d:Lcom/google/common/collect/ak;

    invoke-virtual {v0}, Lcom/google/common/collect/ak;->c()V

    .line 808
    :cond_1b
    return-void
.end method

.method public final hasPrevious()Z
    .registers 2

    .prologue
    .line 782
    invoke-direct {p0}, Lcom/google/common/collect/al;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final nextIndex()I
    .registers 2

    .prologue
    .line 790
    invoke-direct {p0}, Lcom/google/common/collect/al;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 786
    invoke-direct {p0}, Lcom/google/common/collect/al;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .registers 2

    .prologue
    .line 794
    invoke-direct {p0}, Lcom/google/common/collect/al;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 798
    invoke-direct {p0}, Lcom/google/common/collect/al;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 799
    return-void
.end method
