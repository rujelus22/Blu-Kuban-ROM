.class public final Ln/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field a:I

.field b:I

.field c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Ln/Q;->a:I

    .line 66
    iput p2, p0, Ln/Q;->b:I

    .line 67
    return-void
.end method

.method public constructor <init>(III)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Ln/Q;->a:I

    .line 71
    iput p2, p0, Ln/Q;->b:I

    .line 72
    iput p3, p0, Ln/Q;->c:I

    .line 73
    return-void
.end method

.method public constructor <init>(Ln/Q;)V
    .registers 3
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iget v0, p1, Ln/Q;->a:I

    iput v0, p0, Ln/Q;->a:I

    .line 77
    iget v0, p1, Ln/Q;->b:I

    iput v0, p0, Ln/Q;->b:I

    .line 78
    iget v0, p1, Ln/Q;->c:I

    iput v0, p0, Ln/Q;->c:I

    .line 79
    return-void
.end method

.method public static a(D)D
    .registers 6
    .parameter

    .prologue
    .line 188
    const-wide v0, 0x41731680b1202bfeL

    const-wide v2, 0x3f91df46a2529d39L

    mul-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 190
    const-wide/high16 v2, 0x41c0

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static a(Ln/Q;Ln/Q;)D
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 618
    invoke-virtual {p1, p0}, Ln/Q;->f(Ln/Q;)Ln/Q;

    move-result-object v0

    .line 619
    iget v1, v0, Ln/Q;->a:I

    int-to-double v1, v1

    iget v0, v0, Ln/Q;->b:I

    int-to-double v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x404ca5dc1a63c1f8L

    mul-double/2addr v0, v2

    .line 621
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_20

    .line 622
    const-wide v2, 0x4076800000000000L

    add-double/2addr v0, v2

    .line 624
    :cond_20
    return-wide v0
.end method

.method public static a(Ln/Q;Ln/Q;Ln/Q;Ln/Q;)F
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 759
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Ln/Q;->a(Ln/Q;Ln/Q;Ln/Q;ZLn/Q;)V

    .line 760
    invoke-virtual {p2, p3}, Ln/Q;->c(Ln/Q;)F

    move-result v0

    return v0
.end method

.method public static a(DD)Ln/Q;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 118
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    .line 119
    invoke-virtual {v0, p0, p1, p2, p3}, Ln/Q;->b(DD)V

    .line 120
    return-object v0
.end method

.method public static a(FF)Ln/Q;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 139
    const v0, 0x40490fdb

    mul-float/2addr v0, p0

    const/high16 v1, 0x4334

    div-float/2addr v0, v1

    .line 140
    new-instance v1, Ln/Q;

    float-to-double v2, p1

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    float-to-double v3, p1

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-int v0, v3

    invoke-direct {v1, v2, v0}, Ln/Q;-><init>(II)V

    return-object v1
.end method

.method public static a(II)Ln/Q;
    .registers 8
    .parameter
    .parameter

    .prologue
    const-wide v4, 0x3e7ad7f29abcaf48L

    .line 88
    int-to-double v0, p0

    mul-double/2addr v0, v4

    int-to-double v2, p1

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ln/Q;->a(DD)Ln/Q;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ln/Q;
    .registers 3
    .parameter

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 134
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 135
    invoke-static {v0, v1}, Ln/Q;->a(II)Ln/Q;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;Ln/am;)Ln/Q;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 211
    iget v0, p1, Ln/am;->c:I

    if-gez v0, :cond_1e

    .line 212
    iget v0, p1, Ln/am;->c:I

    neg-int v0, v0

    .line 213
    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v1

    shr-int/2addr v1, v0

    iget v2, p1, Ln/am;->a:I

    add-int/2addr v1, v2

    .line 214
    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v2

    shr-int v0, v2, v0

    iget v2, p1, Ln/am;->b:I

    add-int/2addr v2, v0

    .line 215
    new-instance v0, Ln/Q;

    invoke-direct {v0, v1, v2}, Ln/Q;-><init>(II)V

    .line 220
    :goto_1d
    return-object v0

    .line 217
    :cond_1e
    iget v0, p1, Ln/am;->c:I

    .line 218
    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v1

    shl-int/2addr v1, v0

    iget v2, p1, Ln/am;->a:I

    add-int/2addr v1, v2

    .line 219
    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v2

    shl-int v0, v2, v0

    iget v2, p1, Ln/am;->b:I

    add-int/2addr v2, v0

    .line 220
    new-instance v0, Ln/Q;

    invoke-direct {v0, v1, v2}, Ln/Q;-><init>(II)V

    goto :goto_1d
