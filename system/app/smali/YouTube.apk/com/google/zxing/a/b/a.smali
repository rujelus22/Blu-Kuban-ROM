.class public final Lcom/google/zxing/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/common/b;

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/b;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/zxing/a/b/a;->a:Lcom/google/zxing/common/b;

    .line 47
    return-void
.end method

.method private a(Lcom/google/zxing/a/b/b;Lcom/google/zxing/a/b/b;)I
    .registers 15
    .parameter
    .parameter

    .prologue
    .line 539
    invoke-static {p1, p2}, Lcom/google/zxing/a/b/a;->b(Lcom/google/zxing/a/b/b;Lcom/google/zxing/a/b/b;)F

    move-result v4

    .line 540
    iget v0, p2, Lcom/google/zxing/a/b/b;->a:I

    iget v1, p1, Lcom/google/zxing/a/b/b;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float v5, v0, v4

    .line 541
    iget v0, p2, Lcom/google/zxing/a/b/b;->b:I

    iget v1, p1, Lcom/google/zxing/a/b/b;->b:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float v6, v0, v4

    .line 542
    const/4 v3, 0x0

    .line 544
    iget v0, p1, Lcom/google/zxing/a/b/b;->a:I

    int-to-float v2, v0

    .line 545
    iget v0, p1, Lcom/google/zxing/a/b/b;->b:I

    int-to-float v1, v0

    .line 547
    iget-object v0, p0, Lcom/google/zxing/a/b/a;->a:Lcom/google/zxing/common/b;

    iget v7, p1, Lcom/google/zxing/a/b/b;->a:I

    iget v8, p1, Lcom/google/zxing/a/b/b;->b:I

    invoke-virtual {v0, v7, v8}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v7

    .line 549
    const/4 v0, 0x0

    move v11, v0

    move v0, v3

    move v3, v2

    move v2, v1

    move v1, v11

    :goto_2b
    int-to-float v8, v1

    cmpg-float v8, v8, v4

    if-gez v8, :cond_47

    .line 550
    add-float/2addr v3, v5

    .line 551
    add-float/2addr v2, v6

    .line 552
    iget-object v8, p0, Lcom/google/zxing/a/b/a;->a:Lcom/google/zxing/common/b;

    const/high16 v9, 0x3f00

    add-float/2addr v9, v3

    float-to-int v9, v9

    const/high16 v10, 0x3f00

    add-float/2addr v10, v2

    float-to-int v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v8

    if-eq v8, v7, :cond_44

    .line 553
    add-int/lit8 v0, v0, 0x1

    .line 549
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 557
    :cond_47
    int-to-float v0, v0

    div-float/2addr v0, v4

    .line 559
    float-to-double v1, v0

    const-wide v3, 0x3fb999999999999aL

    cmpl-double v1, v1, v3

    if-lez v1, :cond_5f

    float-to-double v1, v0

    const-wide v3, 0x3feccccccccccccdL

    cmpg-double v1, v1, v3

    if-gez v1, :cond_5f

    .line 560
    const/4 v0, 0x0

    .line 566
    :goto_5e
    return v0

    .line 563
    :cond_5f
    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_6f

    .line 564
    if-eqz v7, :cond_6d

    const/4 v0, 0x1

    goto :goto_5e

    :cond_6d
    const/4 v0, -0x1

    goto :goto_5e

    .line 566
    :cond_6f
    if-eqz v7, :cond_73

    const/4 v0, -0x1

    goto :goto_5e

    :cond_73
    const/4 v0, 0x1

    goto :goto_5e
.end method

.method private a(Lcom/google/zxing/a/b/b;ZII)Lcom/google/zxing/a/b/b;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 574
    iget v0, p1, Lcom/google/zxing/a/b/b;->a:I

    add-int/2addr v0, p3

    .line 575
    iget v1, p1, Lcom/google/zxing/a/b/b;->b:I

    add-int/2addr v1, p4

    .line 577
    :goto_6
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/a/b/a;->a(II)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/google/zxing/a/b/a;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v2

    if-ne v2, p2, :cond_17

    .line 578
    add-int/2addr v0, p3

    .line 579
    add-int/2addr v1, p4

    goto :goto_6

    .line 582
    :cond_17
    sub-int/2addr v0, p3

    .line 583
    sub-int/2addr v1, p4

    .line 585
    :goto_19
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/a/b/a;->a(II)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/google/zxing/a/b/a;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v2

    if-ne v2, p2, :cond_29

    .line 586
    add-int/2addr v0, p3

    goto :goto_19

    .line 588
    :cond_29
    sub-int v2, v0, p3

    move v0, v1

    .line 590
    :goto_2c
    invoke-direct {p0, v2, v0}, Lcom/google/zxing/a/b/a;->a(II)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/google/zxing/a/b/a;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v1, v2, v0}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v1

    if-ne v1, p2, :cond_3c

    .line 591
    add-int/2addr v0, p4

    goto :goto_2c

    .line 593
    :cond_3c
    sub-int/2addr v0, p4

    .line 595
    new-instance v1, Lcom/google/zxing/a/b/b;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/google/zxing/a/b/b;-><init>(IIB)V

    return-object v1
.end method

