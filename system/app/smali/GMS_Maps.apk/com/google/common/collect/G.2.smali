.class Lcom/google/common/collect/G;
.super Lcom/google/common/collect/A;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedMap;


# instance fields
.field d:Ljava/util/SortedSet;

.field final synthetic e:Lcom/google/common/collect/z;


# direct methods
.method constructor <init>(Lcom/google/common/collect/z;Ljava/util/SortedMap;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1488
    iput-object p1, p0, Lcom/google/common/collect/G;->e:Lcom/google/common/collect/z;

    .line 1489
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/A;-><init>(Lcom/google/common/collect/z;Ljava/util/Map;)V

    .line 1490
    return-void
.end method


# virtual methods
.method a()Ljava/util/SortedMap;
    .registers 2

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/google/common/collect/G;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public b()Ljava/util/SortedSet;
    .registers 4

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/google/common/collect/G;->d:Ljava/util/SortedSet;

    .line 1532
    if-nez v0, :cond_11

    new-instance v0, Lcom/google/common/collect/H;

    iget-object v1, p0, Lcom/google/common/collect/G;->e:Lcom/google/common/collect/z;

    invoke-virtual {p0}, Lcom/google/common/collect/G;->a()Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/H;-><init>(Lcom/google/common/collect/z;Ljava/util/SortedMap;)V

    iput-object v0, p0, Lcom/google/common/collect/G;->d:Ljava/util/SortedSet;

    :cond_11
    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .registers 2

    .prologue
    .line 1498
    invoke-virtual {p0}, Lcom/google/common/collect/G;->a()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1503
    invoke-virtual {p0}, Lcom/google/common/collect/G;->a()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5
    .parameter

    .prologue
    .line 1513
    new-instance v0, Lcom/google/common/collect/G;

    iget-object v1, p0, Lcom/google/common/collect/G;->e:Lcom/google/common/collect/z;

    invoke-virtual {p0}, Lcom/google/common/collect/G;->a()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/G;-><init>(Lcom/google/common/collect/z;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 1486
    invoke-virtual {p0}, Lcom/google/common/collect/G;->b()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1508
    invoke-virtual {p0}, Lcom/google/common/collect/G;->a()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1518
    new-instance v0, Lcom/google/common/collect/G;

    iget-object v1, p0, Lcom/google/common/collect/G;->e:Lcom/google/common/collect/z;

    invoke-virtual {p0}, Lcom/google/common/collect/G;->a()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/G;-><init>(Lcom/google/common/collect/z;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5
    .parameter

    .prologue
    .line 1523
    new-instance v0, Lcom/google/common/collect/G;

    iget-object v1, p0, Lcom/google/common/collect/G;->e:Lcom/google/common/collect/z;

    invoke-virtual {p0}, Lcom/google/common/collect/G;->a()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/G;-><init>(Lcom/google/common/collect/z;Ljava/util/SortedMap;)V

    return-object v0
.end method
