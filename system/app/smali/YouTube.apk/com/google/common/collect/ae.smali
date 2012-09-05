.class final Lcom/google/common/collect/ae;
.super Lcom/google/common/collect/q;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedMap;


# instance fields
.field d:Ljava/util/SortedSet;

.field final synthetic e:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1413
    iput-object p1, p0, Lcom/google/common/collect/ae;->e:Lcom/google/common/collect/AbstractMultimap;

    .line 1414
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/q;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Map;)V

    .line 1415
    return-void
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .registers 2

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/google/common/collect/ae;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final firstKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/google/common/collect/ae;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5
    .parameter

    .prologue
    .line 1434
    new-instance v1, Lcom/google/common/collect/ae;

    iget-object v2, p0, Lcom/google/common/collect/ae;->e:Lcom/google/common/collect/AbstractMultimap;

    iget-object v0, p0, Lcom/google/common/collect/ae;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/ae;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public final synthetic keySet()Ljava/util/Set;
    .registers 4

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/google/common/collect/ae;->d:Ljava/util/SortedSet;

    if-nez v0, :cond_12

    new-instance v1, Lcom/google/common/collect/af;

    iget-object v2, p0, Lcom/google/common/collect/ae;->e:Lcom/google/common/collect/AbstractMultimap;

    iget-object v0, p0, Lcom/google/common/collect/ae;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/af;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    iput-object v1, p0, Lcom/google/common/collect/ae;->d:Ljava/util/SortedSet;

    move-object v0, v1

    :cond_12
    return-object v0
.end method

.method public final lastKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/google/common/collect/ae;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1438
    new-instance v1, Lcom/google/common/collect/ae;

    iget-object v2, p0, Lcom/google/common/collect/ae;->e:Lcom/google/common/collect/AbstractMultimap;

    iget-object v0, p0, Lcom/google/common/collect/ae;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/ae;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public final tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5
    .parameter

    .prologue
    .line 1442
    new-instance v1, Lcom/google/common/collect/ae;

    iget-object v2, p0, Lcom/google/common/collect/ae;->e:Lcom/google/common/collect/AbstractMultimap;

    iget-object v0, p0, Lcom/google/common/collect/ae;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/ae;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    return-object v1
.end method
