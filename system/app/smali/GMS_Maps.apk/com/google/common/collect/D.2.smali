.class Lcom/google/common/collect/D;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Map;

.field final synthetic b:Lcom/google/common/collect/z;


# direct methods
.method constructor <init>(Lcom/google/common/collect/z;Ljava/util/Map;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 882
    iput-object p1, p0, Lcom/google/common/collect/D;->b:Lcom/google/common/collect/z;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 883
    iput-object p2, p0, Lcom/google/common/collect/D;->a:Ljava/util/Map;

    .line 884
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 919
    iget-object v0, p0, Lcom/google/common/collect/D;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 939
    iget-object v0, p0, Lcom/google/common/collect/D;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 943
    if-eq p0, p1, :cond_e

    iget-object v0, p0, Lcom/google/common/collect/D;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 947
    iget-object v0, p0, Lcom/google/common/collect/D;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 891
    new-instance v0, Lcom/google/common/collect/E;

    invoke-direct {v0, p0}, Lcom/google/common/collect/E;-><init>(Lcom/google/common/collect/D;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 923
    .line 924
    iget-object v0, p0, Lcom/google/common/collect/D;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 925
    if-eqz v0, :cond_1e

    .line 926
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    .line 927
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 928
    iget-object v0, p0, Lcom/google/common/collect/D;->b:Lcom/google/common/collect/z;

    invoke-static {v0, v2}, Lcom/google/common/collect/z;->b(Lcom/google/common/collect/z;I)I

    move v0, v2

    .line 930
    :goto_18
    if-lez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    move v0, v1

    goto :goto_1b

    :cond_1e
    move v0, v1

    goto :goto_18
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 934
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 887
    iget-object v0, p0, Lcom/google/common/collect/D;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
