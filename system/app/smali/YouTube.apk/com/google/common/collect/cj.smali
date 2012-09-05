.class public Lcom/google/common/collect/cj;
.super Lcom/google/common/collect/bx;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/google/common/collect/bx;-><init>()V

    .line 465
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/cj;->a:Ljava/util/ArrayList;

    .line 471
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Iterable;)Lcom/google/common/collect/bx;
    .registers 3
    .parameter

    .prologue
    .line 463
    invoke-virtual {p0, p1}, Lcom/google/common/collect/cj;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/cj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/bx;
    .registers 3
    .parameter

    .prologue
    .line 463
    invoke-virtual {p0, p1}, Lcom/google/common/collect/cj;->b(Ljava/lang/Object;)Lcom/google/common/collect/cj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a([Ljava/lang/Object;)Lcom/google/common/collect/bx;
    .registers 3
    .parameter

    .prologue
    .line 463
    invoke-virtual {p0, p1}, Lcom/google/common/collect/cj;->b([Ljava/lang/Object;)Lcom/google/common/collect/cj;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Iterable;)Lcom/google/common/collect/cj;
    .registers 5
    .parameter

    .prologue
    .line 513
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_17

    move-object v0, p1

    .line 514
    check-cast v0, Ljava/util/Collection;

    .line 515
    iget-object v1, p0, Lcom/google/common/collect/cj;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/common/collect/cj;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 517
    :cond_17
    invoke-super {p0, p1}, Lcom/google/common/collect/bx;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/bx;

    .line 518
    return-object p0
.end method

.method public b(Ljava/lang/Object;)Lcom/google/common/collect/cj;
    .registers 4
    .parameter

    .prologue
    .line 483
    iget-object v0, p0, Lcom/google/common/collect/cj;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    return-object p0
.end method

.method public varargs b([Ljava/lang/Object;)Lcom/google/common/collect/cj;
    .registers 5
    .parameter

    .prologue
    .line 497
    invoke-static {p1}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    iget-object v0, p0, Lcom/google/common/collect/cj;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/common/collect/cj;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 499
    invoke-super {p0, p1}, Lcom/google/common/collect/bx;->a([Ljava/lang/Object;)Lcom/google/common/collect/bx;

    .line 500
    return-object p0
.end method
