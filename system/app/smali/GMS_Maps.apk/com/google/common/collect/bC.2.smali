.class abstract Lcom/google/common/collect/bC;
.super Lcom/google/common/collect/ImmutableSet;
.source "SourceFile"


# instance fields
.field final transient a:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 397
    iput-object p1, p0, Lcom/google/common/collect/bC;->a:[Ljava/lang/Object;

    .line 398
    return-void
.end method


# virtual methods
.method a()Z
    .registers 2

    .prologue
    .line 454
    const/4 v0, 0x0

    return v0
.end method

.method public b()Lcom/google/common/collect/dE;
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/common/collect/bC;->a:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/bZ;->a([Ljava/lang/Object;)Lcom/google/common/collect/dE;

    move-result-object v0

    return-object v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 436
    if-ne p1, p0, :cond_5

    .line 450
    :cond_4
    :goto_4
    return v0

    .line 439
    :cond_5
    instance-of v2, p1, Lcom/google/common/collect/bC;

    if-nez v2, :cond_e

    .line 440
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_4

    .line 442
    :cond_e
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/common/collect/bC;->size()I

    move-result v3

    if-le v2, v3, :cond_1a

    move v0, v1

    .line 443
    goto :goto_4

    .line 445
    :cond_1a
    check-cast p1, Lcom/google/common/collect/bC;

    iget-object v3, p1, Lcom/google/common/collect/bC;->a:[Ljava/lang/Object;

    array-length v4, v3

    move v2, v1

    :goto_20
    if-ge v2, v4, :cond_4

    aget-object v5, v3, v2

    .line 446
    invoke-virtual {p0, v5}, Lcom/google/common/collect/bC;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    move v0, v1

    .line 447
    goto :goto_4

    .line 445
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_20
.end method

.method e()Lcom/google/common/collect/ImmutableList;
    .registers 3

    .prologue
    .line 458
    new-instance v0, Lcom/google/common/collect/bo;

    iget-object v1, p0, Lcom/google/common/collect/bC;->a:[Ljava/lang/Object;

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/bo;-><init>([Ljava/lang/Object;Lcom/google/common/collect/br;)V

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/google/common/collect/bC;->b()Lcom/google/common/collect/dE;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/common/collect/bC;->a:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 419
    invoke-virtual {p0}, Lcom/google/common/collect/bC;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 420
    iget-object v1, p0, Lcom/google/common/collect/bC;->a:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/collect/bC;->size()I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 425
    invoke-virtual {p0}, Lcom/google/common/collect/bC;->size()I

    move-result v0

    .line 426
    array-length v1, p1

    if-ge v1, v0, :cond_12

    .line 427
    invoke-static {p1, v0}, Lcom/google/common/collect/cU;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 431
    :cond_c
    :goto_c
    iget-object v1, p0, Lcom/google/common/collect/bC;->a:[Ljava/lang/Object;

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 432
    return-object p1

    .line 428
    :cond_12
    array-length v1, p1

    if-le v1, v0, :cond_c

    .line 429
    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_c
.end method
