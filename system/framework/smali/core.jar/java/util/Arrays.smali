.class public Ljava/util/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Arrays$ArrayList;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Ljava/util/Arrays;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Ljava/util/Arrays;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 139
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 141
    return-void
.end method

.method public static varargs asList([Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    new-instance v0, Ljava/util/Arrays$ArrayList;

    invoke-direct {v0, p0}, Ljava/util/Arrays$ArrayList;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static binarySearch([BB)I
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 168
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/Arrays;->binarySearch([BIIB)I

    move-result v0

    return v0
.end method

.method public static binarySearch([BIIB)I
    .registers 9
    .parameter "array"
    .parameter "startIndex"
    .parameter "endIndex"
    .parameter "value"

    .prologue
    .line 188
    array-length v4, p0

    invoke-static {p1, p2, v4}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    .line 189
    move v1, p1

    .line 190
    .local v1, lo:I
    add-int/lit8 v0, p2, -0x1

    .line 192
    .local v0, hi:I
    :goto_7
    if-gt v1, v0, :cond_19

    .line 193
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 194
    .local v2, mid:I
    aget-byte v3, p0, v2

    .line 196
    .local v3, midVal:B
    if-ge v3, p3, :cond_14

    .line 197
    add-int/lit8 v1, v2, 0x1

    goto :goto_7

    .line 198
    :cond_14
    if-le v3, p3, :cond_1b

    .line 199
    add-int/lit8 v0, v2, -0x1

    goto :goto_7

    .line 204
    .end local v2           #mid:I
    .end local v3           #midVal:B
    :cond_19
    xor-int/lit8 v2, v1, -0x1

    :cond_1b
    return v2
.end method

.method public static binarySearch([CC)I
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 218
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/Arrays;->binarySearch([CIIC)I

    move-result v0

    return v0
.end method

.method public static binarySearch([CIIC)I
    .registers 9
    .parameter "array"
    .parameter "startIndex"
    .parameter "endIndex"
    .parameter "value"

    .prologue
    .line 238
    array-length v4, p0

    invoke-static {p1, p2, v4}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    .line 239
    move v1, p1

    .line 240
    .local v1, lo:I
    add-int/lit8 v0, p2, -0x1

    .line 242
    .local v0, hi:I
    :goto_7
    if-gt v1, v0, :cond_19

    .line 243
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 244
    .local v2, mid:I
    aget-char v3, p0, v2

    .line 246
    .local v3, midVal:C
    if-ge v3, p3, :cond_14

    .line 247
    add-int/lit8 v1, v2, 0x1

    goto :goto_7

    .line 248
    :cond_14
    if-le v3, p3, :cond_1b

    .line 249
    add-int/lit8 v0, v2, -0x1

    goto :goto_7

    .line 254
    .end local v2           #mid:I
    .end local v3           #midVal:C
    :cond_19
    xor-int/lit8 v2, v1, -0x1

    :cond_1b
    return v2
.end method

.method public static binarySearch([DD)I
    .registers 5
    .parameter "array"
    .parameter "value"

    .prologue
    .line 268
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1, p2}, Ljava/util/Arrays;->binarySearch([DIID)I

    move-result v0

    return v0
.end method

.method public static binarySearch([DIID)I
    .registers 16
    .parameter "array"
    .parameter "startIndex"
    .parameter "endIndex"
    .parameter "value"

    .prologue
    .line 288
    array-length v9, p0

    invoke-static {p1, p2, v9}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    .line 289
    move v1, p1

    .line 290
    .local v1, lo:I
    add-int/lit8 v0, p2, -0x1

    .line 292
    .local v0, hi:I
    :goto_7
    if-gt v1, v0, :cond_3e

    .line 293
    add-int v9, v1, v0

    ushr-int/lit8 v2, v9, 0x1

    .line 294
    .local v2, mid:I
    aget-wide v3, p0, v2

    .line 296
    .local v3, midVal:D
    cmpg-double v9, v3, p3

    if-gez v9, :cond_16

    .line 297
    add-int/lit8 v1, v2, 0x1

    goto :goto_7

    .line 298
    :cond_16
    cmpl-double v9, v3, p3

    if-lez v9, :cond_1d

    .line 299
    add-int/lit8 v0, v2, -0x1

    goto :goto_7

    .line 300
    :cond_1d
    const-wide/16 v9, 0x0

    cmpl-double v9, v3, v9

    if-eqz v9, :cond_28

    cmpl-double v9, v3, p3

    if-nez v9, :cond_28

    .line 315
    .end local v2           #mid:I
    .end local v3           #midVal:D
    :cond_27
    :goto_27
    return v2

    .line 303
    .restart local v2       #mid:I
    .restart local v3       #midVal:D
    :cond_28
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    .line 304
    .local v5, midValBits:J
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    .line 306
    .local v7, valueBits:J
    cmp-long v9, v5, v7

    if-gez v9, :cond_37

    .line 307
    add-int/lit8 v1, v2, 0x1

    goto :goto_7

    .line 308
    :cond_37
    cmp-long v9, v5, v7

    if-lez v9, :cond_27

    .line 309
    add-int/lit8 v0, v2, -0x1

    goto :goto_7

    .line 315
    .end local v2           #mid:I
    .end local v3           #midVal:D
    .end local v5           #midValBits:J
    .end local v7           #valueBits:J
    :cond_3e
    xor-int/lit8 v2, v1, -0x1

    goto :goto_27
.end method

.method public static binarySearch([FF)I
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 329
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/Arrays;->binarySearch([FIIF)I

    move-result v0

    return v0
.end method

.method public static binarySearch([FIIF)I
    .registers 11
    .parameter "array"
    .parameter "startIndex"
    .parameter "endIndex"
    .parameter "value"

    .prologue
    .line 349
    array-length v6, p0

    invoke-static {p1, p2, v6}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    .line 350
    move v1, p1

    .line 351
    .local v1, lo:I
    add-int/lit8 v0, p2, -0x1

    .line 353
    .local v0, hi:I
    :goto_7
    if-gt v1, v0, :cond_39

    .line 354
    add-int v6, v1, v0

    ushr-int/lit8 v2, v6, 0x1

    .line 355
    .local v2, mid:I
    aget v3, p0, v2

    .line 357
    .local v3, midVal:F
    cmpg-float v6, v3, p3

    if-gez v6, :cond_16

    .line 358
    add-int/lit8 v1, v2, 0x1

    goto :goto_7

    .line 359
    :cond_16
    cmpl-float v6, v3, p3

    if-lez v6, :cond_1d

    .line 360
    add-int/lit8 v0, v2, -0x1

    goto :goto_7

    .line 361
    :cond_1d
    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_27

    cmpl-float v6, v3, p3

    if-nez v6, :cond_27

    .line 376
    .end local v2           #mid:I
    .end local v3           #midVal:F
    :cond_26
    :goto_26
    return v2

    .line 364
    .restart local v2       #mid:I
    .restart local v3       #midVal:F
    :cond_27
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 365
    .local v4, midValBits:I
    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    .line 367
    .local v5, valueBits:I
    if-ge v4, v5, :cond_34

    .line 368
    add-int/lit8 v1, v2, 0x1

    goto :goto_7

    .line 369
    :cond_34
    if-le v4, v5, :cond_26

    .line 370
    add-int/lit8 v0, v2, -0x1

    goto :goto_7

    .line 376
    .end local v2           #mid:I
    .end local v3           #midVal:F
    .end local v4           #midValBits:I
    .end local v5           #valueBits:I
    :cond_39
    xor-int/lit8 v2, v1, -0x1

    goto :goto_26
.end method

.method public static binarySearch([II)I
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 390
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    return v0
.end method

.method public static binarySearch([IIII)I
    .registers 9
    .parameter "array"
    .parameter "startIndex"
    .parameter "endIndex"
    .parameter "value"

    .prologue
    .line 410
    array-length v4, p0

    invoke-static {p1, p2, v4}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    .line 411
    move v1, p1

    .line 412
    .local v1, lo:I
    add-int/lit8 v0, p2, -0x1

    .line 414
    .local v0, hi:I
    :goto_7
    if-gt v1, v0, :cond_19

    .line 415
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 416
    .local v2, mid:I
    aget v3, p0, v2

    .line 418
    .local v3, midVal:I
    if-ge v3, p3, :cond_14

    .line 419
    add-int/lit8 v1, v2, 0x1

    goto :goto_7

    .line 420
    :cond_14
    if-le v3, p3, :cond_1b

    .line 421
    add-int/lit8 v0, v2, -0x1

    goto :goto_7

    .line 426
    .end local v2           #mid:I
    .end local v3           #midVal:I
    :cond_19
    xor-int/lit8 v2, v1, -0x1

    :cond_1b
    return v2
.end method

.method public static binarySearch([JIIJ)I
    .registers 11
    .parameter "array"
    .parameter "startIndex"
    .parameter "endIndex"
    .parameter "value"

    .prologue
    .line 460
    array-length v5, p0

    invoke-static {p1, p2, v5}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    .line 461
    move v1, p1

    .line 462
    .local v1, lo:I
    add-int/lit8 v0, p2, -0x1

    .line 464
    .local v0, hi:I
    :goto_7
    if-gt v1, v0, :cond_1d

    .line 465
    add-int v5, v1, v0

    ushr-int/lit8 v2, v5, 0x1

    .line 466
    .local v2, mid:I
    aget-wide v3, p0, v2

    .line 468
    .local v3, midVal:J
    cmp-long v5, v3, p3

    if-gez v5, :cond_16

    .line 469
    add-int/lit8 v1, v2, 0x1

    goto :goto_7

    .line 470
    :cond_16
    cmp-long v5, v3, p3

    if-lez v5, :cond_1f

    .line 471
    add-int/lit8 v0, v2, -0x1

    goto :goto_7

    .line 476
    .end local v2           #mid:I
    .end local v3           #midVal:J
    :cond_1d
    xor-int/lit8 v2, v1, -0x1

    :cond_1f
    return v2
.end method

.method public static binarySearch([JJ)I
    .registers 5
    .parameter "array"
    .parameter "value"

    .prologue
    .line 440
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    return v0
.end method

.method public static binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I
    .registers 9
    .parameter "array"
    .parameter "startIndex"
    .parameter "endIndex"
    .parameter "value"

    .prologue
    .line 516
    array-length v4, p0

    invoke-static {p1, p2, v4}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    .line 517
    move v1, p1

    .line 518
    .local v1, lo:I
    add-int/lit8 v0, p2, -0x1

    .line 520
    .local v0, hi:I
    :goto_7
    if-gt v1, v0, :cond_1f

    .line 521
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 523
    .local v2, mid:I
    aget-object v4, p0, v2

    check-cast v4, Ljava/lang/Comparable;

    invoke-interface {v4, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    .line 525
    .local v3, midValCmp:I
    if-gez v3, :cond_1a

    .line 526
    add-int/lit8 v1, v2, 0x1

    goto :goto_7

    .line 527
    :cond_1a
    if-lez v3, :cond_21

    .line 528
    add-int/lit8 v0, v2, -0x1

    goto :goto_7

    .line 533
    .end local v2           #mid:I
    .end local v3           #midValCmp:I
    :cond_1f
    xor-int/lit8 v2, v1, -0x1

    :cond_21
    return v2
.end method

.method public static binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I
    .registers 10
    .parameter
    .parameter "startIndex"
    .parameter "endIndex"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IITT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 578
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    .local p3, value:Ljava/lang/Object;,"TT;"
    .local p4, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    if-nez p4, :cond_7

    .line 579
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v2

    .line 598
    :cond_6
    :goto_6
    return v2

    .line 582
    :cond_7
    array-length v4, p0

    invoke-static {p1, p2, v4}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    .line 583
    move v1, p1

    .line 584
    .local v1, lo:I
    add-int/lit8 v0, p2, -0x1

    .line 586
    .local v0, hi:I
    :goto_e
    if-gt v1, v0, :cond_24

    .line 587
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 588
    .local v2, mid:I
    aget-object v4, p0, v2

    invoke-interface {p4, v4, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 590
    .local v3, midValCmp:I
    if-gez v3, :cond_1f

    .line 591
    add-int/lit8 v1, v2, 0x1

    goto :goto_e

    .line 592
    :cond_1f
    if-lez v3, :cond_6

    .line 593
    add-int/lit8 v0, v2, -0x1

    goto :goto_e

    .line 598
    .end local v2           #mid:I
    .end local v3           #midValCmp:I
    :cond_24
    xor-int/lit8 v2, v1, -0x1

    goto :goto_6
.end method

.method public static binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 493
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 552
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    .local p2, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1, p2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public static binarySearch([SIIS)I
    .registers 9
    .parameter "array"
    .parameter "startIndex"
    .parameter "endIndex"
    .parameter "value"

    .prologue
    .line 632
    array-length v4, p0

    invoke-static {p1, p2, v4}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    .line 633
    move v1, p1

    .line 634
    .local v1, lo:I
    add-int/lit8 v0, p2, -0x1

    .line 636
    .local v0, hi:I
    :goto_7
    if-gt v1, v0, :cond_19

    .line 637
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 638
    .local v2, mid:I
    aget-short v3, p0, v2

    .line 640
    .local v3, midVal:S
    if-ge v3, p3, :cond_14

    .line 641
    add-int/lit8 v1, v2, 0x1

    goto :goto_7

    .line 642
    :cond_14
    if-le v3, p3, :cond_1b

    .line 643
    add-int/lit8 v0, v2, -0x1

    goto :goto_7

    .line 648
    .end local v2           #mid:I
    .end local v3           #midVal:S
    :cond_19
    xor-int/lit8 v2, v1, -0x1

    :cond_1b
    return v2
.end method

.method public static binarySearch([SS)I
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 612
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/Arrays;->binarySearch([SIIS)I

    move-result v0

    return v0
.end method

.method private static checkBinarySearchBounds(III)V
    .registers 4
    .parameter "startIndex"
    .parameter "endIndex"
    .parameter "length"

    .prologue
    .line 652
    if-le p0, p1, :cond_8

    .line 653
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 655
    :cond_8
    if-ltz p0, :cond_c

    if-le p1, p2, :cond_12

    .line 656
    :cond_c
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 658
    :cond_12
    return-void
.end method

.method public static checkOffsetAndCount(III)V
    .registers 4
    .parameter "arrayLength"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 1730
    or-int v0, p1, p2

    if-ltz v0, :cond_a

    if-gt p1, p0, :cond_a

    sub-int v0, p0, p1

    if-ge v0, p2, :cond_10

    .line 1731
    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(III)V

    throw v0

    .line 1734
    :cond_10
    return-void
.end method

.method public static checkStartAndEnd(III)V
    .registers 6
    .parameter "len"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1743
    if-ltz p1, :cond_4

    if-le p2, p0, :cond_31

    .line 1744
    :cond_4
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start < 0 || end > len. start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1747
    :cond_31
    if-le p1, p2, :cond_56

    .line 1748
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start > end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1750
    :cond_56
    return-void
.end method

.method public static copyOf([BI)[B
    .registers 3
    .parameter "original"
    .parameter "newLength"

    .prologue
    .line 2480
    if-gez p1, :cond_8

    .line 2481
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 2483
    :cond_8
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([CI)[C
    .registers 3
    .parameter "original"
    .parameter "newLength"

    .prologue
    .line 2499
    if-gez p1, :cond_8

    .line 2500
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 2502
    :cond_8
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([DI)[D
    .registers 3
    .parameter "original"
    .parameter "newLength"

    .prologue
    .line 2518
    if-gez p1, :cond_8

    .line 2519
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 2521
    :cond_8
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([DII)[D

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([FI)[F
    .registers 3
    .parameter "original"
    .parameter "newLength"

    .prologue
    .line 2537
    if-gez p1, :cond_8

    .line 2538
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 2540
    :cond_8
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([II)[I
    .registers 3
    .parameter "original"
    .parameter "newLength"

    .prologue
    .line 2556
    if-gez p1, :cond_8

    .line 2557
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 2559
    :cond_8
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([JI)[J
    .registers 3
    .parameter "original"
    .parameter "newLength"

    .prologue
    .line 2575
    if-gez p1, :cond_8

    .line 2576
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 2578
    :cond_8
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 3
    .parameter
    .parameter "newLength"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .line 2613
    .local p0, original:[Ljava/lang/Object;,"[TT;"
    if-nez p0, :cond_8

    .line 2614
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2616
    :cond_8
    if-gez p1, :cond_10

    .line 2617
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 2619
    :cond_10
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter "newLength"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;I",
            "Ljava/lang/Class",
            "<+[TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 2638
    .local p0, original:[Ljava/lang/Object;,"[TU;"
    .local p2, newType:Ljava/lang/Class;,"Ljava/lang/Class<+[TT;>;"
    if-gez p1, :cond_8

    .line 2639
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 2641
    :cond_8
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([SI)[S
    .registers 3
    .parameter "original"
    .parameter "newLength"

    .prologue
    .line 2594
    if-gez p1, :cond_8

    .line 2595
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 2597
    :cond_8
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([SII)[S

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([ZI)[Z
    .registers 3
    .parameter "original"
    .parameter "newLength"

    .prologue
    .line 2461
    if-gez p1, :cond_8

    .line 2462
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 2464
    :cond_8
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([ZII)[Z

    move-result-object v0

    return-object v0
.end method

.method public static copyOfRange([BII)[B
    .registers 8
    .parameter "original"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2690
    if-le p1, p2, :cond_8

    .line 2691
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2693
    :cond_8
    array-length v1, p0

    .line 2694
    .local v1, originalLength:I
    if-ltz p1, :cond_d

    if-le p1, v1, :cond_13

    .line 2695
    :cond_d
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2697
    :cond_13
    sub-int v3, p2, p1

    .line 2698
    .local v3, resultLength:I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2699
    .local v0, copyLength:I
    new-array v2, v3, [B

    .line 2700
    .local v2, result:[B
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2701
    return-object v2
.end method

.method public static copyOfRange([CII)[C
    .registers 8
    .parameter "original"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2720
    if-le p1, p2, :cond_8

    .line 2721
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2723
    :cond_8
    array-length v1, p0

    .line 2724
    .local v1, originalLength:I
    if-ltz p1, :cond_d

    if-le p1, v1, :cond_13

    .line 2725
    :cond_d
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2727
    :cond_13
    sub-int v3, p2, p1

    .line 2728
    .local v3, resultLength:I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2729
    .local v0, copyLength:I
    new-array v2, v3, [C

    .line 2730
    .local v2, result:[C
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2731
    return-object v2
.end method

.method public static copyOfRange([DII)[D
    .registers 8
    .parameter "original"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2750
    if-le p1, p2, :cond_8

    .line 2751
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2753
    :cond_8
    array-length v1, p0

    .line 2754
    .local v1, originalLength:I
    if-ltz p1, :cond_d

    if-le p1, v1, :cond_13

    .line 2755
    :cond_d
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2757
    :cond_13
    sub-int v3, p2, p1

    .line 2758
    .local v3, resultLength:I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2759
    .local v0, copyLength:I
    new-array v2, v3, [D

    .line 2760
    .local v2, result:[D
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2761
    return-object v2
.end method

.method public static copyOfRange([FII)[F
    .registers 8
    .parameter "original"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2780
    if-le p1, p2, :cond_8

    .line 2781
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2783
    :cond_8
    array-length v1, p0

    .line 2784
    .local v1, originalLength:I
    if-ltz p1, :cond_d

    if-le p1, v1, :cond_13

    .line 2785
    :cond_d
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2787
    :cond_13
    sub-int v3, p2, p1

    .line 2788
    .local v3, resultLength:I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2789
    .local v0, copyLength:I
    new-array v2, v3, [F

    .line 2790
    .local v2, result:[F
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2791
    return-object v2
.end method

.method public static copyOfRange([III)[I
    .registers 8
    .parameter "original"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2810
    if-le p1, p2, :cond_8

    .line 2811
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2813
    :cond_8
    array-length v1, p0

    .line 2814
    .local v1, originalLength:I
    if-ltz p1, :cond_d

    if-le p1, v1, :cond_13

    .line 2815
    :cond_d
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2817
    :cond_13
    sub-int v3, p2, p1

    .line 2818
    .local v3, resultLength:I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2819
    .local v0, copyLength:I
    new-array v2, v3, [I

    .line 2820
    .local v2, result:[I
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2821
    return-object v2
.end method

.method public static copyOfRange([JII)[J
    .registers 8
    .parameter "original"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2840
    if-le p1, p2, :cond_8

    .line 2841
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2843
    :cond_8
    array-length v1, p0

    .line 2844
    .local v1, originalLength:I
    if-ltz p1, :cond_d

    if-le p1, v1, :cond_13

    .line 2845
    :cond_d
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2847
    :cond_13
    sub-int v3, p2, p1

    .line 2848
    .local v3, resultLength:I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2849
    .local v0, copyLength:I
    new-array v2, v3, [J

    .line 2850
    .local v2, result:[J
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2851
    return-object v2
.end method

.method public static copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .registers 8
    .parameter
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .prologue
    .line 2901
    .local p0, original:[Ljava/lang/Object;,"[TT;"
    array-length v1, p0

    .line 2902
    .local v1, originalLength:I
    if-le p1, p2, :cond_9

    .line 2903
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2905
    :cond_9
    if-ltz p1, :cond_d

    if-le p1, v1, :cond_13

    .line 2906
    :cond_d
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2908
    :cond_13
    sub-int v3, p2, p1

    .line 2909
    .local v3, resultLength:I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2910
    .local v0, copyLength:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    .line 2911
    .local v2, result:[Ljava/lang/Object;,"[TT;"
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2912
    return-object v2
.end method

.method public static copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 9
    .parameter
    .parameter "start"
    .parameter "end"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;II",
            "Ljava/lang/Class",
            "<+[TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 2933
    .local p0, original:[Ljava/lang/Object;,"[TU;"
    .local p3, newType:Ljava/lang/Class;,"Ljava/lang/Class<+[TT;>;"
    if-le p1, p2, :cond_8

    .line 2934
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2936
    :cond_8
    array-length v1, p0

    .line 2937
    .local v1, originalLength:I
    if-ltz p1, :cond_d

    if-le p1, v1, :cond_13

    .line 2938
    :cond_d
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2940
    :cond_13
    sub-int v3, p2, p1

    .line 2941
    .local v3, resultLength:I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2942
    .local v0, copyLength:I
    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    .line 2943
    .local v2, result:[Ljava/lang/Object;,"[TT;"
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2944
    return-object v2
.end method

.method public static copyOfRange([SII)[S
    .registers 8
    .parameter "original"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2870
    if-le p1, p2, :cond_8

    .line 2871
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2873
    :cond_8
    array-length v1, p0

    .line 2874
    .local v1, originalLength:I
    if-ltz p1, :cond_d

    if-le p1, v1, :cond_13

    .line 2875
    :cond_d
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2877
    :cond_13
    sub-int v3, p2, p1

    .line 2878
    .local v3, resultLength:I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2879
    .local v0, copyLength:I
    new-array v2, v3, [S

    .line 2880
    .local v2, result:[S
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2881
    return-object v2
.end method

.method public static copyOfRange([ZII)[Z
    .registers 8
    .parameter "original"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2660
    if-le p1, p2, :cond_8

    .line 2661
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2663
    :cond_8
    array-length v1, p0

    .line 2664
    .local v1, originalLength:I
    if-ltz p1, :cond_d

    if-le p1, v1, :cond_13

    .line 2665
    :cond_d
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2667
    :cond_13
    sub-int v3, p2, p1

    .line 2668
    .local v3, resultLength:I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2669
    .local v0, copyLength:I
    new-array v2, v3, [Z

    .line 2670
    .local v2, result:[Z
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2671
    return-object v2
.end method

.method public static deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 9
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1626
    if-ne p0, p1, :cond_5

    .line 1639
    :cond_4
    :goto_4
    return v3

    .line 1629
    :cond_5
    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    array-length v5, p0

    array-length v6, p1

    if-eq v5, v6, :cond_f

    :cond_d
    move v3, v4

    .line 1630
    goto :goto_4

    .line 1632
    :cond_f
    const/4 v2, 0x0

    .local v2, i:I
    :goto_10
    array-length v5, p0

    if-ge v2, v5, :cond_4

    .line 1633
    aget-object v0, p0, v2

    .local v0, e1:Ljava/lang/Object;
    aget-object v1, p1, v2

    .line 1635
    .local v1, e2:Ljava/lang/Object;
    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEqualsElements(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f

    move v3, v4

    .line 1636
    goto :goto_4

    .line 1632
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_10
.end method

.method private static deepEqualsElements(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"

    .prologue
    const/4 v2, 0x0

    .line 1645
    if-ne p0, p1, :cond_5

    .line 1646
    const/4 v2, 0x1

    .line 1692
    .end local p0
    .end local p1
    .local v0, cl1:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local v1, cl2:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_4
    :goto_4
    return v2

    .line 1649
    .end local v0           #cl1:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #cl2:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local p0
    .restart local p1
    :cond_5
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 1653
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 1654
    .restart local v0       #cl1:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 1656
    .restart local v1       #cl2:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-ne v0, v1, :cond_4

    .line 1660
    if-nez v0, :cond_22

    .line 1661
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_4

    .line 1667
    :cond_22
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_35

    .line 1668
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .end local p1
    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    goto :goto_4

    .line 1671
    .restart local p0
    .restart local p1
    :cond_35
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 1672
    check-cast p0, [I

    .end local p0
    check-cast p0, [I

    check-cast p1, [I

    .end local p1
    check-cast p1, [I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    goto :goto_4

    .line 1674
    .restart local p0
    .restart local p1
    :cond_4a
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 1675
    check-cast p0, [C

    .end local p0
    check-cast p0, [C

    check-cast p1, [C

    .end local p1
    check-cast p1, [C

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v2

    goto :goto_4

    .line 1677
    .restart local p0
    .restart local p1
    :cond_5f
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 1678
    check-cast p0, [Z

    .end local p0
    check-cast p0, [Z

    check-cast p1, [Z

    .end local p1
    check-cast p1, [Z

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v2

    goto :goto_4

    .line 1680
    .restart local p0
    .restart local p1
    :cond_74
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 1681
    check-cast p0, [B

    .end local p0
    check-cast p0, [B

    check-cast p1, [B

    .end local p1
    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    goto/16 :goto_4

    .line 1683
    .restart local p0
    .restart local p1
    :cond_8a
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 1684
    check-cast p0, [J

    .end local p0
    check-cast p0, [J

    check-cast p1, [J

    .end local p1
    check-cast p1, [J

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    goto/16 :goto_4

    .line 1686
    .restart local p0
    .restart local p1
    :cond_a0
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 1687
    check-cast p0, [F

    .end local p0
    check-cast p0, [F

    check-cast p1, [F

    .end local p1
    check-cast p1, [F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    goto/16 :goto_4

    .line 1689
    .restart local p0
    .restart local p1
    :cond_b6
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 1690
    check-cast p0, [D

    .end local p0
    check-cast p0, [D

    check-cast p1, [D

    .end local p1
    check-cast p1, [D

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v2

    goto/16 :goto_4

    .line 1692
    .restart local p0
    .restart local p1
    :cond_cc
    check-cast p0, [S

    .end local p0
    check-cast p0, [S

    check-cast p1, [S

    .end local p1
    check-cast p1, [S

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v2

    goto/16 :goto_4
.end method

.method public static deepHashCode([Ljava/lang/Object;)I
    .registers 8
    .parameter "array"

    .prologue
    .line 1295
    if-nez p0, :cond_4

    .line 1296
    const/4 v3, 0x0

    .line 1303
    :cond_3
    return v3

    .line 1298
    :cond_4
    const/4 v3, 0x1

    .line 1299
    .local v3, hashCode:I
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_8
    if-ge v4, v5, :cond_3

    aget-object v1, v0, v4

    .line 1300
    .local v1, element:Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->deepHashCodeElement(Ljava/lang/Object;)I

    move-result v2

    .line 1301
    .local v2, elementHashCode:I
    mul-int/lit8 v6, v3, 0x1f

    add-int v3, v6, v2

    .line 1299
    add-int/lit8 v4, v4, 0x1

    goto :goto_8
.end method

.method private static deepHashCodeElement(Ljava/lang/Object;)I
    .registers 3
    .parameter "element"

    .prologue
    .line 1308
    if-nez p0, :cond_4

    .line 1309
    const/4 v1, 0x0

    .line 1345
    .end local p0
    .local v0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_3
    return v1

    .line 1312
    .end local v0           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local p0
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 1314
    .restart local v0       #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v0, :cond_13

    .line 1315
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    .line 1321
    :cond_13
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_22

    .line 1322
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    goto :goto_3

    .line 1324
    .restart local p0
    :cond_22
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1325
    check-cast p0, [I

    .end local p0
    check-cast p0, [I

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    goto :goto_3

    .line 1327
    .restart local p0
    :cond_33
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1328
    check-cast p0, [C

    .end local p0
    check-cast p0, [C

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([C)I

    move-result v1

    goto :goto_3

    .line 1330
    .restart local p0
    :cond_44
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 1331
    check-cast p0, [Z

    .end local p0
    check-cast p0, [Z

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v1

    goto :goto_3

    .line 1333
    .restart local p0
    :cond_55
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 1334
    check-cast p0, [B

    .end local p0
    check-cast p0, [B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    goto :goto_3

    .line 1336
    .restart local p0
    :cond_66
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 1337
    check-cast p0, [J

    .end local p0
    check-cast p0, [J

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    goto :goto_3

    .line 1339
    .restart local p0
    :cond_77
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 1340
    check-cast p0, [F

    .end local p0
    check-cast p0, [F

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    goto/16 :goto_3

    .line 1342
    .restart local p0
    :cond_89
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 1343
    check-cast p0, [D

    .end local p0
    check-cast p0, [D

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v1

    goto/16 :goto_3

    .line 1345
    .restart local p0
    :cond_9b
    check-cast p0, [S

    .end local p0
    check-cast p0, [S

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([S)I

    move-result v1

    goto/16 :goto_3
.end method

.method public static deepToString([Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .parameter "array"

    .prologue
    .line 2330
    if-nez p0, :cond_5

    .line 2331
    const-string v1, "null"

    .line 2336
    :goto_4
    return-object v1

    .line 2334
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x9

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2335
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->deepToStringImpl([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 2336
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method

.method private static deepToStringImpl([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .registers 11
    .parameter "array"
    .parameter "origArrays"
    .parameter "sb"

    .prologue
    const/4 v7, 0x0

    .line 2355
    if-nez p0, :cond_9

    .line 2356
    const-string v6, "null"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2422
    :goto_8
    return-void

    .line 2360
    :cond_9
    const/16 v6, 0x5b

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2362
    const/4 v3, 0x0

    .local v3, i:I
    :goto_f
    array-length v6, p0

    if-ge v3, v6, :cond_11a

    .line 2363
    if-eqz v3, :cond_19

    .line 2364
    const-string v6, ", "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2367
    :cond_19
    aget-object v0, p0, v3

    .line 2368
    .local v0, elem:Ljava/lang/Object;
    if-nez v0, :cond_25

    .line 2370
    const-string v6, "null"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2362
    .end local v0           #elem:Ljava/lang/Object;
    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 2373
    .restart local v0       #elem:Ljava/lang/Object;
    :cond_25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2374
    .local v1, elemClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_113

    .line 2378
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 2379
    .local v2, elemElemClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_e2

    .line 2381
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 2382
    check-cast v0, [Z

    .end local v0           #elem:Ljava/lang/Object;
    check-cast v0, [Z

    invoke-static {v0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 2383
    .restart local v0       #elem:Ljava/lang/Object;
    :cond_4d
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 2384
    check-cast v0, [B

    .end local v0           #elem:Ljava/lang/Object;
    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 2385
    .restart local v0       #elem:Ljava/lang/Object;
    :cond_61
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_75

    .line 2386
    check-cast v0, [C

    .end local v0           #elem:Ljava/lang/Object;
    check-cast v0, [C

    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 2387
    .restart local v0       #elem:Ljava/lang/Object;
    :cond_75
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_89

    .line 2388
    check-cast v0, [D

    .end local v0           #elem:Ljava/lang/Object;
    check-cast v0, [D

    invoke-static {v0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 2389
    .restart local v0       #elem:Ljava/lang/Object;
    :cond_89
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 2390
    check-cast v0, [F

    .end local v0           #elem:Ljava/lang/Object;
    check-cast v0, [F

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 2391
    .restart local v0       #elem:Ljava/lang/Object;
    :cond_9d
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b2

    .line 2392
    check-cast v0, [I

    .end local v0           #elem:Ljava/lang/Object;
    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_22

    .line 2393
    .restart local v0       #elem:Ljava/lang/Object;
    :cond_b2
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c7

    .line 2394
    check-cast v0, [J

    .end local v0           #elem:Ljava/lang/Object;
    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_22

    .line 2395
    .restart local v0       #elem:Ljava/lang/Object;
    :cond_c7
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_dc

    .line 2396
    check-cast v0, [S

    .end local v0           #elem:Ljava/lang/Object;
    check-cast v0, [S

    invoke-static {v0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_22

    .line 2399
    .restart local v0       #elem:Ljava/lang/Object;
    :cond_dc
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 2403
    :cond_e2
    sget-boolean v6, Ljava/util/Arrays;->$assertionsDisabled:Z

    if-nez v6, :cond_f0

    instance-of v6, v0, [Ljava/lang/Object;

    if-nez v6, :cond_f0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 2404
    :cond_f0
    invoke-static {p1, v0}, Ljava/util/Arrays;->deepToStringImplContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_fd

    .line 2405
    const-string v6, "[...]"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_22

    .line 2407
    :cond_fd
    check-cast v0, [Ljava/lang/Object;

    .end local v0           #elem:Ljava/lang/Object;
    move-object v4, v0

    check-cast v4, [Ljava/lang/Object;

    .line 2408
    .local v4, newArray:[Ljava/lang/Object;
    array-length v6, p1

    add-int/lit8 v6, v6, 0x1

    new-array v5, v6, [Ljava/lang/Object;

    .line 2409
    .local v5, newOrigArrays:[Ljava/lang/Object;
    array-length v6, p1

    invoke-static {p1, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2411
    array-length v6, p1

    aput-object v4, v5, v6

    .line 2413
    invoke-static {v4, v5, p2}, Ljava/util/Arrays;->deepToStringImpl([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto/16 :goto_22

    .line 2417
    .end local v2           #elemElemClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #newArray:[Ljava/lang/Object;
    .end local v5           #newOrigArrays:[Ljava/lang/Object;
    .restart local v0       #elem:Ljava/lang/Object;
    :cond_113
    aget-object v6, p0, v3

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_22

    .line 2421
    .end local v0           #elem:Ljava/lang/Object;
    .end local v1           #elemClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_11a
    const/16 v6, 0x5d

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_8
.end method

.method private static deepToStringImplContains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 8
    .parameter "origArrays"
    .parameter "array"

    .prologue
    const/4 v4, 0x0

    .line 2437
    if-eqz p0, :cond_6

    array-length v5, p0

    if-nez v5, :cond_7

    .line 2445
    :cond_6
    :goto_6
    return v4

    .line 2440
    :cond_7
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_a
    if-ge v2, v3, :cond_6

    aget-object v1, v0, v2

    .line 2441
    .local v1, element:Ljava/lang/Object;
    if-ne v1, p1, :cond_12

    .line 2442
    const/4 v4, 0x1

    goto :goto_6

    .line 2440
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method

.method public static equals([B[B)Z
    .registers 7
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1360
    if-ne p0, p1, :cond_5

    .line 1371
    :cond_4
    :goto_4
    return v1

    .line 1363
    :cond_5
    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_f

    :cond_d
    move v1, v2

    .line 1364
    goto :goto_4

    .line 1366
    :cond_f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    array-length v3, p0

    if-ge v0, v3, :cond_4

    .line 1367
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-eq v3, v4, :cond_1b

    move v1, v2

    .line 1368
    goto :goto_4

    .line 1366
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method public static equals([C[C)Z
    .registers 7
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1412
    if-ne p0, p1, :cond_5

    .line 1423
    :cond_4
    :goto_4
    return v1

    .line 1415
    :cond_5
    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_f

    :cond_d
    move v1, v2

    .line 1416
    goto :goto_4

    .line 1418
    :cond_f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    array-length v3, p0

    if-ge v0, v3, :cond_4

    .line 1419
    aget-char v3, p0, v0

    aget-char v4, p1, v0

    if-eq v3, v4, :cond_1b

    move v1, v2

    .line 1420
    goto :goto_4

    .line 1418
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method public static equals([D[D)Z
    .registers 9
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1521
    if-ne p0, p1, :cond_5

    .line 1533
    :cond_4
    :goto_4
    return v1

    .line 1524
    :cond_5
    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_f

    :cond_d
    move v1, v2

    .line 1525
    goto :goto_4

    .line 1527
    :cond_f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    array-length v3, p0

    if-ge v0, v3, :cond_4

    .line 1528
    aget-wide v3, p0, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    aget-wide v5, p1, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_25

    move v1, v2

    .line 1530
    goto :goto_4

    .line 1527
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method public static equals([F[F)Z
    .registers 7
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1492
    if-ne p0, p1, :cond_5

    .line 1504
    :cond_4
    :goto_4
    return v1

    .line 1495
    :cond_5
    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_f

    :cond_d
    move v1, v2

    .line 1496
    goto :goto_4

    .line 1498
    :cond_f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    array-length v3, p0

    if-ge v0, v3, :cond_4

    .line 1499
    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    aget v4, p1, v0

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_23

    move v1, v2

    .line 1501
    goto :goto_4

    .line 1498
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method public static equals([I[I)Z
    .registers 7
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1438
    if-ne p0, p1, :cond_5

    .line 1449
    :cond_4
    :goto_4
    return v1

    .line 1441
    :cond_5
    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_f

    :cond_d
    move v1, v2

    .line 1442
    goto :goto_4

    .line 1444
    :cond_f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    array-length v3, p0

    if-ge v0, v3, :cond_4

    .line 1445
    aget v3, p0, v0

    aget v4, p1, v0

    if-eq v3, v4, :cond_1b

    move v1, v2

    .line 1446
    goto :goto_4

    .line 1444
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method public static equals([J[J)Z
    .registers 9
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1464
    if-ne p0, p1, :cond_5

    .line 1475
    :cond_4
    :goto_4
    return v1

    .line 1467
    :cond_5
    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_f

    :cond_d
    move v1, v2

    .line 1468
    goto :goto_4

    .line 1470
    :cond_f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    array-length v3, p0

    if-ge v0, v3, :cond_4

    .line 1471
    aget-wide v3, p0, v0

    aget-wide v5, p1, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1d

    move v1, v2

    .line 1472
    goto :goto_4

    .line 1470
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 9
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1574
    if-ne p0, p1, :cond_5

    .line 1586
    :cond_4
    :goto_4
    return v3

    .line 1577
    :cond_5
    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    array-length v5, p0

    array-length v6, p1

    if-eq v5, v6, :cond_f

    :cond_d
    move v3, v4

    .line 1578
    goto :goto_4

    .line 1580
    :cond_f
    const/4 v2, 0x0

    .local v2, i:I
    :goto_10
    array-length v5, p0

    if-ge v2, v5, :cond_4

    .line 1581
    aget-object v0, p0, v2

    .local v0, e1:Ljava/lang/Object;
    aget-object v1, p1, v2

    .line 1582
    .local v1, e2:Ljava/lang/Object;
    if-nez v0, :cond_1e

    if-nez v1, :cond_24

    .line 1580
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1582
    :cond_1e
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    :cond_24
    move v3, v4

    .line 1583
    goto :goto_4
.end method

.method public static equals([S[S)Z
    .registers 7
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1386
    if-ne p0, p1, :cond_5

    .line 1397
    :cond_4
    :goto_4
    return v1

    .line 1389
    :cond_5
    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_f

    :cond_d
    move v1, v2

    .line 1390
    goto :goto_4

    .line 1392
    :cond_f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    array-length v3, p0

    if-ge v0, v3, :cond_4

    .line 1393
    aget-short v3, p0, v0

    aget-short v4, p1, v0

    if-eq v3, v4, :cond_1b

    move v1, v2

    .line 1394
    goto :goto_4

    .line 1392
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method public static equals([Z[Z)Z
    .registers 7
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1548
    if-ne p0, p1, :cond_5

    .line 1559
    :cond_4
    :goto_4
    return v1

    .line 1551
    :cond_5
    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_f

    :cond_d
    move v1, v2

    .line 1552
    goto :goto_4

    .line 1554
    :cond_f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    array-length v3, p0

    if-ge v0, v3, :cond_4

    .line 1555
    aget-boolean v3, p0, v0

    aget-boolean v4, p1, v0

    if-eq v3, v4, :cond_1b

    move v1, v2

    .line 1556
    goto :goto_4

    .line 1554
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method public static fill([BB)V
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 669
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 670
    aput-byte p1, p0, v0

    .line 669
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 672
    :cond_9
    return-void
.end method

.method public static fill([BIIB)V
    .registers 6
    .parameter "array"
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    .line 691
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 692
    move v0, p1

    .local v0, i:I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 693
    aput-byte p3, p0, v0

    .line 692
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 695
    :cond_c
    return-void
.end method

.method public static fill([CC)V
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 743
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 744
    aput-char p1, p0, v0

    .line 743
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 746
    :cond_9
    return-void
.end method

.method public static fill([CIIC)V
    .registers 6
    .parameter "array"
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    .line 765
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 766
    move v0, p1

    .local v0, i:I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 767
    aput-char p3, p0, v0

    .line 766
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 769
    :cond_c
    return-void
.end method

.method public static fill([DD)V
    .registers 5
    .parameter "array"
    .parameter "value"

    .prologue
    .line 891
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 892
    aput-wide p1, p0, v0

    .line 891
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 894
    :cond_9
    return-void
.end method

.method public static fill([DIID)V
    .registers 7
    .parameter "array"
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    .line 913
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 914
    move v0, p1

    .local v0, i:I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 915
    aput-wide p3, p0, v0

    .line 914
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 917
    :cond_c
    return-void
.end method

.method public static fill([FF)V
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 854
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 855
    aput p1, p0, v0

    .line 854
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 857
    :cond_9
    return-void
.end method

.method public static fill([FIIF)V
    .registers 6
    .parameter "array"
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    .line 876
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 877
    move v0, p1

    .local v0, i:I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 878
    aput p3, p0, v0

    .line 877
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 880
    :cond_c
    return-void
.end method

.method public static fill([II)V
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 780
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 781
    aput p1, p0, v0

    .line 780
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 783
    :cond_9
    return-void
.end method

.method public static fill([IIII)V
    .registers 6
    .parameter "array"
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    .line 802
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 803
    move v0, p1

    .local v0, i:I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 804
    aput p3, p0, v0

    .line 803
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 806
    :cond_c
    return-void
.end method

.method public static fill([JIIJ)V
    .registers 7
    .parameter "array"
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    .line 839
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 840
    move v0, p1

    .local v0, i:I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 841
    aput-wide p3, p0, v0

    .line 840
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 843
    :cond_c
    return-void
.end method

.method public static fill([JJ)V
    .registers 5
    .parameter "array"
    .parameter "value"

    .prologue
    .line 817
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 818
    aput-wide p1, p0, v0

    .line 817
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 820
    :cond_9
    return-void
.end method

.method public static fill([Ljava/lang/Object;IILjava/lang/Object;)V
    .registers 6
    .parameter "array"
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    .line 987
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 988
    move v0, p1

    .local v0, i:I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 989
    aput-object p3, p0, v0

    .line 988
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 991
    :cond_c
    return-void
.end method

.method public static fill([Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 965
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 966
    aput-object p1, p0, v0

    .line 965
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 968
    :cond_9
    return-void
.end method

.method public static fill([SIIS)V
    .registers 6
    .parameter "array"
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    .line 728
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 729
    move v0, p1

    .local v0, i:I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 730
    aput-short p3, p0, v0

    .line 729
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 732
    :cond_c
    return-void
.end method

.method public static fill([SS)V
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 706
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 707
    aput-short p1, p0, v0

    .line 706
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 709
    :cond_9
    return-void
.end method

.method public static fill([ZIIZ)V
    .registers 6
    .parameter "array"
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    .line 950
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 951
    move v0, p1

    .local v0, i:I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 952
    aput-boolean p3, p0, v0

    .line 951
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 954
    :cond_c
    return-void
.end method

.method public static fill([ZZ)V
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 928
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 929
    aput-boolean p1, p0, v0

    .line 928
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 931
    :cond_9
    return-void
.end method

.method public static hashCode([B)I
    .registers 7
    .parameter "array"

    .prologue
    .line 1122
    if-nez p0, :cond_4

    .line 1123
    const/4 v2, 0x0

    .line 1130
    :cond_3
    return v2

    .line 1125
    :cond_4
    const/4 v2, 0x1

    .line 1126
    .local v2, hashCode:I
    move-object v0, p0

    .local v0, arr$:[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_8
    if-ge v3, v4, :cond_3

    aget-byte v1, v0, v3

    .line 1128
    .local v1, element:B
    mul-int/lit8 v5, v2, 0x1f

    add-int v2, v5, v1

    .line 1126
    add-int/lit8 v3, v3, 0x1

    goto :goto_8
.end method

.method public static hashCode([C)I
    .registers 7
    .parameter "array"

    .prologue
    .line 1094
    if-nez p0, :cond_4

    .line 1095
    const/4 v2, 0x0

    .line 1102
    :cond_3
    return v2

    .line 1097
    :cond_4
    const/4 v2, 0x1

    .line 1098
    .local v2, hashCode:I
    move-object v0, p0

    .local v0, arr$:[C
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_8
    if-ge v3, v4, :cond_3

    aget-char v1, v0, v3

    .line 1100
    .local v1, element:C
    mul-int/lit8 v5, v2, 0x1f

    add-int v2, v5, v1

    .line 1098
    add-int/lit8 v3, v3, 0x1

    goto :goto_8
.end method

.method public static hashCode([D)I
    .registers 12
    .parameter "array"

    .prologue
    .line 1213
    if-nez p0, :cond_4

    .line 1214
    const/4 v3, 0x0

    .line 1226
    :cond_3
    return v3

    .line 1216
    :cond_4
    const/4 v3, 0x1

    .line 1218
    .local v3, hashCode:I
    move-object v0, p0

    .local v0, arr$:[D
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_8
    if-ge v4, v5, :cond_3

    aget-wide v1, v0, v4

    .line 1219
    .local v1, element:D
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    .line 1224
    .local v6, v:J
    mul-int/lit8 v8, v3, 0x1f

    const/16 v9, 0x20

    ushr-long v9, v6, v9

    xor-long/2addr v9, v6

    long-to-int v9, v9

    add-int v3, v8, v9

    .line 1218
    add-int/lit8 v4, v4, 0x1

    goto :goto_8
.end method

.method public static hashCode([F)I
    .registers 8
    .parameter "array"

    .prologue
    .line 1182
    if-nez p0, :cond_4

    .line 1183
    const/4 v2, 0x0

    .line 1193
    :cond_3
    return v2

    .line 1185
    :cond_4
    const/4 v2, 0x1

    .line 1186
    .local v2, hashCode:I
    move-object v0, p0

    .local v0, arr$:[F
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_8
    if-ge v3, v4, :cond_3

    aget v1, v0, v3

    .line 1191
    .local v1, element:F
    mul-int/lit8 v5, v2, 0x1f

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    add-int v2, v5, v6

    .line 1186
    add-int/lit8 v3, v3, 0x1

    goto :goto_8
.end method

.method public static hashCode([I)I
    .registers 7
    .parameter "array"

    .prologue
    .line 1038
    if-nez p0, :cond_4

    .line 1039
    const/4 v2, 0x0

    .line 1046
    :cond_3
    return v2

    .line 1041
    :cond_4
    const/4 v2, 0x1

    .line 1042
    .local v2, hashCode:I
    move-object v0, p0

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_8
    if-ge v3, v4, :cond_3

    aget v1, v0, v3

    .line 1044
    .local v1, element:I
    mul-int/lit8 v5, v2, 0x1f

    add-int v2, v5, v1

    .line 1042
    add-int/lit8 v3, v3, 0x1

    goto :goto_8
.end method

.method public static hashCode([J)I
    .registers 10
    .parameter "array"

    .prologue
    .line 1150
    if-nez p0, :cond_4

    .line 1151
    const/4 v3, 0x0

    .line 1162
    :cond_3
    return v3

    .line 1153
    :cond_4
    const/4 v3, 0x1

    .line 1154
    .local v3, hashCode:I
    move-object v0, p0

    .local v0, arr$:[J
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_8
    if-ge v4, v5, :cond_3

    aget-wide v1, v0, v4

    .line 1159
    .local v1, elementValue:J
    mul-int/lit8 v6, v3, 0x1f

    const/16 v7, 0x20

    ushr-long v7, v1, v7

    xor-long/2addr v7, v1

    long-to-int v7, v7

    add-int v3, v6, v7

    .line 1154
    add-int/lit8 v4, v4, 0x1

    goto :goto_8
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .registers 8
    .parameter "array"

    .prologue
    .line 1250
    if-nez p0, :cond_4

    .line 1251
    const/4 v3, 0x0

    .line 1264
    :cond_3
    return v3

    .line 1253
    :cond_4
    const/4 v3, 0x1

    .line 1254
    .local v3, hashCode:I
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_8
    if-ge v4, v5, :cond_3

    aget-object v1, v0, v4

    .line 1257
    .local v1, element:Ljava/lang/Object;
    if-nez v1, :cond_16

    .line 1258
    const/4 v2, 0x0

    .line 1262
    .local v2, elementHashCode:I
    :goto_f
    mul-int/lit8 v6, v3, 0x1f

    add-int v3, v6, v2

    .line 1254
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1260
    .end local v2           #elementHashCode:I
    :cond_16
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .restart local v2       #elementHashCode:I
    goto :goto_f
.end method

.method public static hashCode([S)I
    .registers 7
    .parameter "array"

    .prologue
    .line 1066
    if-nez p0, :cond_4

    .line 1067
    const/4 v2, 0x0

    .line 1074
    :cond_3
    return v2

    .line 1069
    :cond_4
    const/4 v2, 0x1

    .line 1070
    .local v2, hashCode:I
    move-object v0, p0

    .local v0, arr$:[S
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_8
    if-ge v3, v4, :cond_3

    aget-short v1, v0, v3

    .line 1072
    .local v1, element:S
    mul-int/lit8 v5, v2, 0x1f

    add-int v2, v5, v1

    .line 1070
    add-int/lit8 v3, v3, 0x1

    goto :goto_8
.end method

.method public static hashCode([Z)I
    .registers 8
    .parameter "array"

    .prologue
    .line 1010
    if-nez p0, :cond_4

    .line 1011
    const/4 v2, 0x0

    .line 1018
    :cond_3
    return v2

    .line 1013
    :cond_4
    const/4 v2, 0x1

    .line 1014
    .local v2, hashCode:I
    move-object v0, p0

    .local v0, arr$:[Z
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_8
    if-ge v3, v4, :cond_3

    aget-boolean v1, v0, v3

    .line 1016
    .local v1, element:Z
    mul-int/lit8 v6, v2, 0x1f

    if-eqz v1, :cond_17

    const/16 v5, 0x4cf

    :goto_12
    add-int v2, v6, v5

    .line 1014
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1016
    :cond_17
    const/16 v5, 0x4d5

    goto :goto_12
.end method

.method public static sort([B)V
    .registers 1
    .parameter "array"

    .prologue
    .line 1702
    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([B)V

    .line 1703
    return-void
.end method

.method public static sort([BII)V
    .registers 3
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1720
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([BII)V

    .line 1721
    return-void
.end method

.method public static sort([C)V
    .registers 1
    .parameter "array"

    .prologue
    .line 1759
    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([C)V

    .line 1760
    return-void
.end method

.method public static sort([CII)V
    .registers 3
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1777
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([CII)V

    .line 1778
    return-void
.end method

.method public static sort([D)V
    .registers 1
    .parameter "array"

    .prologue
    .line 1788
    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([D)V

    .line 1789
    return-void
.end method

.method public static sort([DII)V
    .registers 3
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1808
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([DII)V

    .line 1809
    return-void
.end method

.method public static sort([F)V
    .registers 1
    .parameter "array"

    .prologue
    .line 1819
    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([F)V

    .line 1820
    return-void
.end method

.method public static sort([FII)V
    .registers 3
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1839
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([FII)V

    .line 1840
    return-void
.end method

.method public static sort([I)V
    .registers 1
    .parameter "array"

    .prologue
    .line 1849
    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([I)V

    .line 1850
    return-void
.end method

.method public static sort([III)V
    .registers 3
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1867
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([III)V

    .line 1868
    return-void
.end method

.method public static sort([J)V
    .registers 1
    .parameter "array"

    .prologue
    .line 1877
    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([J)V

    .line 1878
    return-void
.end method

.method public static sort([JII)V
    .registers 3
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1895
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([JII)V

    .line 1896
    return-void
.end method

.method public static sort([Ljava/lang/Object;)V
    .registers 1
    .parameter "array"

    .prologue
    .line 1973
    invoke-static {p0}, Ljava/util/ComparableTimSort;->sort([Ljava/lang/Object;)V

    .line 1974
    return-void
.end method

.method public static sort([Ljava/lang/Object;II)V
    .registers 3
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1997
    invoke-static {p0, p1, p2}, Ljava/util/ComparableTimSort;->sort([Ljava/lang/Object;II)V

    .line 1998
    return-void
.end method

.method public static sort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .registers 4
    .parameter
    .parameter "start"
    .parameter "end"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2022
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    .local p3, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    invoke-static {p0, p1, p2, p3}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 2023
    return-void
.end method

.method public static sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .registers 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2038
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    invoke-static {p0, p1}, Ljava/util/TimSort;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2039
    return-void
.end method

.method public static sort([S)V
    .registers 1
    .parameter "array"

    .prologue
    .line 1905
    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([S)V

    .line 1906
    return-void
.end method

.method public static sort([SII)V
    .registers 3
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1923
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([SII)V

    .line 1924
    return-void
.end method

.method public static toString([B)Ljava/lang/String;
    .registers 4
    .parameter "array"

    .prologue
    .line 2084
    if-nez p0, :cond_5

    .line 2085
    const-string v2, "null"

    .line 2098
    :goto_4
    return-object v2

    .line 2087
    :cond_5
    array-length v2, p0

    if-nez v2, :cond_b

    .line 2088
    const-string v2, "[]"

    goto :goto_4

    .line 2090
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2091
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2092
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2093
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1f
    array-length v2, p0

    if-ge v0, v2, :cond_2f

    .line 2094
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2095
    aget-byte v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2093
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 2097
    :cond_2f
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2098
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static toString([C)Ljava/lang/String;
    .registers 4
    .parameter "array"

    .prologue
    .line 2114
    if-nez p0, :cond_5

    .line 2115
    const-string v2, "null"

    .line 2128
    :goto_4
    return-object v2

    .line 2117
    :cond_5
    array-length v2, p0

    if-nez v2, :cond_b

    .line 2118
    const-string v2, "[]"

    goto :goto_4

    .line 2120
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2121
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2122
    const/4 v2, 0x0

    aget-char v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2123
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1f
    array-length v2, p0

    if-ge v0, v2, :cond_2f

    .line 2124
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2125
    aget-char v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2123
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 2127
    :cond_2f
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static toString([D)Ljava/lang/String;
    .registers 5
    .parameter "array"

    .prologue
    .line 2144
    if-nez p0, :cond_5

    .line 2145
    const-string v2, "null"

    .line 2158
    :goto_4
    return-object v2

    .line 2147
    :cond_5
    array-length v2, p0

    if-nez v2, :cond_b

    .line 2148
    const-string v2, "[]"

    goto :goto_4

    .line 2150
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2151
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2152
    const/4 v2, 0x0

    aget-wide v2, p0, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2153
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1f
    array-length v2, p0

    if-ge v0, v2, :cond_2f

    .line 2154
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2155
    aget-wide v2, p0, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2153
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 2157
    :cond_2f
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static toString([F)Ljava/lang/String;
    .registers 4
    .parameter "array"

    .prologue
    .line 2174
    if-nez p0, :cond_5

    .line 2175
    const-string v2, "null"

    .line 2188
    :goto_4
    return-object v2

    .line 2177
    :cond_5
    array-length v2, p0

    if-nez v2, :cond_b

    .line 2178
    const-string v2, "[]"

    goto :goto_4

    .line 2180
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2181
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2182
    const/4 v2, 0x0

    aget v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2183
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1f
    array-length v2, p0

    if-ge v0, v2, :cond_2f

    .line 2184
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2185
    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2183
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 2187
    :cond_2f
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static toString([I)Ljava/lang/String;
    .registers 4
    .parameter "array"

    .prologue
    .line 2204
    if-nez p0, :cond_5

    .line 2205
    const-string v2, "null"

    .line 2218
    :goto_4
    return-object v2

    .line 2207
    :cond_5
    array-length v2, p0

    if-nez v2, :cond_b

    .line 2208
    const-string v2, "[]"

    goto :goto_4

    .line 2210
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2211
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2212
    const/4 v2, 0x0

    aget v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2213
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1f
    array-length v2, p0

    if-ge v0, v2, :cond_2f

    .line 2214
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2215
    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2213
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 2217
    :cond_2f
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2218
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static toString([J)Ljava/lang/String;
    .registers 5
    .parameter "array"

    .prologue
    .line 2234
    if-nez p0, :cond_5

    .line 2235
    const-string v2, "null"

    .line 2248
    :goto_4
    return-object v2

    .line 2237
    :cond_5
    array-length v2, p0

    if-nez v2, :cond_b

    .line 2238
    const-string v2, "[]"

    goto :goto_4

    .line 2240
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2241
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2242
    const/4 v2, 0x0

    aget-wide v2, p0, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2243
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1f
    array-length v2, p0

    if-ge v0, v2, :cond_2f

    .line 2244
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2245
    aget-wide v2, p0, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2243
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 2247
    :cond_2f
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2248
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static toString([Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .parameter "array"

    .prologue
    .line 2294
    if-nez p0, :cond_5

    .line 2295
    const-string v2, "null"

    .line 2308
    :goto_4
    return-object v2

    .line 2297
    :cond_5
    array-length v2, p0

    if-nez v2, :cond_b

    .line 2298
    const-string v2, "[]"

    goto :goto_4

    .line 2300
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2301
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2302
    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2303
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1f
    array-length v2, p0

    if-ge v0, v2, :cond_2f

    .line 2304
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2305
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2303
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 2307
    :cond_2f
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2308
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static toString([S)Ljava/lang/String;
    .registers 4
    .parameter "array"

    .prologue
    .line 2264
    if-nez p0, :cond_5

    .line 2265
    const-string v2, "null"

    .line 2278
    :goto_4
    return-object v2

    .line 2267
    :cond_5
    array-length v2, p0

    if-nez v2, :cond_b

    .line 2268
    const-string v2, "[]"

    goto :goto_4

    .line 2270
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2271
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2272
    const/4 v2, 0x0

    aget-short v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2273
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1f
    array-length v2, p0

    if-ge v0, v2, :cond_2f

    .line 2274
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2275
    aget-short v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2273
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 2277
    :cond_2f
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2278
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static toString([Z)Ljava/lang/String;
    .registers 4
    .parameter "array"

    .prologue
    .line 2054
    if-nez p0, :cond_5

    .line 2055
    const-string v2, "null"

    .line 2068
    :goto_4
    return-object v2

    .line 2057
    :cond_5
    array-length v2, p0

    if-nez v2, :cond_b

    .line 2058
    const-string v2, "[]"

    goto :goto_4

    .line 2060
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2061
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2062
    const/4 v2, 0x0

    aget-boolean v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2063
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1f
    array-length v2, p0

    if-ge v0, v2, :cond_2f

    .line 2064
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2065
    aget-boolean v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2063
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 2067
    :cond_2f
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2068
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method
