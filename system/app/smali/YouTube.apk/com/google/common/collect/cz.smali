.class public abstract Lcom/google/common/collect/cz;
.super Lcom/google/common/collect/db;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/hu;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/common/collect/db;-><init>()V

    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .registers 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/common/collect/cz;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/hu;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/common/collect/cz;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/hu;->clear()V

    .line 54
    return-void
.end method

.method public containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
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
    .line 58
    invoke-virtual {p0}, Lcom/google/common/collect/cz;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/hu;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/common/collect/cz;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/hu;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/google/common/collect/cz;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/hu;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected abstract delegate()Lcom/google/common/collect/hu;
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/google/common/collect/cz;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/common/collect/cz;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/hu;->entries()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 137
    if-eq p1, p0, :cond_c

    invoke-virtual {p0}, Lcom/google/common/collect/cz;->delegate()Lcom/google/common/collect/hu;

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
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/common/collect/cz;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/hu;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/google/common/collect/cz;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/common/collect/cz;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/hu;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/google/common/collect/cz;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/hu;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/google/common/collect/iq;
    .registers 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/common/collect/cz;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/hu;->keys()Lcom/google/common/collect/iq;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/common/collect/cz;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/hu;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public putAll(Lcom/google/common/collect/hu;)Z
    .registers 3
    .parameter

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/google/common/collect/cz;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/hu;->putAll(Lcom/google/common/collect/hu;)Z

    move-result v0

    return v0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/common/collect/cz;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/hu;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
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
    .line 113
    invoke-virtual {p0}, Lcom/google/common/collect/cz;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/hu;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/google/common/collect/cz;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/hu;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/google/common/collect/cz;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/hu;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/google/common/collect/cz;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/hu;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/google/common/collect/cz;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/hu;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
