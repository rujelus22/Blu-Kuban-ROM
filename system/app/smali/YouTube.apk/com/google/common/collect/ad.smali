.class final Lcom/google/common/collect/ad;
.super Lcom/google/common/collect/z;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedSet;


# instance fields
.field final synthetic c:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 951
    iput-object p1, p0, Lcom/google/common/collect/ad;->c:Lcom/google/common/collect/AbstractMultimap;

    .line 952
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/z;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Map;)V

    .line 953
    return-void
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .registers 2

    .prologue
    .line 961
    iget-object v0, p0, Lcom/google/common/collect/ad;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final first()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 966
    iget-object v0, p0, Lcom/google/common/collect/ad;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 5
    .parameter

    .prologue
    .line 971
    new-instance v1, Lcom/google/common/collect/ad;

    iget-object v2, p0, Lcom/google/common/collect/ad;->c:Lcom/google/common/collect/AbstractMultimap;

    iget-object v0, p0, Lcom/google/common/collect/ad;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/ad;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public final last()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 976
    iget-object v0, p0, Lcom/google/common/collect/ad;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 981
    new-instance v1, Lcom/google/common/collect/ad;

    iget-object v2, p0, Lcom/google/common/collect/ad;->c:Lcom/google/common/collect/AbstractMultimap;

    iget-object v0, p0, Lcom/google/common/collect/ad;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/ad;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 5
    .parameter

    .prologue
    .line 986
    new-instance v1, Lcom/google/common/collect/ad;

    iget-object v2, p0, Lcom/google/common/collect/ad;->c:Lcom/google/common/collect/AbstractMultimap;

    iget-object v0, p0, Lcom/google/common/collect/ad;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/ad;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    return-object v1
.end method
