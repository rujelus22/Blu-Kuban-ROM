.class public final Lcom/google/common/collect/dj;
.super Lcom/google/common/collect/di;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 561
    invoke-direct {p0}, Lcom/google/common/collect/di;-><init>()V

    .line 555
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/dj;->a:Ljava/util/ArrayList;

    .line 561
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/ImmutableList;
    .registers 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/google/common/collect/dj;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Iterable;)Lcom/google/common/collect/di;
    .registers 3
    .parameter

    .prologue
    .line 554
    invoke-virtual {p0, p1}, Lcom/google/common/collect/dj;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/dj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/di;
    .registers 3
    .parameter

    .prologue
    .line 554
    invoke-virtual {p0, p1}, Lcom/google/common/collect/dj;->b(Ljava/lang/Object;)Lcom/google/common/collect/dj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a([Ljava/lang/Object;)Lcom/google/common/collect/di;
    .registers 5
    .parameter

    .prologue
    .line 554
    iget-object v0, p0, Lcom/google/common/collect/dj;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/common/collect/dj;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-super {p0, p1}, Lcom/google/common/collect/di;->a([Ljava/lang/Object;)Lcom/google/common/collect/di;

    return-object p0
.end method

.method public final b(Ljava/lang/Iterable;)Lcom/google/common/collect/dj;
    .registers 5
    .parameter

    .prologue
    .line 584
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_17

    move-object v0, p1

    .line 585
    check-cast v0, Ljava/util/Collection;

    .line 586
    iget-object v1, p0, Lcom/google/common/collect/dj;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/common/collect/dj;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 588
    :cond_17
    invoke-super {p0, p1}, Lcom/google/common/collect/di;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/di;

    .line 589
    return-object p0
.end method

.method public final b(Ljava/lang/Object;)Lcom/google/common/collect/dj;
    .registers 4
    .parameter

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/common/collect/dj;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    return-object p0
.end method
