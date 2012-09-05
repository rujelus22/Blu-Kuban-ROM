.class public abstract Lcom/google/common/collect/bq;
.super Lcom/google/common/collect/bs;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/ew;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/common/collect/bs;-><init>()V

    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .registers 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/common/collect/bq;->delegate()Lcom/google/common/collect/ew;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/ew;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/common/collect/bq;->delegate()Lcom/google/common/collect/ew;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/ew;->clear()V

    .line 50
    return-void
.end method

.method public containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/common/collect/bq;->delegate()Lcom/google/common/collect/ew;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/ew;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/common/collect/bq;->delegate()Lcom/google/common/collect/ew;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/ew;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/common/collect/bq;->delegate()Lcom/google/common/collect/ew;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/ew;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected abstract delegate()Lcom/google/common/collect/ew;
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/common/collect/bq;->delegate()Lcom/google/common/collect/ew;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/common/collect/bq;->delegate()Lcom/google/common/collect/ew;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/ew;->entries()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 117
    if-eq p1, p0, :cond_c

    invoke-virtual {p0}, Lcom/google/common/collect/bq;->delegate()Lcom/google/common/collect/ew;

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

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/common/collect/bq;->delegate()Lcom/google/common/collect/ew;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/ew;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/common/collect/bq;->delegate()Lcom/google/common/collect/ew;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/common/collect/bq;->delegate()Lcom/google/common/collect/ew;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/ew;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/google/common/collect/bq;->delegate()Lcom/google/common/collect/ew;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/ew;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/google/common/collect/fj;
    .registers 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/common/collect/bq;->delegate()Lcom/google/common/collect/ew;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/ew;->keys()Lcom/google/common/collect/fj;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/common/collect/bq;->delegate()Lcom/google/common/collect/ew;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/ew;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public putAll(Lcom/google/common/collect/ew;)Z
    .registers 3
    .parameter

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/google/common/collect/bq;->delegate()Lcom/google/common/collect/ew;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/ew;->putAll(Lcom/google/common/collect/ew;)Z

    move-result v0

    return v0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/google/common/collect/bq;->delegate()Lcom/google/common/collect/ew;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/ew;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/common/collect/bq;->delegate()Lcom/google/common/collect/ew;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/ew;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/common/collect/bq;->delegate()Lcom/google/common/collect/ew;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/ew;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/google/common/collect/bq;->delegate()Lcom/google/common/collect/ew;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/ew;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/google/common/collect/bq;->delegate()Lcom/google/common/collect/ew;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/ew;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/common/collect/bq;->delegate()Lcom/google/common/collect/ew;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/ew;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
