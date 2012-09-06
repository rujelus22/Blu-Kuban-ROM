.class abstract Lcom/google/common/collect/hw;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 2044
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/google/common/collect/hu;
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 2069
    invoke-virtual {p0}, Lcom/google/common/collect/hw;->a()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/hu;->clear()V

    .line 2070
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 2053
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_17

    .line 2054
    check-cast p1, Ljava/util/Map$Entry;

    .line 2055
    invoke-virtual {p0}, Lcom/google/common/collect/hw;->a()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/hu;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 2057
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 2061
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_17

    .line 2062
    check-cast p1, Ljava/util/Map$Entry;

    .line 2063
    invoke-virtual {p0}, Lcom/google/common/collect/hw;->a()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/hu;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 2065
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public size()I
    .registers 2

    .prologue
    .line 2049
    invoke-virtual {p0}, Lcom/google/common/collect/hw;->a()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/hu;->size()I

    move-result v0

    return v0
.end method
