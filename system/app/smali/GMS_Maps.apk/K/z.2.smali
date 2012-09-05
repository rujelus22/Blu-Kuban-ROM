.class LK/z;
.super LK/v;

# interfaces
.implements Ljava/util/SortedSet;


# instance fields
.field final synthetic c:LK/r;


# direct methods
.method constructor <init>(LK/r;Ljava/util/SortedMap;)V
    .registers 3

    iput-object p1, p0, LK/z;->c:LK/r;

    invoke-direct {p0, p1, p2}, LK/v;-><init>(LK/r;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method a()Ljava/util/SortedMap;
    .registers 2

    iget-object v0, p0, LK/z;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .registers 2

    invoke-virtual {p0}, LK/z;->a()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, LK/z;->a()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 5

    new-instance v0, LK/z;

    iget-object v1, p0, LK/z;->c:LK/r;

    invoke-virtual {p0}, LK/z;->a()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LK/z;-><init>(LK/r;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, LK/z;->a()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 6

    new-instance v0, LK/z;

    iget-object v1, p0, LK/z;->c:LK/r;

    invoke-virtual {p0}, LK/z;->a()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LK/z;-><init>(LK/r;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 5

    new-instance v0, LK/z;

    iget-object v1, p0, LK/z;->c:LK/r;

    invoke-virtual {p0}, LK/z;->a()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LK/z;-><init>(LK/r;Ljava/util/SortedMap;)V

    return-object v0
.end method
