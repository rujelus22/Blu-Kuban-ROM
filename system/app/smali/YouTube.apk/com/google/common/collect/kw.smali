.class final Lcom/google/common/collect/kw;
.super Lcom/google/common/collect/q;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/google/common/collect/kv;


# direct methods
.method constructor <init>(Lcom/google/common/collect/kv;Ljava/util/Map$Entry;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 622
    iput-object p1, p0, Lcom/google/common/collect/kw;->b:Lcom/google/common/collect/kv;

    iput-object p2, p0, Lcom/google/common/collect/kw;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/google/common/collect/kw;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 627
    iget-object v0, p0, Lcom/google/common/collect/kw;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/kw;->b:Lcom/google/common/collect/kv;

    iget-object v1, v1, Lcom/google/common/collect/kv;->b:Lcom/google/common/collect/kt;

    iget-object v1, v1, Lcom/google/common/collect/kt;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    .line 630
    iget-object v0, p0, Lcom/google/common/collect/kw;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/kw;->b:Lcom/google/common/collect/kv;

    iget-object v1, v1, Lcom/google/common/collect/kv;->b:Lcom/google/common/collect/kt;

    iget-object v1, v1, Lcom/google/common/collect/kt;->a:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
