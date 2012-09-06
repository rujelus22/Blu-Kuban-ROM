.class Lcom/google/common/collect/A;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# instance fields
.field final transient a:Ljava/util/Map;

.field transient b:Ljava/util/Set;

.field final synthetic c:Lcom/google/common/collect/z;


# direct methods
.method constructor <init>(Lcom/google/common/collect/z;Ljava/util/Map;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1377
    iput-object p1, p0, Lcom/google/common/collect/A;->c:Lcom/google/common/collect/z;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1378
    iput-object p2, p0, Lcom/google/common/collect/A;->a:Ljava/util/Map;

    .line 1379
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 4
    .parameter

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/google/common/collect/A;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1396
    if-nez v0, :cond_c

    .line 1397
    const/4 v0, 0x0

    .line 1401
    :goto_b
    return-object v0

    :cond_c
    iget-object v1, p0, Lcom/google/common/collect/A;->c:Lcom/google/common/collect/z;

    invoke-static {v1, p1, v0}, Lcom/google/common/collect/z;->a(Lcom/google/common/collect/z;Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_b
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 6
    .parameter

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/google/common/collect/A;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1410
    if-nez v0, :cond_c

    .line 1411
    const/4 v0, 0x0

    .line 1418
    :goto_b
    return-object v0

    .line 1414
    :cond_c
    iget-object v1, p0, Lcom/google/common/collect/A;->c:Lcom/google/common/collect/z;

    invoke-virtual {v1}, Lcom/google/common/collect/z;->c()Ljava/util/Collection;

    move-result-object v1

    .line 1415
    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 1416
    iget-object v2, p0, Lcom/google/common/collect/A;->c:Lcom/google/common/collect/z;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/common/collect/z;->b(Lcom/google/common/collect/z;I)I

    .line 1417
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    move-object v0, v1

    .line 1418
    goto :goto_b
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/google/common/collect/A;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->b(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/google/common/collect/A;->b:Ljava/util/Set;

    .line 1385
    if-nez v0, :cond_b

    new-instance v0, Lcom/google/common/collect/B;

    invoke-direct {v0, p0}, Lcom/google/common/collect/B;-><init>(Lcom/google/common/collect/A;)V

    iput-object v0, p0, Lcom/google/common/collect/A;->b:Ljava/util/Set;

    :cond_b
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 1422
    if-eq p0, p1, :cond_a

    iget-object v0, p0, Lcom/google/common/collect/A;->a:Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1370
    invoke-virtual {p0, p1}, Lcom/google/common/collect/A;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/google/common/collect/A;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/google/common/collect/A;->c:Lcom/google/common/collect/z;

    invoke-virtual {v0}, Lcom/google/common/collect/z;->f()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1370
    invoke-virtual {p0, p1}, Lcom/google/common/collect/A;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/google/common/collect/A;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
