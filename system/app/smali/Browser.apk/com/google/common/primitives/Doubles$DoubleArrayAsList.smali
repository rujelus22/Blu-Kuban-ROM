.class Lcom/google/common/primitives/Doubles$DoubleArrayAsList;
.super Ljava/util/AbstractList;
.source "Doubles.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Doubles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DoubleArrayAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Double;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[D

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([D)V
    .registers 4
    .parameter "array"

    .prologue
    .line 388
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;-><init>([DII)V

    .line 389
    return-void
.end method

.method constructor <init>([DII)V
    .registers 4
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 391
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 392
    iput-object p1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    .line 393
    iput p2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    .line 394
    iput p3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->end:I

    .line 395
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 7
    .parameter "target"

    .prologue
    .line 412
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    check-cast p1, Ljava/lang/Double;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->end:I

    #calls: Lcom/google/common/primitives/Doubles;->indexOf([DDII)I
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/primitives/Doubles;->access$000([DDII)I

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

    .line 456
    if-ne p1, p0, :cond_5

    .line 472
    :cond_4
    :goto_4
    return v3

    .line 459
    :cond_5
    instance-of v5, p1, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    if-eqz v5, :cond_32

    move-object v2, p1

    .line 460
    check-cast v2, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    .line 461
    .local v2, that:Lcom/google/common/primitives/Doubles$DoubleArrayAsList;
    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v1

    .line 462
    .local v1, size:I
    invoke-virtual {v2}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v5

    if-eq v5, v1, :cond_18

    move v3, v4

    .line 463
    goto :goto_4

    .line 465
    :cond_18
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    if-ge v0, v1, :cond_4

    .line 466
    iget-object v5, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    iget v6, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    add-int/2addr v6, v0

    aget-wide v5, v5, v6

    iget-object v7, v2, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    iget v8, v2, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    add-int/2addr v8, v0

    aget-wide v7, v7, v8

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_2f

    move v3, v4

    .line 467
    goto :goto_4

    .line 465
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 472
    .end local v0           #i:I
    .end local v1           #size:I
    .end local v2           #that:Lcom/google/common/primitives/Doubles$DoubleArrayAsList;
    :cond_32
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_4
.end method

.method public get(I)Ljava/lang/Double;
    .registers 4
    .parameter "index"

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 407
    iget-object v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    iget v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    add-int/2addr v1, p1

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 380
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->get(I)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 476
    const/4 v1, 0x1

    .line 477
    .local v1, result:I
    iget v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    .local v0, i:I
    :goto_3
    iget v2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->end:I

    if-ge v0, v2, :cond_16

    .line 478
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    aget-wide v3, v3, v0

    invoke-static {v3, v4}, Lcom/google/common/primitives/Doubles;->hashCode(D)I

    move-result v3

    add-int v1, v2, v3

    .line 477
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 480
    :cond_16
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 8
    .parameter "target"

    .prologue
    .line 418
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_1b

    .line 419
    iget-object v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    check-cast p1, Ljava/lang/Double;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget v4, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    iget v5, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->end:I

    #calls: Lcom/google/common/primitives/Doubles;->indexOf([DDII)I
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/common/primitives/Doubles;->access$000([DDII)I

    move-result v0

    .line 420
    .local v0, i:I
    if-ltz v0, :cond_1b

    .line 421
    iget v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    sub-int v1, v0, v1

    .line 424
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
    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 8
    .parameter "target"

    .prologue
    .line 429
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_1b

    .line 430
    iget-object v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    check-cast p1, Ljava/lang/Double;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget v4, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    iget v5, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->end:I

    #calls: Lcom/google/common/primitives/Doubles;->lastIndexOf([DDII)I
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/common/primitives/Doubles;->access$100([DDII)I

    move-result v0

    .line 431
    .local v0, i:I
    if-ltz v0, :cond_1b

    .line 432
    iget v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    sub-int v1, v0, v1

    .line 435
    .end local v0           #i:I
    :goto_1a
    return v1

    :cond_1b
    const/4 v1, -0x1

    goto :goto_1a
.end method

.method public set(ILjava/lang/Double;)Ljava/lang/Double;
    .registers 9
    .parameter "index"
    .parameter "element"

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v2

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 440
    iget-object v2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    iget v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    add-int/2addr v3, p1

    aget-wide v0, v2, v3

    .line 441
    .local v0, oldValue:D
    iget-object v2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    iget v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    add-int/2addr v3, p1

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 442
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 380
    check-cast p2, Ljava/lang/Double;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->set(ILjava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 3

    .prologue
    .line 398
    iget v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->end:I

    iget v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

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
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v0

    .line 448
    .local v0, size:I
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 449
    if-ne p1, p2, :cond_e

    .line 450
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 452
    :goto_d
    return-object v1

    :cond_e
    new-instance v1, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    iget-object v2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    iget v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    add-int/2addr v4, p2

    invoke-direct {v1, v2, v3, v4}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;-><init>([DII)V

    goto :goto_d
.end method

.method toDoubleArray()[D
    .registers 6

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v1

    .line 495
    .local v1, size:I
    new-array v0, v1, [D

    .line 496
    .local v0, result:[D
    iget-object v2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    iget v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 497
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0xc

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 485
    .local v0, builder:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    iget v4, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    aget-wide v3, v3, v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 486
    iget v2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    add-int/lit8 v1, v2, 0x1

    .local v1, i:I
    :goto_1e
    iget v2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->end:I

    if-ge v1, v2, :cond_32

    .line 487
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    aget-wide v3, v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 486
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 489
    :cond_32
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
