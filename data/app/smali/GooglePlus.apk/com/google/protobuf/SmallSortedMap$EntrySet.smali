.class Lcom/google/protobuf/SmallSortedMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/protobuf/SmallSortedMap;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/SmallSortedMap;)V
    .registers 2
    .parameter

    .prologue
    .line 470
    .local p0, this:Lcom/google/protobuf/SmallSortedMap$EntrySet;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lcom/google/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/google/protobuf/SmallSortedMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/SmallSortedMap;Lcom/google/protobuf/SmallSortedMap$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 470
    .local p0, this:Lcom/google/protobuf/SmallSortedMap$EntrySet;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/SmallSortedMap$EntrySet;-><init>(Lcom/google/protobuf/SmallSortedMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 470
    .local p0, this:Lcom/google/protobuf/SmallSortedMap$EntrySet;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/SmallSortedMap$EntrySet;->add(Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 499
    .local p0, this:Lcom/google/protobuf/SmallSortedMap$EntrySet;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    .local p1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/SmallSortedMap$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 500
    iget-object v1, p0, Lcom/google/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/google/protobuf/SmallSortedMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const/4 v0, 0x1

    .line 503
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 524
    .local p0, this:Lcom/google/protobuf/SmallSortedMap$EntrySet;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/protobuf/SmallSortedMap;->clear()V

    .line 525
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    .line 490
    .local p0, this:Lcom/google/protobuf/SmallSortedMap$EntrySet;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 491
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v3, p0, Lcom/google/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/google/protobuf/SmallSortedMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 492
    .local v1, existing:Ljava/lang/Object;,"TV;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 493
    .local v2, value:Ljava/lang/Object;,"TV;"
    if-eq v1, v2, :cond_1b

    if-eqz v1, :cond_1d

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    :cond_1b
    const/4 v3, 0x1

    :goto_1c
    return v3

    :cond_1d
    const/4 v3, 0x0

    goto :goto_1c
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
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
    .line 474
    .local p0, this:Lcom/google/protobuf/SmallSortedMap$EntrySet;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    new-instance v0, Lcom/google/protobuf/SmallSortedMap$EntryIterator;

    iget-object v1, p0, Lcom/google/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/google/protobuf/SmallSortedMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/SmallSortedMap$EntryIterator;-><init>(Lcom/google/protobuf/SmallSortedMap;Lcom/google/protobuf/SmallSortedMap$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    .line 514
    .local p0, this:Lcom/google/protobuf/SmallSortedMap$EntrySet;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 515
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0, v0}, Lcom/google/protobuf/SmallSortedMap$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 516
    iget-object v1, p0, Lcom/google/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/google/protobuf/SmallSortedMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/SmallSortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const/4 v1, 0x1

    .line 519
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public size()I
    .registers 2

    .prologue
    .line 479
    .local p0, this:Lcom/google/protobuf/SmallSortedMap$EntrySet;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/protobuf/SmallSortedMap;->size()I

    move-result v0

    return v0
.end method
