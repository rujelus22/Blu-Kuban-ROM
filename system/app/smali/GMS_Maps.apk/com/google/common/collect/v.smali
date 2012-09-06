.class Lcom/google/common/collect/v;
.super Lcom/google/common/collect/bk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/q;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/common/collect/q;Ljava/util/Map;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/google/common/collect/v;->a:Lcom/google/common/collect/q;

    invoke-direct {p0}, Lcom/google/common/collect/bk;-><init>()V

    .line 358
    iput-object p2, p0, Lcom/google/common/collect/v;->b:Ljava/util/Map;

    .line 359
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/v;->c:Ljava/util/Set;

    .line 360
    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Set;
    .registers 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/common/collect/v;->c:Ljava/util/Set;

    return-object v0
.end method

.method protected synthetic b()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/google/common/collect/v;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/common/collect/v;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/v;->a:Lcom/google/common/collect/q;

    invoke-static {v1}, Lcom/google/common/collect/q;->a(Lcom/google/common/collect/q;)Ljava/util/Map;

    move-result-object v1

    if-ne v0, v1, :cond_10

    .line 408
    iget-object v0, p0, Lcom/google/common/collect/v;->a:Lcom/google/common/collect/q;

    invoke-virtual {v0}, Lcom/google/common/collect/q;->clear()V

    .line 416
    :cond_f
    return-void

    .line 410
    :cond_10
    invoke-virtual {p0}, Lcom/google/common/collect/v;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 411
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 412
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 413
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_14
.end method

.method protected synthetic d()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/google/common/collect/v;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/common/collect/v;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 369
    new-instance v1, Lcom/google/common/collect/w;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/w;-><init>(Lcom/google/common/collect/v;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/common/collect/v;->a:Lcom/google/common/collect/q;

    iget-object v1, p0, Lcom/google/common/collect/v;->b:Ljava/util/Map;

    invoke-static {v0, p1, v1}, Lcom/google/common/collect/q;->a(Lcom/google/common/collect/q;Ljava/lang/Object;Ljava/util/Map;)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/google/common/collect/v;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/bZ;->a(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/google/common/collect/v;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/bZ;->b(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
