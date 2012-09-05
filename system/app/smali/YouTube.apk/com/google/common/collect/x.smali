.class final Lcom/google/common/collect/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final a:Ljava/util/Iterator;

.field b:Ljava/util/Map$Entry;

.field final synthetic c:Lcom/google/common/collect/w;


# direct methods
.method constructor <init>(Lcom/google/common/collect/w;)V
    .registers 3
    .parameter

    .prologue
    .line 853
    iput-object p1, p0, Lcom/google/common/collect/x;->c:Lcom/google/common/collect/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 854
    iget-object v0, p0, Lcom/google/common/collect/x;->c:Lcom/google/common/collect/w;

    iget-object v0, v0, Lcom/google/common/collect/w;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/x;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 859
    iget-object v0, p0, Lcom/google/common/collect/x;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 862
    iget-object v0, p0, Lcom/google/common/collect/x;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/x;->b:Ljava/util/Map$Entry;

    .line 863
    iget-object v0, p0, Lcom/google/common/collect/x;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 4

    .prologue
    .line 866
    iget-object v0, p0, Lcom/google/common/collect/x;->b:Ljava/util/Map$Entry;

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/t;->b(Z)V

    .line 867
    iget-object v0, p0, Lcom/google/common/collect/x;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 868
    iget-object v1, p0, Lcom/google/common/collect/x;->a:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 869
    iget-object v1, p0, Lcom/google/common/collect/x;->c:Lcom/google/common/collect/w;

    iget-object v1, v1, Lcom/google/common/collect/w;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/common/collect/AbstractMultimap;->access$220(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 870
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 871
    return-void

    .line 866
    :cond_24
    const/4 v0, 0x0

    goto :goto_5
.end method
