.class abstract Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;
.super Lcom/google/common/collect/ImmutableSet;
.source "SourceFile"


# instance fields
.field final transient elements:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 382
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    .line 383
    return-void
.end method


# virtual methods
.method public containsAll(Ljava/util/Collection;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 421
    if-ne p1, p0, :cond_5

    .line 435
    :cond_4
    :goto_4
    return v0

    .line 424
    :cond_5
    instance-of v2, p1, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;

    if-nez v2, :cond_e

    .line 425
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_4

    .line 427
    :cond_e
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->size()I

    move-result v3

    if-le v2, v3, :cond_1a

    move v0, v1

    .line 428
    goto :goto_4

    .line 430
    :cond_1a
    check-cast p1, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;

    iget-object v3, p1, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    array-length v4, v3

    move v2, v1

    :goto_20
    if-ge v2, v4, :cond_4

    aget-object v5, v3, v2

    .line 431
    invoke-virtual {p0, v5}, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    move v0, v1

    .line 432
    goto :goto_4

    .line 430
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_20
.end method

.method createAsList()Lcom/google/common/collect/ImmutableList;
    .registers 3

    .prologue
    .line 443
    new-instance v0, Lcom/google/common/collect/ImmutableAsList;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/ImmutableAsList;-><init>([Ljava/lang/Object;Lcom/google/common/collect/ImmutableCollection;)V

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method isPartialView()Z
    .registers 2

    .prologue
    .line 439
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/mt;
    .registers 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/ee;->a([Ljava/lang/Object;)Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->iterator()Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 404
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 405
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->size()I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 406
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 410
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->size()I

    move-result v0

    .line 411
    array-length v1, p1

    if-ge v1, v0, :cond_12

    .line 412
    invoke-static {p1, v0}, Lcom/google/common/collect/jd;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 416
    :cond_c
    :goto_c
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    return-object p1

    .line 413
    :cond_12
    array-length v1, p1

    if-le v1, v0, :cond_c

    .line 414
    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_c
.end method
