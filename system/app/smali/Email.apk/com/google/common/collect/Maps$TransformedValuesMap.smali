.class Lcom/google/common/collect/Maps$TransformedValuesMap;
.super Ljava/util/AbstractMap;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransformedValuesMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV2;>;"
    }
.end annotation


# instance fields
.field entrySet:Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Maps$TransformedValuesMap",
            "<TK;TV1;TV2;>.EntrySet;"
        }
    .end annotation
.end field

.field final fromMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV1;>;"
        }
    .end annotation
.end field

.field final function:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<-TV1;TV2;>;"
        }
    .end annotation
.end field


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 772
    .local p0, this:Lcom/google/common/collect/Maps$TransformedValuesMap;,"Lcom/google/common/collect/Maps$TransformedValuesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedValuesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 773
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 756
    .local p0, this:Lcom/google/common/collect/Maps$TransformedValuesMap;,"Lcom/google/common/collect/Maps$TransformedValuesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedValuesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;>;"
        }
    .end annotation

    .prologue
    .line 778
    .local p0, this:Lcom/google/common/collect/Maps$TransformedValuesMap;,"Lcom/google/common/collect/Maps$TransformedValuesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedValuesMap;->entrySet:Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet;

    .line 779
    .local v0, result:Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet;,"Lcom/google/common/collect/Maps$TransformedValuesMap<TK;TV1;TV2;>.EntrySet;"
    if-nez v0, :cond_b

    .line 780
    new-instance v0, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet;

    .end local v0           #result:Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet;,"Lcom/google/common/collect/Maps$TransformedValuesMap<TK;TV1;TV2;>.EntrySet;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet;-><init>(Lcom/google/common/collect/Maps$TransformedValuesMap;)V

    .restart local v0       #result:Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet;,"Lcom/google/common/collect/Maps$TransformedValuesMap<TK;TV1;TV2;>.EntrySet;"
    iput-object v0, p0, Lcom/google/common/collect/Maps$TransformedValuesMap;->entrySet:Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet;

    .line 782
    :cond_b
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV2;"
        }
    .end annotation

    .prologue
    .line 760
    .local p0, this:Lcom/google/common/collect/Maps$TransformedValuesMap;,"Lcom/google/common/collect/Maps$TransformedValuesMap<TK;TV1;TV2;>;"
    iget-object v1, p0, Lcom/google/common/collect/Maps$TransformedValuesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 761
    .local v0, value:Ljava/lang/Object;,"TV1;"
    if-nez v0, :cond_10

    iget-object v1, p0, Lcom/google/common/collect/Maps$TransformedValuesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_10
    iget-object v1, p0, Lcom/google/common/collect/Maps$TransformedValuesMap;->function:Lcom/google/common/base/Function;

    invoke-interface {v1, v0}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_16
    return-object v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV2;"
        }
    .end annotation

    .prologue
    .line 766
    .local p0, this:Lcom/google/common/collect/Maps$TransformedValuesMap;,"Lcom/google/common/collect/Maps$TransformedValuesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedValuesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedValuesMap;->function:Lcom/google/common/base/Function;

    iget-object v1, p0, Lcom/google/common/collect/Maps$TransformedValuesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public size()I
    .registers 2

    .prologue
    .line 752
    .local p0, this:Lcom/google/common/collect/Maps$TransformedValuesMap;,"Lcom/google/common/collect/Maps$TransformedValuesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedValuesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
