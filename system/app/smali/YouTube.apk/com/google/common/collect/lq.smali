.class final Lcom/google/common/collect/lq;
.super Lcom/google/common/collect/ls;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/lo;


# direct methods
.method constructor <init>(Lcom/google/common/collect/lo;)V
    .registers 4
    .parameter

    .prologue
    .line 962
    iput-object p1, p0, Lcom/google/common/collect/lq;->a:Lcom/google/common/collect/lo;

    iget-object v0, p1, Lcom/google/common/collect/lo;->b:Lcom/google/common/collect/StandardTable;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ls;-><init>(Lcom/google/common/collect/StandardTable;B)V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 972
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_26

    .line 973
    check-cast p1, Ljava/util/Map$Entry;

    .line 974
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/google/common/collect/lq;->a:Lcom/google/common/collect/lo;

    iget-object v1, v1, Lcom/google/common/collect/lo;->b:Lcom/google/common/collect/StandardTable;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/common/collect/cf;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v0, 0x1

    .line 978
    :cond_26
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 964
    new-instance v0, Lcom/google/common/collect/lp;

    iget-object v1, p0, Lcom/google/common/collect/lq;->a:Lcom/google/common/collect/lo;

    invoke-direct {v0, v1}, Lcom/google/common/collect/lp;-><init>(Lcom/google/common/collect/lo;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 982
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_26

    .line 983
    check-cast p1, Ljava/util/Map$Entry;

    .line 984
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/google/common/collect/lq;->a:Lcom/google/common/collect/lo;

    iget-object v1, v1, Lcom/google/common/collect/lo;->b:Lcom/google/common/collect/StandardTable;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v0, 0x1

    .line 988
    :cond_26
    return v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 968
    iget-object v0, p0, Lcom/google/common/collect/lq;->a:Lcom/google/common/collect/lo;

    iget-object v0, v0, Lcom/google/common/collect/lo;->b:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
