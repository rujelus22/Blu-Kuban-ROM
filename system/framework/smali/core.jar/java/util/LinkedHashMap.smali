.class public Ljava/util/LinkedHashMap;
.super Ljava/util/HashMap;
.source "LinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/LinkedHashMap$1;,
        Ljava/util/LinkedHashMap$EntryIterator;,
        Ljava/util/LinkedHashMap$ValueIterator;,
        Ljava/util/LinkedHashMap$KeyIterator;,
        Ljava/util/LinkedHashMap$LinkedHashIterator;,
        Ljava/util/LinkedHashMap$LinkedEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x34c04e5c106cc0fbL


# instance fields
.field private final accessOrder:Z

.field transient header:Ljava/util/LinkedHashMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$LinkedEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 66
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 67
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->init()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    .line 69
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "initialCapacity"

    .prologue
    .line 81
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    const/high16 v0, 0x3f40

    invoke-direct {p0, p1, v0}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .line 82
    return-void
.end method

.method public constructor <init>(IF)V
    .registers 4
    .parameter "initialCapacity"
    .parameter "loadFactor"

    .prologue
    .line 97
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 98
    return-void
.end method

.method public constructor <init>(IFZ)V
    .registers 4
    .parameter "initialCapacity"
    .parameter "loadFactor"
    .parameter "accessOrder"

    .prologue
    .line 119
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    .line 120
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->init()V

    .line 121
    iput-boolean p3, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/util/LinkedHashMap;->capacityForInitSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 133
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->constructorPutAll(Ljava/util/Map;)V

    .line 134
    return-void
.end method

.method private makeTail(Ljava/util/LinkedHashMap$LinkedEntry;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap$LinkedEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, e:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v2, p1, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v3, p1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v3, v2, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 276
    iget-object v2, p1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v3, p1, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v3, v2, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 279
    iget-object v0, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 280
    .local v0, header:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 281
    .local v1, oldTail:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iput-object v0, p1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 282
    iput-object v1, p1, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 283
    iput-object p1, v0, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object p1, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 284
    iget v2, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/HashMap;->modCount:I

    .line 285
    return-void
.end method


# virtual methods
.method addNewEntry(Ljava/lang/Object;Ljava/lang/Object;II)V
    .registers 13
    .parameter
    .parameter
    .parameter "hash"
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;II)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iget-object v5, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 188
    .local v5, header:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v7, v5, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 189
    .local v7, eldest:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    if-eq v7, v5, :cond_11

    invoke-virtual {p0, v7}, Ljava/util/LinkedHashMap;->removeEldestEntry(Ljava/util/Map$Entry;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 190
    iget-object v1, v7, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_11
    iget-object v6, v5, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 195
    .local v6, oldTail:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v1, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    aget-object v4, v1, p4

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Ljava/util/LinkedHashMap$LinkedEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;Ljava/util/LinkedHashMap$LinkedEntry;Ljava/util/LinkedHashMap$LinkedEntry;)V

    .line 197
    .local v0, newTail:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v1, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    iput-object v0, v5, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v0, v6, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    aput-object v0, v1, p4

    .line 198
    return-void
.end method

.method addNewEntryForNullKey(Ljava/lang/Object;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    const/4 v1, 0x0

    .line 201
    iget-object v5, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 204
    .local v5, header:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v7, v5, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 205
    .local v7, eldest:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    if-eq v7, v5, :cond_12

    invoke-virtual {p0, v7}, Ljava/util/LinkedHashMap;->removeEldestEntry(Ljava/util/Map$Entry;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 206
    iget-object v2, v7, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_12
    iget-object v6, v5, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 211
    .local v6, oldTail:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedEntry;

    const/4 v3, 0x0

    move-object v2, p1

    move-object v4, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/LinkedHashMap$LinkedEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;Ljava/util/LinkedHashMap$LinkedEntry;Ljava/util/LinkedHashMap$LinkedEntry;)V

    .line 213
    .local v0, newTail:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iput-object v0, v5, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v0, v6, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 214
    return-void
.end method

.method public clear()V
    .registers 5

    .prologue
    .line 326
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-super {p0}, Ljava/util/HashMap;->clear()V

    .line 329
    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 330
    .local v1, header:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v0, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .local v0, e:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    :goto_7
    if-eq v0, v1, :cond_12

    .line 331
    iget-object v2, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 332
    .local v2, nxt:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    const/4 v3, 0x0

    iput-object v3, v0, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v3, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 333
    move-object v0, v2

    .line 334
    goto :goto_7

    .line 336
    .end local v2           #nxt:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    :cond_12
    iput-object v1, v1, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v1, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 337
    return-void
.end method

.method constructorNewEntry(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)Ljava/util/HashMap$HashMapEntry;
    .registers 12
    .parameter
    .parameter
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    .local p4, next:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget-object v5, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 222
    .local v5, header:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v6, v5, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 223
    .local v6, oldTail:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedEntry;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/LinkedHashMap$LinkedEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;Ljava/util/LinkedHashMap$LinkedEntry;Ljava/util/LinkedHashMap$LinkedEntry;)V

    .line 225
    .local v0, newTail:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iput-object v0, v5, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v0, v6, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 7
    .parameter "value"

    .prologue
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 305
    if-nez p1, :cond_14

    .line 306
    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    .local v1, header:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v0, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 307
    .local v0, e:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    :goto_8
    if-eq v0, v1, :cond_12

    .line 308
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    if-nez v4, :cond_f

    .line 322
    :cond_e
    :goto_e
    return v2

    .line 307
    :cond_f
    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    goto :goto_8

    :cond_12
    move v2, v3

    .line 312
    goto :goto_e

    .line 316
    .end local v0           #e:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    .end local v1           #header:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    :cond_14
    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    .restart local v1       #header:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v0, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 317
    .restart local v0       #e:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    :goto_18
    if-eq v0, v1, :cond_25

    .line 318
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 317
    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    goto :goto_18

    :cond_25
    move v2, v3

    .line 322
    goto :goto_e
