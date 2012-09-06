.class Lcom/google/common/collect/bO;
.super Lcom/google/common/collect/ImmutableSet;
.source "SourceFile"


# instance fields
.field final transient a:Lcom/google/common/collect/bK;


# direct methods
.method constructor <init>(Lcom/google/common/collect/bK;)V
    .registers 2
    .parameter

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 473
    iput-object p1, p0, Lcom/google/common/collect/bO;->a:Lcom/google/common/collect/bK;

    .line 474
    return-void
.end method


# virtual methods
.method a()Z
    .registers 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/common/collect/bO;->a:Lcom/google/common/collect/bK;

    invoke-virtual {v0}, Lcom/google/common/collect/bK;->d()Z

    move-result v0

    return v0
.end method

.method public b()Lcom/google/common/collect/dE;
    .registers 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/common/collect/bO;->a:Lcom/google/common/collect/bK;

    iget-object v0, v0, Lcom/google/common/collect/bK;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->b()Lcom/google/common/collect/dE;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 490
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_1e

    .line 491
    check-cast p1, Ljava/util/Map$Entry;

    .line 492
    iget-object v1, p0, Lcom/google/common/collect/bO;->a:Lcom/google/common/collect/bK;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/bK;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 493
    if-eqz v1, :cond_1e

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x1

    .line 495
    :cond_1e
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/google/common/collect/bO;->b()Lcom/google/common/collect/dE;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/common/collect/bO;->a:Lcom/google/common/collect/bK;

    invoke-virtual {v0}, Lcom/google/common/collect/bK;->size()I

    move-result v0

    return v0
.end method
