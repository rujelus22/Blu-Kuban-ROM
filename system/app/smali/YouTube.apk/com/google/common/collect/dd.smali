.class public abstract Lcom/google/common/collect/dd;
.super Lcom/google/common/collect/db;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/lz;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/common/collect/db;-><init>()V

    return-void
.end method


# virtual methods
.method public cellSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/common/collect/dd;->delegate()Lcom/google/common/collect/lz;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/lz;->cellSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/common/collect/dd;->delegate()Lcom/google/common/collect/lz;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/lz;->clear()V

    .line 52
    return-void
.end method

.method public column(Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .parameter

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/common/collect/dd;->delegate()Lcom/google/common/collect/lz;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/lz;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public columnKeySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/common/collect/dd;->delegate()Lcom/google/common/collect/lz;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/lz;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public columnMap()Ljava/util/Map;
    .registers 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/common/collect/dd;->delegate()Lcom/google/common/collect/lz;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/lz;->columnMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/common/collect/dd;->delegate()Lcom/google/common/collect/lz;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/lz;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/common/collect/dd;->delegate()Lcom/google/common/collect/lz;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/lz;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsRow(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/google/common/collect/dd;->delegate()Lcom/google/common/collect/lz;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/lz;->containsRow(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/common/collect/dd;->delegate()Lcom/google/common/collect/lz;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/lz;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected abstract delegate()Lcom/google/common/collect/lz;
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/common/collect/dd;->delegate()Lcom/google/common/collect/lz;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 140
    if-eq p1, p0, :cond_c

    invoke-virtual {p0}, Lcom/google/common/collect/dd;->delegate()Lcom/google/common/collect/lz;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/google/common/collect/dd;->delegate()Lcom/google/common/collect/lz;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/lz;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/google/common/collect/dd;->delegate()Lcom/google/common/collect/lz;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/google/common/collect/dd;->delegate()Lcom/google/common/collect/lz;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/lz;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/common/collect/dd;->delegate()Lcom/google/common/collect/lz;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/collect/lz;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Lcom/google/common/collect/lz;)V
    .registers 3
    .parameter

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/google/common/collect/dd;->delegate()Lcom/google/common/collect/lz;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/lz;->putAll(Lcom/google/common/collect/lz;)V

    .line 107
    return-void
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/common/collect/dd;->delegate()Lcom/google/common/collect/lz;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/lz;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public row(Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .parameter

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/google/common/collect/dd;->delegate()Lcom/google/common/collect/lz;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/lz;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public rowKeySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/common/collect/dd;->delegate()Lcom/google/common/collect/lz;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/lz;->rowKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Ljava/util/Map;
    .registers 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/google/common/collect/dd;->delegate()Lcom/google/common/collect/lz;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/lz;->rowMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/google/common/collect/dd;->delegate()Lcom/google/common/collect/lz;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/lz;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/google/common/collect/dd;->delegate()Lcom/google/common/collect/lz;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/lz;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
