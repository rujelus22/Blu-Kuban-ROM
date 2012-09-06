.class final Lcom/google/common/collect/ga;
.super Ljava/util/AbstractQueue;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/common/collect/gg;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 3284
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3285
    new-instance v0, Lcom/google/common/collect/gb;

    invoke-direct {v0, p0}, Lcom/google/common/collect/gb;-><init>(Lcom/google/common/collect/ga;)V

    iput-object v0, p0, Lcom/google/common/collect/ga;->a:Lcom/google/common/collect/gg;

    return-void
.end method

.method private a()Lcom/google/common/collect/gg;
    .registers 3

    .prologue
    .line 3336
    iget-object v0, p0, Lcom/google/common/collect/ga;->a:Lcom/google/common/collect/gg;

    invoke-interface {v0}, Lcom/google/common/collect/gg;->getNextExpirable()Lcom/google/common/collect/gg;

    move-result-object v0

    .line 3337
    iget-object v1, p0, Lcom/google/common/collect/ga;->a:Lcom/google/common/collect/gg;

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    :cond_b
    return-object v0
.end method


# virtual methods
.method public final clear()V
    .registers 3

    .prologue
    .line 3386
    iget-object v0, p0, Lcom/google/common/collect/ga;->a:Lcom/google/common/collect/gg;

    invoke-interface {v0}, Lcom/google/common/collect/gg;->getNextExpirable()Lcom/google/common/collect/gg;

    move-result-object v0

    .line 3387
    :goto_6
    iget-object v1, p0, Lcom/google/common/collect/ga;->a:Lcom/google/common/collect/gg;

    if-eq v0, v1, :cond_13

    .line 3388
    invoke-interface {v0}, Lcom/google/common/collect/gg;->getNextExpirable()Lcom/google/common/collect/gg;

    move-result-object v1

    .line 3389
    invoke-static {v0}, Lcom/google/common/collect/MapMakerInternalMap;->nullifyExpirable(Lcom/google/common/collect/gg;)V

    move-object v0, v1

    .line 3391
    goto :goto_6

    .line 3393
    :cond_13
    iget-object v0, p0, Lcom/google/common/collect/ga;->a:Lcom/google/common/collect/gg;

    iget-object v1, p0, Lcom/google/common/collect/ga;->a:Lcom/google/common/collect/gg;

    invoke-interface {v0, v1}, Lcom/google/common/collect/gg;->setNextExpirable(Lcom/google/common/collect/gg;)V

    .line 3394
    iget-object v0, p0, Lcom/google/common/collect/ga;->a:Lcom/google/common/collect/gg;

    iget-object v1, p0, Lcom/google/common/collect/ga;->a:Lcom/google/common/collect/gg;

    invoke-interface {v0, v1}, Lcom/google/common/collect/gg;->setPreviousExpirable(Lcom/google/common/collect/gg;)V

    .line 3395
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 3366
    check-cast p1, Lcom/google/common/collect/gg;

    .line 3367
    invoke-interface {p1}, Lcom/google/common/collect/gg;->getNextExpirable()Lcom/google/common/collect/gg;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->INSTANCE:Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final isEmpty()Z
    .registers 3

    .prologue
    .line 3372
    iget-object v0, p0, Lcom/google/common/collect/ga;->a:Lcom/google/common/collect/gg;

    invoke-interface {v0}, Lcom/google/common/collect/gg;->getNextExpirable()Lcom/google/common/collect/gg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ga;->a:Lcom/google/common/collect/gg;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 3399
    new-instance v0, Lcom/google/common/collect/gc;

    invoke-direct {p0}, Lcom/google/common/collect/ga;->a()Lcom/google/common/collect/gg;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/gc;-><init>(Lcom/google/common/collect/ga;Lcom/google/common/collect/gg;)V

    return-object v0
.end method

.method public final synthetic offer(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 3284
    check-cast p1, Lcom/google/common/collect/gg;

    invoke-interface {p1}, Lcom/google/common/collect/gg;->getPreviousExpirable()Lcom/google/common/collect/gg;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/gg;->getNextExpirable()Lcom/google/common/collect/gg;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->connectExpirables(Lcom/google/common/collect/gg;Lcom/google/common/collect/gg;)V

    iget-object v0, p0, Lcom/google/common/collect/ga;->a:Lcom/google/common/collect/gg;

    invoke-interface {v0}, Lcom/google/common/collect/gg;->getPreviousExpirable()Lcom/google/common/collect/gg;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->connectExpirables(Lcom/google/common/collect/gg;Lcom/google/common/collect/gg;)V

    iget-object v0, p0, Lcom/google/common/collect/ga;->a:Lcom/google/common/collect/gg;

    invoke-static {p1, v0}, Lcom/google/common/collect/MapMakerInternalMap;->connectExpirables(Lcom/google/common/collect/gg;Lcom/google/common/collect/gg;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic peek()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 3284
    invoke-direct {p0}, Lcom/google/common/collect/ga;->a()Lcom/google/common/collect/gg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic poll()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 3284
    iget-object v0, p0, Lcom/google/common/collect/ga;->a:Lcom/google/common/collect/gg;

    invoke-interface {v0}, Lcom/google/common/collect/gg;->getNextExpirable()Lcom/google/common/collect/gg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ga;->a:Lcom/google/common/collect/gg;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ga;->remove(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 3354
    check-cast p1, Lcom/google/common/collect/gg;

    .line 3355
    invoke-interface {p1}, Lcom/google/common/collect/gg;->getPreviousExpirable()Lcom/google/common/collect/gg;

    move-result-object v0

    .line 3356
    invoke-interface {p1}, Lcom/google/common/collect/gg;->getNextExpirable()Lcom/google/common/collect/gg;

    move-result-object v1

    .line 3357
    invoke-static {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->connectExpirables(Lcom/google/common/collect/gg;Lcom/google/common/collect/gg;)V

    .line 3358
    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap;->nullifyExpirable(Lcom/google/common/collect/gg;)V

    .line 3360
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->INSTANCE:Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    if-eq v1, v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final size()I
    .registers 4

    .prologue
    .line 3377
    const/4 v1, 0x0

    .line 3378
    iget-object v0, p0, Lcom/google/common/collect/ga;->a:Lcom/google/common/collect/gg;

    invoke-interface {v0}, Lcom/google/common/collect/gg;->getNextExpirable()Lcom/google/common/collect/gg;

    move-result-object v0

    :goto_7
    iget-object v2, p0, Lcom/google/common/collect/ga;->a:Lcom/google/common/collect/gg;

    if-eq v0, v2, :cond_12

    .line 3379
    add-int/lit8 v1, v1, 0x1

    .line 3378
    invoke-interface {v0}, Lcom/google/common/collect/gg;->getNextExpirable()Lcom/google/common/collect/gg;

    move-result-object v0

    goto :goto_7

    .line 3381
    :cond_12
    return v1
.end method