.end method

.method public static a(Ln/Q;)Ln/Q;
    .registers 5
    .parameter

    .prologue
    .line 199
    new-instance v0, Ln/Q;

    iget v1, p0, Ln/Q;->a:I

    iget v2, p0, Ln/Q;->b:I

    iget v3, p0, Ln/Q;->c:I

    invoke-direct {v0, v1, v2, v3}, Ln/Q;-><init>(III)V

    return-object v0
.end method

.method public static a(Ln/s;)Ln/Q;
    .registers 3
    .parameter

    .prologue
    .line 124
    invoke-virtual {p0}, Ln/s;->a()I

    move-result v0

    invoke-virtual {p0}, Ln/s;->b()I

    move-result v1

    invoke-static {v0, v1}, Ln/Q;->b(II)Ln/Q;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/io/DataInput;Ln/am;[II)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 299
    mul-int/lit8 v0, p3, 0x3

    .line 300
    iget v1, p1, Ln/am;->c:I

    if-gez v1, :cond_28

    .line 301
    iget v1, p1, Ln/am;->c:I

    neg-int v1, v1

    .line 302
    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shr-int/2addr v3, v1

    iget v4, p1, Ln/am;->a:I

    add-int/2addr v3, v4

    aput v3, p2, v0

    .line 303
    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shr-int v1, v3, v1

    iget v3, p1, Ln/am;->b:I

    add-int/2addr v1, v3

    aput v1, p2, v2

    .line 304
    add-int/lit8 v1, v0, 0x1

    aput v5, p2, v0

    .line 311
    :goto_27
    return-void

    .line 306
    :cond_28
    iget v1, p1, Ln/am;->c:I

    .line 307
    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shl-int/2addr v3, v1

    iget v4, p1, Ln/am;->a:I

    add-int/2addr v3, v4

    aput v3, p2, v0

    .line 308
    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shl-int v1, v3, v1

    iget v3, p1, Ln/am;->b:I

    add-int/2addr v1, v3

    aput v1, p2, v2

    .line 309
    add-int/lit8 v1, v0, 0x1

    aput v5, p2, v0

    goto :goto_27
.end method

