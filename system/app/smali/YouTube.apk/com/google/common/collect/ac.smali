.class final Lcom/google/common/collect/ac;
.super Lcom/google/common/collect/v;
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
    .line 1300
    iput-object p1, p0, Lcom/google/common/collect/ac;->e:Lcom/google/common/collect/AbstractMultimap;

    .line 1301
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/v;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Map;)V

    .line 1302
    return-void
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .registers 2

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/google/common/collect/ac;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final firstKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/google/common/collect/ac;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5
    .parameter

    .prologue
    .line 1325
    new-instance v1, Lcom/google/common/collect/ac;

    iget-object v2, p0, Lcom/google/common/collect/ac;->e:Lcom/google/common/collect/AbstractMultimap;

    iget-object v0, p0, Lcom/google/common/collect/ac;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/ac;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public final synthetic keySet()Ljava/util/Set;
    .registers 4

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/google/common/collect/ac;->d:Ljava/util/SortedSet;

    if-nez v0, :cond_12

    new-instance v1, Lcom/google/common/collect/ad;

    iget-object v2, p0, Lcom/google/common/collect/ac;->e:Lcom/google/common/collect/AbstractMultimap;

    iget-object v0, p0, Lcom/google/common/collect/ac;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/ad;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    iput-object v1, p0, Lcom/google/common/collect/ac;->d:Ljava/util/SortedSet;

    move-object v0, v1

    :cond_12
    return-object v0
.end method

.method public final lastKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/google/common/collect/ac;->a:Ljava/util/Map;

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
    .line 1330
    new-instance v1, Lcom/google/common/collect/ac;

    iget-object v2, p0, Lcom/google/common/collect/ac;->e:Lcom/google/common/collect/AbstractMultimap;

    iget-object v0, p0, Lcom/google/common/collect/ac;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/ac;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public final tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5
    .parameter

    .prologue
    .line 1335
    new-instance v1, Lcom/google/common/collect/ac;

    iget-object v2, p0, Lcom/google/common/collect/ac;->e:Lcom/google/common/collect/AbstractMultimap;

    iget-object v0, p0, Lcom/google/common/collect/ac;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/ac;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    return-object v1
.end method
