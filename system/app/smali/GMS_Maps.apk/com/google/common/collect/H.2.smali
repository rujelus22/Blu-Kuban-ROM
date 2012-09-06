.class Lcom/google/common/collect/H;
.super Lcom/google/common/collect/D;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedSet;


# instance fields
.field final synthetic c:Lcom/google/common/collect/z;


# direct methods
.method constructor <init>(Lcom/google/common/collect/z;Ljava/util/SortedMap;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 953
    iput-object p1, p0, Lcom/google/common/collect/H;->c:Lcom/google/common/collect/z;

    .line 954
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/D;-><init>(Lcom/google/common/collect/z;Ljava/util/Map;)V

    .line 955
    return-void
.end method


# virtual methods
.method a()Ljava/util/SortedMap;
    .registers 2

    .prologue
    .line 958
    iget-object v0, p0, Lcom/google/common/collect/H;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .registers 2

    .prologue
    .line 963
    invoke-virtual {p0}, Lcom/google/common/collect/H;->a()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 968
    invoke-virtual {p0}, Lcom/google/common/collect/H;->a()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 5
    .parameter

    .prologue
    .line 973
    new-instance v0, Lcom/google/common/collect/H;

    iget-object v1, p0, Lcom/google/common/collect/H;->c:Lcom/google/common/collect/z;

    invoke-virtual {p0}, Lcom/google/common/collect/H;->a()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/H;-><init>(Lcom/google/common/collect/z;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 978
    invoke-virtual {p0}, Lcom/google/common/collect/H;->a()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 983
    new-instance v0, Lcom/google/common/collect/H;

    iget-object v1, p0, Lcom/google/common/collect/H;->c:Lcom/google/common/collect/z;

    invoke-virtual {p0}, Lcom/google/common/collect/H;->a()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/H;-><init>(Lcom/google/common/collect/z;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 5
    .parameter

    .prologue
    .line 988
    new-instance v0, Lcom/google/common/collect/H;

    iget-object v1, p0, Lcom/google/common/collect/H;->c:Lcom/google/common/collect/z;

    invoke-virtual {p0}, Lcom/google/common/collect/H;->a()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/H;-><init>(Lcom/google/common/collect/z;Ljava/util/SortedMap;)V

    return-object v0
.end method
