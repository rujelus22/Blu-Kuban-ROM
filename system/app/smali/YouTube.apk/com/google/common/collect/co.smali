.class final Lcom/google/common/collect/co;
.super Lcom/google/common/collect/am;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/common/collect/ConcurrentHashMultiset;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V
    .registers 2
    .parameter

    .prologue
    .line 526
    iput-object p1, p0, Lcom/google/common/collect/co;->b:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-direct {p0, p1}, Lcom/google/common/collect/am;-><init>(Lcom/google/common/collect/ak;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 526
    invoke-direct {p0, p1}, Lcom/google/common/collect/co;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V

    return-void
.end method

.method private b()Ljava/util/List;
    .registers 3

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/google/common/collect/co;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 547
    invoke-virtual {p0}, Lcom/google/common/collect/co;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ee;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 548
    return-object v0
.end method


# virtual methods
.method final bridge synthetic a()Lcom/google/common/collect/iq;
    .registers 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/google/common/collect/co;->b:Lcom/google/common/collect/ConcurrentHashMultiset;

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 552
    instance-of v1, p1, Lcom/google/common/collect/ir;

    if-eqz v1, :cond_17

    .line 553
    check-cast p1, Lcom/google/common/collect/ir;

    .line 554
    invoke-interface {p1}, Lcom/google/common/collect/ir;->getElement()Ljava/lang/Object;

    move-result-object v1

    .line 555
    invoke-interface {p1}, Lcom/google/common/collect/ir;->getCount()I

    move-result v2

    .line 556
    if-eqz v2, :cond_17

    .line 559
    iget-object v3, p0, Lcom/google/common/collect/co;->b:Lcom/google/common/collect/ConcurrentHashMultiset;

    .line 560
    invoke-interface {v3, v1, v2, v0}, Lcom/google/common/collect/iq;->setCount(Ljava/lang/Object;II)Z

    move-result v0

    .line 563
    :cond_17
    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/google/common/collect/co;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/google/common/collect/co;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
