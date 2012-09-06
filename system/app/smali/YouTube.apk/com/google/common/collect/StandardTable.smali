.class Lcom/google/common/collect/StandardTable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/lz;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final backingMap:Ljava/util/Map;

.field private transient cellSet:Lcom/google/common/collect/ks;

.field private transient columnKeySet:Ljava/util/Set;

.field private transient columnMap:Lcom/google/common/collect/le;

.field final factory:Lcom/google/common/base/am;

.field private transient rowKeySet:Lcom/google/common/collect/ln;

.field private transient rowMap:Lcom/google/common/collect/lo;

.field private transient values:Lcom/google/common/collect/lt;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/common/base/am;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    .line 71
    iput-object p2, p0, Lcom/google/common/collect/StandardTable;->factory:Lcom/google/common/base/am;

    .line 72
    return-void
.end method

.method static synthetic access$1100(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable;->removeColumn(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/StandardTable;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/StandardTable;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private containsMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 219
    if-eqz p3, :cond_e

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/StandardTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private getOrCreate(Ljava/lang/Object;)Ljava/util/Map;
    .registers 4
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 163
    if-nez v0, :cond_17

    .line 164
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->factory:Lcom/google/common/base/am;

    invoke-interface {v0}, Lcom/google/common/base/am;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 165
    iget-object v1, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_17
    return-object v0
.end method

.method static keyIteratorImpl(Ljava/util/Map;)Ljava/util/Iterator;
    .registers 3
    .parameter

    .prologue
    .line 1166
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1167
    new-instance v1, Lcom/google/common/collect/kp;

    invoke-direct {v1, v0}, Lcom/google/common/collect/kp;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method

.method private removeColumn(Ljava/lang/Object;)Ljava/util/Map;
    .registers 7
    .parameter

    .prologue
    .line 201
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 202
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 204
    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 205
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 206
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 207
    if-eqz v1, :cond_f

    .line 208
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 210
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    .line 214
    :cond_3e
    return-object v2
.end method

.method private removeMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 224
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/StandardTable;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 225
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/StandardTable;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const/4 v0, 0x1

    .line 228
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static valueIteratorImpl(Ljava/util/Map;)Ljava/util/Iterator;
    .registers 3
    .parameter

    .prologue
    .line 1185
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1186
    new-instance v1, Lcom/google/common/collect/kq;

    invoke-direct {v1, v0}, Lcom/google/common/collect/kq;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method


# virtual methods
.method public cellSet()Ljava/util/Set;
    .registers 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->cellSet:Lcom/google/common/collect/ks;

    .line 275
    if-nez v0, :cond_c

    new-instance v0, Lcom/google/common/collect/ks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ks;-><init>(Lcom/google/common/collect/StandardTable;B)V

    iput-object v0, p0, Lcom/google/common/collect/StandardTable;->cellSet:Lcom/google/common/collect/ks;

    :cond_c
    return-object v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 159
    return-void
.end method

.method public column(Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .parameter

    .prologue
    .line 500
    new-instance v0, Lcom/google/common/collect/kt;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/kt;-><init>(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public columnKeySet()Ljava/util/Set;
    .registers 3

    .prologue
    .line 788
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->columnKeySet:Ljava/util/Set;

    .line 789
    if-nez v0, :cond_c

    new-instance v0, Lcom/google/common/collect/ld;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ld;-><init>(Lcom/google/common/collect/StandardTable;B)V

    iput-object v0, p0, Lcom/google/common/collect/StandardTable;->columnKeySet:Ljava/util/Set;

    :cond_c
    return-object v0
.end method

.method public columnMap()Ljava/util/Map;
    .registers 3

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->columnMap:Lcom/google/common/collect/le;

    .line 1014
    if-nez v0, :cond_c

    new-instance v0, Lcom/google/common/collect/le;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/le;-><init>(Lcom/google/common/collect/StandardTable;B)V

    iput-object v0, p0, Lcom/google/common/collect/StandardTable;->columnMap:Lcom/google/common/collect/le;

    :cond_c
    return-object v0
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 78
    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    :cond_5
    move v0, v1

    .line 82
    :goto_6
    return v0

    .line 81
    :cond_7
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 82
    if-eqz v0, :cond_19

    invoke-static {v0, p2}, Lcom/google/common/collect/Maps;->b(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_6

    :cond_19
    move v0, v1

    goto :goto_6
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 86
    if-nez p1, :cond_5

    move v0, v1

    .line 94
    :goto_4
    return v0

    .line 89
    :cond_5
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 90
    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->b(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 91
    const/4 v0, 0x1

    goto :goto_4

    :cond_23
    move v0, v1

    .line 94
    goto :goto_4
.end method

.method public containsRow(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 98
    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->b(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 102
    if-nez p1, :cond_5

    move v0, v1

    .line 110
    :goto_4
    return v0

    .line 105
    :cond_5
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 106
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 107
    const/4 v0, 0x1

    goto :goto_4

    :cond_23
    move v0, v1

    .line 110
    goto :goto_4
.end method

.method createColumnKeyIterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 871
    new-instance v0, Lcom/google/common/collect/lc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/lc;-><init>(Lcom/google/common/collect/StandardTable;B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 134
    if-ne p1, p0, :cond_4

    .line 135
    const/4 v0, 0x1

    .line 141
    :goto_3
    return v0

    .line 137
    :cond_4
    instance-of v0, p1, Lcom/google/common/collect/lz;

    if-eqz v0, :cond_17

    .line 138
    check-cast p1, Lcom/google/common/collect/lz;

    .line 139
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/lz;->cellSet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 141
    :cond_17
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 114
    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    :cond_5
    move-object v0, v1

    .line 118
    :goto_6
    return-object v0

    .line 117
    :cond_7
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 118
    if-nez v0, :cond_13

    move-object v0, v1

    goto :goto_6

    :cond_13
    invoke-static {v0, p2}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static {p3}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable;->getOrCreate(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Lcom/google/common/collect/lz;)V
    .registers 6
    .parameter

    .prologue
    .line 179
    invoke-interface {p1}, Lcom/google/common/collect/lz;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ma;

    .line 180
    invoke-interface {v0}, Lcom/google/common/collect/ma;->getRowKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/ma;->getColumnKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/common/collect/ma;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v3, v0}, Lcom/google/common/collect/StandardTable;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 182
    :cond_24
    return-void
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 186
    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    :cond_5
    move-object v0, v1

    .line 197
    :goto_6
    return-object v0

    .line 189
    :cond_7
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 190
    if-nez v0, :cond_13

    move-object v0, v1

    .line 191
    goto :goto_6

    .line 193
    :cond_13
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 194
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 195
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    move-object v0, v1

    .line 197
    goto :goto_6
.end method

.method public row(Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .parameter

    .prologue
    .line 336
    new-instance v0, Lcom/google/common/collect/li;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/li;-><init>(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public rowKeySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 753
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->rowKeySet:Lcom/google/common/collect/ln;

    .line 754
    if-nez v0, :cond_b

    new-instance v0, Lcom/google/common/collect/ln;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ln;-><init>(Lcom/google/common/collect/StandardTable;)V

    iput-object v0, p0, Lcom/google/common/collect/StandardTable;->rowKeySet:Lcom/google/common/collect/ln;

    :cond_b
    return-object v0
.end method

.method public rowMap()Ljava/util/Map;
    .registers 2

    .prologue
    .line 935
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->rowMap:Lcom/google/common/collect/lo;

    .line 936
    if-nez v0, :cond_b

    new-instance v0, Lcom/google/common/collect/lo;

    invoke-direct {v0, p0}, Lcom/google/common/collect/lo;-><init>(Lcom/google/common/collect/StandardTable;)V

    iput-object v0, p0, Lcom/google/common/collect/StandardTable;->rowMap:Lcom/google/common/collect/lo;

    :cond_b
    return-object v0
.end method

.method public size()I
    .registers 4

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    iget-object v1, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 128
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_c

    .line 130
    :cond_1f
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable;->rowMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 3

    .prologue
    .line 907
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->values:Lcom/google/common/collect/lt;

    .line 908
    if-nez v0, :cond_c

    new-instance v0, Lcom/google/common/collect/lt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/lt;-><init>(Lcom/google/common/collect/StandardTable;B)V

    iput-object v0, p0, Lcom/google/common/collect/StandardTable;->values:Lcom/google/common/collect/lt;

    :cond_c
    return-object v0
.end method
