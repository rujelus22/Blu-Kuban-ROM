.class abstract Lcom/google/common/collect/ki;
.super Lcom/google/common/collect/da;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/kg;


# instance fields
.field private transient a:Ljava/util/Comparator;

.field private transient b:Ljava/util/SortedSet;

.field private transient c:Ljava/util/Set;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/google/common/collect/da;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/google/common/collect/kg;
.end method

.method abstract b()Ljava/util/Iterator;
.end method

.method public comparator()Ljava/util/Comparator;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/common/collect/ki;->a:Ljava/util/Comparator;

    .line 92
    if-nez v0, :cond_16

    .line 93
    invoke-virtual {p0}, Lcom/google/common/collect/ki;->a()Lcom/google/common/collect/kg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kg;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ki;->a:Ljava/util/Comparator;

    .line 96
    :cond_16
    return-object v0
.end method

.method protected delegate()Lcom/google/common/collect/iq;
    .registers 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/google/common/collect/ki;->a()Lcom/google/common/collect/kg;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/common/collect/ki;->delegate()Lcom/google/common/collect/iq;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/common/collect/ki;->delegate()Lcom/google/common/collect/iq;

    move-result-object v0

    return-object v0
.end method

.method public descendingMultiset()Lcom/google/common/collect/kg;
    .registers 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/google/common/collect/ki;->a()Lcom/google/common/collect/kg;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/common/collect/ki;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Ljava/util/SortedSet;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/common/collect/ki;->b:Ljava/util/SortedSet;

    .line 103
    if-nez v0, :cond_b

    .line 104
    new-instance v0, Lcom/google/common/collect/kj;

    invoke-direct {v0, p0}, Lcom/google/common/collect/kj;-><init>(Lcom/google/common/collect/ki;)V

    iput-object v0, p0, Lcom/google/common/collect/ki;->b:Ljava/util/SortedSet;

    .line 110
    :cond_b
    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/common/collect/ki;->c:Ljava/util/Set;

    .line 161
    if-nez v0, :cond_b

    new-instance v0, Lcom/google/common/collect/kk;

    invoke-direct {v0, p0}, Lcom/google/common/collect/kk;-><init>(Lcom/google/common/collect/ki;)V

    iput-object v0, p0, Lcom/google/common/collect/ki;->c:Ljava/util/Set;

    :cond_b
    return-object v0
.end method

.method public firstEntry()Lcom/google/common/collect/ir;
    .registers 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/google/common/collect/ki;->a()Lcom/google/common/collect/kg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kg;->lastEntry()Lcom/google/common/collect/ir;

    move-result-object v0

    return-object v0
.end method

.method public headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kg;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/google/common/collect/ki;->a()Lcom/google/common/collect/kg;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/kg;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kg;->descendingMultiset()Lcom/google/common/collect/kg;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 181
    invoke-static {p0}, Lcom/google/common/collect/Multisets;->b(Lcom/google/common/collect/iq;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Lcom/google/common/collect/ir;
    .registers 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/google/common/collect/ki;->a()Lcom/google/common/collect/kg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kg;->firstEntry()Lcom/google/common/collect/ir;

    move-result-object v0

    return-object v0
.end method

.method public subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kg;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/google/common/collect/ki;->a()Lcom/google/common/collect/kg;

    move-result-object v0

    invoke-interface {v0, p3, p4, p1, p2}, Lcom/google/common/collect/kg;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kg;->descendingMultiset()Lcom/google/common/collect/kg;

    move-result-object v0

    return-object v0
.end method

.method public tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kg;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/google/common/collect/ki;->a()Lcom/google/common/collect/kg;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/kg;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kg;->descendingMultiset()Lcom/google/common/collect/kg;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/common/collect/ki;->standardToArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ki;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/google/common/collect/ki;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
