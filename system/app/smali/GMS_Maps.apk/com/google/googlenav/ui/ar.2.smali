.class public Lcom/google/googlenav/ui/aR;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Lcom/google/googlenav/ui/aH;

.field private b:Lat/Y;

.field private c:[[[J


# direct methods
.method public constructor <init>([Lcom/google/googlenav/ui/aH;)V
    .registers 4
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-eqz p1, :cond_8

    array-length v0, p1

    if-nez v0, :cond_e

    .line 37
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 39
    :cond_e
    const/4 v0, 0x0

    :goto_f
    array-length v1, p1

    if-ge v0, v1, :cond_1f

    .line 40
    aget-object v1, p1, v0

    if-nez v1, :cond_1c

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 39
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 44
    :cond_1f
    iput-object p1, p0, Lcom/google/googlenav/ui/aR;->a:[Lcom/google/googlenav/ui/aH;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/aR;->b:Lat/Y;

    .line 46
    return-void
.end method

.method private static a(IIII)I
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 164
    if-gez p2, :cond_a

    const/16 v1, 0x8

    :goto_5
    if-gez p3, :cond_10

    const/4 v0, 0x2

    :cond_8
    :goto_8
    or-int/2addr v0, v1

    return v0

    :cond_a
    if-le p2, p0, :cond_e

    const/4 v1, 0x4

    goto :goto_5

    :cond_e
    move v1, v0

    goto :goto_5

    :cond_10
    if-le p3, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_8
.end method

.method public static a(J)I
    .registers 4
    .parameter

    .prologue
    .line 511
    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private static a(Lcom/google/googlenav/ui/aG;)I
    .registers 2
    .parameter

    .prologue
    .line 470
    invoke-interface {p0}, Lcom/google/googlenav/ui/aG;->o()[[Lat/B;

    move-result-object v0

    if-nez v0, :cond_8

    .line 471
    const/4 v0, 0x1

    .line 473
    :goto_7
    return v0

    :cond_8
    invoke-interface {p0}, Lcom/google/googlenav/ui/aG;->o()[[Lat/B;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static a(II)J
    .registers 7
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x20

    .line 503
    int-to-long v0, p0

    shl-long/2addr v0, v4

    .line 504
    int-to-long v2, p1

    shl-long/2addr v2, v4

    ushr-long/2addr v2, v4

    .line 505
    or-long/2addr v0, v2

    return-wide v0
.end method

.method static a(IIII[I)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0xfa0

    const/16 v2, -0xfa0

    .line 267
    sub-int v4, p0, p2

    .line 268
    sub-int v5, p1, p3

    .line 270
    if-gt p0, v1, :cond_c

    if-ge p0, v2, :cond_3a

    .line 271
    :cond_c
    if-lez p0, :cond_33

    move v0, v1

    .line 276
    :goto_f
    sub-int v3, v0, p2

    int-to-long v6, v3

    int-to-long v8, v5

    mul-long/2addr v6, v8

    int-to-long v8, v4

    div-long/2addr v6, v8

    long-to-int v3, v6

    add-int p1, p3, v3

    move v3, v0

    move v0, p1

    .line 280
    :goto_1b
    if-gt v0, v1, :cond_1f

    if-ge v0, v2, :cond_37

    .line 281
    :cond_1f
    add-int v0, v5, p3

    .line 282
    if-lez v0, :cond_35

    .line 287
    :goto_23
    sub-int v0, v1, p3

    int-to-long v2, v0

    int-to-long v6, v4

    mul-long/2addr v2, v6

    int-to-long v4, v5

    div-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v0, p2

    .line 289
    :goto_2c
    const/4 v2, 0x0

    aput v0, p4, v2

    .line 290
    const/4 v0, 0x1

    aput v1, p4, v0

    .line 291
    return-void

    :cond_33
    move v0, v2

    .line 274
    goto :goto_f

    :cond_35
    move v1, v2

    .line 285
    goto :goto_23

    :cond_37
    move v1, v0

    move v0, v3

    goto :goto_2c

    :cond_3a
    move v0, p1

    move v3, p0

    goto :goto_1b
.end method

.method private a(Lat/Y;)V
    .registers 14
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/googlenav/ui/aR;->b:Lat/Y;

    if-ne p1, v0, :cond_5

    .line 155
    :cond_4
    return-void

    .line 111
    :cond_5
    iget-object v0, p0, Lcom/google/googlenav/ui/aR;->a:[Lcom/google/googlenav/ui/aH;

    array-length v0, v0

    new-array v0, v0, [[[J

    iput-object v0, p0, Lcom/google/googlenav/ui/aR;->c:[[[J

    .line 113
    const/4 v0, 0x0

    move v1, v0

    :goto_e
    iget-object v0, p0, Lcom/google/googlenav/ui/aR;->a:[Lcom/google/googlenav/ui/aH;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 115
    iget-object v0, p0, Lcom/google/googlenav/ui/aR;->a:[Lcom/google/googlenav/ui/aH;

    aget-object v0, v0, v1

    instance-of v0, v0, Lcom/google/googlenav/ui/aG;

    if-nez v0, :cond_1f

    .line 113
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 119
    :cond_1f
    iget-object v0, p0, Lcom/google/googlenav/ui/aR;->a:[Lcom/google/googlenav/ui/aH;

    aget-object v0, v0, v1

    check-cast v0, Lcom/google/googlenav/ui/aG;

    .line 120
    invoke-static {v0}, Lcom/google/googlenav/ui/aR;->a(Lcom/google/googlenav/ui/aG;)I

    move-result v4

    .line 121
    iget-object v2, p0, Lcom/google/googlenav/ui/aR;->c:[[[J

    new-array v3, v4, [[J

    aput-object v3, v2, v1

    .line 122
    invoke-static {v0}, Lcom/google/googlenav/ui/aR;->b(Lcom/google/googlenav/ui/aG;)[[Lat/B;

    move-result-object v5

    .line 124
    const/4 v0, 0x0

    move v3, v0

    :goto_35
    if-ge v3, v4, :cond_1b

    .line 125
    aget-object v6, v5, v3

    .line 128
    array-length v0, v6

    new-array v7, v0, [J

    .line 129
    const/4 v2, 0x1

    .line 130
    iput-object p1, p0, Lcom/google/googlenav/ui/aR;->b:Lat/Y;

    .line 133
    const/4 v0, 0x0

    const/4 v8, 0x0

    aget-object v8, v6, v8

    iget-object v9, p0, Lcom/google/googlenav/ui/aR;->b:Lat/Y;

    invoke-virtual {v8, v9}, Lat/B;->a(Lat/Y;)I

    move-result v8

    const/4 v9, 0x0

    aget-object v9, v6, v9

    iget-object v10, p0, Lcom/google/googlenav/ui/aR;->b:Lat/Y;

    invoke-virtual {v9, v10}, Lat/B;->b(Lat/Y;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/google/googlenav/ui/aR;->a(II)J

    move-result-wide v8

    aput-wide v8, v7, v0

    .line 139
    const/4 v0, 0x1

    :goto_59
    array-length v8, v6

    if-ge v0, v8, :cond_9e

    .line 140
    aget-object v8, v6, v0

    iget-object v9, p0, Lcom/google/googlenav/ui/aR;->b:Lat/Y;

    invoke-virtual {v8, v9}, Lat/B;->a(Lat/Y;)I

    move-result v8

    .line 141
    aget-object v9, v6, v0

    iget-object v10, p0, Lcom/google/googlenav/ui/aR;->b:Lat/Y;

    invoke-virtual {v9, v10}, Lat/B;->b(Lat/Y;)I

    move-result v9

    .line 142
    add-int/lit8 v10, v2, -0x1

    aget-wide v10, v7, v10

    invoke-static {v10, v11}, Lcom/google/googlenav/ui/aR;->a(J)I

    move-result v10

    sub-int v10, v8, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/4 v11, 0x2

    if-gt v10, v11, :cond_93

    add-int/lit8 v10, v2, -0x1

    aget-wide v10, v7, v10

    invoke-static {v10, v11}, Lcom/google/googlenav/ui/aR;->b(J)I

    move-result v10

    sub-int v10, v9, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/4 v11, 0x2

    if-gt v10, v11, :cond_93

    array-length v10, v6

    add-int/lit8 v10, v10, -0x1

    if-ne v0, v10, :cond_9b

    .line 145
    :cond_93
    invoke-static {v8, v9}, Lcom/google/googlenav/ui/aR;->a(II)J

    move-result-wide v8

    aput-wide v8, v7, v2

    .line 146
    add-int/lit8 v2, v2, 0x1

    .line 139
    :cond_9b
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    .line 151
    :cond_9e
    iget-object v0, p0, Lcom/google/googlenav/ui/aR;->c:[[[J

    aget-object v0, v0, v1

    new-array v6, v2, [J

    aput-object v6, v0, v3

    .line 152
    const/4 v0, 0x0

    iget-object v6, p0, Lcom/google/googlenav/ui/aR;->c:[[[J

    aget-object v6, v6, v1

    aget-object v6, v6, v3

    const/4 v8, 0x0

    invoke-static {v7, v0, v6, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_35
.end method

.method private a(Lcom/google/googlenav/ui/aS;IIIILcom/google/googlenav/ui/aF;Lat/Y;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 222
    invoke-interface {p6}, Lcom/google/googlenav/ui/aF;->k()I

    move-result v0

    if-ne v0, v1, :cond_e

    invoke-interface {p6}, Lcom/google/googlenav/ui/aF;->m()I

    move-result v0

    if-ne v0, v1, :cond_e

    .line 246
    :cond_d
    :goto_d
    return-void

    .line 228
    :cond_e
    invoke-interface {p6}, Lcom/google/googlenav/ui/aF;->c()Lat/B;

    move-result-object v0

    .line 230
    invoke-interface {p6}, Lcom/google/googlenav/ui/aF;->b()I

    move-result v1

    invoke-virtual {p7, v1}, Lat/Y;->a(I)I

    move-result v3

    .line 231
    invoke-interface {p6}, Lcom/google/googlenav/ui/aF;->a()I

    move-result v1

    invoke-virtual {p7, v1}, Lat/Y;->a(I)I

    move-result v4

    .line 233
    invoke-virtual {v0, p7}, Lat/B;->a(Lat/Y;)I

    move-result v1

    sub-int/2addr v1, p2

    .line 234
    invoke-virtual {v0, p7}, Lat/B;->b(Lat/Y;)I

    move-result v0

    sub-int v2, v0, p3

    .line 236
    div-int/lit8 v0, v3, 0x2

    sub-int v0, v1, v0

    div-int/lit8 v5, v4, 0x2

    sub-int v5, v2, v5

    invoke-static {p4, p5, v0, v5}, Lcom/google/googlenav/ui/aR;->a(IIII)I

    move-result v0

    .line 238
    div-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v1

    div-int/lit8 v6, v4, 0x2

    add-int/2addr v6, v2

    invoke-static {p4, p5, v5, v6}, Lcom/google/googlenav/ui/aR;->a(IIII)I

    move-result v5

    .line 241
    and-int/2addr v0, v5

    if-nez v0, :cond_d

    .line 242
    invoke-interface {p6, p7}, Lcom/google/googlenav/ui/aF;->a(Lat/Y;)I

    move-result v5

    invoke-interface {p6}, Lcom/google/googlenav/ui/aF;->k()I

    move-result v6

    invoke-interface {p6}, Lcom/google/googlenav/ui/aF;->m()I

    move-result v7

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/google/googlenav/ui/aS;->a(IIIIIII)V

    goto :goto_d
.end method

.method private a(Lcom/google/googlenav/ui/aS;IIII[JLcom/google/googlenav/ui/aG;Lat/Y;)V
    .registers 23
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 338
    const/4 v2, 0x2

    new-array v7, v2, [I

    .line 339
    const/4 v2, 0x2

    new-array v8, v2, [I

    .line 340
    const/4 v2, 0x2

    new-array v9, v2, [I

    .line 343
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-wide v3, p6, v3

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aR;->a(J)I

    move-result v3

    sub-int v3, v3, p2

    aput v3, v8, v2

    .line 344
    const/4 v2, 0x1

    const/4 v3, 0x0

    aget-wide v3, p6, v3

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aR;->b(J)I

    move-result v3

    sub-int v3, v3, p3

    aput v3, v8, v2

    .line 345
    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v3, 0x1

    aget v3, v8, v3

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlenav/ui/aR;->a(IIII)I

    move-result v5

    .line 348
    const/4 v4, 0x1

    .line 349
    const/4 v3, 0x0

    .line 350
    const/4 v2, 0x1

    :goto_32
    move-object/from16 v0, p6

    array-length v6, v0

    if-ge v2, v6, :cond_b4

    .line 351
    const/4 v6, 0x0

    aget-wide v10, p6, v2

    invoke-static {v10, v11}, Lcom/google/googlenav/ui/aR;->a(J)I

    move-result v10

    sub-int v10, v10, p2

    aput v10, v7, v6

    const/4 v6, 0x1

    aget-wide v11, p6, v2

    invoke-static {v11, v12}, Lcom/google/googlenav/ui/aR;->b(J)I

    move-result v11

    sub-int v11, v11, p3

    aput v11, v7, v6

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v1, v10, v11}, Lcom/google/googlenav/ui/aR;->a(IIII)I

    move-result v6

    .line 359
    and-int/2addr v5, v6

    if-nez v5, :cond_b2

    .line 360
    if-nez v3, :cond_6a

    .line 361
    invoke-interface/range {p7 .. p7}, Lcom/google/googlenav/ui/aG;->k()I

    move-result v3

    invoke-interface/range {p7 .. p8}, Lcom/google/googlenav/ui/aG;->a(Lat/Y;)I

    move-result v5

    invoke-interface/range {p7 .. p7}, Lcom/google/googlenav/ui/aG;->d()I

    move-result v10

    invoke-interface {p1, v3, v5, v10}, Lcom/google/googlenav/ui/aS;->a(III)V

    .line 363
    const/4 v3, 0x1

    .line 366
    :cond_6a
    invoke-static {v7}, Lcom/google/googlenav/ui/aR;->a([I)Z

    move-result v5

    .line 367
    if-nez v5, :cond_7f

    .line 368
    const/4 v10, 0x0

    aget v10, v7, v10

    const/4 v11, 0x1

    aget v11, v7, v11

    const/4 v12, 0x0

    aget v12, v8, v12

    const/4 v13, 0x1

    aget v13, v8, v13

    invoke-static {v10, v11, v12, v13, v9}, Lcom/google/googlenav/ui/aR;->a(IIII[I)V

    .line 371
    :cond_7f
    invoke-static {v8}, Lcom/google/googlenav/ui/aR;->a([I)Z

    move-result v10

    if-nez v10, :cond_94

    .line 372
    const/4 v10, 0x0

    aget v10, v8, v10

    const/4 v11, 0x1

    aget v11, v8, v11

    const/4 v12, 0x0

    aget v12, v7, v12

    const/4 v13, 0x1

    aget v13, v7, v13

    invoke-static {v10, v11, v12, v13, v8}, Lcom/google/googlenav/ui/aR;->a(IIII[I)V

    .line 374
    :cond_94
    if-eqz v5, :cond_ac

    .line 376
    invoke-interface {p1, v7, v8, v4}, Lcom/google/googlenav/ui/aS;->a([I[IZ)V

    .line 383
    :goto_99
    if-nez v5, :cond_b0

    const/4 v4, 0x1

    .line 387
    :goto_9c
    const/4 v5, 0x0

    const/4 v10, 0x0

    aget v10, v7, v10

    aput v10, v8, v5

    .line 388
    const/4 v5, 0x1

    const/4 v10, 0x1

    aget v10, v7, v10

    aput v10, v8, v5

    .line 350
    add-int/lit8 v2, v2, 0x1

    move v5, v6

    goto :goto_32

    .line 379
    :cond_ac
    invoke-interface {p1, v9, v8, v4}, Lcom/google/googlenav/ui/aS;->a([I[IZ)V

    goto :goto_99

    .line 383
    :cond_b0
    const/4 v4, 0x0

    goto :goto_9c

    .line 385
    :cond_b2
    const/4 v4, 0x1

    goto :goto_9c

    .line 391
    :cond_b4
    if-eqz v3, :cond_b9

    .line 392
    invoke-interface {p1}, Lcom/google/googlenav/ui/aS;->a()V

    .line 394
    :cond_b9
    return-void
.end method

.method private a(Lcom/google/googlenav/ui/aS;IIII[[JLcom/google/googlenav/ui/aG;Lat/Y;)V
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 407
    const/4 v4, 0x0

    .line 409
    invoke-static/range {p7 .. p7}, Lcom/google/googlenav/ui/aR;->a(Lcom/google/googlenav/ui/aG;)I

    move-result v5

    .line 410
    new-array v6, v5, [[J

    .line 411
    const/4 v0, 0x0

    const/4 v1, 0x0

    aget-object v1, p6, v1

    invoke-static {p2, p3, v1}, Lcom/google/googlenav/ui/aR;->a(II[J)[J

    move-result-object v1

    aput-object v1, v6, v0

    .line 415
    const/4 v0, 0x0

    aget-object v0, v6, v0

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aR;->a(J)I

    move-result v0

    const/4 v1, 0x0

    aget-object v1, v6, v1

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aR;->b(J)I

    move-result v1

    invoke-static {p4, p5, v0, v1}, Lcom/google/googlenav/ui/aR;->a(IIII)I

    move-result v1

    .line 420
    const/4 v0, 0x1

    move v2, v1

    :goto_2b
    const/4 v3, 0x0

    aget-object v3, v6, v3

    array-length v3, v3

    if-ge v0, v3, :cond_75

    .line 423
    const/4 v3, 0x0

    aget-object v3, v6, v3

    aget-wide v7, v3, v0

    invoke-static {v7, v8}, Lcom/google/googlenav/ui/aR;->a(J)I

    move-result v3

    const/4 v7, 0x0

    aget-object v7, v6, v7

    aget-wide v7, v7, v0

    invoke-static {v7, v8}, Lcom/google/googlenav/ui/aR;->b(J)I

    move-result v7

    invoke-static {p4, p5, v3, v7}, Lcom/google/googlenav/ui/aR;->a(IIII)I

    move-result v3

    .line 426
    and-int/2addr v2, v3

    if-nez v2, :cond_60

    .line 428
    const/4 v0, 0x1

    .line 443
    :goto_4b
    const/16 v2, 0xf

    if-ne v1, v2, :cond_50

    .line 444
    const/4 v0, 0x1

    .line 447
    :cond_50
    if-eqz v0, :cond_74

    .line 450
    const/4 v0, 0x1

    :goto_53
    if-ge v0, v5, :cond_65

    .line 451
    aget-object v1, p6, v0

    invoke-static {p2, p3, v1}, Lcom/google/googlenav/ui/aR;->a(II[J)[J

    move-result-object v1

    aput-object v1, v6, v0

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 433
    :cond_60
    or-int/2addr v1, v3

    .line 420
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_2b

    .line 454
    :cond_65
    invoke-interface/range {p7 .. p7}, Lcom/google/googlenav/ui/aG;->k()I

    move-result v0

    invoke-interface/range {p7 .. p8}, Lcom/google/googlenav/ui/aG;->a(Lat/Y;)I

    move-result v1

    invoke-interface/range {p7 .. p7}, Lcom/google/googlenav/ui/aG;->m()I

    move-result v2

    invoke-interface {p1, v6, v0, v1, v2}, Lcom/google/googlenav/ui/aS;->a([[JIII)V

    .line 457
    :cond_74
    return-void

    :cond_75
    move v0, v4

    goto :goto_4b
.end method

.method protected static a([I)Z
    .registers 6
    .parameter

    .prologue
    const/16 v4, 0xfa0

    const/16 v3, -0xfa0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 301
    aget v2, p0, v1

    if-gt v2, v4, :cond_17

    aget v2, p0, v1

    if-lt v2, v3, :cond_17

    aget v2, p0, v0

    if-gt v2, v4, :cond_17

    aget v2, p0, v0

    if-lt v2, v3, :cond_17

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16
.end method

.method private static a(II[J)[J
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 461
    array-length v0, p2

    new-array v1, v0, [J

    .line 462
    const/4 v0, 0x0

    :goto_4
    array-length v2, p2

    if-ge v0, v2, :cond_1e

    .line 463
    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aR;->a(J)I

    move-result v2

    sub-int/2addr v2, p0

    aget-wide v3, p2, v0

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aR;->b(J)I

    move-result v3

    sub-int/2addr v3, p1

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aR;->a(II)J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 462
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 465
    :cond_1e
    return-object v1
.end method

.method public static b(J)I
    .registers 4
    .parameter

    .prologue
    .line 517
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method private static b(Lcom/google/googlenav/ui/aG;)[[Lat/B;
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 485
    invoke-interface {p0}, Lcom/google/googlenav/ui/aG;->o()[[Lat/B;

    move-result-object v1

    if-nez v1, :cond_11

    .line 486
    new-array v0, v0, [[Lat/B;

    invoke-interface {p0}, Lcom/google/googlenav/ui/aG;->j()[Lat/B;

    move-result-object v1

    aput-object v1, v0, v3

    .line 493
    :goto_10
    return-object v0

    .line 488
    :cond_11
    invoke-static {p0}, Lcom/google/googlenav/ui/aR;->a(Lcom/google/googlenav/ui/aG;)I

    move-result v1

    new-array v1, v1, [[Lat/B;

    .line 489
    invoke-interface {p0}, Lcom/google/googlenav/ui/aG;->j()[Lat/B;

    move-result-object v2

    aput-object v2, v1, v3

    .line 490
    :goto_1d
    array-length v2, v1

    if-ge v0, v2, :cond_2d

    .line 491
    invoke-interface {p0}, Lcom/google/googlenav/ui/aG;->o()[[Lat/B;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_2d
    move-object v0, v1

    .line 493
    goto :goto_10
.end method


# virtual methods
.method public a()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 54
    move v0, v1

    move v2, v1

    .line 55
    :goto_3
    iget-object v3, p0, Lcom/google/googlenav/ui/aR;->a:[Lcom/google/googlenav/ui/aH;

    array-length v3, v3

    if-ge v0, v3, :cond_21

    .line 56
    iget-object v3, p0, Lcom/google/googlenav/ui/aR;->a:[Lcom/google/googlenav/ui/aH;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lcom/google/googlenav/ui/aH;->h()Z

    move-result v3

    if-nez v3, :cond_13

    .line 63
    :goto_12
    return v1

    .line 60
    :cond_13
    mul-int/lit8 v2, v2, 0x1d

    iget-object v3, p0, Lcom/google/googlenav/ui/aR;->a:[Lcom/google/googlenav/ui/aH;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lcom/google/googlenav/ui/aH;->i()I

    move-result v3

    add-int/2addr v2, v3

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_21
    move v1, v2

    .line 63
    goto :goto_12
.end method

.method public a(Lcom/google/googlenav/ui/aS;IIIILat/Y;)V
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/google/googlenav/ui/aR;->a()I

    move-result v1

    if-nez v1, :cond_7

    .line 217
    :cond_6
    return-void

    .line 195
    :cond_7
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/aR;->a(Lat/Y;)V

    .line 198
    const/4 v1, 0x0

    move v10, v1

    :goto_e
    iget-object v1, p0, Lcom/google/googlenav/ui/aR;->a:[Lcom/google/googlenav/ui/aH;

    array-length v1, v1

    if-ge v10, v1, :cond_6

    .line 199
    iget-object v1, p0, Lcom/google/googlenav/ui/aR;->a:[Lcom/google/googlenav/ui/aH;

    aget-object v1, v1, v10

    instance-of v1, v1, Lcom/google/googlenav/ui/aF;

    if-eqz v1, :cond_32

    .line 200
    iget-object v1, p0, Lcom/google/googlenav/ui/aR;->a:[Lcom/google/googlenav/ui/aH;

    aget-object v7, v1, v10

    check-cast v7, Lcom/google/googlenav/ui/aF;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/google/googlenav/ui/aR;->a(Lcom/google/googlenav/ui/aS;IIIILcom/google/googlenav/ui/aF;Lat/Y;)V

    .line 198
    :cond_2e
    :goto_2e
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_e

    .line 203
    :cond_32
    iget-object v1, p0, Lcom/google/googlenav/ui/aR;->a:[Lcom/google/googlenav/ui/aH;

    aget-object v8, v1, v10

    check-cast v8, Lcom/google/googlenav/ui/aG;

    .line 204
    iget-object v1, p0, Lcom/google/googlenav/ui/aR;->a:[Lcom/google/googlenav/ui/aH;

    aget-object v1, v1, v10

    invoke-interface {v1}, Lcom/google/googlenav/ui/aH;->l()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 206
    iget-object v1, p0, Lcom/google/googlenav/ui/aR;->c:[[[J

    aget-object v7, v1, v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/google/googlenav/ui/aR;->a(Lcom/google/googlenav/ui/aS;IIII[[JLcom/google/googlenav/ui/aG;Lat/Y;)V

    goto :goto_2e

    .line 210
    :cond_54
    const/4 v1, 0x0

    move v11, v1

    :goto_56
    iget-object v1, p0, Lcom/google/googlenav/ui/aR;->c:[[[J

    aget-object v1, v1, v10

    array-length v1, v1

    if-ge v11, v1, :cond_2e

    .line 211
    iget-object v1, p0, Lcom/google/googlenav/ui/aR;->c:[[[J

    aget-object v1, v1, v10

    aget-object v7, v1, v11

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/google/googlenav/ui/aR;->a(Lcom/google/googlenav/ui/aS;IIII[JLcom/google/googlenav/ui/aG;Lat/Y;)V

    .line 210
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_56
.end method

.method public a(Lcom/google/googlenav/ui/aH;Lat/Y;)[J
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/aR;->a(Lat/Y;)V

    move v0, v1

    .line 80
    :goto_5
    iget-object v2, p0, Lcom/google/googlenav/ui/aR;->a:[Lcom/google/googlenav/ui/aH;

    array-length v2, v2

    if-ge v0, v2, :cond_1a

    .line 81
    iget-object v2, p0, Lcom/google/googlenav/ui/aR;->a:[Lcom/google/googlenav/ui/aH;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_17

    .line 82
    iget-object v2, p0, Lcom/google/googlenav/ui/aR;->c:[[[J

    aget-object v0, v2, v0

    aget-object v0, v0, v1

    .line 86
    :goto_16
    return-object v0

    .line 80
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 86
    :cond_1a
    const/4 v0, 0x0

    goto :goto_16
.end method
