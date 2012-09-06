.class public final Lcom/google/zxing/d/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I


# instance fields
.field private final e:Lcom/google/zxing/c;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0x9

    const/16 v1, 0x8

    .line 43
    new-array v0, v1, [I

    fill-array-data v0, :array_22

    sput-object v0, Lcom/google/zxing/d/b/a;->a:[I

    .line 46
    new-array v0, v1, [I

    fill-array-data v0, :array_36

    sput-object v0, Lcom/google/zxing/d/b/a;->b:[I

    .line 49
    new-array v0, v2, [I

    fill-array-data v0, :array_4a

    sput-object v0, Lcom/google/zxing/d/b/a;->c:[I

    .line 53
    new-array v0, v2, [I

    fill-array-data v0, :array_60

    sput-object v0, Lcom/google/zxing/d/b/a;->d:[I

    return-void

    .line 43
    nop

    :array_22
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 46
    :array_36
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 49
    :array_4a
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 53
    :array_60
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/google/zxing/c;)V
    .registers 2
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/zxing/d/b/a;->e:Lcom/google/zxing/c;

    .line 59
    return-void
.end method

.method private static a([Lcom/google/zxing/j;Z)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/high16 v8, 0x4000

    const/4 v7, 0x7

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x4

    .line 279
    aget-object v0, p0, v4

    invoke-virtual {v0}, Lcom/google/zxing/j;->b()F

    move-result v0

    aget-object v1, p0, v6

    invoke-virtual {v1}, Lcom/google/zxing/j;->b()F

    move-result v1

    sub-float/2addr v0, v1

    .line 280
    if-eqz p1, :cond_16

    .line 281
    neg-float v0, v0

    .line 283
    :cond_16
    cmpl-float v1, v0, v8

    if-lez v1, :cond_af

    .line 285
    aget-object v0, p0, v4

    invoke-virtual {v0}, Lcom/google/zxing/j;->a()F

    move-result v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v1}, Lcom/google/zxing/j;->a()F

    move-result v1

    sub-float/2addr v0, v1

    .line 286
    aget-object v1, p0, v6

    invoke-virtual {v1}, Lcom/google/zxing/j;->a()F

    move-result v1

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-virtual {v2}, Lcom/google/zxing/j;->a()F

    move-result v2

    sub-float/2addr v1, v2

    .line 287
    aget-object v2, p0, v6

    invoke-virtual {v2}, Lcom/google/zxing/j;->b()F

    move-result v2

    const/4 v3, 0x0

    aget-object v3, p0, v3

    invoke-virtual {v3}, Lcom/google/zxing/j;->b()F

    move-result v3

    sub-float/2addr v2, v3

    .line 288
    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    .line 289
    new-instance v1, Lcom/google/zxing/j;

    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/google/zxing/j;->a()F

    move-result v2

    aget-object v3, p0, v4

    invoke-virtual {v3}, Lcom/google/zxing/j;->b()F

    move-result v3

    add-float/2addr v0, v3

    invoke-direct {v1, v2, v0}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v1, p0, v4

    .line 299
    :cond_5a
    :goto_5a
    aget-object v0, p0, v7

    invoke-virtual {v0}, Lcom/google/zxing/j;->b()F

    move-result v0

    aget-object v1, p0, v5

    invoke-virtual {v1}, Lcom/google/zxing/j;->b()F

    move-result v1

    sub-float/2addr v0, v1

    .line 300
    if-eqz p1, :cond_6a

    .line 301
    neg-float v0, v0

    .line 303
    :cond_6a
    cmpl-float v1, v0, v8

    if-lez v1, :cond_f7

    .line 305
    aget-object v0, p0, v5

    invoke-virtual {v0}, Lcom/google/zxing/j;->a()F

    move-result v0

    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-virtual {v1}, Lcom/google/zxing/j;->a()F

    move-result v1

    sub-float/2addr v0, v1

    .line 306
    aget-object v1, p0, v7

    invoke-virtual {v1}, Lcom/google/zxing/j;->a()F

    move-result v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v2}, Lcom/google/zxing/j;->a()F

    move-result v2

    sub-float/2addr v1, v2

    .line 307
    aget-object v2, p0, v7

    invoke-virtual {v2}, Lcom/google/zxing/j;->b()F

    move-result v2

    const/4 v3, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v3}, Lcom/google/zxing/j;->b()F

    move-result v3

    sub-float/2addr v2, v3

    .line 308
    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    .line 309
    new-instance v1, Lcom/google/zxing/j;

    aget-object v2, p0, v5

    invoke-virtual {v2}, Lcom/google/zxing/j;->a()F

    move-result v2

    aget-object v3, p0, v5

    invoke-virtual {v3}, Lcom/google/zxing/j;->b()F

    move-result v3

    add-float/2addr v0, v3

    invoke-direct {v1, v2, v0}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v1, p0, v5

    .line 318
    :cond_ae
    :goto_ae
    return-void

    .line 290
    :cond_af
    neg-float v0, v0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_5a

    .line 292
    const/4 v0, 0x2

    aget-object v0, p0, v0

    invoke-virtual {v0}, Lcom/google/zxing/j;->a()F

    move-result v0

    aget-object v1, p0, v6

    invoke-virtual {v1}, Lcom/google/zxing/j;->a()F

    move-result v1

    sub-float/2addr v0, v1

    .line 293
    const/4 v1, 0x2

    aget-object v1, p0, v1

    invoke-virtual {v1}, Lcom/google/zxing/j;->a()F

    move-result v1

    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/google/zxing/j;->a()F

    move-result v2

    sub-float/2addr v1, v2

    .line 294
    const/4 v2, 0x2

    aget-object v2, p0, v2

    invoke-virtual {v2}, Lcom/google/zxing/j;->b()F

    move-result v2

    aget-object v3, p0, v4

    invoke-virtual {v3}, Lcom/google/zxing/j;->b()F

    move-result v3

    sub-float/2addr v2, v3

    .line 295
    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    .line 296
    new-instance v1, Lcom/google/zxing/j;

    aget-object v2, p0, v6

    invoke-virtual {v2}, Lcom/google/zxing/j;->a()F

    move-result v2

    aget-object v3, p0, v6

    invoke-virtual {v3}, Lcom/google/zxing/j;->b()F

    move-result v3

    sub-float v0, v3, v0

    invoke-direct {v1, v2, v0}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v1, p0, v6

    goto/16 :goto_5a

    .line 310
    :cond_f7
    neg-float v0, v0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_ae

    .line 312
    const/4 v0, 0x3

    aget-object v0, p0, v0

    invoke-virtual {v0}, Lcom/google/zxing/j;->a()F

    move-result v0

    aget-object v1, p0, v7

    invoke-virtual {v1}, Lcom/google/zxing/j;->a()F

    move-result v1

    sub-float/2addr v0, v1

    .line 313
    const/4 v1, 0x3

    aget-object v1, p0, v1

    invoke-virtual {v1}, Lcom/google/zxing/j;->a()F

    move-result v1

    aget-object v2, p0, v5

    invoke-virtual {v2}, Lcom/google/zxing/j;->a()F

    move-result v2

    sub-float/2addr v1, v2

    .line 314
    const/4 v2, 0x3

    aget-object v2, p0, v2

    invoke-virtual {v2}, Lcom/google/zxing/j;->b()F

    move-result v2

    aget-object v3, p0, v5

    invoke-virtual {v3}, Lcom/google/zxing/j;->b()F

    move-result v3

    sub-float/2addr v2, v3

    .line 315
    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    .line 316
    new-instance v1, Lcom/google/zxing/j;

    aget-object v2, p0, v7

    invoke-virtual {v2}, Lcom/google/zxing/j;->a()F

    move-result v2

    aget-object v3, p0, v7

    invoke-virtual {v3}, Lcom/google/zxing/j;->b()F

    move-result v3

    sub-float v0, v3, v0

    invoke-direct {v1, v2, v0}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v1, p0, v7

    goto/16 :goto_ae
.end method

.method private static a(Lcom/google/zxing/common/b;IIIZ[I)[I
    .registers 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 420
    move-object/from16 v0, p5

    array-length v9, v0

    .line 423
    new-array v10, v9, [I

    .line 426
    const/4 v2, 0x0

    move/from16 v8, p1

    move/from16 v1, p1

    move/from16 v3, p4

    .line 428
    :goto_c
    add-int v4, p1, p3

    if-ge v8, v4, :cond_a2

    .line 429
    move/from16 v0, p2

    invoke-virtual {p0, v8, v0}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v4

    .line 430
    xor-int/2addr v4, v3

    if-eqz v4, :cond_23

    .line 431
    aget v4, v10, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v10, v2

    .line 428
    :goto_1f
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_c

    .line 433
    :cond_23
    add-int/lit8 v4, v9, -0x1

    if-ne v2, v4, :cond_9c

    .line 434
    array-length v11, v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move v7, v5

    :goto_2c
    if-ge v4, v11, :cond_38

    aget v5, v10, v4

    add-int/2addr v5, v7

    aget v7, p5, v4

    add-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    move v7, v5

    goto :goto_2c

    :cond_38
    if-ge v7, v6, :cond_4c

    const v4, 0x7fffffff

    :goto_3d
    const/16 v5, 0x6b

    if-ge v4, v5, :cond_75

    .line 435
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v8, v2, v1

    move-object v1, v2

    .line 451
    :goto_4b
    return-object v1

    .line 434
    :cond_4c
    shl-int/lit8 v4, v7, 0x8

    div-int v12, v4, v6

    mul-int/lit16 v4, v12, 0xcc

    shr-int/lit8 v13, v4, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    move v6, v5

    move v5, v4

    :goto_58
    if-ge v5, v11, :cond_72

    aget v4, v10, v5

    shl-int/lit8 v4, v4, 0x8

    aget v14, p5, v5

    mul-int/2addr v14, v12

    if-le v4, v14, :cond_6a

    sub-int/2addr v4, v14

    :goto_64
    if-le v4, v13, :cond_6d

    const v4, 0x7fffffff

    goto :goto_3d

    :cond_6a
    sub-int v4, v14, v4

    goto :goto_64

    :cond_6d
    add-int/2addr v6, v4

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_58

    :cond_72
    div-int v4, v6, v7

    goto :goto_3d

    .line 437
    :cond_75
    const/4 v4, 0x0

    aget v4, v10, v4

    const/4 v5, 0x1

    aget v5, v10, v5

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 438
    const/4 v4, 0x2

    :goto_7e
    if-ge v4, v9, :cond_89

    .line 439
    add-int/lit8 v5, v4, -0x2

    aget v6, v10, v4

    aput v6, v10, v5

    .line 438
    add-int/lit8 v4, v4, 0x1

    goto :goto_7e

    .line 441
    :cond_89
    add-int/lit8 v4, v9, -0x2

    const/4 v5, 0x0

    aput v5, v10, v4

    .line 442
    add-int/lit8 v4, v9, -0x1

    const/4 v5, 0x0

    aput v5, v10, v4

    .line 443
    add-int/lit8 v2, v2, -0x1

    .line 447
    :goto_95
    const/4 v4, 0x1

    aput v4, v10, v2

    .line 448
    if-nez v3, :cond_9f

    const/4 v3, 0x1

    goto :goto_1f

    .line 445
    :cond_9c
    add-int/lit8 v2, v2, 0x1

    goto :goto_95

    .line 448
    :cond_9f
    const/4 v3, 0x0

    goto/16 :goto_1f

    .line 451
    :cond_a2
    const/4 v1, 0x0

    goto :goto_4b
.end method


# virtual methods
.method public final a()Lcom/google/zxing/common/i;
    .registers 24

    .prologue
    .line 68
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/zxing/d/b/a;->e:Lcom/google/zxing/c;

    invoke-virtual {v1}, Lcom/google/zxing/c;->c()Lcom/google/zxing/common/b;

    move-result-object v1

    iget v9, v1, Lcom/google/zxing/common/b;->b:I

    iget v4, v1, Lcom/google/zxing/common/b;->a:I

    const/16 v2, 0x8

    new-array v7, v2, [Lcom/google/zxing/j;

    const/4 v8, 0x0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v9, :cond_29d

    const/4 v2, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/google/zxing/d/b/a;->a:[I

    invoke-static/range {v1 .. v6}, Lcom/google/zxing/d/b/a;->a(Lcom/google/zxing/common/b;IIIZ[I)[I

    move-result-object v2

    if-eqz v2, :cond_18d

    const/4 v5, 0x0

    new-instance v6, Lcom/google/zxing/j;

    const/4 v8, 0x0

    aget v8, v2, v8

    int-to-float v8, v8

    int-to-float v10, v3

    invoke-direct {v6, v8, v10}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v6, v7, v5

    const/4 v5, 0x4

    new-instance v6, Lcom/google/zxing/j;

    const/4 v8, 0x1

    aget v2, v2, v8

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-direct {v6, v2, v3}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v6, v7, v5

    const/4 v2, 0x1

    :goto_39
    if-eqz v2, :cond_65

    const/4 v8, 0x0

    add-int/lit8 v3, v9, -0x1

    :goto_3e
    if-lez v3, :cond_29a

    const/4 v2, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/google/zxing/d/b/a;->a:[I

    invoke-static/range {v1 .. v6}, Lcom/google/zxing/d/b/a;->a(Lcom/google/zxing/common/b;IIIZ[I)[I

    move-result-object v2

    if-eqz v2, :cond_191

    const/4 v5, 0x1

    new-instance v6, Lcom/google/zxing/j;

    const/4 v8, 0x0

    aget v8, v2, v8

    int-to-float v8, v8

    int-to-float v10, v3

    invoke-direct {v6, v8, v10}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v6, v7, v5

    const/4 v5, 0x5

    new-instance v6, Lcom/google/zxing/j;

    const/4 v8, 0x1

    aget v2, v2, v8

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-direct {v6, v2, v3}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v6, v7, v5

    const/4 v2, 0x1

    :cond_65
    :goto_65
    if-eqz v2, :cond_90

    const/4 v8, 0x0

    const/4 v3, 0x0

    :goto_69
    if-ge v3, v9, :cond_297

    const/4 v2, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/google/zxing/d/b/a;->c:[I

    invoke-static/range {v1 .. v6}, Lcom/google/zxing/d/b/a;->a(Lcom/google/zxing/common/b;IIIZ[I)[I

    move-result-object v2

    if-eqz v2, :cond_195

    const/4 v5, 0x2

    new-instance v6, Lcom/google/zxing/j;

    const/4 v8, 0x1

    aget v8, v2, v8

    int-to-float v8, v8

    int-to-float v10, v3

    invoke-direct {v6, v8, v10}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v6, v7, v5

    const/4 v5, 0x6

    new-instance v6, Lcom/google/zxing/j;

    const/4 v8, 0x0

    aget v2, v2, v8

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-direct {v6, v2, v3}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v6, v7, v5

    const/4 v2, 0x1

    :cond_90
    :goto_90
    if-eqz v2, :cond_bc

    const/4 v8, 0x0

    add-int/lit8 v3, v9, -0x1

    :goto_95
    if-lez v3, :cond_294

    const/4 v2, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/google/zxing/d/b/a;->c:[I

    invoke-static/range {v1 .. v6}, Lcom/google/zxing/d/b/a;->a(Lcom/google/zxing/common/b;IIIZ[I)[I

    move-result-object v2

    if-eqz v2, :cond_199

    const/4 v4, 0x3

    new-instance v5, Lcom/google/zxing/j;

    const/4 v6, 0x1

    aget v6, v2, v6

    int-to-float v6, v6

    int-to-float v8, v3

    invoke-direct {v5, v6, v8}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v5, v7, v4

    const/4 v4, 0x7

    new-instance v5, Lcom/google/zxing/j;

    const/4 v6, 0x0

    aget v2, v2, v6

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-direct {v5, v2, v3}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v5, v7, v4

    const/4 v2, 0x1

    :cond_bc
    :goto_bc
    if-eqz v2, :cond_19d

    move-object v2, v7

    :goto_bf
    if-nez v2, :cond_1b1

    iget v11, v1, Lcom/google/zxing/common/b;->b:I

    iget v2, v1, Lcom/google/zxing/common/b;->a:I

    shr-int/lit8 v2, v2, 0x1

    const/16 v3, 0x8

    new-array v9, v3, [Lcom/google/zxing/j;

    const/4 v7, 0x0

    add-int/lit8 v3, v11, -0x1

    :goto_ce
    if-lez v3, :cond_291

    const/4 v5, 0x1

    sget-object v6, Lcom/google/zxing/d/b/a;->b:[I

    move v4, v2

    invoke-static/range {v1 .. v6}, Lcom/google/zxing/d/b/a;->a(Lcom/google/zxing/common/b;IIIZ[I)[I

    move-result-object v4

    if-eqz v4, :cond_1a0

    const/4 v5, 0x0

    new-instance v6, Lcom/google/zxing/j;

    const/4 v7, 0x1

    aget v7, v4, v7

    int-to-float v7, v7

    int-to-float v8, v3

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v6, v9, v5

    const/4 v5, 0x4

    new-instance v6, Lcom/google/zxing/j;

    const/4 v7, 0x0

    aget v4, v4, v7

    int-to-float v4, v4

    int-to-float v3, v3

    invoke-direct {v6, v4, v3}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v6, v9, v5

    const/4 v3, 0x1

    :goto_f5
    if-eqz v3, :cond_120

    const/4 v7, 0x0

    const/4 v3, 0x0

    :goto_f9
    if-ge v3, v11, :cond_28e

    const/4 v5, 0x1

    sget-object v6, Lcom/google/zxing/d/b/a;->b:[I

    move v4, v2

    invoke-static/range {v1 .. v6}, Lcom/google/zxing/d/b/a;->a(Lcom/google/zxing/common/b;IIIZ[I)[I

    move-result-object v4

    if-eqz v4, :cond_1a4

    const/4 v5, 0x1

    new-instance v6, Lcom/google/zxing/j;

    const/4 v7, 0x1

    aget v7, v4, v7

    int-to-float v7, v7

    int-to-float v8, v3

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v6, v9, v5

    const/4 v5, 0x5

    new-instance v6, Lcom/google/zxing/j;

    const/4 v7, 0x0

    aget v4, v4, v7

    int-to-float v4, v4

    int-to-float v3, v3

    invoke-direct {v6, v4, v3}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v6, v9, v5

    const/4 v3, 0x1

    :cond_120
    :goto_120
    if-eqz v3, :cond_14e

    const/4 v10, 0x0

    add-int/lit8 v5, v11, -0x1

    :goto_125
    if-lez v5, :cond_28b

    const/4 v4, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/google/zxing/d/b/a;->d:[I

    move-object v3, v1

    move v6, v2

    invoke-static/range {v3 .. v8}, Lcom/google/zxing/d/b/a;->a(Lcom/google/zxing/common/b;IIIZ[I)[I

    move-result-object v3

    if-eqz v3, :cond_1a8

    const/4 v4, 0x2

    new-instance v6, Lcom/google/zxing/j;

    const/4 v7, 0x0

    aget v7, v3, v7

    int-to-float v7, v7

    int-to-float v8, v5

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v6, v9, v4

    const/4 v4, 0x6

    new-instance v6, Lcom/google/zxing/j;

    const/4 v7, 0x1

    aget v3, v3, v7

    int-to-float v3, v3

    int-to-float v5, v5

    invoke-direct {v6, v3, v5}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v6, v9, v4

    const/4 v3, 0x1

    :cond_14e
    :goto_14e
    if-eqz v3, :cond_288

    const/4 v10, 0x0

    const/4 v5, 0x0

    :goto_152
    if-ge v5, v11, :cond_285

    const/4 v4, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/google/zxing/d/b/a;->d:[I

    move-object v3, v1

    move v6, v2

    invoke-static/range {v3 .. v8}, Lcom/google/zxing/d/b/a;->a(Lcom/google/zxing/common/b;IIIZ[I)[I

    move-result-object v3

    if-eqz v3, :cond_1ac

    const/4 v2, 0x3

    new-instance v4, Lcom/google/zxing/j;

    const/4 v6, 0x0

    aget v6, v3, v6

    int-to-float v6, v6

    int-to-float v7, v5

    invoke-direct {v4, v6, v7}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v4, v9, v2

    const/4 v2, 0x7

    new-instance v4, Lcom/google/zxing/j;

    const/4 v6, 0x1

    aget v3, v3, v6

    int-to-float v3, v3

    int-to-float v5, v5

    invoke-direct {v4, v3, v5}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v4, v9, v2

    const/4 v2, 0x1

    :goto_17b
    if-eqz v2, :cond_1af

    move-object v2, v9

    :goto_17e
    if-eqz v2, :cond_1b5

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/zxing/d/b/a;->a([Lcom/google/zxing/j;Z)V

    move-object/from16 v22, v2

    :goto_186
    if-nez v22, :cond_1b8

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :cond_18d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_12

    :cond_191
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_3e

    :cond_195
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_69

    :cond_199
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_95

    :cond_19d
    const/4 v2, 0x0

    goto/16 :goto_bf

    :cond_1a0
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_ce

    :cond_1a4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_f9

    :cond_1a8
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_125

    :cond_1ac
    add-int/lit8 v5, v5, 0x1

    goto :goto_152

    :cond_1af
    const/4 v2, 0x0

    goto :goto_17e

    :cond_1b1
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/zxing/d/b/a;->a([Lcom/google/zxing/j;Z)V

    :cond_1b5
    move-object/from16 v22, v2

    goto :goto_186

    :cond_1b8
    const/4 v2, 0x0

    aget-object v2, v22, v2

    const/4 v3, 0x4

    aget-object v3, v22, v3

    invoke-static {v2, v3}, Lcom/google/zxing/j;->a(Lcom/google/zxing/j;Lcom/google/zxing/j;)F

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v22, v3

    const/4 v4, 0x5

    aget-object v4, v22, v4

    invoke-static {v3, v4}, Lcom/google/zxing/j;->a(Lcom/google/zxing/j;Lcom/google/zxing/j;)F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x4208

    div-float/2addr v2, v3

    const/4 v3, 0x6

    aget-object v3, v22, v3

    const/4 v4, 0x2

    aget-object v4, v22, v4

    invoke-static {v3, v4}, Lcom/google/zxing/j;->a(Lcom/google/zxing/j;Lcom/google/zxing/j;)F

    move-result v3

    const/4 v4, 0x7

    aget-object v4, v22, v4

    const/4 v5, 0x3

    aget-object v5, v22, v5

    invoke-static {v4, v5}, Lcom/google/zxing/j;->a(Lcom/google/zxing/j;Lcom/google/zxing/j;)F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x4210

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    const/high16 v3, 0x3f80

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1f7

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :cond_1f7
    const/4 v3, 0x4

    aget-object v3, v22, v3

    const/4 v4, 0x6

    aget-object v4, v22, v4

    const/4 v5, 0x5

    aget-object v5, v22, v5

    const/4 v6, 0x7

    aget-object v6, v22, v6

    invoke-static {v3, v4}, Lcom/google/zxing/j;->a(Lcom/google/zxing/j;Lcom/google/zxing/j;)F

    move-result v3

    div-float/2addr v3, v2

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v5, v6}, Lcom/google/zxing/j;->a(Lcom/google/zxing/j;Lcom/google/zxing/j;)F

    move-result v4

    div-float v2, v4, v2

    const/high16 v4, 0x3f00

    add-float/2addr v2, v4

    float-to-int v2, v2

    add-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x8

    div-int/lit8 v2, v2, 0x11

    mul-int/lit8 v4, v2, 0x11

    if-gtz v4, :cond_226

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :cond_226
    const/4 v2, 0x4

    aget-object v3, v22, v2

    const/4 v2, 0x5

    aget-object v5, v22, v2

    const/4 v2, 0x6

    aget-object v17, v22, v2

    const/4 v2, 0x7

    aget-object v19, v22, v2

    invoke-static {}, Lcom/google/zxing/common/l;->a()Lcom/google/zxing/common/l;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    int-to-float v8, v4

    const/4 v9, 0x0

    int-to-float v10, v4

    int-to-float v11, v4

    const/4 v12, 0x0

    int-to-float v13, v4

    invoke-virtual {v3}, Lcom/google/zxing/j;->a()F

    move-result v14

    invoke-virtual {v3}, Lcom/google/zxing/j;->b()F

    move-result v15

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/j;->a()F

    move-result v16

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/j;->b()F

    move-result v17

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/j;->a()F

    move-result v18

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/j;->b()F

    move-result v19

    invoke-virtual {v5}, Lcom/google/zxing/j;->a()F

    move-result v20

    invoke-virtual {v5}, Lcom/google/zxing/j;->b()F

    move-result v21

    move-object v3, v1

    move v5, v4

    invoke-virtual/range {v2 .. v21}, Lcom/google/zxing/common/l;->a(Lcom/google/zxing/common/b;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/b;

    move-result-object v1

    new-instance v2, Lcom/google/zxing/common/i;

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/google/zxing/j;

    const/4 v4, 0x0

    const/4 v5, 0x5

    aget-object v5, v22, v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x4

    aget-object v5, v22, v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x6

    aget-object v5, v22, v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x7

    aget-object v5, v22, v5

    aput-object v5, v3, v4

    invoke-direct {v2, v1, v3}, Lcom/google/zxing/common/i;-><init>(Lcom/google/zxing/common/b;[Lcom/google/zxing/j;)V

    return-object v2

    :cond_285
    move v2, v10

    goto/16 :goto_17b

    :cond_288
    move v2, v3

    goto/16 :goto_17b

    :cond_28b
    move v3, v10

    goto/16 :goto_14e

    :cond_28e
    move v3, v7

    goto/16 :goto_120

    :cond_291
    move v3, v7

    goto/16 :goto_f5

    :cond_294
    move v2, v8

    goto/16 :goto_bc

    :cond_297
    move v2, v8

    goto/16 :goto_90

    :cond_29a
    move v2, v8

    goto/16 :goto_65

    :cond_29d
    move v2, v8

    goto/16 :goto_39
.end method