.method private static a([ZZ)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 207
    if-eqz p1, :cond_25

    .line 208
    const/4 v2, 0x7

    .line 209
    const/4 v0, 0x2

    .line 215
    :goto_7
    sub-int v8, v2, v0

    .line 216
    new-array v9, v2, [I

    move v7, v4

    .line 218
    :goto_c
    if-ge v7, v2, :cond_2e

    move v5, v3

    move v6, v3

    .line 221
    :goto_10
    if-gt v5, v1, :cond_2a

    .line 222
    mul-int/lit8 v10, v7, 0x4

    add-int/lit8 v10, v10, 0x4

    sub-int/2addr v10, v5

    aget-boolean v10, p0, v10

    if-eqz v10, :cond_20

    .line 223
    aget v10, v9, v7

    add-int/2addr v10, v6

    aput v10, v9, v7

    .line 225
    :cond_20
    shl-int/lit8 v6, v6, 0x1

    .line 221
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 211
    :cond_25
    const/16 v0, 0xa

    move v2, v0

    move v0, v1

    .line 212
    goto :goto_7

    .line 219
    :cond_2a
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_c

    .line 230
    :cond_2e
    :try_start_2e
    new-instance v2, Lcom/google/zxing/common/reedsolomon/c;

    sget-object v5, Lcom/google/zxing/common/reedsolomon/a;->d:Lcom/google/zxing/common/reedsolomon/a;

    invoke-direct {v2, v5}, Lcom/google/zxing/common/reedsolomon/c;-><init>(Lcom/google/zxing/common/reedsolomon/a;)V

    .line 231
    invoke-virtual {v2, v9, v8}, Lcom/google/zxing/common/reedsolomon/c;->a([II)V
    :try_end_38
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_2e .. :try_end_38} :catch_53

    move v7, v4

    .line 236
    :goto_39
    if-ge v7, v0, :cond_5f

    move v5, v3

    move v6, v3

    .line 238
    :goto_3d
    if-gt v5, v1, :cond_5b

    .line 239
    mul-int/lit8 v2, v7, 0x4

    add-int/lit8 v2, v2, 0x4

    sub-int v8, v2, v5

    aget v2, v9, v7

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_59

    move v2, v3

    :goto_4b
    aput-boolean v2, p0, v8

    .line 240
    shl-int/lit8 v6, v6, 0x1

    .line 238
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_3d

    .line 233
    :catch_53
    move-exception v0

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_59
    move v2, v4

    .line 239
    goto :goto_4b

    .line 236
    :cond_5b
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_39

    .line 243
    :cond_5f
    return-void
.end method

.method private a(II)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 613
    if-ltz p1, :cond_12

    iget-object v0, p0, Lcom/google/zxing/a/b/a;->a:Lcom/google/zxing/common/b;

    iget v0, v0, Lcom/google/zxing/common/b;->a:I

    if-ge p1, v0, :cond_12

    if-lez p2, :cond_12

    iget-object v0, p0, Lcom/google/zxing/a/b/a;->a:Lcom/google/zxing/common/b;

    iget v0, v0, Lcom/google/zxing/common/b;->b:I

    if-ge p2, v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private a(Lcom/google/zxing/a/b/b;Lcom/google/zxing/a/b/b;I)[Z
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v9, 0x3f00

    .line 478
    new-array v3, p3, [Z

    .line 479
    invoke-static {p1, p2}, Lcom/google/zxing/a/b/a;->b(Lcom/google/zxing/a/b/b;Lcom/google/zxing/a/b/b;)F

    move-result v0

    .line 480
    add-int/lit8 v1, p3, -0x1

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 481
    iget v2, p2, Lcom/google/zxing/a/b/b;->a:I

    iget v4, p1, Lcom/google/zxing/a/b/b;->a:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    mul-float/2addr v2, v1

    div-float v4, v2, v0

    .line 482
    iget v2, p2, Lcom/google/zxing/a/b/b;->b:I

    iget v5, p1, Lcom/google/zxing/a/b/b;->b:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float v5, v1, v0

    .line 484
    iget v0, p1, Lcom/google/zxing/a/b/b;->a:I

    int-to-float v1, v0

    .line 485
    iget v0, p1, Lcom/google/zxing/a/b/b;->b:I

    int-to-float v2, v0

    .line 487
    const/4 v0, 0x0

    :goto_26
    if-ge v0, p3, :cond_3b

    .line 488
    iget-object v6, p0, Lcom/google/zxing/a/b/a;->a:Lcom/google/zxing/common/b;

    add-float v7, v1, v9

    float-to-int v7, v7

    add-float v8, v2, v9

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v6

    aput-boolean v6, v3, v0

    .line 489
    add-float/2addr v1, v4

    .line 490
    add-float/2addr v2, v5

    .line 487
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 493
    :cond_3b
    return-object v3
.end method

.method private static b(Lcom/google/zxing/a/b/b;Lcom/google/zxing/a/b/b;)F
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 626
    iget v0, p0, Lcom/google/zxing/a/b/b;->a:I

    iget v1, p1, Lcom/google/zxing/a/b/b;->a:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/zxing/a/b/b;->a:I

    iget v2, p1, Lcom/google/zxing/a/b/b;->a:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/zxing/a/b/b;->b:I

    iget v2, p1, Lcom/google/zxing/a/b/b;->b:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/zxing/a/b/b;->b:I

    iget v3, p1, Lcom/google/zxing/a/b/b;->b:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private b()Lcom/google/zxing/a/b/b;
    .registers 13

    .prologue
    const/high16 v11, 0x4080

    const/high16 v10, 0x3f00

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 339
    :try_start_7
    new-instance v0, Lcom/google/zxing/common/a/a;

    iget-object v1, p0, Lcom/google/zxing/a/b/a;->a:Lcom/google/zxing/common/b;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/a/a;-><init>(Lcom/google/zxing/common/b;)V

    invoke-virtual {v0}, Lcom/google/zxing/common/a/a;->a()[Lcom/google/zxing/j;

    move-result-object v0

    .line 340
    const/4 v1, 0x0

    aget-object v3, v0, v1

    .line 341
    const/4 v1, 0x1

    aget-object v2, v0, v1

    .line 342
    const/4 v1, 0x2

    aget-object v1, v0, v1

    .line 343
    const/4 v4, 0x3

    aget-object v0, v0, v4
    :try_end_1e
    .catch Lcom/google/zxing/NotFoundException; {:try_start_7 .. :try_end_1e} :catch_95

    .line 359
    :goto_1e
    invoke-virtual {v3}, Lcom/google/zxing/j;->a()F

    move-result v4

    invoke-virtual {v0}, Lcom/google/zxing/j;->a()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v2}, Lcom/google/zxing/j;->a()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v1}, Lcom/google/zxing/j;->a()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v11

    add-float/2addr v4, v10

    float-to-int v4, v4

    .line 360
    invoke-virtual {v3}, Lcom/google/zxing/j;->b()F

    move-result v3

    invoke-virtual {v0}, Lcom/google/zxing/j;->b()F

    move-result v0

    add-float/2addr v0, v3

    invoke-virtual {v2}, Lcom/google/zxing/j;->b()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {v1}, Lcom/google/zxing/j;->b()F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v11

    add-float/2addr v0, v10

    float-to-int v0, v0

    .line 366
    :try_start_4a
    new-instance v1, Lcom/google/zxing/common/a/a;

    iget-object v2, p0, Lcom/google/zxing/a/b/a;->a:Lcom/google/zxing/common/b;

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/zxing/common/a/a;-><init>(Lcom/google/zxing/common/b;III)V

    invoke-virtual {v1}, Lcom/google/zxing/common/a/a;->a()[Lcom/google/zxing/j;

    move-result-object v5

    .line 367
    const/4 v1, 0x0

    aget-object v3, v5, v1

    .line 368
    const/4 v1, 0x1

    aget-object v2, v5, v1

    .line 369
    const/4 v1, 0x2

    aget-object v1, v5, v1

    .line 370
    const/4 v6, 0x3

    aget-object v0, v5, v6
    :try_end_63
    .catch Lcom/google/zxing/NotFoundException; {:try_start_4a .. :try_end_63} :catch_e8

    .line 383
    :goto_63
    invoke-virtual {v3}, Lcom/google/zxing/j;->a()F

    move-result v4

    invoke-virtual {v0}, Lcom/google/zxing/j;->a()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v2}, Lcom/google/zxing/j;->a()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v1}, Lcom/google/zxing/j;->a()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v11

    add-float/2addr v4, v10

    float-to-int v4, v4

    .line 384
    invoke-virtual {v3}, Lcom/google/zxing/j;->b()F

    move-result v3

    invoke-virtual {v0}, Lcom/google/zxing/j;->b()F

    move-result v0

    add-float/2addr v0, v3

    invoke-virtual {v2}, Lcom/google/zxing/j;->b()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {v1}, Lcom/google/zxing/j;->b()F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v11

    add-float/2addr v0, v10

    float-to-int v0, v0

    .line 386
    new-instance v1, Lcom/google/zxing/a/b/b;

    invoke-direct {v1, v4, v0, v7}, Lcom/google/zxing/a/b/b;-><init>(IIB)V

    return-object v1

    .line 345
    :catch_95
    move-exception v0

    .line 349
    iget-object v0, p0, Lcom/google/zxing/a/b/a;->a:Lcom/google/zxing/common/b;

    iget v0, v0, Lcom/google/zxing/common/b;->a:I

    div-int/lit8 v0, v0, 0x2

    .line 350
    iget-object v1, p0, Lcom/google/zxing/a/b/a;->a:Lcom/google/zxing/common/b;

    iget v1, v1, Lcom/google/zxing/common/b;->b:I

    div-int/lit8 v4, v1, 0x2

    .line 351
    new-instance v1, Lcom/google/zxing/a/b/b;

    add-int/lit8 v2, v0, 0x7

    add-int/lit8 v3, v4, -0x7

    invoke-direct {v1, v2, v3, v7}, Lcom/google/zxing/a/b/b;-><init>(IIB)V

    invoke-direct {p0, v1, v7, v8, v9}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;ZII)Lcom/google/zxing/a/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/a/b/b;->a()Lcom/google/zxing/j;

    move-result-object v3

    .line 352
    new-instance v1, Lcom/google/zxing/a/b/b;

    add-int/lit8 v2, v0, 0x7

    add-int/lit8 v5, v4, 0x7

    invoke-direct {v1, v2, v5, v7}, Lcom/google/zxing/a/b/b;-><init>(IIB)V

    invoke-direct {p0, v1, v7, v8, v8}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;ZII)Lcom/google/zxing/a/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/a/b/b;->a()Lcom/google/zxing/j;

    move-result-object v2

    .line 353
    new-instance v1, Lcom/google/zxing/a/b/b;

    add-int/lit8 v5, v0, -0x7

    add-int/lit8 v6, v4, 0x7

    invoke-direct {v1, v5, v6, v7}, Lcom/google/zxing/a/b/b;-><init>(IIB)V

    invoke-direct {p0, v1, v7, v9, v8}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;ZII)Lcom/google/zxing/a/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/a/b/b;->a()Lcom/google/zxing/j;

    move-result-object v1

    .line 354
    new-instance v5, Lcom/google/zxing/a/b/b;

    add-int/lit8 v0, v0, -0x7

    add-int/lit8 v4, v4, -0x7

    invoke-direct {v5, v0, v4, v7}, Lcom/google/zxing/a/b/b;-><init>(IIB)V

    invoke-direct {p0, v5, v7, v9, v9}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;ZII)Lcom/google/zxing/a/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/a/b/b;->a()Lcom/google/zxing/j;

    move-result-object v0

    goto/16 :goto_1e

    .line 371
    :catch_e8
    move-exception v1

    .line 375
    new-instance v1, Lcom/google/zxing/a/b/b;

    add-int/lit8 v2, v4, 0x7

    add-int/lit8 v3, v0, -0x7

    invoke-direct {v1, v2, v3, v7}, Lcom/google/zxing/a/b/b;-><init>(IIB)V

    invoke-direct {p0, v1, v7, v8, v9}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;ZII)Lcom/google/zxing/a/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/a/b/b;->a()Lcom/google/zxing/j;

    move-result-object v3

    .line 376
    new-instance v1, Lcom/google/zxing/a/b/b;

    add-int/lit8 v2, v4, 0x7

    add-int/lit8 v5, v0, 0x7

    invoke-direct {v1, v2, v5, v7}, Lcom/google/zxing/a/b/b;-><init>(IIB)V

    invoke-direct {p0, v1, v7, v8, v8}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;ZII)Lcom/google/zxing/a/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/a/b/b;->a()Lcom/google/zxing/j;

    move-result-object v2

    .line 377
    new-instance v1, Lcom/google/zxing/a/b/b;

    add-int/lit8 v5, v4, -0x7

    add-int/lit8 v6, v0, 0x7

    invoke-direct {v1, v5, v6, v7}, Lcom/google/zxing/a/b/b;-><init>(IIB)V

    invoke-direct {p0, v1, v7, v9, v8}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;ZII)Lcom/google/zxing/a/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/a/b/b;->a()Lcom/google/zxing/j;

    move-result-object v1

    .line 378
    new-instance v5, Lcom/google/zxing/a/b/b;

    add-int/lit8 v4, v4, -0x7

    add-int/lit8 v0, v0, -0x7

    invoke-direct {v5, v4, v0, v7}, Lcom/google/zxing/a/b/b;-><init>(IIB)V

    invoke-direct {p0, v5, v7, v9, v9}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;ZII)Lcom/google/zxing/a/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/a/b/b;->a()Lcom/google/zxing/j;

    move-result-object v0

    goto/16 :goto_63