.end method

.method public eldest()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v0, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 168
    .local v0, eldest:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    if-eq v0, v1, :cond_9

    .end local v0           #eldest:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    :goto_8
    return-object v0

    .restart local v0       #eldest:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 241
    if-nez p1, :cond_15

    .line 242
    iget-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 243
    .local v0, e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-nez v0, :cond_8

    .line 265
    :cond_7
    :goto_7
    return-object v4

    .line 245
    :cond_8
    iget-boolean v4, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    if-eqz v4, :cond_12

    move-object v4, v0

    .line 246
    check-cast v4, Ljava/util/LinkedHashMap$LinkedEntry;

    invoke-direct {p0, v4}, Ljava/util/LinkedHashMap;->makeTail(Ljava/util/LinkedHashMap$LinkedEntry;)V

    .line 247
    :cond_12
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_7

    .line 251
    .end local v0           #e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_15
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 252
    .local v2, hash:I
    ushr-int/lit8 v5, v2, 0x14

    ushr-int/lit8 v6, v2, 0xc

    xor-int/2addr v5, v6

    xor-int/2addr v2, v5

    .line 253
    ushr-int/lit8 v5, v2, 0x7

    ushr-int/lit8 v6, v2, 0x4

    xor-int/2addr v5, v6

    xor-int/2addr v2, v5

    .line 255
    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 256
    .local v3, tab:[Ljava/util/HashMap$HashMapEntry;,"[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v2

    aget-object v0, v3, v5

    .line 257
    .restart local v0       #e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_2d
    if-eqz v0, :cond_7

    .line 258
    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    .line 259
    .local v1, eKey:Ljava/lang/Object;,"TK;"
    if-eq v1, p1, :cond_3d

    iget v5, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v5, v2, :cond_4a

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 260
    :cond_3d
    iget-boolean v4, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    if-eqz v4, :cond_47

    move-object v4, v0

    .line 261
    check-cast v4, Ljava/util/LinkedHashMap$LinkedEntry;

    invoke-direct {p0, v4}, Ljava/util/LinkedHashMap;->makeTail(Ljava/util/LinkedHashMap$LinkedEntry;)V

    .line 262
    :cond_47
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_7

    .line 257
    :cond_4a
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_2d
.end method

.method init()V
    .registers 2

    .prologue
    .line 137
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedEntry;

    invoke-direct {v0}, Ljava/util/LinkedHashMap$LinkedEntry;-><init>()V

    iput-object v0, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 138
    return-void
.end method

.method newEntryIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 390
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$EntryIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/LinkedHashMap$EntryIterator;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$1;)V

    return-object v0
.end method

.method newKeyIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 384
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$KeyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/LinkedHashMap$KeyIterator;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$1;)V

    return-object v0
.end method

.method newValueIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 387
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$ValueIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/LinkedHashMap$ValueIterator;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$1;)V

    return-object v0
.end method

.method postRemove(Ljava/util/HashMap$HashMapEntry;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Ljava/util/LinkedHashMap$LinkedEntry;

    .line 295
    .local v0, le:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v2, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v2, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 296
    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v2, v0, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v2, v1, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 297
    const/4 v1, 0x0

    iput-object v1, v0, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v1, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 298
    return-void
.end method

.method preModify(Ljava/util/HashMap$HashMapEntry;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    if-eqz v0, :cond_9

    .line 289
    check-cast p1, Ljava/util/LinkedHashMap$LinkedEntry;

    .end local p1           #e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;->makeTail(Ljava/util/LinkedHashMap$LinkedEntry;)V

    .line 291
    :cond_9
    return-void
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 394
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method
