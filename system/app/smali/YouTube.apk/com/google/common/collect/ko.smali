.class final Lcom/google/common/collect/ko;
.super Lcom/google/common/collect/lo;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedMap;


# instance fields
.field final synthetic a:Lcom/google/common/collect/StandardRowSortedTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/StandardRowSortedTable;)V
    .registers 2
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/common/collect/ko;->a:Lcom/google/common/collect/StandardRowSortedTable;

    invoke-direct {p0, p1}, Lcom/google/common/collect/lo;-><init>(Lcom/google/common/collect/StandardTable;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardRowSortedTable;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/google/common/collect/ko;-><init>(Lcom/google/common/collect/StandardRowSortedTable;)V

    return-void
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/common/collect/ko;->a:Lcom/google/common/collect/StandardRowSortedTable;

    #calls: Lcom/google/common/collect/StandardRowSortedTable;->sortedBackingMap()Ljava/util/SortedMap;
    invoke-static {v0}, Lcom/google/common/collect/StandardRowSortedTable;->access$100(Lcom/google/common/collect/StandardRowSortedTable;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final firstKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/common/collect/ko;->a:Lcom/google/common/collect/StandardRowSortedTable;

    #calls: Lcom/google/common/collect/StandardRowSortedTable;->sortedBackingMap()Ljava/util/SortedMap;
    invoke-static {v0}, Lcom/google/common/collect/StandardRowSortedTable;->access$100(Lcom/google/common/collect/StandardRowSortedTable;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5
    .parameter

    .prologue
    .line 150
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    new-instance v0, Lcom/google/common/collect/StandardRowSortedTable;

    iget-object v1, p0, Lcom/google/common/collect/ko;->a:Lcom/google/common/collect/StandardRowSortedTable;

    #calls: Lcom/google/common/collect/StandardRowSortedTable;->sortedBackingMap()Ljava/util/SortedMap;
    invoke-static {v1}, Lcom/google/common/collect/StandardRowSortedTable;->access$100(Lcom/google/common/collect/StandardRowSortedTable;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/ko;->a:Lcom/google/common/collect/StandardRowSortedTable;

    iget-object v2, v2, Lcom/google/common/collect/StandardRowSortedTable;->factory:Lcom/google/common/base/am;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/StandardRowSortedTable;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/am;)V

    invoke-virtual {v0}, Lcom/google/common/collect/StandardRowSortedTable;->rowMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public final lastKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/common/collect/ko;->a:Lcom/google/common/collect/StandardRowSortedTable;

    #calls: Lcom/google/common/collect/StandardRowSortedTable;->sortedBackingMap()Ljava/util/SortedMap;
    invoke-static {v0}, Lcom/google/common/collect/StandardRowSortedTable;->access$100(Lcom/google/common/collect/StandardRowSortedTable;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 157
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v0, Lcom/google/common/collect/StandardRowSortedTable;

    iget-object v1, p0, Lcom/google/common/collect/ko;->a:Lcom/google/common/collect/StandardRowSortedTable;

    #calls: Lcom/google/common/collect/StandardRowSortedTable;->sortedBackingMap()Ljava/util/SortedMap;
    invoke-static {v1}, Lcom/google/common/collect/StandardRowSortedTable;->access$100(Lcom/google/common/collect/StandardRowSortedTable;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/ko;->a:Lcom/google/common/collect/StandardRowSortedTable;

    iget-object v2, v2, Lcom/google/common/collect/StandardRowSortedTable;->factory:Lcom/google/common/base/am;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/StandardRowSortedTable;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/am;)V

    invoke-virtual {v0}, Lcom/google/common/collect/StandardRowSortedTable;->rowMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public final tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5
    .parameter

    .prologue
    .line 165
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v0, Lcom/google/common/collect/StandardRowSortedTable;

    iget-object v1, p0, Lcom/google/common/collect/ko;->a:Lcom/google/common/collect/StandardRowSortedTable;

    #calls: Lcom/google/common/collect/StandardRowSortedTable;->sortedBackingMap()Ljava/util/SortedMap;
    invoke-static {v1}, Lcom/google/common/collect/StandardRowSortedTable;->access$100(Lcom/google/common/collect/StandardRowSortedTable;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/ko;->a:Lcom/google/common/collect/StandardRowSortedTable;

    iget-object v2, v2, Lcom/google/common/collect/StandardRowSortedTable;->factory:Lcom/google/common/base/am;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/StandardRowSortedTable;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/am;)V

    invoke-virtual {v0}, Lcom/google/common/collect/StandardRowSortedTable;->rowMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method
