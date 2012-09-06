.class final Lcom/google/common/collect/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final a:Ljava/util/Iterator;

.field b:Ljava/util/Collection;

.field final synthetic c:Lcom/google/common/collect/v;


# direct methods
.method constructor <init>(Lcom/google/common/collect/v;)V
    .registers 3
    .parameter

    .prologue
    .line 1271
    iput-object p1, p0, Lcom/google/common/collect/x;->c:Lcom/google/common/collect/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1272
    iget-object v0, p0, Lcom/google/common/collect/x;->c:Lcom/google/common/collect/v;

    iget-object v0, v0, Lcom/google/common/collect/v;->a:Ljava/util/Map;

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
    .line 1278
    iget-object v0, p0, Lcom/google/common/collect/x;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/google/common/collect/x;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/common/collect/x;->b:Ljava/util/Collection;

    iget-object v0, p0, Lcom/google/common/collect/x;->c:Lcom/google/common/collect/v;

    iget-object v0, v0, Lcom/google/common/collect/v;->c:Lcom/google/common/collect/AbstractMultimap;

    iget-object v2, p0, Lcom/google/common/collect/x;->b:Ljava/util/Collection;

    #calls: Lcom/google/common/collect/AbstractMultimap;->wrapCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/AbstractMultimap;->access$400(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 3

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/google/common/collect/x;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1292
    iget-object v0, p0, Lcom/google/common/collect/x;->c:Lcom/google/common/collect/v;

    iget-object v0, v0, Lcom/google/common/collect/v;->c:Lcom/google/common/collect/AbstractMultimap;

    iget-object v1, p0, Lcom/google/common/collect/x;->b:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/collect/AbstractMultimap;->access$220(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 1293
    iget-object v0, p0, Lcom/google/common/collect/x;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 1294
    return-void
.end method
