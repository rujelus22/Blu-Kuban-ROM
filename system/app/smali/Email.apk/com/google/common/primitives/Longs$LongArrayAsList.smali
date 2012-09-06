.class Lcom/google/common/primitives/Longs$LongArrayAsList;
.super Ljava/util/AbstractList;
.source "Longs.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Longs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongArrayAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[J

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([JII)V
    .registers 4
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 440
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 441
    iput-object p1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    .line 442
    iput p2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    .line 443
    iput p3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    .line 444
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 7
    .parameter "target"

    .prologue
    .line 461
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    #calls: Lcom/google/common/primitives/Longs;->indexOf([JJII)I
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/primitives/Longs;->access$000([JJII)I

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
    .registers 11
    .parameter "object"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 505
    if-ne p1, p0, :cond_5

    .line 521
    :cond_4
    :goto_4
    return v3

    .line 508
    :cond_5
    instance-of v5, p1, Lcom/google/common/primitives/Longs$LongArrayAsList;

    if-eqz v5, :cond_32

    move-object v2, p1

    .line 509
    check-cast v2, Lcom/google/common/primitives/Longs$LongArrayAsList;

    .line 510
    .local v2, that:Lcom/google/common/primitives/Longs$LongArrayAsList;
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v1

    .line 511
    .local v1, size:I
    invoke-virtual {v2}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v5

    if-eq v5, v1, :cond_18

    move v3, v4

    .line 512
    goto :goto_4

    .line 514
    :cond_18
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    if-ge v0, v1, :cond_4

    .line 515
    iget-object v5, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v6, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v6, v0

    aget-wide v5, v5, v6

    iget-object v7, v2, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v8, v2, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v8, v0

    aget-wide v7, v7, v8

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2f

    move v3, v4

    .line 516
    goto :goto_4

    .line 514
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 521
    .end local v0           #i:I
    .end local v1           #size:I
    .end local v2           #that:Lcom/google/common/primitives/Longs$LongArrayAsList;
    :cond_32
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_4
.end method

.method public get(I)Ljava/lang/Long;
    .registers 4
    .parameter "index"

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 456
    iget-object v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v1, p1

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 429
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Longs$LongArrayAsList;->get(I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 525
    const/4 v1, 0x1

    .line 526
    .local v1, result:I
    iget v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    .local v0, i:I
    :goto_3
    iget v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    if-ge v0, v2, :cond_16

    .line 527
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    aget-wide v3, v3, v0

    invoke-static {v3, v4}, Lcom/google/common/primitives/Longs;->hashCode(J)I

    move-result v3

    add-int v1, v2, v3

    .line 526
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 529
    :cond_16
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 8
    .parameter "target"

    .prologue
    .line 467
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_1b

    .line 468
    iget-object v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    iget v5, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    #calls: Lcom/google/common/primitives/Longs;->indexOf([JJII)I
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/common/primitives/Longs;->access$000([JJII)I

    move-result v0

    .line 469
    .local v0, i:I
    if-ltz v0, :cond_1b

    .line 470
    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    sub-int v1, v0, v1

    .line 473
    .end local v0           #i:I
    :goto_1a
    return v1

    :cond_1b
    const/4 v1, -0x1

    goto :goto_1a
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 451
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 8
    .parameter "target"

    .prologue
    .line 478
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_1b

    .line 479
    iget-object v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    iget v5, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    #calls: Lcom/google/common/primitives/Longs;->lastIndexOf([JJII)I
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/common/primitives/Longs;->access$100([JJII)I

    move-result v0

    .line 480
    .local v0, i:I
    if-ltz v0, :cond_1b

    .line 481
    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    sub-int v1, v0, v1

    .line 484
    .end local v0           #i:I
    :goto_1a
    return v1

    :cond_1b
    const/4 v1, -0x1

    goto :goto_1a
.end method

.method public set(ILjava/lang/Long;)Ljava/lang/Long;
    .registers 9
    .parameter "index"
    .parameter "element"

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v2

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 489
    iget-object v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v3, p1

    aget-wide v0, v2, v3

    .line 490
    .local v0, oldValue:J
    iget-object v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v3, p1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 491
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 429
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Longs$LongArrayAsList;->set(ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 3

    .prologue
    .line 447
    iget v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 8
    .parameter "fromIndex"
    .parameter "toIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v0

    .line 497
    .local v0, size:I
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 498
    if-ne p1, p2, :cond_e

    .line 499
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 501
    :goto_d
    return-object v1

    :cond_e
    new-instance v1, Lcom/google/common/primitives/Longs$LongArrayAsList;

    iget-object v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v4, p2

    invoke-direct {v1, v2, v3, v4}, Lcom/google/common/primitives/Longs$LongArrayAsList;-><init>([JII)V

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 534
    .local v0, builder:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    aget-wide v3, v3, v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 535
    iget v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/lit8 v1, v2, 0x1

    .local v1, i:I
    :goto_1e
    iget v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    if-ge v1, v2, :cond_32

    .line 536
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    aget-wide v3, v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 535
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 538
    :cond_32
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
