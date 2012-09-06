.class final Lcom/google/protobuf/SmallSortedMap$1;
.super Lcom/google/protobuf/SmallSortedMap;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/google/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/SmallSortedMap",
        "<TFieldDescriptorType;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 3
    .parameter "x0"

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/SmallSortedMap;-><init>(ILcom/google/protobuf/SmallSortedMap$1;)V

    return-void
.end method


# virtual methods
.method public makeImmutable()V
    .registers 4

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/google/protobuf/SmallSortedMap$1;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 105
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    invoke-virtual {p0}, Lcom/google/protobuf/SmallSortedMap$1;->getNumArrayEntries()I

    move-result v0

    if-ge v1, v0, :cond_2f

    .line 106
    invoke-virtual {p0, v1}, Lcom/google/protobuf/SmallSortedMap$1;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 108
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 109
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 110
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_2b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 114
    :cond_2f
    invoke-virtual {p0}, Lcom/google/protobuf/SmallSortedMap$1;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_37
    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 115
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 116
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 117
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    .line 121
    :cond_5d
    invoke-super {p0}, Lcom/google/protobuf/SmallSortedMap;->makeImmutable()V

    .line 122
    return-void
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    check-cast p1, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    .end local p1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
