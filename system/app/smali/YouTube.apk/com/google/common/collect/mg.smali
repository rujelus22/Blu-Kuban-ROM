.class final Lcom/google/common/collect/mg;
.super Lcom/google/common/collect/li;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedMap;


# instance fields
.field final f:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final g:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field transient h:Ljava/util/SortedMap;

.field final synthetic i:Lcom/google/common/collect/TreeBasedTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 181
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/common/collect/mg;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/common/collect/mg;->i:Lcom/google/common/collect/TreeBasedTable;

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/li;-><init>(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)V

    .line 186
    iput-object p3, p0, Lcom/google/common/collect/mg;->f:Ljava/lang/Object;

    .line 187
    iput-object p4, p0, Lcom/google/common/collect/mg;->g:Ljava/lang/Object;

    .line 188
    if-eqz p3, :cond_13

    if-eqz p4, :cond_13

    invoke-direct {p0, p3, p4}, Lcom/google/common/collect/mg;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_18

    :cond_13
    const/4 v0, 0x1

    :goto_14
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 190
    return-void

    .line 188
    :cond_18
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/google/common/collect/mg;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 200
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 204
    if-eqz p1, :cond_1c

    iget-object v0, p0, Lcom/google/common/collect/mg;->f:Ljava/lang/Object;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/common/collect/mg;->f:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/mg;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1c

    :cond_e
    iget-object v0, p0, Lcom/google/common/collect/mg;->g:Ljava/lang/Object;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/common/collect/mg;->g:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/mg;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private d()Ljava/util/SortedMap;
    .registers 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/common/collect/mg;->h:Ljava/util/SortedMap;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/common/collect/mg;->h:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/common/collect/mg;->i:Lcom/google/common/collect/TreeBasedTable;

    iget-object v0, v0, Lcom/google/common/collect/TreeBasedTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/mg;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 249
    :cond_18
    iget-object v0, p0, Lcom/google/common/collect/mg;->i:Lcom/google/common/collect/TreeBasedTable;

    iget-object v0, v0, Lcom/google/common/collect/TreeBasedTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/mg;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    iput-object v0, p0, Lcom/google/common/collect/mg;->h:Ljava/util/SortedMap;

    .line 251
    :cond_26
    iget-object v0, p0, Lcom/google/common/collect/mg;->h:Ljava/util/SortedMap;

    return-object v0
.end method


# virtual methods
.method final bridge synthetic a()Ljava/util/Map;
    .registers 2

    .prologue
    .line 176
    invoke-super {p0}, Lcom/google/common/collect/li;->a()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method final synthetic b()Ljava/util/Map;
    .registers 3

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/google/common/collect/mg;->d()Ljava/util/SortedMap;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/google/common/collect/mg;->f:Ljava/lang/Object;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/google/common/collect/mg;->f:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    :cond_10
    iget-object v1, p0, Lcom/google/common/collect/mg;->g:Ljava/lang/Object;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/google/common/collect/mg;->g:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    :cond_1a
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method final c()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 276
    invoke-direct {p0}, Lcom/google/common/collect/mg;->d()Ljava/util/SortedMap;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/common/collect/mg;->h:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 277
    iget-object v0, p0, Lcom/google/common/collect/mg;->i:Lcom/google/common/collect/TreeBasedTable;

    iget-object v0, v0, Lcom/google/common/collect/TreeBasedTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/mg;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iput-object v2, p0, Lcom/google/common/collect/mg;->h:Ljava/util/SortedMap;

    .line 279
    iput-object v2, p0, Lcom/google/common/collect/mg;->b:Ljava/util/Map;

    .line 281
    :cond_1c
    return-void
.end method

.method public final comparator()Ljava/util/Comparator;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/common/collect/mg;->i:Lcom/google/common/collect/TreeBasedTable;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeBasedTable;->columnComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/google/common/collect/mg;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-super {p0, p1}, Lcom/google/common/collect/li;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final firstKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 225
    invoke-super {p0}, Lcom/google/common/collect/li;->a()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    .line 226
    if-nez v0, :cond_e

    .line 227
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 229
    :cond_e
    invoke-super {p0}, Lcom/google/common/collect/li;->a()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 6
    .parameter

    .prologue
    .line 215
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/mg;->a(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 216
    new-instance v0, Lcom/google/common/collect/mg;

    iget-object v1, p0, Lcom/google/common/collect/mg;->i:Lcom/google/common/collect/TreeBasedTable;

    iget-object v2, p0, Lcom/google/common/collect/mg;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/common/collect/mg;->f:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/common/collect/mg;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final lastKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 233
    invoke-super {p0}, Lcom/google/common/collect/li;->a()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    .line 234
    if-nez v0, :cond_e

    .line 235
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 237
    :cond_e
    invoke-super {p0}, Lcom/google/common/collect/li;->a()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 288
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/mg;->a(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 289
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/li;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 209
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/mg;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/mg;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_15
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 211
    new-instance v0, Lcom/google/common/collect/mg;

    iget-object v1, p0, Lcom/google/common/collect/mg;->i:Lcom/google/common/collect/TreeBasedTable;

    iget-object v2, p0, Lcom/google/common/collect/mg;->a:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/common/collect/mg;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 209
    :cond_22
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 6
    .parameter

    .prologue
    .line 220
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/mg;->a(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 221
    new-instance v0, Lcom/google/common/collect/mg;

    iget-object v1, p0, Lcom/google/common/collect/mg;->i:Lcom/google/common/collect/TreeBasedTable;

    iget-object v2, p0, Lcom/google/common/collect/mg;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/common/collect/mg;->g:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/common/collect/mg;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
