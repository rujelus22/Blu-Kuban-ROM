.class public abstract Lcom/google/common/collect/cx;
.super Lcom/google/common/collect/db;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/common/collect/db;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/common/collect/cx;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 86
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/common/collect/cx;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/google/common/collect/cx;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/common/collect/cx;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/Map;
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/common/collect/cx;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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
    .line 129
    if-eq p1, p0, :cond_c

    invoke-virtual {p0}, Lcom/google/common/collect/cx;->delegate()Ljava/util/Map;

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

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/google/common/collect/cx;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/google/common/collect/cx;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/common/collect/cx;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/common/collect/cx;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/google/common/collect/cx;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 3
    .parameter

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/common/collect/cx;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 111
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/google/common/collect/cx;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/common/collect/cx;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method protected standardClear()V
    .registers 3

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/google/common/collect/cx;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 182
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 183
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    .line 186
    :cond_15
    return-void
.end method

.method protected standardContainsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 218
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->d(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected standardContainsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 250
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->e(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected standardEquals(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 292
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->c(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected standardHashCode()I
    .registers 2

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/google/common/collect/cx;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method protected standardIsEmpty()Z
    .registers 2

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/google/common/collect/cx;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected standardPutAll(Ljava/util/Map;)V
    .registers 2
    .parameter

    .prologue
    .line 145
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 146
    return-void
.end method

.method protected standardRemove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/google/common/collect/cx;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 162
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 163
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 164
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 165
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 166
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 170
    :goto_25
    return-object v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method protected standardToString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 314
    invoke-static {p0}, Lcom/google/common/collect/Maps;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/google/common/collect/cx;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