.method public static a(Ln/Q;FLn/Q;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 566
    iget v0, p0, Ln/Q;->a:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p2, Ln/Q;->a:I

    .line 567
    iget v0, p0, Ln/Q;->b:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p2, Ln/Q;->b:I

    .line 568
    iget v0, p0, Ln/Q;->c:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p2, Ln/Q;->c:I

    .line 569
    return-void
.end method

.method public static a(Ln/Q;Ln/Q;FLn/Q;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 680
    iget v0, p1, Ln/Q;->a:I

    iget v1, p0, Ln/Q;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iget v1, p0, Ln/Q;->a:I

    add-int/2addr v0, v1

    iput v0, p3, Ln/Q;->a:I

    .line 681
    iget v0, p1, Ln/Q;->b:I

    iget v1, p0, Ln/Q;->b:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iget v1, p0, Ln/Q;->b:I

    add-int/2addr v0, v1

    iput v0, p3, Ln/Q;->b:I

    .line 682
    iget v0, p1, Ln/Q;->c:I

    iget v1, p0, Ln/Q;->c:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iget v1, p0, Ln/Q;->c:I

    add-int/2addr v0, v1

    iput v0, p3, Ln/Q;->c:I

    .line 683
    return-void
.end method

.method public static a(Ln/Q;Ln/Q;Ln/Q;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 534
    iget v0, p0, Ln/Q;->a:I

    iget v1, p1, Ln/Q;->a:I

    add-int/2addr v0, v1

    iput v0, p2, Ln/Q;->a:I

    .line 535
    iget v0, p0, Ln/Q;->b:I

    iget v1, p1, Ln/Q;->b:I

    add-int/2addr v0, v1

    iput v0, p2, Ln/Q;->b:I

    .line 536
    iget v0, p0, Ln/Q;->c:I

    iget v1, p1, Ln/Q;->c:I

    add-int/2addr v0, v1

    iput v0, p2, Ln/Q;->c:I

    .line 537
    return-void
.end method

.method public static a(Ln/Q;Ln/Q;Ln/Q;ZLn/Q;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 726
    invoke-static {p0, p1, p2}, Ln/Q;->d(Ln/Q;Ln/Q;Ln/Q;)F

    move-result v0

    .line 728
    if-eqz p3, :cond_1d

    .line 731
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_f

    .line 732
    invoke-virtual {p4, p0}, Ln/Q;->b(Ln/Q;)V

    .line 741
    :goto_e
    return-void

    .line 733
    :cond_f
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_19

    .line 734
    invoke-virtual {p4, p1}, Ln/Q;->b(Ln/Q;)V

    goto :goto_e

    .line 736
    :cond_19
    invoke-static {p0, p1, v0, p4}, Ln/Q;->a(Ln/Q;Ln/Q;FLn/Q;)V

    goto :goto_e

    .line 739
    :cond_1d
    invoke-static {p0, p1, v0, p4}, Ln/Q;->a(Ln/Q;Ln/Q;FLn/Q;)V

    goto :goto_e
.end method

.method public static b(Ln/Q;Ln/Q;)F
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 631
    iget v0, p0, Ln/Q;->a:I

    int-to-float v0, v0

    iget v1, p1, Ln/Q;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 632
    iget v1, p0, Ln/Q;->b:I

    int-to-float v1, v1

    iget v2, p1, Ln/Q;->b:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 633
    iget v2, p0, Ln/Q;->c:I

    int-to-float v2, v2

    iget v3, p1, Ln/Q;->c:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 634
    add-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method

.method public static b(Ln/Q;Ln/Q;Ln/Q;Ln/Q;)F
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 769
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Ln/Q;->a(Ln/Q;Ln/Q;Ln/Q;ZLn/Q;)V

    .line 770
    invoke-virtual {p2, p3}, Ln/Q;->d(Ln/Q;)F

    move-result v0

    return v0
.end method

.method public static b(II)Ln/Q;
    .registers 8
    .parameter
    .parameter

    .prologue
    const-wide v4, 0x3eb0c6f7a0b5ed8dL

    .line 98
    int-to-double v0, p0

    mul-double/2addr v0, v4

    int-to-double v2, p1

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ln/Q;->a(DD)Ln/Q;

    move-result-object v0

    return-object v0
.end method

.method static b(Ljava/io/DataInput;Ln/am;[II)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 323
    mul-int/lit8 v0, p3, 0x3

    .line 324
    iget v1, p1, Ln/am;->c:I

    if-gez v1, :cond_2c

    .line 325
    iget v1, p1, Ln/am;->c:I

    neg-int v1, v1

    .line 326
    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shr-int/2addr v3, v1

    iget v4, p1, Ln/am;->a:I

    add-int/2addr v3, v4

    aput v3, p2, v0

    .line 327
    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shr-int/2addr v3, v1

    iget v4, p1, Ln/am;->b:I

    add-int/2addr v3, v4

    aput v3, p2, v2

    .line 328
    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    shr-int v1, v2, v1

    aput v1, p2, v0

    .line 335
    :goto_2b
    return-void

    .line 330
    :cond_2c
    iget v1, p1, Ln/am;->c:I

    .line 331
    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shl-int/2addr v3, v1

    iget v4, p1, Ln/am;->a:I

    add-int/2addr v3, v4

    aput v3, p2, v0

    .line 332
    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shl-int/2addr v3, v1

    iget v4, p1, Ln/am;->b:I

    add-int/2addr v3, v4

    aput v3, p2, v2

    .line 333
    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    shl-int v1, v2, v1

    aput v1, p2, v0

    goto :goto_2b
.end method

.method public static b(Ln/Q;FLn/Q;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 599
    invoke-virtual {p0}, Ln/Q;->i()F

    move-result v0

    .line 600
    iget v1, p0, Ln/Q;->a:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p2, Ln/Q;->a:I

    .line 601
    iget v1, p0, Ln/Q;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p2, Ln/Q;->b:I

    .line 602
    iget v1, p0, Ln/Q;->c:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float v0, v1, v0

    float-to-int v0, v0

    iput v0, p2, Ln/Q;->c:I

    .line 603
    return-void
.end method

.method public static b(Ln/Q;Ln/Q;Ln/Q;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 550
    iget v0, p0, Ln/Q;->a:I

    iget v1, p1, Ln/Q;->a:I

    sub-int/2addr v0, v1

    iput v0, p2, Ln/Q;->a:I

    .line 551
    iget v0, p0, Ln/Q;->b:I

    iget v1, p1, Ln/Q;->b:I

    sub-int/2addr v0, v1

    iput v0, p2, Ln/Q;->b:I

    .line 552
    iget v0, p0, Ln/Q;->c:I

    iget v1, p1, Ln/Q;->c:I

    sub-int/2addr v0, v1

    iput v0, p2, Ln/Q;->c:I

    .line 553
    return-void
.end method

.method public static c(I)I
    .registers 4
    .parameter

    .prologue
    const/high16 v2, 0x4000

    .line 788
    move v0, p0

    :goto_3
    const/high16 v1, -0x2000

    if-ge v0, v1, :cond_9

    .line 789
    add-int/2addr v0, v2

    goto :goto_3

    .line 791
    :cond_9
    :goto_9
    const/high16 v1, 0x2000

    if-lt v0, v1, :cond_f

    .line 792
    sub-int/2addr v0, v2

    goto :goto_9

    .line 794
    :cond_f
    return v0
.end method

.method public static c(II)Ln/Q;
    .registers 8
    .parameter
    .parameter

    .prologue
    const-wide v4, 0x3ee4f8b588e368f1L

    .line 108
    int-to-double v0, p0

    mul-double/2addr v0, v4

    int-to-double v2, p1

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ln/Q;->a(DD)Ln/Q;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ln/Q;Ln/Q;Ln/Q;)V
    .registers 20
    .parameter
    .parameter
    .parameter

    .prologue
    .line 651
    move-object/from16 v0, p0

    iget v1, v0, Ln/Q;->a:I

    int-to-long v1, v1

    .line 652
    move-object/from16 v0, p0

    iget v3, v0, Ln/Q;->b:I

    int-to-long v3, v3

    .line 653
    move-object/from16 v0, p0

    iget v5, v0, Ln/Q;->c:I

    int-to-long v5, v5

    .line 654
    move-object/from16 v0, p1

    iget v7, v0, Ln/Q;->a:I

    int-to-long v7, v7

    .line 655
    move-object/from16 v0, p1

    iget v9, v0, Ln/Q;->b:I

    int-to-long v9, v9

    .line 656
    move-object/from16 v0, p1

    iget v11, v0, Ln/Q;->c:I

    int-to-long v11, v11

    .line 657
    mul-long v13, v3, v11

    mul-long v15, v5, v9

    sub-long/2addr v13, v15

    long-to-int v13, v13

    move-object/from16 v0, p2

    iput v13, v0, Ln/Q;->a:I

    .line 658
    mul-long/2addr v5, v7

    mul-long/2addr v11, v1

    sub-long/2addr v5, v11

    long-to-int v5, v5

    move-object/from16 v0, p2

    iput v5, v0, Ln/Q;->b:I

    .line 659
    mul-long/2addr v1, v9

    mul-long/2addr v3, v7

    sub-long/2addr v1, v3

    long-to-int v1, v1

    move-object/from16 v0, p2

    iput v1, v0, Ln/Q;->c:I

    .line 660
    return-void
.end method

.method public static d(Ln/Q;Ln/Q;Ln/Q;)F
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 706
    iget v0, p1, Ln/Q;->a:I

    iget v1, p0, Ln/Q;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 707
    iget v1, p1, Ln/Q;->b:I

    iget v2, p0, Ln/Q;->b:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 708
    iget v2, p1, Ln/Q;->c:I

    iget v3, p0, Ln/Q;->c:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 709
    iget v3, p2, Ln/Q;->a:I

    iget v4, p0, Ln/Q;->a:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 710
    iget v4, p2, Ln/Q;->b:I

    iget v5, p0, Ln/Q;->b:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 711
    iget v5, p2, Ln/Q;->c:I

    iget v6, p0, Ln/Q;->c:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 713
    mul-float/2addr v3, v0

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v5

    add-float/2addr v3, v4

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float v1, v2, v2

    add-float/2addr v0, v1

    div-float v0, v3, v0

    return v0
.end method

.method public static d(I)I
    .registers 2
    .parameter

    .prologue
    const/high16 v0, -0x2000

    .line 801
    if-ge p0, v0, :cond_6

    move p0, v0

    .line 806
    :cond_5
    :goto_5
    return p0

    .line 803
    :cond_6
    const/high16 v0, 0x2000

    if-lt p0, v0, :cond_5

    .line 804
    const p0, 0x1fffffff

    goto :goto_5
.end method

.method public static f(II)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x2000

    const/high16 v0, -0x2000

    .line 775
    if-lt p0, v0, :cond_c

    if-ge p0, v1, :cond_c

    if-lt p1, v0, :cond_c

    if-lt p1, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public a()I
    .registers 5

    .prologue
    .line 152
    invoke-virtual {p0}, Ln/Q;->b()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public a(Ln/Q;F)Ln/Q;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 691
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    .line 692
    invoke-static {p0, p1, p2, v0}, Ln/Q;->a(Ln/Q;Ln/Q;FLn/Q;)V

    .line 693
    return-object v0
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 424
    iput p1, p0, Ln/Q;->a:I

    .line 425
    return-void
.end method

.method public a(III)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 445
    iput p1, p0, Ln/Q;->a:I

    .line 446
    iput p2, p0, Ln/Q;->b:I

    .line 447
    iput p3, p0, Ln/Q;->c:I

    .line 448
    return-void
.end method

.method public a(I[II)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x10

    .line 409
    iget v0, p0, Ln/Q;->a:I

    int-to-long v0, v0

    shl-long/2addr v0, v5

    int-to-long v2, p1

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 410
    iget v1, p0, Ln/Q;->b:I

    int-to-long v1, v1

    shl-long/2addr v1, v5

    int-to-long v3, p1

    div-long/2addr v1, v3

    long-to-int v1, v1

    .line 411
    iget v2, p0, Ln/Q;->c:I

    int-to-long v2, v2

    shl-long/2addr v2, v5

    int-to-long v4, p1

    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 412
    aput v0, p2, p3

    .line 413
    add-int/lit8 v0, p3, 0x1

    aput v1, p2, v0

    .line 414
    add-int/lit8 v0, p3, 0x2

    aput v2, p2, v0

    .line 415
    return-void
.end method

.method public a([II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 396
    mul-int/lit8 v0, p2, 0x3

    .line 397
    iget v1, p0, Ln/Q;->a:I

    aput v1, p1, v0

    .line 398
    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Ln/Q;->b:I

    aput v2, p1, v1

    .line 399
    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ln/Q;->c:I

    aput v1, p1, v0

    .line 400
    return-void
.end method

.method public b()D
    .registers 7

    .prologue
    .line 157
    iget v0, p0, Ln/Q;->b:I

    int-to-double v0, v0

    const-wide v2, 0x3e3921fb54442d18L

    mul-double/2addr v0, v2

    .line 158
    const-wide/high16 v2, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const-wide v4, 0x3fe921fb54442d18L

    sub-double/2addr v0, v4

    mul-double/2addr v0, v2

    .line 159
    const-wide v2, 0x404ca5dc1a63c1f8L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public b(DD)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const-wide v6, 0x41a45f306dc9c883L

    const-wide v2, 0x3f91df46a2529d39L

    .line 457
    mul-double v0, p1, v2

    .line 458
    mul-double/2addr v2, p3

    .line 459
    const-wide/high16 v4, 0x3fe0

    mul-double/2addr v0, v4

    const-wide v4, 0x3fe921fb54442d18L

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    .line 460
    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 461
    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 462
    invoke-virtual {p0, v2, v0}, Ln/Q;->d(II)V

    .line 463
    return-void
.end method

.method public b(FF)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 481
    const v0, 0x40490fdb

    mul-float/2addr v0, p1

    const/high16 v1, 0x4334

    div-float/2addr v0, v1

    .line 482
    float-to-double v1, p2

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    float-to-double v2, p2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v0, v2

    invoke-virtual {p0, v1, v0}, Ln/Q;->d(II)V

    .line 483
    return-void
.end method

.method public b(I)V
    .registers 2
    .parameter

    .prologue
    .line 432
    iput p1, p0, Ln/Q;->c:I

    .line 433
    return-void
.end method

.method public b(Ln/Q;)V
    .registers 3
    .parameter

    .prologue
    .line 418
    iget v0, p1, Ln/Q;->a:I

    iput v0, p0, Ln/Q;->a:I

    .line 419
    iget v0, p1, Ln/Q;->b:I

    iput v0, p0, Ln/Q;->b:I

    .line 420
    iget v0, p1, Ln/Q;->c:I

    iput v0, p0, Ln/Q;->c:I

    .line 421
    return-void
.end method

.method public c(Ln/Q;)F
    .registers 6
    .parameter

    .prologue
    .line 507
    iget v0, p0, Ln/Q;->a:I

    iget v1, p1, Ln/Q;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 508
    iget v1, p0, Ln/Q;->b:I

    iget v2, p1, Ln/Q;->b:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 509
    iget v2, p0, Ln/Q;->c:I

    iget v3, p1, Ln/Q;->c:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 510
    mul-float/2addr v0, v0

    .line 511
    mul-float/2addr v1, v1

    .line 512
    mul-float/2addr v2, v2

    .line 513
    add-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public c()I
    .registers 5

    .prologue
    .line 169
    invoke-virtual {p0}, Ln/Q;->d()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 20
    check-cast p1, Ln/Q;

    invoke-virtual {p0, p1}, Ln/Q;->k(Ln/Q;)I

    move-result v0

    return v0
.end method

.method public d()D
    .registers 7

    .prologue
    const-wide v4, 0x4076800000000000L

    .line 174
    iget v0, p0, Ln/Q;->a:I

    int-to-double v0, v0

    const-wide v2, 0x3e3921fb54442d18L

    mul-double/2addr v0, v2

    .line 175
    const-wide v2, 0x404ca5dc1a63c1f8L

    mul-double/2addr v0, v2

    .line 176
    :goto_14
    const-wide v2, 0x4066800000000000L

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1f

    .line 177
    sub-double/2addr v0, v4

    goto :goto_14

    .line 179
    :cond_1f
    :goto_1f
    const-wide v2, -0x3f99800000000000L

    cmpg-double v2, v0, v2

    if-gez v2, :cond_2a

    .line 180
    add-double/2addr v0, v4

    goto :goto_1f

    .line 182
    :cond_2a
    return-wide v0
.end method

.method public d(Ln/Q;)F
    .registers 6
    .parameter

    .prologue
    .line 521
    iget v0, p0, Ln/Q;->a:I

    iget v1, p1, Ln/Q;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 522
    iget v1, p0, Ln/Q;->b:I

    iget v2, p1, Ln/Q;->b:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 523
    iget v2, p0, Ln/Q;->c:I

    iget v3, p1, Ln/Q;->c:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 524
    mul-float/2addr v0, v0

    .line 525
    mul-float/2addr v1, v1

    .line 526
    mul-float/2addr v2, v2

    .line 527
    add-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method

.method public d(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 439
    iput p1, p0, Ln/Q;->a:I

    .line 440
    iput p2, p0, Ln/Q;->b:I

    .line 441
    const/4 v0, 0x0

    iput v0, p0, Ln/Q;->c:I

    .line 442
    return-void
.end method

.method public e()D
    .registers 3

    .prologue
    .line 195
    invoke-virtual {p0}, Ln/Q;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ln/Q;->a(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public e(Ln/Q;)Ln/Q;
    .registers 7
    .parameter

    .prologue
    .line 543
    new-instance v0, Ln/Q;

    iget v1, p0, Ln/Q;->a:I

    iget v2, p1, Ln/Q;->a:I

    add-int/2addr v1, v2

    iget v2, p0, Ln/Q;->b:I

    iget v3, p1, Ln/Q;->b:I

    add-int/2addr v2, v3

    iget v3, p0, Ln/Q;->c:I

    iget v4, p1, Ln/Q;->c:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ln/Q;-><init>(III)V

    return-object v0
.end method

.method public e(II)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const-wide v4, 0x3eb0c6f7a0b5ed8dL

    .line 472
    int-to-double v0, p1

    mul-double/2addr v0, v4

    int-to-double v2, p2

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Ln/Q;->b(DD)V

    .line 473
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 851
    instance-of v1, p1, Ln/Q;

    if-eqz v1, :cond_1a

    .line 852
    check-cast p1, Ln/Q;

    .line 853
    iget v1, p0, Ln/Q;->a:I

    iget v2, p1, Ln/Q;->a:I

    if-ne v1, v2, :cond_1a

    iget v1, p0, Ln/Q;->b:I

    iget v2, p1, Ln/Q;->b:I

    if-ne v1, v2, :cond_1a

    iget v1, p0, Ln/Q;->c:I

    iget v2, p1, Ln/Q;->c:I

    if-ne v1, v2, :cond_1a

    const/4 v0, 0x1

    .line 855
    :cond_1a
    return v0
.end method

.method public f()I
    .registers 2

    .prologue
    .line 384
    iget v0, p0, Ln/Q;->a:I

    return v0
.end method

.method public f(Ln/Q;)Ln/Q;
    .registers 7
    .parameter

    .prologue
    .line 559
    new-instance v0, Ln/Q;

    iget v1, p0, Ln/Q;->a:I

    iget v2, p1, Ln/Q;->a:I

    sub-int/2addr v1, v2

    iget v2, p0, Ln/Q;->b:I

    iget v3, p1, Ln/Q;->b:I

    sub-int/2addr v2, v3

    iget v3, p0, Ln/Q;->c:I

    iget v4, p1, Ln/Q;->c:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ln/Q;-><init>(III)V

    return-object v0
.end method

.method public g()I
    .registers 2

    .prologue
    .line 388
    iget v0, p0, Ln/Q;->b:I

    return v0
.end method

.method public g(Ln/Q;)Ln/Q;
    .registers 3
    .parameter

    .prologue
    .line 669
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    .line 670
    invoke-static {p0, p1, v0}, Ln/Q;->c(Ln/Q;Ln/Q;Ln/Q;)V

    .line 671
    return-object v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 392
    iget v0, p0, Ln/Q;->c:I

    return v0
.end method

.method public h(Ln/Q;)V
    .registers 3
    .parameter

    .prologue
    .line 814
    iget v0, p0, Ln/Q;->a:I

    invoke-static {v0}, Ln/Q;->c(I)I

    move-result v0

    iput v0, p1, Ln/Q;->a:I

    .line 815
    iget v0, p0, Ln/Q;->b:I

    invoke-static {v0}, Ln/Q;->d(I)I

    move-result v0

    iput v0, p1, Ln/Q;->b:I

    .line 816
    iget v0, p0, Ln/Q;->c:I

    iput v0, p1, Ln/Q;->c:I

    .line 817
    return-void
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 860
    iget v0, p0, Ln/Q;->a:I

    .line 861
    iget v1, p0, Ln/Q;->b:I

    .line 862
    iget v2, p0, Ln/Q;->c:I

    .line 863
    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    shr-int/lit8 v3, v2, 0xd

    xor-int/2addr v0, v3

    .line 864
    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    shl-int/lit8 v3, v0, 0x8

    xor-int/2addr v1, v3

    .line 865
    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    shr-int/lit8 v3, v1, 0xd

    xor-int/2addr v2, v3

    .line 866
    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    shr-int/lit8 v3, v2, 0xc

    xor-int/2addr v0, v3

    .line 867
    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    shl-int/lit8 v3, v0, 0x10

    xor-int/2addr v1, v3

    .line 868
    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    shr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    .line 869
    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    shr-int/lit8 v3, v2, 0x3

    xor-int/2addr v0, v3

    .line 870
    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    shl-int/lit8 v3, v0, 0xa

    xor-int/2addr v1, v3

    .line 871
    sub-int v0, v2, v0

    sub-int/2addr v0, v1

    shr-int/lit8 v1, v1, 0xf

    xor-int/2addr v0, v1

    .line 872
    return v0
.end method

.method public i()F
    .registers 5

    .prologue
    .line 486
    iget v0, p0, Ln/Q;->a:I

    int-to-float v0, v0

    iget v1, p0, Ln/Q;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 487
    iget v1, p0, Ln/Q;->b:I

    int-to-float v1, v1

    iget v2, p0, Ln/Q;->b:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 488
    iget v2, p0, Ln/Q;->c:I

    int-to-float v2, v2

    iget v3, p0, Ln/Q;->c:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 489
    add-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public i(Ln/Q;)V
    .registers 3
    .parameter

    .prologue
    .line 825
    iget v0, p0, Ln/Q;->a:I

    invoke-static {v0}, Ln/Q;->c(I)I

    move-result v0

    iput v0, p1, Ln/Q;->a:I

    .line 826
    iget v0, p0, Ln/Q;->b:I

    iput v0, p1, Ln/Q;->b:I

    .line 827
    iget v0, p0, Ln/Q;->c:I

    iput v0, p1, Ln/Q;->c:I

    .line 828
    return-void
.end method

.method public j(Ln/Q;)V
    .registers 3
    .parameter

    .prologue
    .line 835
    iget v0, p0, Ln/Q;->a:I

    invoke-static {v0}, Ln/Q;->d(I)I

    move-result v0

    iput v0, p1, Ln/Q;->a:I

    .line 836
    iget v0, p0, Ln/Q;->b:I

    invoke-static {v0}, Ln/Q;->d(I)I

    move-result v0

    iput v0, p1, Ln/Q;->b:I

    .line 837
    iget v0, p0, Ln/Q;->c:I

    iput v0, p1, Ln/Q;->c:I

    .line 838
    return-void
.end method

.method public j()Z
    .registers 3

    .prologue
    .line 781
    iget v0, p0, Ln/Q;->a:I

    iget v1, p0, Ln/Q;->b:I

    invoke-static {v0, v1}, Ln/Q;->f(II)Z

    move-result v0

    return v0
.end method

.method public k(Ln/Q;)I
    .registers 4
    .parameter

    .prologue
    .line 877
    iget v0, p0, Ln/Q;->a:I

    iget v1, p1, Ln/Q;->a:I

    if-ne v0, v1, :cond_18

    .line 878
    iget v0, p0, Ln/Q;->b:I

    iget v1, p1, Ln/Q;->b:I

    if-ne v0, v1, :cond_12

    .line 879
    iget v0, p0, Ln/Q;->c:I

    iget v1, p1, Ln/Q;->c:I

    sub-int/2addr v0, v1

    .line 883
    :goto_11
    return v0

    .line 881
    :cond_12
    iget v0, p0, Ln/Q;->b:I

    iget v1, p1, Ln/Q;->b:I

    sub-int/2addr v0, v1

    goto :goto_11

    .line 883
    :cond_18
    iget v0, p0, Ln/Q;->a:I

    iget v1, p1, Ln/Q;->a:I

    sub-int/2addr v0, v1

    goto :goto_11
.end method

.method public k()Ljava/lang/String;
    .registers 7

    .prologue
    .line 846
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%f,%f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ln/Q;->b()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Ln/Q;->d()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()I
    .registers 2

    .prologue
    .line 887
    const/16 v0, 0x18

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ln/Q;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ln/Q;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ln/Q;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
