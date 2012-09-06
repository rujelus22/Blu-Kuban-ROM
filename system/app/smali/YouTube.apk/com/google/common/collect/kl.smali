.class abstract Lcom/google/common/collect/kl;
.super Lcom/google/common/collect/iw;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedSet;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/common/collect/iw;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic a()Lcom/google/common/collect/iq;
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/common/collect/kl;->b()Lcom/google/common/collect/kg;

    move-result-object v0

    return-object v0
.end method

.method abstract b()Lcom/google/common/collect/kg;
.end method

.method public comparator()Ljava/util/Comparator;
    .registers 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/common/collect/kl;->b()Lcom/google/common/collect/kg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kg;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/common/collect/kl;->b()Lcom/google/common/collect/kg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kg;->firstEntry()Lcom/google/common/collect/ir;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/kh;->a(Lcom/google/common/collect/ir;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 4
    .parameter

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/common/collect/kl;->b()Lcom/google/common/collect/kg;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/kg;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kg;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/common/collect/kl;->b()Lcom/google/common/collect/kg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kg;->lastEntry()Lcom/google/common/collect/ir;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/kh;->a(Lcom/google/common/collect/ir;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/common/collect/kl;->b()Lcom/google/common/collect/kg;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    sget-object v2, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1, p2, v2}, Lcom/google/common/collect/kg;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kg;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 4
    .parameter

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/common/collect/kl;->b()Lcom/google/common/collect/kg;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/kg;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kg;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method
