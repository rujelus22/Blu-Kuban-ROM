.class public final Ln/U;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;


# instance fields
.field private final b:[I

.field private volatile c:Ln/aa;

.field private volatile d:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Ln/V;

    invoke-direct {v0}, Ln/V;-><init>()V

    sput-object v0, Ln/U;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>([I)V
    .registers 3
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Ln/U;->b:[I

    .line 49
    const/high16 v0, -0x4080

    iput v0, p0, Ln/U;->d:F

    .line 50
    return-void
.end method

.method synthetic constructor <init>([ILn/V;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ln/U;-><init>([I)V

    return-void
.end method

.method private a(FIIILn/Q;Ln/Q;Ln/Q;Ln/Q;[Z)I
    .registers 25
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 429
    move/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {p0, v0, v1}, Ln/U;->a(ILn/Q;)V

    .line 430
    move/from16 v0, p4

    move-object/from16 v1, p6

    invoke-virtual {p0, v0, v1}, Ln/U;->a(ILn/Q;)V

    .line 432
    const/4 v8, -0x1

    .line 434
    add-int v6, p3, p2

    move/from16 v5, p1

    :goto_13
    add-int/lit8 v4, p4, -0x1

    if-gt v6, v4, :cond_31

    .line 436
    move-object/from16 v0, p8

    invoke-virtual {p0, v6, v0}, Ln/U;->a(ILn/Q;)V

    .line 437
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move-object/from16 v2, p8

    move-object/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Ln/Q;->b(Ln/Q;Ln/Q;Ln/Q;Ln/Q;)F

    move-result v4

    .line 439
    cmpl-float v7, v4, v5

    if-lez v7, :cond_6e

    move v8, v6

    .line 435
    :goto_2d
    add-int v6, v6, p2

    move v5, v4

    goto :goto_13

    .line 447
    :cond_31
    const/4 v4, 0x0

    .line 448
    if-ltz v8, :cond_6d

    .line 449
    const/4 v4, 0x1

    .line 450
    const/4 v5, 0x1

    aput-boolean v5, p9, v8

    .line 451
    add-int/lit8 v5, p3, 0x1

    if-le v8, v5, :cond_53

    move-object v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    .line 452
    invoke-direct/range {v4 .. v13}, Ln/U;->a(FIIILn/Q;Ln/Q;Ln/Q;Ln/Q;[Z)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 455
    :cond_53
    add-int/lit8 v5, p4, -0x1

    if-ge v8, v5, :cond_6d

    move-object v5, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    .line 456
    invoke-direct/range {v5 .. v14}, Ln/U;->a(FIIILn/Q;Ln/Q;Ln/Q;Ln/Q;[Z)I

    move-result v5

    add-int/2addr v4, v5

    .line 460
    :cond_6d
    return v4

    :cond_6e
    move v4, v5

    goto :goto_2d
.end method

.method public static a(Ljava/io/DataInput;Ln/am;)Ln/U;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v1

    .line 136
    mul-int/lit8 v0, v1, 0x3

    new-array v2, v0, [I

    .line 137
    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_11

    .line 138
    invoke-static {p0, p1, v2, v0}, Ln/Q;->a(Ljava/io/DataInput;Ln/am;[II)V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 140
    :cond_11
    new-instance v0, Ln/U;

    invoke-direct {v0, v2}, Ln/U;-><init>([I)V

    return-object v0
.end method

.method public static a(Ln/Q;Ln/Q;)Ln/U;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 94
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 95
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ln/Q;->a([II)V

    .line 96
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ln/Q;->a([II)V

    .line 97
    new-instance v1, Ln/U;

    invoke-direct {v1, v0}, Ln/U;-><init>([I)V

    return-object v1
.end method

.method public static a([I)Ln/U;
    .registers 2
    .parameter

    .prologue
    .line 87
    new-instance v0, Ln/U;

    invoke-direct {v0, p0}, Ln/U;-><init>([I)V

    return-object v0
.end method


# virtual methods
.method public a(F)Ln/Q;
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 270
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_b

    .line 271
    invoke-virtual {p0, v0}, Ln/U;->a(I)Ln/Q;

    move-result-object v0

    .line 292
    :goto_a
    return-object v0

    .line 273
    :cond_b
    const/high16 v1, 0x3f80

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_16

    .line 274
    invoke-virtual {p0}, Ln/U;->c()Ln/Q;

    move-result-object v0

    goto :goto_a

    .line 276
    :cond_16
    invoke-virtual {p0}, Ln/U;->d()F

    move-result v1

    mul-float/2addr v1, p1

    .line 277
    invoke-virtual {p0}, Ln/U;->b()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    move v5, v0

    move v0, v1

    move v1, v5

    .line 278
    :goto_24
    if-ge v1, v3, :cond_4d

    .line 279
    invoke-virtual {p0, v1}, Ln/U;->b(I)F

    move-result v2

    .line 280
    cmpl-float v4, v2, v0

    if-ltz v4, :cond_46

    .line 281
    div-float v2, v0, v2

    .line 282
    new-instance v3, Ln/Q;

    invoke-direct {v3}, Ln/Q;-><init>()V

    .line 283
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    .line 284
    invoke-virtual {p0, v1, v3}, Ln/U;->a(ILn/Q;)V

    .line 285
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Ln/U;->a(ILn/Q;)V

    .line 287
    invoke-static {v3, v0, v2, v0}, Ln/Q;->a(Ln/Q;Ln/Q;FLn/Q;)V

    goto :goto_a

    .line 290
    :cond_46
    sub-float v2, v0, v2

    .line 278
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_24

    .line 292
    :cond_4d
    invoke-virtual {p0}, Ln/U;->c()Ln/Q;

    move-result-object v0

    goto :goto_a
.end method

.method public a(I)Ln/Q;
    .registers 7
    .parameter

    .prologue
    .line 189
    mul-int/lit8 v0, p1, 0x3

    .line 190
    new-instance v1, Ln/Q;

    iget-object v2, p0, Ln/U;->b:[I

    aget v2, v2, v0

    iget-object v3, p0, Ln/U;->b:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Ln/U;->b:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v4, v0

    invoke-direct {v1, v2, v3, v0}, Ln/Q;-><init>(III)V

    return-object v1
.end method

.method public a()Ln/aa;
    .registers 4

    .prologue
    .line 56
    iget-object v0, p0, Ln/U;->c:Ln/aa;

    if-nez v0, :cond_11

    .line 57
    invoke-virtual {p0}, Ln/U;->b()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_14

    .line 58
    invoke-static {p0}, Ln/aa;->a(Ln/U;)Ln/aa;

    move-result-object v0

    iput-object v0, p0, Ln/U;->c:Ln/aa;

    .line 63
    :cond_11
    :goto_11
    iget-object v0, p0, Ln/U;->c:Ln/aa;

    return-object v0

    .line 60
    :cond_14
    new-instance v0, Ln/aa;

    new-instance v1, Ln/Q;

    invoke-direct {v1}, Ln/Q;-><init>()V

    new-instance v2, Ln/Q;

    invoke-direct {v2}, Ln/Q;-><init>()V

    invoke-direct {v0, v1, v2}, Ln/aa;-><init>(Ln/Q;Ln/Q;)V

    iput-object v0, p0, Ln/U;->c:Ln/aa;

    goto :goto_11
.end method

.method public a(ILn/Q;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 196
    mul-int/lit8 v0, p1, 0x3

    .line 197
    iget-object v1, p0, Ln/U;->b:[I

    aget v1, v1, v0

    iput v1, p2, Ln/Q;->a:I

    .line 198
    iget-object v1, p0, Ln/U;->b:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iput v1, p2, Ln/Q;->b:I

    .line 199
    iget-object v1, p0, Ln/U;->b:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    iput v0, p2, Ln/Q;->c:I

    .line 200
    return-void
.end method

.method public a(ILn/Q;Ln/Q;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    mul-int/lit8 v0, p1, 0x3

    .line 219
    iget-object v1, p0, Ln/U;->b:[I

    aget v1, v1, v0

    iget v2, p2, Ln/Q;->a:I

    sub-int/2addr v1, v2

    iput v1, p3, Ln/Q;->a:I

    .line 220
    iget-object v1, p0, Ln/U;->b:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iget v2, p2, Ln/Q;->b:I

    sub-int/2addr v1, v2

    iput v1, p3, Ln/Q;->b:I

    .line 221
    iget-object v1, p0, Ln/U;->b:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    iget v1, p2, Ln/Q;->c:I

    sub-int/2addr v0, v1

    iput v0, p3, Ln/Q;->c:I

    .line 222
    return-void
.end method

.method public a(Ln/Q;)V
    .registers 5
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Ln/U;->b:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x3

    .line 204
    iget-object v1, p0, Ln/U;->b:[I

    aget v1, v1, v0

    iput v1, p1, Ln/Q;->a:I

    .line 205
    iget-object v1, p0, Ln/U;->b:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iput v1, p1, Ln/Q;->b:I

    .line 206
    iget-object v1, p0, Ln/U;->b:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    iput v0, p1, Ln/Q;->c:I

    .line 207
    return-void
.end method

.method public a(FI)[Z
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 387
    iget-object v0, p0, Ln/U;->b:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    .line 388
    new-array v9, v0, [Z

    .line 389
    array-length v1, v9

    const/4 v2, 0x2

    if-gt v1, v2, :cond_15

    .line 391
    :goto_d
    array-length v0, v9

    if-ge v3, v0, :cond_38

    .line 392
    aput-boolean v4, v9, v3

    .line 391
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 395
    :cond_15
    aput-boolean v4, v9, v3

    .line 396
    add-int/lit8 v1, v0, -0x1

    aput-boolean v4, v9, v1

    .line 397
    mul-float v1, p1, p1

    add-int/lit8 v4, v0, -0x1

    new-instance v5, Ln/Q;

    invoke-direct {v5}, Ln/Q;-><init>()V

    new-instance v6, Ln/Q;

    invoke-direct {v6}, Ln/Q;-><init>()V

    new-instance v7, Ln/Q;

    invoke-direct {v7}, Ln/Q;-><init>()V

    new-instance v8, Ln/Q;

    invoke-direct {v8}, Ln/Q;-><init>()V

    move-object v0, p0

    move v2, p2

    invoke-direct/range {v0 .. v9}, Ln/U;->a(FIIILn/Q;Ln/Q;Ln/Q;Ln/Q;[Z)I

    .line 402
    :cond_38
    return-object v9
.end method

.method public b(I)F
    .registers 8
    .parameter

    .prologue
    .line 240
    mul-int/lit8 v0, p1, 0x3

    .line 241
    add-int/lit8 v1, v0, 0x3

    .line 242
    iget-object v2, p0, Ln/U;->b:[I

    add-int/lit8 v3, v0, 0x1

    aget v0, v2, v0

    iget-object v2, p0, Ln/U;->b:[I

    add-int/lit8 v4, v1, 0x1

    aget v1, v2, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 243
    iget-object v1, p0, Ln/U;->b:[I

    add-int/lit8 v2, v3, 0x1

    aget v1, v1, v3

    iget-object v3, p0, Ln/U;->b:[I

    add-int/lit8 v5, v4, 0x1

    aget v3, v3, v4

    sub-int/2addr v1, v3

    int-to-float v1, v1

    .line 244
    iget-object v3, p0, Ln/U;->b:[I

    add-int/lit8 v4, v2, 0x1

    aget v2, v3, v2

    iget-object v3, p0, Ln/U;->b:[I

    add-int/lit8 v4, v5, 0x1

    aget v3, v3, v5

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 245
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float v1, v2, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Ln/U;->b:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public b(F)Ln/U;
    .registers 13
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 333
    iget-object v0, p0, Ln/U;->b:[I

    array-length v0, v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_9

    .line 366
    :cond_8
    :goto_8
    return-object p0

    .line 341
    :cond_9
    iget-object v0, p0, Ln/U;->b:[I

    array-length v0, v0

    div-int/lit8 v10, v0, 0x3

    .line 342
    new-array v9, v10, [Z

    .line 343
    aput-boolean v2, v9, v3

    .line 344
    add-int/lit8 v0, v10, -0x1

    aput-boolean v2, v9, v0

    .line 348
    mul-float v1, p1, p1

    add-int/lit8 v4, v10, -0x1

    new-instance v5, Ln/Q;

    invoke-direct {v5}, Ln/Q;-><init>()V

    new-instance v6, Ln/Q;

    invoke-direct {v6}, Ln/Q;-><init>()V

    new-instance v7, Ln/Q;

    invoke-direct {v7}, Ln/Q;-><init>()V

    new-instance v8, Ln/Q;

    invoke-direct {v8}, Ln/Q;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Ln/U;->a(FIIILn/Q;Ln/Q;Ln/Q;Ln/Q;[Z)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 351
    if-eq v0, v10, :cond_8

    .line 356
    mul-int/lit8 v0, v0, 0x3

    new-array v1, v0, [I

    move v0, v3

    .line 358
    :goto_3c
    if-ge v3, v10, :cond_65

    .line 359
    aget-boolean v2, v9, v3

    if-eqz v2, :cond_62

    .line 360
    mul-int/lit8 v2, v3, 0x3

    .line 361
    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Ln/U;->b:[I

    add-int/lit8 v6, v2, 0x1

    aget v2, v5, v2

    aput v2, v1, v0

    .line 362
    add-int/lit8 v2, v4, 0x1

    iget-object v0, p0, Ln/U;->b:[I

    add-int/lit8 v5, v6, 0x1

    aget v0, v0, v6

    aput v0, v1, v4

    .line 363
    add-int/lit8 v0, v2, 0x1

    iget-object v4, p0, Ln/U;->b:[I

    add-int/lit8 v6, v5, 0x1

    aget v4, v4, v5

    aput v4, v1, v2

    .line 358
    :cond_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 366
    :cond_65
    new-instance p0, Ln/U;

    invoke-direct {p0, v1}, Ln/U;-><init>([I)V

    goto :goto_8
.end method

.method public b(Ln/Q;)Ln/U;
    .registers 7
    .parameter

    .prologue
    .line 787
    iget-object v0, p0, Ln/U;->b:[I

    array-length v0, v0

    .line 788
    new-array v1, v0, [I

    .line 789
    const/4 v0, 0x0

    :goto_6
    iget-object v2, p0, Ln/U;->b:[I

    array-length v2, v2

    if-ge v0, v2, :cond_31

    .line 790
    iget-object v2, p0, Ln/U;->b:[I

    aget v2, v2, v0

    iget v3, p1, Ln/Q;->a:I

    add-int/2addr v2, v3

    aput v2, v1, v0

    .line 791
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Ln/U;->b:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    iget v4, p1, Ln/Q;->b:I

    add-int/2addr v3, v4

    aput v3, v1, v2

    .line 792
    add-int/lit8 v2, v0, 0x2

    iget-object v3, p0, Ln/U;->b:[I

    add-int/lit8 v4, v0, 0x2

    aget v3, v3, v4

    iget v4, p1, Ln/Q;->c:I

    add-int/2addr v3, v4

    aput v3, v1, v2

    .line 789
    add-int/lit8 v0, v0, 0x3

    goto :goto_6

    .line 794
    :cond_31
    new-instance v0, Ln/U;

    invoke-direct {v0, v1}, Ln/U;-><init>([I)V

    return-object v0
.end method

.method public c()Ln/Q;
    .registers 6

    .prologue
    .line 210
    iget-object v0, p0, Ln/U;->b:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x3

    .line 211
    new-instance v1, Ln/Q;

    iget-object v2, p0, Ln/U;->b:[I

    aget v2, v2, v0

    iget-object v3, p0, Ln/U;->b:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Ln/U;->b:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v4, v0

    invoke-direct {v1, v2, v3, v0}, Ln/Q;-><init>(III)V

    return-object v1
.end method

.method public c(F)Ln/U;
    .registers 27
    .parameter

    .prologue
    .line 486
    invoke-virtual/range {p0 .. p0}, Ln/U;->e()Z

    move-result v5

    .line 487
    invoke-virtual/range {p0 .. p0}, Ln/U;->b()I

    move-result v6

    .line 488
    add-int/lit8 v7, v6, -0x1

    .line 490
    const/4 v2, 0x2

    if-le v6, v2, :cond_17

    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-lez v2, :cond_17

    const/4 v2, 0x3

    if-gt v6, v2, :cond_18

    if-eqz v5, :cond_18

    .line 597
    :cond_17
    :goto_17
    return-object p0

    .line 494
    :cond_18
    new-instance v8, Ln/W;

    invoke-direct {v8, v6}, Ln/W;-><init>(I)V

    .line 497
    if-eqz v5, :cond_b5

    add-int/lit8 v2, v7, -0x1

    .line 498
    :goto_21
    add-int/lit8 v3, v2, -0x1

    mul-int/lit8 v3, v3, 0x3

    .line 499
    mul-int/lit8 v4, v2, 0x3

    .line 500
    add-int/lit8 v9, v2, 0x1

    rem-int/2addr v9, v6

    mul-int/lit8 v9, v9, 0x3

    .line 502
    add-int/lit8 v2, v2, 0x2

    rem-int/2addr v2, v6

    mul-int/lit8 v2, v2, 0x3

    .line 503
    new-instance v10, Ln/Q;

    move-object/from16 v0, p0

    iget-object v11, v0, Ln/U;->b:[I

    aget v11, v11, v3

    move-object/from16 v0, p0

    iget-object v12, v0, Ln/U;->b:[I

    add-int/lit8 v3, v3, 0x1

    aget v3, v12, v3

    const/4 v12, 0x0

    invoke-direct {v10, v11, v3, v12}, Ln/Q;-><init>(III)V

    .line 504
    new-instance v11, Ln/Q;

    move-object/from16 v0, p0

    iget-object v3, v0, Ln/U;->b:[I

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v12, v0, Ln/U;->b:[I

    add-int/lit8 v4, v4, 0x1

    aget v4, v12, v4

    const/4 v12, 0x0

    invoke-direct {v11, v3, v4, v12}, Ln/Q;-><init>(III)V

    .line 505
    new-instance v12, Ln/Q;

    move-object/from16 v0, p0

    iget-object v3, v0, Ln/U;->b:[I

    aget v3, v3, v9

    move-object/from16 v0, p0

    iget-object v4, v0, Ln/U;->b:[I

    add-int/lit8 v9, v9, 0x1

    aget v4, v4, v9

    const/4 v9, 0x0

    invoke-direct {v12, v3, v4, v9}, Ln/Q;-><init>(III)V

    .line 506
    new-instance v9, Ln/Q;

    move-object/from16 v0, p0

    iget-object v3, v0, Ln/U;->b:[I

    aget v3, v3, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Ln/U;->b:[I

    add-int/lit8 v13, v2, 0x1

    aget v4, v4, v13

    const/4 v13, 0x0

    invoke-direct {v9, v3, v4, v13}, Ln/Q;-><init>(III)V

    .line 507
    new-instance v13, Ln/Q;

    invoke-direct {v13}, Ln/Q;-><init>()V

    .line 508
    if-eqz v5, :cond_b8

    invoke-virtual {v11, v12}, Ln/Q;->c(Ln/Q;)F

    move-result v3

    cmpg-float v3, v3, p1

    if-gtz v3, :cond_b8

    const/4 v3, 0x1

    move v4, v3

    .line 512
    :goto_92
    if-nez v5, :cond_fd

    .line 513
    invoke-virtual {v8, v10}, Ln/W;->a(Ln/Q;)Z

    .line 514
    if-nez v2, :cond_d3

    .line 515
    invoke-virtual {v10, v11}, Ln/Q;->c(Ln/Q;)F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_ac

    invoke-virtual {v11, v12}, Ln/Q;->c(Ln/Q;)F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_ac

    .line 516
    invoke-virtual {v8, v11}, Ln/W;->a(Ln/Q;)Z

    .line 518
    :cond_ac
    invoke-virtual {v8, v12}, Ln/W;->a(Ln/Q;)Z

    .line 519
    invoke-virtual {v8}, Ln/W;->d()Ln/U;

    move-result-object p0

    goto/16 :goto_17

    .line 497
    :cond_b5
    const/4 v2, 0x1

    goto/16 :goto_21

    .line 508
    :cond_b8
    const/4 v3, 0x0

    move v4, v3

    goto :goto_92

    .line 532
    :cond_bb
    invoke-virtual {v11, v12}, Ln/Q;->b(Ln/Q;)V

    .line 533
    invoke-virtual {v12, v9}, Ln/Q;->b(Ln/Q;)V

    .line 534
    move-object/from16 v0, p0

    iget-object v3, v0, Ln/U;->b:[I

    aget v3, v3, v2

    move-object/from16 v0, p0

    iget-object v14, v0, Ln/U;->b:[I

    add-int/lit8 v15, v2, 0x1

    aget v14, v14, v15

    const/4 v15, 0x0

    invoke-virtual {v9, v3, v14, v15}, Ln/Q;->a(III)V

    .line 522
    :cond_d3
    invoke-virtual {v10, v11}, Ln/Q;->c(Ln/Q;)F

    move-result v3

    cmpg-float v3, v3, p1

    if-gtz v3, :cond_fd

    .line 523
    add-int/lit8 v2, v2, 0x3

    .line 524
    mul-int/lit8 v3, v6, 0x3

    if-ne v2, v3, :cond_bb

    .line 526
    invoke-virtual {v10, v12}, Ln/Q;->c(Ln/Q;)F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_f4

    invoke-virtual {v12, v9}, Ln/Q;->c(Ln/Q;)F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_f4

    .line 527
    invoke-virtual {v8, v12}, Ln/W;->a(Ln/Q;)Z

    .line 529
    :cond_f4
    invoke-virtual {v8, v9}, Ln/W;->a(Ln/Q;)Z

    .line 530
    invoke-virtual {v8}, Ln/W;->d()Ln/U;

    move-result-object p0

    goto/16 :goto_17

    :cond_fd
    move v3, v2

    .line 538
    :goto_fe
    mul-int/lit8 v14, v6, 0x3

    if-ge v3, v14, :cond_1a0

    .line 539
    move-object/from16 v0, p0

    iget-object v14, v0, Ln/U;->b:[I

    aget v14, v14, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Ln/U;->b:[I

    add-int/lit8 v16, v3, 0x1

    aget v15, v15, v16

    invoke-virtual {v9, v14, v15}, Ln/Q;->d(II)V

    .line 540
    if-eqz v4, :cond_11e

    .line 541
    add-int/lit8 v14, v7, -0x1

    mul-int/lit8 v14, v14, 0x3

    if-ne v3, v14, :cond_139

    .line 543
    invoke-virtual {v9, v13}, Ln/Q;->b(Ln/Q;)V

    .line 550
    :cond_11e
    invoke-virtual {v11, v12}, Ln/Q;->c(Ln/Q;)F

    move-result v14

    .line 554
    cmpl-float v15, v14, p1

    if-lez v15, :cond_142

    .line 555
    if-eqz v5, :cond_13e

    if-ne v3, v2, :cond_13e

    .line 558
    invoke-virtual {v13, v11}, Ln/Q;->b(Ln/Q;)V

    .line 562
    :goto_12d
    invoke-virtual {v10, v11}, Ln/Q;->b(Ln/Q;)V

    .line 563
    invoke-virtual {v11, v12}, Ln/Q;->b(Ln/Q;)V

    .line 564
    invoke-virtual {v12, v9}, Ln/Q;->b(Ln/Q;)V

    .line 538
    :goto_136
    add-int/lit8 v3, v3, 0x3

    goto :goto_fe

    .line 544
    :cond_139
    mul-int/lit8 v14, v7, 0x3

    if-ne v3, v14, :cond_11e

    goto :goto_136

    .line 560
    :cond_13e
    invoke-virtual {v8, v11}, Ln/W;->a(Ln/Q;)Z

    goto :goto_12d

    .line 568
    :cond_142
    invoke-virtual {v10, v11}, Ln/Q;->c(Ln/Q;)F

    move-result v15

    .line 569
    invoke-virtual {v12, v9}, Ln/Q;->c(Ln/Q;)F

    move-result v16

    .line 570
    add-float/2addr v15, v14

    float-to-double v0, v15

    move-wide/from16 v17, v0

    .line 571
    add-float v14, v14, v16

    float-to-double v14, v14

    .line 575
    iget v0, v11, Ln/Q;->a:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v19, v0

    mul-double v19, v19, v17

    iget v0, v12, Ln/Q;->a:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v21, v0

    mul-double v21, v21, v14

    add-double v19, v19, v21

    add-double v21, v17, v14

    div-double v19, v19, v21

    .line 576
    iget v0, v11, Ln/Q;->b:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v21, v0

    mul-double v21, v21, v17

    iget v0, v12, Ln/Q;->b:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v23, v0

    mul-double v23, v23, v14

    add-double v21, v21, v23

    add-double v14, v14, v17

    div-double v14, v21, v14

    .line 578
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v0, v16

    invoke-virtual {v11, v0, v14}, Ln/Q;->d(II)V

    .line 579
    invoke-virtual {v12, v9}, Ln/Q;->b(Ln/Q;)V

    goto :goto_136

    .line 583
    :cond_1a0
    if-nez v5, :cond_1aa

    invoke-virtual {v11, v12}, Ln/Q;->c(Ln/Q;)F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_1ad

    .line 584
    :cond_1aa
    invoke-virtual {v8, v11}, Ln/W;->a(Ln/Q;)Z

    .line 586
    :cond_1ad
    if-eqz v5, :cond_1c3

    .line 587
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ln/W;->a(I)Ln/Q;

    move-result-object v2

    invoke-virtual {v8, v2}, Ln/W;->a(Ln/Q;)Z

    .line 594
    :goto_1b7
    invoke-virtual {v8}, Ln/W;->a()I

    move-result v2

    if-eq v2, v6, :cond_17

    .line 597
    invoke-virtual {v8}, Ln/W;->d()Ln/U;

    move-result-object p0

    goto/16 :goto_17

    .line 589
    :cond_1c3
    invoke-virtual {v8, v12}, Ln/W;->a(Ln/Q;)Z

    goto :goto_1b7
.end method

.method public c(I)Ln/U;
    .registers 11
    .parameter

    .prologue
    const/high16 v8, 0x4000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 647
    const/high16 v0, -0x2000

    if-ne p1, v0, :cond_9

    .line 672
    :cond_8
    :goto_8
    return-object p0

    .line 650
    :cond_9
    if-gez p1, :cond_32

    move v0, v1

    .line 652
    :goto_c
    invoke-virtual {p0}, Ln/U;->b()I

    move-result v4

    .line 653
    new-instance v5, Ln/W;

    invoke-direct {v5, v4}, Ln/W;-><init>(I)V

    .line 655
    new-instance v6, Ln/Q;

    invoke-direct {v6}, Ln/Q;-><init>()V

    move v3, v2

    .line 656
    :goto_1b
    if-ge v3, v4, :cond_3f

    .line 657
    invoke-virtual {p0, v3, v6}, Ln/U;->a(ILn/Q;)V

    .line 658
    if-eqz v0, :cond_34

    .line 659
    iget v7, v6, Ln/Q;->a:I

    if-ge v7, p1, :cond_2c

    .line 660
    iget v2, v6, Ln/Q;->a:I

    add-int/2addr v2, v8

    iput v2, v6, Ln/Q;->a:I

    move v2, v1

    .line 669
    :cond_2c
    :goto_2c
    invoke-virtual {v5, v6}, Ln/W;->a(Ln/Q;)Z

    .line 656
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_32
    move v0, v2

    .line 650
    goto :goto_c

    .line 664
    :cond_34
    iget v7, v6, Ln/Q;->a:I

    if-le v7, p1, :cond_2c

    .line 665
    iget v2, v6, Ln/Q;->a:I

    sub-int/2addr v2, v8

    iput v2, v6, Ln/Q;->a:I

    move v2, v1

    .line 666
    goto :goto_2c

    .line 672
    :cond_3f
    if-eqz v2, :cond_8

    invoke-virtual {v5}, Ln/W;->d()Ln/U;

    move-result-object p0

    goto :goto_8
.end method

.method public d()F
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 225
    iget v0, p0, Ln/U;->d:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1a

    .line 227
    invoke-virtual {p0}, Ln/U;->b()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 228
    const/4 v0, 0x0

    :goto_e
    if-ge v0, v2, :cond_18

    .line 229
    invoke-virtual {p0, v0}, Ln/U;->b(I)F

    move-result v3

    add-float/2addr v1, v3

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 231
    :cond_18
    iput v1, p0, Ln/U;->d:F

    .line 233
    :cond_1a
    iget v0, p0, Ln/U;->d:F

    return v0
.end method

.method public d(I)F
    .registers 6
    .parameter

    .prologue
    .line 759
    mul-int/lit8 v0, p1, 0x3

    .line 760
    iget-object v1, p0, Ln/U;->b:[I

    add-int/lit8 v2, v0, 0x3

    aget v1, v1, v2

    iget-object v2, p0, Ln/U;->b:[I

    aget v2, v2, v0

    sub-int/2addr v1, v2

    iget-object v2, p0, Ln/U;->b:[I

    add-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Ln/U;->b:[I

    add-int/lit8 v0, v0, 0x1

    aget v0, v3, v0

    sub-int v0, v2, v0

    invoke-static {v1, v0}, Ln/S;->a(II)F

    move-result v0

    return v0
.end method

.method public e()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 253
    iget-object v2, p0, Ln/U;->b:[I

    array-length v2, v2

    if-lez v2, :cond_32

    .line 254
    iget-object v2, p0, Ln/U;->b:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x3

    .line 255
    iget-object v3, p0, Ln/U;->b:[I

    aget v3, v3, v1

    iget-object v4, p0, Ln/U;->b:[I

    aget v4, v4, v2

    if-ne v3, v4, :cond_30

    iget-object v3, p0, Ln/U;->b:[I

    aget v3, v3, v0

    iget-object v4, p0, Ln/U;->b:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    if-ne v3, v4, :cond_30

    iget-object v3, p0, Ln/U;->b:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Ln/U;->b:[I

    add-int/lit8 v2, v2, 0x2

    aget v2, v4, v2

    if-ne v3, v2, :cond_30

    .line 259
    :goto_2f
    return v0

    :cond_30
    move v0, v1

    .line 255
    goto :goto_2f

    :cond_32
    move v0, v1

    .line 259
    goto :goto_2f
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 297
    if-ne p1, p0, :cond_4

    .line 298
    const/4 v0, 0x1

    .line 304
    :goto_3
    return v0

    .line 300
    :cond_4
    instance-of v0, p1, Ln/U;

    if-eqz v0, :cond_13

    .line 301
    check-cast p1, Ln/U;

    .line 302
    iget-object v0, p0, Ln/U;->b:[I

    iget-object v1, p1, Ln/U;->b:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_3

    .line 304
    :cond_13
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public f()I
    .registers 10

    .prologue
    const/high16 v0, -0x2000

    .line 611
    invoke-virtual {p0}, Ln/U;->b()I

    move-result v3

    .line 612
    if-nez v3, :cond_9

    .line 635
    :cond_8
    :goto_8
    return v0

    .line 615
    :cond_9
    invoke-static {}, Lx/t;->a()Lx/t;

    move-result-object v2

    .line 616
    new-instance v4, Ln/Q;

    invoke-direct {v4}, Ln/Q;-><init>()V

    .line 617
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ln/U;->a(I)Ln/Q;

    move-result-object v1

    invoke-virtual {v1, v4}, Ln/Q;->i(Ln/Q;)V

    .line 618
    const/4 v1, 0x1

    :goto_1b
    if-ge v1, v3, :cond_4c

    .line 619
    new-instance v5, Ln/Q;

    invoke-direct {v5, v4}, Ln/Q;-><init>(Ln/Q;)V

    .line 620
    invoke-virtual {p0, v1}, Ln/U;->a(I)Ln/Q;

    move-result-object v6

    invoke-virtual {v6, v4}, Ln/Q;->i(Ln/Q;)V

    .line 621
    invoke-virtual {v5}, Ln/Q;->f()I

    move-result v5

    invoke-static {v5}, Ln/Q;->c(I)I

    move-result v5

    invoke-static {v5}, Lx/t;->a(I)D

    move-result-wide v5

    invoke-virtual {v4}, Ln/Q;->f()I

    move-result v7

    invoke-static {v7}, Ln/Q;->c(I)I

    move-result v7

    invoke-static {v7}, Lx/t;->a(I)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lx/t;->a(DD)Lx/t;

    move-result-object v5

    invoke-virtual {v2, v5}, Lx/t;->b(Lx/t;)Lx/t;

    move-result-object v2

    .line 618
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 625
    :cond_4c
    invoke-virtual {v2}, Lx/t;->e()Z

    move-result v1

    if-nez v1, :cond_8

    .line 632
    invoke-static {v0}, Lx/t;->a(I)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lx/t;->a(D)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 635
    invoke-virtual {v2}, Lx/t;->i()Lx/t;

    move-result-object v0

    invoke-virtual {v0}, Lx/t;->h()D

    move-result-wide v0

    invoke-static {v0, v1}, Lx/t;->c(D)I

    move-result v0

    invoke-static {v0}, Ln/Q;->c(I)I

    move-result v0

    goto :goto_8
.end method

.method public g()Ln/U;
    .registers 7

    .prologue
    .line 772
    iget-object v0, p0, Ln/U;->b:[I

    array-length v1, v0

    .line 773
    new-array v2, v1, [I

    .line 774
    iget-object v3, p0, Ln/U;->b:[I

    .line 775
    const/4 v0, 0x0

    :goto_8
    iget-object v4, p0, Ln/U;->b:[I

    array-length v4, v4

    if-ge v0, v4, :cond_2c

    .line 776
    sub-int v4, v1, v0

    add-int/lit8 v4, v4, -0x3

    aget v4, v3, v4

    aput v4, v2, v0

    .line 777
    add-int/lit8 v4, v0, 0x1

    sub-int v5, v1, v0

    add-int/lit8 v5, v5, -0x2

    aget v5, v3, v5

    aput v5, v2, v4

    .line 778
    add-int/lit8 v4, v0, 0x2

    sub-int v5, v1, v0

    add-int/lit8 v5, v5, -0x1

    aget v5, v3, v5

    aput v5, v2, v4

    .line 775
    add-int/lit8 v0, v0, 0x3

    goto :goto_8

    .line 780
    :cond_2c
    new-instance v0, Ln/U;

    invoke-direct {v0, v2}, Ln/U;-><init>([I)V

    return-object v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 802
    iget-object v0, p0, Ln/U;->b:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit16 v0, v0, 0xa0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Ln/U;->b:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method
