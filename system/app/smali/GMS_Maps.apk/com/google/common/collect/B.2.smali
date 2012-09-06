.class Lcom/google/common/collect/B;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/A;


# direct methods
.method constructor <init>(Lcom/google/common/collect/A;)V
    .registers 2
    .parameter

    .prologue
    .line 1433
    iput-object p1, p0, Lcom/google/common/collect/B;->a:Lcom/google/common/collect/A;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/google/common/collect/B;->a:Lcom/google/common/collect/A;

    iget-object v0, v0, Lcom/google/common/collect/A;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/R;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 1435
    new-instance v0, Lcom/google/common/collect/C;

    iget-object v1, p0, Lcom/google/common/collect/B;->a:Lcom/google/common/collect/A;

    invoke-direct {v0, v1}, Lcom/google/common/collect/C;-><init>(Lcom/google/common/collect/A;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 1449
    invoke-virtual {p0, p1}, Lcom/google/common/collect/B;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1450
    const/4 v0, 0x0

    .line 1454
    :goto_7
    return v0

    .line 1452
    :cond_8
    check-cast p1, Ljava/util/Map$Entry;

    .line 1453
    iget-object v0, p0, Lcom/google/common/collect/B;->a:Lcom/google/common/collect/A;

    iget-object v0, v0, Lcom/google/common/collect/A;->c:Lcom/google/common/collect/z;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/z;->a(Lcom/google/common/collect/z;Ljava/lang/Object;)I

    .line 1454
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/google/common/collect/B;->a:Lcom/google/common/collect/A;

    iget-object v0, v0, Lcom/google/common/collect/A;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
