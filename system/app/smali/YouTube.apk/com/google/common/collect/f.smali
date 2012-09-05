.class final Lcom/google/common/collect/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Ljava/util/Map$Entry;

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Lcom/google/common/collect/e;


# direct methods
.method constructor <init>(Lcom/google/common/collect/e;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/common/collect/f;->c:Lcom/google/common/collect/e;

    iput-object p2, p0, Lcom/google/common/collect/f;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/common/collect/f;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/common/collect/f;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/f;->a:Ljava/util/Map$Entry;

    .line 199
    iget-object v0, p0, Lcom/google/common/collect/f;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/common/collect/f;->a:Ljava/util/Map$Entry;

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/t;->b(Z)V

    .line 203
    iget-object v0, p0, Lcom/google/common/collect/f;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/google/common/collect/f;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 205
    iget-object v1, p0, Lcom/google/common/collect/f;->c:Lcom/google/common/collect/e;

    iget-object v1, v1, Lcom/google/common/collect/e;->a:Lcom/google/common/collect/AbstractBiMap;

    #calls: Lcom/google/common/collect/AbstractBiMap;->removeFromInverseMap(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/google/common/collect/AbstractBiMap;->access$400(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;)V

    .line 206
    return-void

    .line 202
    :cond_1b
    const/4 v0, 0x0

    goto :goto_5
.end method
