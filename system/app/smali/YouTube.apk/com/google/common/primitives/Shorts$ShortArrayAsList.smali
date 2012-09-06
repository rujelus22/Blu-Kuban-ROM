.class Lcom/google/common/primitives/Shorts$ShortArrayAsList;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[S

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([S)V
    .registers 4
    .parameter

    .prologue
    .line 474
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;-><init>([SII)V

    .line 475
    return-void
.end method

.method constructor <init>([SII)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 477
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 478
    iput-object p1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    .line 479
    iput p2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    .line 480
    iput p3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->end:I

    .line 481
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    .line 498
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Shorts;->a([SSII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 541
    if-ne p1, p0, :cond_5

    .line 557
    :cond_4
    :goto_4
    return v0

    .line 544
    :cond_5
    instance-of v2, p1, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    if-eqz v2, :cond_2f

    .line 545
    check-cast p1, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    .line 546
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v3

    .line 547
    invoke-virtual {p1}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v2

    if-eq v2, v3, :cond_17

    move v0, v1

    .line 548
    goto :goto_4

    :cond_17
    move v2, v1

    .line 550
    :goto_18
    if-ge v2, v3, :cond_4

    .line 551
    iget-object v4, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    iget v5, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    add-int/2addr v5, v2

    aget-short v4, v4, v5

    iget-object v5, p1, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    iget v6, p1, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    add-int/2addr v6, v2

    aget-short v5, v5, v6

    if-eq v4, v5, :cond_2c

    move v0, v1

    .line 552
    goto :goto_4

    .line 550
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 557
    :cond_2f
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 466
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->get(I)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Short;
    .registers 4
    .parameter

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/ag;->a(II)I

    .line 493
    iget-object v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    add-int/2addr v1, p1

    aget-short v0, v0, v1

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 561
    const/4 v1, 0x1

    .line 562
    iget v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    :goto_3
    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->end:I

    if-ge v0, v2, :cond_11

    .line 563
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    aget-short v2, v2, v0

    add-int/2addr v1, v2

    .line 562
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 565
    :cond_11
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 6
    .parameter

    .prologue
    .line 504
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_1a

    .line 505
    iget-object v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Shorts;->a([SSII)I

    move-result v0

    .line 506
    if-ltz v0, :cond_1a

    .line 507
    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    sub-int/2addr v0, v1

    .line 510
    :goto_19
    return v0

    :cond_1a
    const/4 v0, -0x1

    goto :goto_19
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 488
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 6
    .parameter

    .prologue
    .line 515
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_1a

    .line 516
    iget-object v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Shorts;->b([SSII)I

    move-result v0

    .line 517
    if-ltz v0, :cond_1a

    .line 518
    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    sub-int/2addr v0, v1

    .line 521
    :goto_19
    return v0

    :cond_1a
    const/4 v0, -0x1

    goto :goto_19
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 466
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->set(ILjava/lang/Short;)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/Short;)Ljava/lang/Short;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/ag;->a(II)I

    .line 526
    iget-object v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    add-int/2addr v1, p1

    aget-short v1, v0, v1

    .line 527
    iget-object v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    iget v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    add-int v3, v0, p1

    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    aput-short v0, v2, v3

    .line 528
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 3

    .prologue
    .line 484
    iget v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->end:I

    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v0

    .line 533
    invoke-static {p1, p2, v0}, Lcom/google/common/base/ag;->a(III)V

    .line 534
    if-ne p1, p2, :cond_e

    .line 535
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 537
    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    iget-object v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    add-int/2addr v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;-><init>([SII)V

    goto :goto_d
.end method

.method toShortArray()[S
    .registers 6

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v0

    .line 580
    new-array v1, v0, [S

    .line 581
    iget-object v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    iget v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 582
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 570
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    iget v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    aget-short v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 571
    iget v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    add-int/lit8 v0, v0, 0x1

    :goto_1e
    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->end:I

    if-ge v0, v2, :cond_32

    .line 572
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    aget-short v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 571
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 574
    :cond_32
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
