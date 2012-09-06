.class Lcom/google/common/collect/li;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Object;

.field b:Ljava/util/Map;

.field c:Ljava/util/Set;

.field d:Ljava/util/Set;

.field final synthetic e:Lcom/google/common/collect/StandardTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/google/common/collect/li;->e:Lcom/google/common/collect/StandardTable;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 343
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/li;->a:Ljava/lang/Object;

    .line 344
    return-void
.end method


# virtual methods
.method a()Ljava/util/Map;
    .registers 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/common/collect/li;->b:Ljava/util/Map;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/common/collect/li;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/common/collect/li;->e:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/li;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_18
    invoke-virtual {p0}, Lcom/google/common/collect/li;->b()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/li;->b:Ljava/util/Map;

    :goto_1e
    return-object v0

    :cond_1f
    iget-object v0, p0, Lcom/google/common/collect/li;->b:Ljava/util/Map;

    goto :goto_1e
.end method

.method b()Ljava/util/Map;
    .registers 3

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/common/collect/li;->e:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/li;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method c()V
    .registers 3

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/google/common/collect/li;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/common/collect/li;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 362
    iget-object v0, p0, Lcom/google/common/collect/li;->e:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/li;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/li;->b:Ljava/util/Map;

    .line 365
    :cond_1a
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/google/common/collect/li;->a()Ljava/util/Map;

    move-result-object v0

    .line 410
    if-eqz v0, :cond_9

    .line 411
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 413
    :cond_9
    invoke-virtual {p0}, Lcom/google/common/collect/li;->c()V

    .line 414
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/google/common/collect/li;->a()Ljava/util/Map;

    move-result-object v0

    .line 370
    if-eqz p1, :cond_10

    if-eqz v0, :cond_10

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->b(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/common/collect/li;->d:Ljava/util/Set;

    .line 437
    if-nez v0, :cond_c

    .line 438
    new-instance v0, Lcom/google/common/collect/lk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/lk;-><init>(Lcom/google/common/collect/li;B)V

    iput-object v0, p0, Lcom/google/common/collect/li;->d:Ljava/util/Set;

    .line 440
    :cond_c
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/google/common/collect/li;->a()Ljava/util/Map;

    move-result-object v0

    .line 377
    if-eqz p1, :cond_d

    if-eqz v0, :cond_d

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/common/collect/li;->c:Ljava/util/Set;

    .line 421
    if-nez v0, :cond_b

    .line 422
    new-instance v0, Lcom/google/common/collect/lj;

    invoke-direct {v0, p0}, Lcom/google/common/collect/lj;-><init>(Lcom/google/common/collect/li;)V

    iput-object v0, p0, Lcom/google/common/collect/li;->c:Ljava/util/Set;

    .line 429
    :cond_b
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 384
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v0, p0, Lcom/google/common/collect/li;->b:Ljava/util/Map;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/common/collect/li;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 387
    iget-object v0, p0, Lcom/google/common/collect/li;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 389
    :goto_18
    return-object v0

    :cond_19
    iget-object v0, p0, Lcom/google/common/collect/li;->e:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/li;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/common/collect/StandardTable;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_18
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 395
    :try_start_1
    invoke-virtual {p0}, Lcom/google/common/collect/li;->a()Ljava/util/Map;

    move-result-object v1

    .line 396
    if-nez v1, :cond_8

    .line 403
    :goto_7
    return-object v0

    .line 399
    :cond_8
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 400
    invoke-virtual {p0}, Lcom/google/common/collect/li;->c()V
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_f} :catch_11

    move-object v0, v1

    .line 401
    goto :goto_7

    .line 403
    :catch_11
    move-exception v1

    goto :goto_7
.end method
