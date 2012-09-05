.class public final Lcom/google/common/collect/by;
.super Lcom/google/common/collect/bx;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/google/common/collect/bx;-><init>()V

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/by;->a:Ljava/util/ArrayList;

    .line 415
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/ImmutableList;
    .registers 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/common/collect/by;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Iterable;)Lcom/google/common/collect/bx;
    .registers 3
    .parameter

    .prologue
    .line 408
    invoke-virtual {p0, p1}, Lcom/google/common/collect/by;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/by;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/bx;
    .registers 3
    .parameter

    .prologue
    .line 408
    invoke-virtual {p0, p1}, Lcom/google/common/collect/by;->b(Ljava/lang/Object;)Lcom/google/common/collect/by;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a([Ljava/lang/Object;)Lcom/google/common/collect/bx;
    .registers 5
    .parameter

    .prologue
    .line 408
    invoke-static {p1}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/by;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/common/collect/by;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-super {p0, p1}, Lcom/google/common/collect/bx;->a([Ljava/lang/Object;)Lcom/google/common/collect/bx;

    return-object p0
.end method

.method public final b(Ljava/lang/Iterable;)Lcom/google/common/collect/by;
    .registers 5
    .parameter

    .prologue
    .line 438
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_17

    move-object v0, p1

    .line 439
    check-cast v0, Ljava/util/Collection;

    .line 440
    iget-object v1, p0, Lcom/google/common/collect/by;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/common/collect/by;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 442
    :cond_17
    invoke-super {p0, p1}, Lcom/google/common/collect/bx;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/bx;

    .line 443
    return-object p0
.end method

.method public final b(Ljava/lang/Object;)Lcom/google/common/collect/by;
    .registers 4
    .parameter

    .prologue
    .line 425
    iget-object v0, p0, Lcom/google/common/collect/by;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    return-object p0
.end method
