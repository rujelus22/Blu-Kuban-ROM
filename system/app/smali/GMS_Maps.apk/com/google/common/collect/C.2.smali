.class Lcom/google/common/collect/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final a:Ljava/util/Iterator;

.field b:Ljava/util/Collection;

.field final synthetic c:Lcom/google/common/collect/A;


# direct methods
.method constructor <init>(Lcom/google/common/collect/A;)V
    .registers 3
    .parameter

    .prologue
    .line 1459
    iput-object p1, p0, Lcom/google/common/collect/C;->c:Lcom/google/common/collect/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1460
    iget-object v0, p0, Lcom/google/common/collect/C;->c:Lcom/google/common/collect/A;

    iget-object v0, v0, Lcom/google/common/collect/A;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/C;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .registers 4

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/google/common/collect/C;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1472
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 1473
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/common/collect/C;->b:Ljava/util/Collection;

    .line 1474
    iget-object v0, p0, Lcom/google/common/collect/C;->c:Lcom/google/common/collect/A;

    iget-object v0, v0, Lcom/google/common/collect/A;->c:Lcom/google/common/collect/z;

    iget-object v2, p0, Lcom/google/common/collect/C;->b:Ljava/util/Collection;

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/z;->a(Lcom/google/common/collect/z;Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/google/common/collect/C;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1459
    invoke-virtual {p0}, Lcom/google/common/collect/C;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/google/common/collect/C;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1480
    iget-object v0, p0, Lcom/google/common/collect/C;->c:Lcom/google/common/collect/A;

    iget-object v0, v0, Lcom/google/common/collect/A;->c:Lcom/google/common/collect/z;

    iget-object v1, p0, Lcom/google/common/collect/C;->b:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/collect/z;->b(Lcom/google/common/collect/z;I)I

    .line 1481
    iget-object v0, p0, Lcom/google/common/collect/C;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 1482
    return-void
.end method
