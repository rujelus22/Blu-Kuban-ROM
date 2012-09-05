.class final Lcom/google/common/collect/av;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/ConcurrentHashMultiset;


# direct methods
.method synthetic constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V
    .registers 3
    .parameter

    .prologue
    .line 374
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/av;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/google/common/collect/av;->a:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method private a()Ljava/util/List;
    .registers 4

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/google/common/collect/av;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 432
    invoke-virtual {p0}, Lcom/google/common/collect/av;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fk;

    .line 433
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 435
    :cond_1c
    return-object v1
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/common/collect/av;->a:Lcom/google/common/collect/ConcurrentHashMultiset;

    #getter for: Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v0}, Lcom/google/common/collect/ConcurrentHashMultiset;->access$100(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 450
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 384
    instance-of v1, p1, Lcom/google/common/collect/fk;

    if-eqz v1, :cond_1a

    .line 385
    check-cast p1, Lcom/google/common/collect/fk;

    .line 386
    invoke-interface {p1}, Lcom/google/common/collect/fk;->a()Ljava/lang/Object;

    move-result-object v1

    .line 387
    invoke-interface {p1}, Lcom/google/common/collect/fk;->b()I

    move-result v2

    .line 388
    if-lez v2, :cond_1a

    iget-object v3, p0, Lcom/google/common/collect/av;->a:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-virtual {v3, v1}, Lcom/google/common/collect/ConcurrentHashMultiset;->count(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v2, :cond_1a

    const/4 v0, 0x1

    .line 390
    :cond_1a
    return v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/common/collect/av;->a:Lcom/google/common/collect/ConcurrentHashMultiset;

    #getter for: Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v0}, Lcom/google/common/collect/ConcurrentHashMultiset;->access$100(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/common/collect/av;->a:Lcom/google/common/collect/ConcurrentHashMultiset;

    #getter for: Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v0}, Lcom/google/common/collect/ConcurrentHashMultiset;->access$100(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/common/collect/av;->a:Lcom/google/common/collect/ConcurrentHashMultiset;

    #getter for: Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v0}, Lcom/google/common/collect/ConcurrentHashMultiset;->access$100(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 396
    new-instance v1, Lcom/google/common/collect/aw;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/aw;-><init>(Lcom/google/common/collect/av;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    .line 439
    instance-of v0, p1, Lcom/google/common/collect/fk;

    if-eqz v0, :cond_1d

    .line 440
    check-cast p1, Lcom/google/common/collect/fk;

    .line 441
    invoke-interface {p1}, Lcom/google/common/collect/fk;->a()Ljava/lang/Object;

    move-result-object v0

    .line 442
    invoke-interface {p1}, Lcom/google/common/collect/fk;->b()I

    move-result v1

    .line 443
    iget-object v2, p0, Lcom/google/common/collect/av;->a:Lcom/google/common/collect/ConcurrentHashMultiset;

    #getter for: Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v2}, Lcom/google/common/collect/ConcurrentHashMultiset;->access$100(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 445
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/common/collect/av;->a:Lcom/google/common/collect/ConcurrentHashMultiset;

    #getter for: Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v0}, Lcom/google/common/collect/ConcurrentHashMultiset;->access$100(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/google/common/collect/av;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/google/common/collect/av;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