.end method


# virtual methods
.method public final a()Lcom/google/zxing/a/a;
    .registers 23

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/a/b/a;->b()Lcom/google/zxing/a/b/b;

    move-result-object v2

    .line 61
    const/4 v1, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/zxing/a/b/a;->e:I

    move-object v4, v2

    move-object v6, v2

    move-object v8, v2

    :goto_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/zxing/a/b/a;->e:I

    const/16 v5, 0x9

    if-ge v3, v5, :cond_d4

    const/4 v3, 0x1

    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v1, v3, v5}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;ZII)Lcom/google/zxing/a/b/b;

    move-result-object v9

    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v1, v3, v5}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;ZII)Lcom/google/zxing/a/b/b;

    move-result-object v7

    const/4 v3, -0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v1, v3, v5}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;ZII)Lcom/google/zxing/a/b/b;

    move-result-object v5

    const/4 v3, -0x1

    const/4 v10, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v10}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;ZII)Lcom/google/zxing/a/b/b;

    move-result-object v3

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/zxing/a/b/a;->e:I

    const/4 v11, 0x2

    if-le v10, v11, :cond_bd

    invoke-static {v3, v9}, Lcom/google/zxing/a/b/a;->b(Lcom/google/zxing/a/b/b;Lcom/google/zxing/a/b/b;)F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/zxing/a/b/a;->e:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    invoke-static {v2, v8}, Lcom/google/zxing/a/b/a;->b(Lcom/google/zxing/a/b/b;Lcom/google/zxing/a/b/b;)F

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/zxing/a/b/a;->e:I

    add-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    mul-float/2addr v11, v12

    div-float/2addr v10, v11

    float-to-double v11, v10

    const-wide/high16 v13, 0x3fe8

    cmpg-double v11, v11, v13

    if-ltz v11, :cond_d4

    float-to-double v10, v10

    const-wide/high16 v12, 0x3ff4

    cmpl-double v10, v10, v12

    if-gtz v10, :cond_d4

    new-instance v10, Lcom/google/zxing/a/b/b;

    iget v11, v9, Lcom/google/zxing/a/b/b;->a:I

    add-int/lit8 v11, v11, -0x3

    iget v12, v9, Lcom/google/zxing/a/b/b;->b:I

    add-int/lit8 v12, v12, 0x3

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/google/zxing/a/b/b;-><init>(IIB)V

    new-instance v11, Lcom/google/zxing/a/b/b;

    iget v12, v7, Lcom/google/zxing/a/b/b;->a:I

    add-int/lit8 v12, v12, -0x3

    iget v13, v7, Lcom/google/zxing/a/b/b;->b:I

    add-int/lit8 v13, v13, -0x3

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/a/b/b;-><init>(IIB)V

    new-instance v12, Lcom/google/zxing/a/b/b;

    iget v13, v5, Lcom/google/zxing/a/b/b;->a:I

    add-int/lit8 v13, v13, 0x3

    iget v14, v5, Lcom/google/zxing/a/b/b;->b:I

    add-int/lit8 v14, v14, -0x3

    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v15}, Lcom/google/zxing/a/b/b;-><init>(IIB)V

    new-instance v13, Lcom/google/zxing/a/b/b;

    iget v14, v3, Lcom/google/zxing/a/b/b;->a:I

    add-int/lit8 v14, v14, 0x3

    iget v15, v3, Lcom/google/zxing/a/b/b;->b:I

    add-int/lit8 v15, v15, 0x3

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lcom/google/zxing/a/b/b;-><init>(IIB)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v10}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;Lcom/google/zxing/a/b/b;)I

    move-result v14

    if-eqz v14, :cond_d0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;Lcom/google/zxing/a/b/b;)I

    move-result v10

    if-ne v10, v14, :cond_d0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;Lcom/google/zxing/a/b/b;)I

    move-result v10

    if-ne v10, v14, :cond_d0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;Lcom/google/zxing/a/b/b;)I

    move-result v10

    if-ne v10, v14, :cond_d0

    const/4 v10, 0x1

    :goto_bb
    if-eqz v10, :cond_d4

    :cond_bd
    if-nez v1, :cond_d2

    const/4 v1, 0x1

    :goto_c0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/zxing/a/b/a;->e:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/zxing/a/b/a;->e:I

    move-object v2, v3

    move-object v4, v5

    move-object v6, v7

    move-object v8, v9

    goto/16 :goto_d

    :cond_d0
    const/4 v10, 0x0

    goto :goto_bb

    :cond_d2
    const/4 v1, 0x0

    goto :goto_c0

    :cond_d4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/zxing/a/b/a;->e:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_e7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/zxing/a/b/a;->e:I

    const/4 v3, 0x7

    if-eq v1, v3, :cond_e7

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :cond_e7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/zxing/a/b/a;->e:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_188

    const/4 v1, 0x1

    :goto_ef
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/zxing/a/b/a;->b:Z

    const/high16 v1, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/zxing/a/b/a;->e:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x3

    int-to-float v3, v3

    div-float/2addr v1, v3

    iget v3, v8, Lcom/google/zxing/a/b/b;->a:I

    iget v5, v4, Lcom/google/zxing/a/b/b;->a:I

    sub-int/2addr v3, v5

    iget v5, v8, Lcom/google/zxing/a/b/b;->b:I

    iget v7, v4, Lcom/google/zxing/a/b/b;->b:I

    sub-int/2addr v5, v7

    iget v7, v4, Lcom/google/zxing/a/b/b;->a:I

    int-to-float v7, v7

    int-to-float v9, v3

    mul-float/2addr v9, v1

    sub-float/2addr v7, v9

    const/high16 v9, 0x3f00

    add-float/2addr v7, v9

    float-to-int v7, v7

    iget v4, v4, Lcom/google/zxing/a/b/b;->b:I

    int-to-float v4, v4

    int-to-float v9, v5

    mul-float/2addr v9, v1

    sub-float/2addr v4, v9

    const/high16 v9, 0x3f00

    add-float/2addr v4, v9

    float-to-int v4, v4

    iget v9, v8, Lcom/google/zxing/a/b/b;->a:I

    int-to-float v9, v9

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v3, v9

    const/high16 v9, 0x3f00

    add-float/2addr v3, v9

    float-to-int v3, v3

    iget v8, v8, Lcom/google/zxing/a/b/b;->b:I

    int-to-float v8, v8

    int-to-float v5, v5

    mul-float/2addr v5, v1

    add-float/2addr v5, v8

    const/high16 v8, 0x3f00

    add-float/2addr v5, v8

    float-to-int v5, v5

    iget v8, v6, Lcom/google/zxing/a/b/b;->a:I

    iget v9, v2, Lcom/google/zxing/a/b/b;->a:I

    sub-int/2addr v8, v9

    iget v9, v6, Lcom/google/zxing/a/b/b;->b:I

    iget v10, v2, Lcom/google/zxing/a/b/b;->b:I

    sub-int/2addr v9, v10

    iget v10, v2, Lcom/google/zxing/a/b/b;->a:I

    int-to-float v10, v10

    int-to-float v11, v8

    mul-float/2addr v11, v1

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v10, v10

    iget v2, v2, Lcom/google/zxing/a/b/b;->b:I

    int-to-float v2, v2

    int-to-float v11, v9

    mul-float/2addr v11, v1

    sub-float/2addr v2, v11

    const/high16 v11, 0x3f00

    add-float/2addr v2, v11

    float-to-int v2, v2

    iget v11, v6, Lcom/google/zxing/a/b/b;->a:I

    int-to-float v11, v11

    int-to-float v8, v8

    mul-float/2addr v8, v1

    add-float/2addr v8, v11

    const/high16 v11, 0x3f00

    add-float/2addr v8, v11

    float-to-int v8, v8

    iget v6, v6, Lcom/google/zxing/a/b/b;->b:I

    int-to-float v6, v6

    int-to-float v9, v9

    mul-float/2addr v1, v9

    add-float/2addr v1, v6

    const/high16 v6, 0x3f00

    add-float/2addr v1, v6

    float-to-int v1, v1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/google/zxing/a/b/a;->a(II)Z

    move-result v6

    if-eqz v6, :cond_183

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v1}, Lcom/google/zxing/a/b/a;->a(II)Z

    move-result v6

    if-eqz v6, :cond_183

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lcom/google/zxing/a/b/a;->a(II)Z

    move-result v6

    if-eqz v6, :cond_183

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lcom/google/zxing/a/b/a;->a(II)Z

    move-result v6

    if-nez v6, :cond_18b

    :cond_183
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :cond_188
    const/4 v1, 0x0

    goto/16 :goto_ef

    :cond_18b
    new-instance v6, Lcom/google/zxing/a/b/b;

    const/4 v9, 0x0

    invoke-direct {v6, v3, v5, v9}, Lcom/google/zxing/a/b/b;-><init>(IIB)V

    new-instance v3, Lcom/google/zxing/a/b/b;

    const/4 v5, 0x0

    invoke-direct {v3, v8, v1, v5}, Lcom/google/zxing/a/b/b;-><init>(IIB)V

    new-instance v1, Lcom/google/zxing/a/b/b;

    const/4 v5, 0x0

    invoke-direct {v1, v7, v4, v5}, Lcom/google/zxing/a/b/b;-><init>(IIB)V

    new-instance v4, Lcom/google/zxing/a/b/b;

    const/4 v5, 0x0

    invoke-direct {v4, v10, v2, v5}, Lcom/google/zxing/a/b/b;-><init>(IIB)V

    const/4 v2, 0x4

    new-array v5, v2, [Lcom/google/zxing/a/b/b;

    const/4 v2, 0x0

    aput-object v6, v5, v2

    const/4 v2, 0x1

    aput-object v3, v5, v2

    const/4 v2, 0x2

    aput-object v1, v5, v2

    const/4 v1, 0x3

    aput-object v4, v5, v1

    .line 64
    const/4 v1, 0x0

    aget-object v1, v5, v1

    const/4 v2, 0x1

    aget-object v2, v5, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/zxing/a/b/a;->e:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;Lcom/google/zxing/a/b/b;I)[Z

    move-result-object v2

    const/4 v1, 0x1

    aget-object v1, v5, v1

    const/4 v3, 0x2

    aget-object v3, v5, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/zxing/a/b/a;->e:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3, v4}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;Lcom/google/zxing/a/b/b;I)[Z

    move-result-object v3

    const/4 v1, 0x2

    aget-object v1, v5, v1

    const/4 v4, 0x3

    aget-object v4, v5, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/zxing/a/b/a;->e:I

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v4, v6}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;Lcom/google/zxing/a/b/b;I)[Z

    move-result-object v4

    const/4 v1, 0x3

    aget-object v1, v5, v1

    const/4 v6, 0x0

    aget-object v6, v5, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/zxing/a/b/a;->e:I

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v6, v7}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;Lcom/google/zxing/a/b/b;I)[Z

    move-result-object v6

    const/4 v1, 0x0

    aget-boolean v1, v2, v1

    if-eqz v1, :cond_245

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/zxing/a/b/a;->e:I

    mul-int/lit8 v1, v1, 0x2

    aget-boolean v1, v2, v1

    if-eqz v1, :cond_245

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/zxing/a/b/a;->f:I

    :goto_216
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/zxing/a/b/a;->b:Z

    if-eqz v1, :cond_2a2

    const/16 v1, 0x1c

    new-array v7, v1, [Z

    const/4 v1, 0x0

    :goto_221
    const/4 v8, 0x7

    if-ge v1, v8, :cond_289

    add-int/lit8 v8, v1, 0x2

    aget-boolean v8, v2, v8

    aput-boolean v8, v7, v1

    add-int/lit8 v8, v1, 0x7

    add-int/lit8 v9, v1, 0x2

    aget-boolean v9, v3, v9

    aput-boolean v9, v7, v8

    add-int/lit8 v8, v1, 0xe

    add-int/lit8 v9, v1, 0x2

    aget-boolean v9, v4, v9

    aput-boolean v9, v7, v8

    add-int/lit8 v8, v1, 0x15

    add-int/lit8 v9, v1, 0x2

    aget-boolean v9, v6, v9

    aput-boolean v9, v7, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_221

    :cond_245
    const/4 v1, 0x0

    aget-boolean v1, v3, v1

    if-eqz v1, :cond_25a

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/zxing/a/b/a;->e:I

    mul-int/lit8 v1, v1, 0x2

    aget-boolean v1, v3, v1

    if-eqz v1, :cond_25a

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/zxing/a/b/a;->f:I

    goto :goto_216

    :cond_25a
    const/4 v1, 0x0

    aget-boolean v1, v4, v1

    if-eqz v1, :cond_26f

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/zxing/a/b/a;->e:I

    mul-int/lit8 v1, v1, 0x2

    aget-boolean v1, v4, v1

    if-eqz v1, :cond_26f

    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/zxing/a/b/a;->f:I

    goto :goto_216

    :cond_26f
    const/4 v1, 0x0

    aget-boolean v1, v6, v1

    if-eqz v1, :cond_284

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/zxing/a/b/a;->e:I

    mul-int/lit8 v1, v1, 0x2

    aget-boolean v1, v6, v1

    if-eqz v1, :cond_284

    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/zxing/a/b/a;->f:I

    goto :goto_216

    :cond_284
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :cond_289
    const/16 v1, 0x1c

    new-array v1, v1, [Z

    const/4 v2, 0x0

    :goto_28e
    const/16 v3, 0x1c

    if-ge v2, v3, :cond_311

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/zxing/a/b/a;->f:I

    mul-int/lit8 v3, v3, 0x7

    add-int/2addr v3, v2

    rem-int/lit8 v3, v3, 0x1c

    aget-boolean v3, v7, v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_28e

    :cond_2a2
    const/16 v1, 0x28

    new-array v7, v1, [Z

    const/4 v1, 0x0

    :goto_2a7
    const/16 v8, 0xb

    if-ge v1, v8, :cond_2f8

    const/4 v8, 0x5

    if-ge v1, v8, :cond_2cc

    add-int/lit8 v8, v1, 0x2

    aget-boolean v8, v2, v8

    aput-boolean v8, v7, v1

    add-int/lit8 v8, v1, 0xa

    add-int/lit8 v9, v1, 0x2

    aget-boolean v9, v3, v9

    aput-boolean v9, v7, v8

    add-int/lit8 v8, v1, 0x14

    add-int/lit8 v9, v1, 0x2

    aget-boolean v9, v4, v9

    aput-boolean v9, v7, v8

    add-int/lit8 v8, v1, 0x1e

    add-int/lit8 v9, v1, 0x2

    aget-boolean v9, v6, v9

    aput-boolean v9, v7, v8

    :cond_2cc
    const/4 v8, 0x5

    if-le v1, v8, :cond_2f5

    add-int/lit8 v8, v1, -0x1

    add-int/lit8 v9, v1, 0x2

    aget-boolean v9, v2, v9

    aput-boolean v9, v7, v8

    add-int/lit8 v8, v1, 0xa

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v9, v1, 0x2

    aget-boolean v9, v3, v9

    aput-boolean v9, v7, v8

    add-int/lit8 v8, v1, 0x14

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v9, v1, 0x2

    aget-boolean v9, v4, v9

    aput-boolean v9, v7, v8

    add-int/lit8 v8, v1, 0x1e

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v9, v1, 0x2

    aget-boolean v9, v6, v9

    aput-boolean v9, v7, v8

    :cond_2f5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a7

    :cond_2f8
    const/16 v1, 0x28

    new-array v1, v1, [Z

    const/4 v2, 0x0

    :goto_2fd
    const/16 v3, 0x28

    if-ge v2, v3, :cond_311

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/zxing/a/b/a;->f:I

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v2

    rem-int/lit8 v3, v3, 0x28

    aget-boolean v3, v7, v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2fd

    :cond_311
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/zxing/a/b/a;->b:Z

    invoke-static {v1, v2}, Lcom/google/zxing/a/b/a;->a([ZZ)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/zxing/a/b/a;->b:Z

    if-eqz v2, :cond_33e

    const/4 v2, 0x2

    const/4 v3, 0x6

    :goto_320
    const/4 v4, 0x0

    :goto_321
    if-ge v4, v2, :cond_342

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/zxing/a/b/a;->c:I

    shl-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/google/zxing/a/b/a;->c:I

    aget-boolean v6, v1, v4

    if-eqz v6, :cond_33b

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/zxing/a/b/a;->c:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/google/zxing/a/b/a;->c:I

    :cond_33b
    add-int/lit8 v4, v4, 0x1

    goto :goto_321

    :cond_33e
    const/4 v2, 0x5

    const/16 v3, 0xb

    goto :goto_320

    :cond_342
    move v4, v2

    :goto_343
    add-int v6, v2, v3

    if-ge v4, v6, :cond_362

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/zxing/a/b/a;->d:I

    shl-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/google/zxing/a/b/a;->d:I

    aget-boolean v6, v1, v4

    if-eqz v6, :cond_35f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/zxing/a/b/a;->d:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/google/zxing/a/b/a;->d:I

    :cond_35f
    add-int/lit8 v4, v4, 0x1

    goto :goto_343

    :cond_362
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/zxing/a/b/a;->c:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/zxing/a/b/a;->c:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/zxing/a/b/a;->d:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/zxing/a/b/a;->d:I

    .line 67
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/zxing/a/b/a;->c:I

    mul-int/lit8 v2, v1, 0x2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/zxing/a/b/a;->c:I

    const/4 v3, 0x4

    if-le v1, v3, :cond_466

    const/4 v1, 0x1

    :goto_384
    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/zxing/a/b/a;->c:I

    add-int/lit8 v2, v2, -0x4

    div-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x4000

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/zxing/a/b/a;->e:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float v2, v1, v2

    const/4 v1, 0x0

    aget-object v1, v5, v1

    iget v1, v1, Lcom/google/zxing/a/b/b;->a:I

    const/4 v3, 0x2

    aget-object v3, v5, v3

    iget v3, v3, Lcom/google/zxing/a/b/b;->a:I

    sub-int v3, v1, v3

    if-lez v3, :cond_469

    const/4 v1, 0x1

    :goto_3a8
    add-int/2addr v3, v1

    const/4 v1, 0x0

    aget-object v1, v5, v1

    iget v1, v1, Lcom/google/zxing/a/b/b;->b:I

    const/4 v4, 0x2

    aget-object v4, v5, v4

    iget v4, v4, Lcom/google/zxing/a/b/b;->b:I

    sub-int v4, v1, v4

    if-lez v4, :cond_46c

    const/4 v1, 0x1

    :goto_3b8
    add-int/2addr v1, v4

    const/4 v4, 0x2

    aget-object v4, v5, v4

    iget v4, v4, Lcom/google/zxing/a/b/b;->a:I

    int-to-float v4, v4

    int-to-float v6, v3

    mul-float/2addr v6, v2

    sub-float/2addr v4, v6

    const/high16 v6, 0x3f00

    add-float/2addr v4, v6

    float-to-int v4, v4

    const/4 v6, 0x2

    aget-object v6, v5, v6

    iget v6, v6, Lcom/google/zxing/a/b/b;->b:I

    int-to-float v6, v6

    int-to-float v7, v1

    mul-float/2addr v7, v2

    sub-float/2addr v6, v7

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    const/4 v7, 0x0

    aget-object v7, v5, v7

    iget v7, v7, Lcom/google/zxing/a/b/b;->a:I

    int-to-float v7, v7

    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v3, v7

    const/high16 v7, 0x3f00

    add-float/2addr v3, v7

    float-to-int v3, v3

    const/4 v7, 0x0

    aget-object v7, v5, v7

    iget v7, v7, Lcom/google/zxing/a/b/b;->b:I

    int-to-float v7, v7

    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v1, v7

    const/high16 v7, 0x3f00

    add-float/2addr v1, v7

    float-to-int v7, v1

    const/4 v1, 0x1

    aget-object v1, v5, v1

    iget v1, v1, Lcom/google/zxing/a/b/b;->a:I

    const/4 v8, 0x3

    aget-object v8, v5, v8

    iget v8, v8, Lcom/google/zxing/a/b/b;->a:I

    sub-int v8, v1, v8

    if-lez v8, :cond_46f

    const/4 v1, 0x1

    :goto_3fc
    add-int/2addr v8, v1

    const/4 v1, 0x1

    aget-object v1, v5, v1

    iget v1, v1, Lcom/google/zxing/a/b/b;->b:I

    const/4 v9, 0x3

    aget-object v9, v5, v9

    iget v9, v9, Lcom/google/zxing/a/b/b;->b:I

    sub-int v9, v1, v9

    if-lez v9, :cond_471

    const/4 v1, 0x1

    :goto_40c
    add-int/2addr v1, v9

    const/4 v9, 0x3

    aget-object v9, v5, v9

    iget v9, v9, Lcom/google/zxing/a/b/b;->a:I

    int-to-float v9, v9

    int-to-float v10, v8

    mul-float/2addr v10, v2

    sub-float/2addr v9, v10

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v9, v9

    const/4 v10, 0x3

    aget-object v10, v5, v10

    iget v10, v10, Lcom/google/zxing/a/b/b;->b:I

    int-to-float v10, v10

    int-to-float v11, v1

    mul-float/2addr v11, v2

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v10, v10

    const/4 v11, 0x1

    aget-object v11, v5, v11

    iget v11, v11, Lcom/google/zxing/a/b/b;->a:I

    int-to-float v11, v11

    int-to-float v8, v8

    mul-float/2addr v8, v2

    add-float/2addr v8, v11

    const/high16 v11, 0x3f00

    add-float/2addr v8, v11

    float-to-int v8, v8

    const/4 v11, 0x1

    aget-object v5, v5, v11

    iget v5, v5, Lcom/google/zxing/a/b/b;->b:I

    int-to-float v5, v5

    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v1, v5

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lcom/google/zxing/a/b/a;->a(II)Z

    move-result v2

    if-eqz v2, :cond_461

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v1}, Lcom/google/zxing/a/b/a;->a(II)Z

    move-result v2

    if-eqz v2, :cond_461

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/google/zxing/a/b/a;->a(II)Z

    move-result v2

    if-eqz v2, :cond_461

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/google/zxing/a/b/a;->a(II)Z

    move-result v2

    if-nez v2, :cond_473

    :cond_461
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :cond_466
    const/4 v1, 0x0

    goto/16 :goto_384

    :cond_469
    const/4 v1, -0x1

    goto/16 :goto_3a8

    :cond_46c
    const/4 v1, -0x1

    goto/16 :goto_3b8

    :cond_46f
    const/4 v1, -0x1

    goto :goto_3fc

    :cond_471
    const/4 v1, -0x1

    goto :goto_40c

    :cond_473
    const/4 v2, 0x4

    new-array v0, v2, [Lcom/google/zxing/j;

    move-object/from16 v21, v0

    const/4 v2, 0x0

    new-instance v5, Lcom/google/zxing/j;

    int-to-float v3, v3

    int-to-float v7, v7

    invoke-direct {v5, v3, v7}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v5, v21, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/google/zxing/j;

    int-to-float v5, v8

    int-to-float v1, v1

    invoke-direct {v3, v5, v1}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v3, v21, v2

    const/4 v1, 0x2

    new-instance v2, Lcom/google/zxing/j;

    int-to-float v3, v4

    int-to-float v4, v6

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v2, v21, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/google/zxing/j;

    int-to-float v3, v9

    int-to-float v4, v10

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v2, v21, v1

    .line 70
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/a/b/a;->a:Lcom/google/zxing/common/b;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/zxing/a/b/a;->f:I

    rem-int/lit8 v1, v1, 0x4

    aget-object v4, v21, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/zxing/a/b/a;->f:I

    add-int/lit8 v1, v1, 0x3

    rem-int/lit8 v1, v1, 0x4

    aget-object v20, v21, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/zxing/a/b/a;->f:I

    add-int/lit8 v1, v1, 0x2

    rem-int/lit8 v1, v1, 0x4

    aget-object v18, v21, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/zxing/a/b/a;->f:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x4

    aget-object v16, v21, v1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/zxing/a/b/a;->b:Z

    if-eqz v1, :cond_52d

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/zxing/a/b/a;->c:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v3, v1, 0xb

    :goto_4d8
    invoke-static {}, Lcom/google/zxing/common/l;->a()Lcom/google/zxing/common/l;

    move-result-object v1

    const/high16 v5, 0x3f00

    const/high16 v6, 0x3f00

    int-to-float v7, v3

    const/high16 v8, 0x3f00

    sub-float/2addr v7, v8

    const/high16 v8, 0x3f00

    int-to-float v9, v3

    const/high16 v10, 0x3f00

    sub-float/2addr v9, v10

    int-to-float v10, v3

    const/high16 v11, 0x3f00

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f00

    int-to-float v12, v3

    const/high16 v13, 0x3f00

    sub-float/2addr v12, v13

    invoke-virtual {v4}, Lcom/google/zxing/j;->a()F

    move-result v13

    invoke-virtual {v4}, Lcom/google/zxing/j;->b()F

    move-result v14

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/j;->a()F

    move-result v15

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/j;->b()F

    move-result v16

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/j;->a()F

    move-result v17

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/j;->b()F

    move-result v18

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/j;->a()F

    move-result v19

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/j;->b()F

    move-result v20

    move v4, v3

    invoke-virtual/range {v1 .. v20}, Lcom/google/zxing/common/l;->a(Lcom/google/zxing/common/b;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/b;

    move-result-object v2

    .line 72
    new-instance v1, Lcom/google/zxing/a/a;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/zxing/a/b/a;->b:Z

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/zxing/a/b/a;->d:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/zxing/a/b/a;->c:I

    move-object/from16 v3, v21

    invoke-direct/range {v1 .. v6}, Lcom/google/zxing/a/a;-><init>(Lcom/google/zxing/common/b;[Lcom/google/zxing/j;ZII)V

    return-object v1

    .line 70
    :cond_52d
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/zxing/a/b/a;->c:I

    const/4 v3, 0x4

    if-gt v1, v3, :cond_53d

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/zxing/a/b/a;->c:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v3, v1, 0xf

    goto :goto_4d8

    :cond_53d
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/zxing/a/b/a;->c:I

    mul-int/lit8 v1, v1, 0x4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/zxing/a/b/a;->c:I

    add-int/lit8 v3, v3, -0x4

    div-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    add-int/lit8 v3, v1, 0xf

    goto :goto_4d8
.end method
