.class public final Lcom/google/common/collect/ArrayTable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/lz;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final array:[[Ljava/lang/Object;

.field private transient cellSet:Lcom/google/common/collect/aq;

.field private final columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

.field private final columnList:Lcom/google/common/collect/ImmutableList;

.field private transient columnMap:Lcom/google/common/collect/ax;

.field private final rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

.field private final rowList:Lcom/google/common/collect/ImmutableList;

.field private transient rowMap:Lcom/google/common/collect/be;

.field private transient values:Ljava/util/Collection;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ArrayTable;)V
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iget-object v0, p1, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    .line 183
    iget-object v0, p1, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    .line 184
    iget-object v0, p1, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    .line 185
    iget-object v0, p1, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    .line 187
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    check-cast v0, [[Ljava/lang/Object;

    .line 188
    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    move v1, v2

    .line 189
    :goto_31
    iget-object v3, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4a

    .line 190
    iget-object v3, p1, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object v3, v3, v1

    aget-object v4, v0, v1

    iget-object v5, p1, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object v5, v5, v1

    array-length v5, v5

    invoke-static {v3, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 192
    :cond_4a
    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/lz;)V
    .registers 4
    .parameter

    .prologue
    .line 177
    invoke-interface {p1}, Lcom/google/common/collect/lz;->rowKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/lz;->columnKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ArrayTable;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 178
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayTable;->putAll(Lcom/google/common/collect/lz;)V

    .line 179
    return-void
.end method

.method private constructor <init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    .line 149
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    .line 150
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_45

    move v0, v1

    :goto_1a
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 151
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_47

    :goto_25
    invoke-static {v1}, Lcom/google/common/base/ag;->a(Z)V

    .line 158
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/dm;

    move-result-object v1

    move v0, v2

    .line 159
    :goto_2d
    iget-object v3, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-ge v0, v3, :cond_49

    .line 160
    iget-object v3, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/common/collect/dm;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dm;

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_45
    move v0, v2

    .line 150
    goto :goto_1a

    :cond_47
    move v1, v2

    .line 151
    goto :goto_25

    .line 162
    :cond_49
    invoke-virtual {v1}, Lcom/google/common/collect/dm;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    .line 164
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/dm;

    move-result-object v0

    .line 165
    :goto_53
    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v2, v1, :cond_6b

    .line 166
    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/common/collect/dm;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dm;

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    .line 168
    :cond_6b
    invoke-virtual {v0}, Lcom/google/common/collect/dm;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    .line 171
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    check-cast v0, [[Ljava/lang/Object;

    .line 173
    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    .line 174
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;
    .registers 2
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;
    .registers 2
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/common/collect/ArrayTable;)[[Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;
    .registers 2
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;
    .registers 2
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/common/collect/ArrayTable;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ArrayTable;->getIndexed(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ArrayTable;
    .registers 2
    .parameter

    .prologue
    .line 135
    new-instance v0, Lcom/google/common/collect/ArrayTable;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ArrayTable;-><init>(Lcom/google/common/collect/ArrayTable;)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/lz;)Lcom/google/common/collect/ArrayTable;
    .registers 2
    .parameter

    .prologue
    .line 126
    new-instance v0, Lcom/google/common/collect/ArrayTable;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ArrayTable;-><init>(Lcom/google/common/collect/lz;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;Ljava/lang/Iterable;)Lcom/google/common/collect/ArrayTable;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 94
    new-instance v0, Lcom/google/common/collect/ArrayTable;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ArrayTable;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method private getIndexed(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 338
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_5
.end method


# virtual methods
.method public final at(II)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    return-object v0
.end method

.method public final cellSet()Ljava/util/Set;
    .registers 3

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->cellSet:Lcom/google/common/collect/aq;

    .line 468
    if-nez v0, :cond_c

    new-instance v0, Lcom/google/common/collect/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/aq;-><init>(Lcom/google/common/collect/ArrayTable;B)V

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->cellSet:Lcom/google/common/collect/aq;

    :cond_c
    return-object v0
.end method

.method public final clear()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 278
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final column(Ljava/lang/Object;)Ljava/util/Map;
    .registers 4
    .parameter

    .prologue
    .line 527
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 529
    if-nez v0, :cond_12

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    new-instance v1, Lcom/google/common/collect/at;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/at;-><init>(Lcom/google/common/collect/ArrayTable;I)V

    move-object v0, v1

    goto :goto_11
.end method

.method public final columnKeyList()Lcom/google/common/collect/ImmutableList;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public final columnKeySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic columnKeySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayTable;->columnKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final columnMap()Ljava/util/Map;
    .registers 3

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnMap:Lcom/google/common/collect/ax;

    .line 614
    if-nez v0, :cond_c

    new-instance v0, Lcom/google/common/collect/ax;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ax;-><init>(Lcom/google/common/collect/ArrayTable;B)V

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnMap:Lcom/google/common/collect/ax;

    :cond_c
    return-object v0
.end method

.method public final contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 297
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayTable;->containsRow(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p2}, Lcom/google/common/collect/ArrayTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final containsColumn(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsRow(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .registers 10
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 320
    iget-object v3, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    array-length v4, v3

    move v2, v0

    :goto_5
    if-ge v2, v4, :cond_16

    aget-object v5, v3, v2

    .line 321
    array-length v6, v5

    move v1, v0

    :goto_b
    if-ge v1, v6, :cond_1a

    aget-object v7, v5, v1

    .line 322
    invoke-static {p1, v7}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 323
    const/4 v0, 0x1

    .line 327
    :cond_16
    return v0

    .line 321
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 320
    :cond_1a
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 432
    instance-of v0, p1, Lcom/google/common/collect/lz;

    if-eqz v0, :cond_13

    .line 433
    check-cast p1, Lcom/google/common/collect/lz;

    .line 434
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/lz;->cellSet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 436
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final erase(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v2, 0x0

    .line 416
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 417
    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1, p2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 418
    if-eqz v0, :cond_15

    if-nez v1, :cond_17

    :cond_15
    move-object v0, v2

    .line 421
    :goto_16
    return-object v0

    :cond_17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/collect/ArrayTable;->set(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_16
.end method

.method public final eraseAll()V
    .registers 6

    .prologue
    .line 286
    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_f

    aget-object v3, v1, v0

    .line 287
    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 289
    :cond_f
    return-void
.end method

.method public final get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 332
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 333
    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1, p2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 334
    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ArrayTable;->getIndexed(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 358
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 361
    if-eqz v0, :cond_46

    move v1, v2

    :goto_14
    const-string v4, "Row %s not in %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v3

    iget-object v6, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    aput-object v6, v5, v2

    invoke-static {v1, v4, v5}, Lcom/google/common/base/ag;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 362
    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1, p2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 363
    if-eqz v1, :cond_48

    move v4, v2

    :goto_2c
    const-string v5, "Column %s not in %s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object p2, v6, v3

    iget-object v3, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    aput-object v3, v6, v2

    invoke-static {v4, v5, v6}, Lcom/google/common/base/ag;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 365
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/google/common/collect/ArrayTable;->set(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_46
    move v1, v3

    .line 361
    goto :goto_14

    :cond_48
    move v4, v3

    .line 363
    goto :goto_2c
.end method

.method public final putAll(Lcom/google/common/collect/lz;)V
    .registers 6
    .parameter

    .prologue
    .line 386
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

    .line 387
    invoke-interface {v0}, Lcom/google/common/collect/ma;->getRowKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/ma;->getColumnKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/common/collect/ma;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v3, v0}, Lcom/google/common/collect/ArrayTable;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 389
    :cond_24
    return-void
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 399
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final row(Ljava/lang/Object;)Ljava/util/Map;
    .registers 4
    .parameter

    .prologue
    .line 673
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 675
    if-nez v0, :cond_12

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    new-instance v1, Lcom/google/common/collect/ba;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ba;-><init>(Lcom/google/common/collect/ArrayTable;I)V

    move-object v0, v1

    goto :goto_11
.end method

.method public final rowKeyList()Lcom/google/common/collect/ImmutableList;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public final rowKeySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    .prologue
    .line 752
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic rowKeySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayTable;->rowKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final rowMap()Ljava/util/Map;
    .registers 3

    .prologue
    .line 759
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowMap:Lcom/google/common/collect/be;

    .line 760
    if-nez v0, :cond_c

    new-instance v0, Lcom/google/common/collect/be;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/be;-><init>(Lcom/google/common/collect/ArrayTable;B)V

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowMap:Lcom/google/common/collect/be;

    :cond_c
    return-object v0
.end method

.method public final set(IILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    .line 245
    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object v1, v1, p1

    aput-object p3, v1, p2

    .line 246
    return-object v0
.end method

.method public final size()I
    .registers 3

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public final toArray(Ljava/lang/Class;)[[Ljava/lang/Object;
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 262
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    aput v1, v0, v2

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    aput v3, v0, v1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    move v1, v2

    .line 264
    :goto_1c
    iget-object v3, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-ge v1, v3, :cond_35

    .line 265
    iget-object v3, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object v3, v3, v1

    aget-object v4, v0, v1

    iget-object v5, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object v5, v5, v1

    array-length v5, v5

    invoke-static {v3, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 267
    :cond_35
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayTable;->rowMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .registers 3

    .prologue
    .line 817
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->values:Ljava/util/Collection;

    .line 818
    if-nez v0, :cond_c

    new-instance v0, Lcom/google/common/collect/bh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/bh;-><init>(Lcom/google/common/collect/ArrayTable;B)V

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->values:Ljava/util/Collection;

    :cond_c
    return-object v0
.end method
