.class final Lcom/google/common/collect/r;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/q;


# direct methods
.method constructor <init>(Lcom/google/common/collect/q;)V
    .registers 2
    .parameter

    .prologue
    .line 1361
    iput-object p1, p0, Lcom/google/common/collect/r;->a:Lcom/google/common/collect/q;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/google/common/collect/r;->a:Lcom/google/common/collect/q;

    iget-object v0, v0, Lcom/google/common/collect/q;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/at;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 1363
    new-instance v0, Lcom/google/common/collect/s;

    iget-object v1, p0, Lcom/google/common/collect/r;->a:Lcom/google/common/collect/q;

    invoke-direct {v0, v1}, Lcom/google/common/collect/s;-><init>(Lcom/google/common/collect/q;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 1377
    invoke-virtual {p0, p1}, Lcom/google/common/collect/r;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1378
    const/4 v0, 0x0

    .line 1382
    :goto_7
    return v0

    .line 1380
    :cond_8
    check-cast p1, Ljava/util/Map$Entry;

    .line 1381
    iget-object v0, p0, Lcom/google/common/collect/r;->a:Lcom/google/common/collect/q;

    iget-object v0, v0, Lcom/google/common/collect/q;->c:Lcom/google/common/collect/AbstractMultimap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    #calls: Lcom/google/common/collect/AbstractMultimap;->removeValuesForKey(Ljava/lang/Object;)I
    invoke-static {v0, v1}, Lcom/google/common/collect/AbstractMultimap;->access$500(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;)I

    .line 1382
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/google/common/collect/r;->a:Lcom/google/common/collect/q;

    iget-object v0, v0, Lcom/google/common/collect/q;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
