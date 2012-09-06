.class public Lcom/google/common/collect/dt;
.super Lcom/google/common/collect/di;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 559
    invoke-direct {p0}, Lcom/google/common/collect/di;-><init>()V

    .line 553
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/dt;->a:Ljava/util/ArrayList;

    .line 559
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Iterable;)Lcom/google/common/collect/di;
    .registers 3
    .parameter

    .prologue
    .line 551
    invoke-virtual {p0, p1}, Lcom/google/common/collect/dt;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/dt;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/di;
    .registers 3
    .parameter

    .prologue
    .line 551
    invoke-virtual {p0, p1}, Lcom/google/common/collect/dt;->b(Ljava/lang/Object;)Lcom/google/common/collect/dt;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a([Ljava/lang/Object;)Lcom/google/common/collect/di;
    .registers 3
    .parameter

    .prologue
    .line 551
    invoke-virtual {p0, p1}, Lcom/google/common/collect/dt;->b([Ljava/lang/Object;)Lcom/google/common/collect/dt;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Iterable;)Lcom/google/common/collect/dt;
    .registers 5
    .parameter

    .prologue
    .line 600
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_17

    move-object v0, p1

    .line 601
    check-cast v0, Ljava/util/Collection;

    .line 602
    iget-object v1, p0, Lcom/google/common/collect/dt;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/common/collect/dt;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 604
    :cond_17
    invoke-super {p0, p1}, Lcom/google/common/collect/di;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/di;

    .line 605
    return-object p0
.end method

.method public b(Ljava/lang/Object;)Lcom/google/common/collect/dt;
    .registers 4
    .parameter

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/common/collect/dt;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    return-object p0
.end method

.method public varargs b([Ljava/lang/Object;)Lcom/google/common/collect/dt;
    .registers 5
    .parameter

    .prologue
    .line 585
    iget-object v0, p0, Lcom/google/common/collect/dt;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/common/collect/dt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 586
    invoke-super {p0, p1}, Lcom/google/common/collect/di;->a([Ljava/lang/Object;)Lcom/google/common/collect/di;

    .line 587
    return-object p0
.end method
