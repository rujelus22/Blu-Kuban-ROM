.class final Lcom/google/common/collect/kv;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/kt;


# direct methods
.method constructor <init>(Lcom/google/common/collect/kt;)V
    .registers 3
    .parameter

    .prologue
    .line 615
    iput-object p1, p0, Lcom/google/common/collect/kv;->b:Lcom/google/common/collect/kt;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 616
    iget-object v0, p0, Lcom/google/common/collect/kv;->b:Lcom/google/common/collect/kt;

    iget-object v0, v0, Lcom/google/common/collect/kt;->d:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/kv;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 615
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/kv;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/common/collect/kv;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Lcom/google/common/collect/kv;->b:Lcom/google/common/collect/kt;

    iget-object v2, v2, Lcom/google/common/collect/kt;->a:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/common/collect/kw;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/kw;-><init>(Lcom/google/common/collect/kv;Ljava/util/Map$Entry;)V

    move-object v0, v1

    :goto_26
    return-object v0

    :cond_27
    invoke-virtual {p0}, Lcom/google/common/collect/kv;->b()Ljava/lang/Object;

    const/4 v0, 0x0

    goto :goto_26
.end method
