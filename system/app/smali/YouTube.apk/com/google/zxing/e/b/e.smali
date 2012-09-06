.class public final Lcom/google/zxing/e/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/common/b;

.field private final b:Ljava/util/Vector;

.field private c:Z

.field private final d:[I

.field private final e:Lcom/google/zxing/k;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/b;Lcom/google/zxing/k;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/zxing/e/b/e;->a:Lcom/google/zxing/common/b;

    .line 62
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/e/b/e;->b:Ljava/util/Vector;

    .line 63
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/e/b/e;->d:[I

    .line 64
    iput-object p2, p0, Lcom/google/zxing/e/b/e;->e:Lcom/google/zxing/k;

    .line 65
    return-void
.end method

.method private static a([II)F
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 189
    const/4 v0, 0x4

    aget v0, p0, v0

    sub-int v0, p1, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private static a([I)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    move v2, v0

    move v3, v0

    .line 199
    :goto_4
    const/4 v4, 0x5

    if-ge v2, v4, :cond_10

    .line 200
    aget v4, p0, v2

    .line 201
    if-nez v4, :cond_c

    .line 212
    :cond_b
    :goto_b
    return v0

    .line 204
    :cond_c
    add-int/2addr v3, v4

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 206
    :cond_10
    const/4 v2, 0x7

    if-lt v3, v2, :cond_b

    .line 209
    shl-int/lit8 v2, v3, 0x8

    div-int/lit8 v2, v2, 0x7

    .line 210
    div-int/lit8 v3, v2, 0x2

    .line 212
    aget v4, p0, v0

    shl-int/lit8 v4, v4, 0x8

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_b

    aget v4, p0, v1

    shl-int/lit8 v4, v4, 0x8

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_b

    mul-int/lit8 v4, v2, 0x3

    const/4 v5, 0x2

    aget v5, p0, v5

    shl-int/lit8 v5, v5, 0x8

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v5, v3, 0x3

    if-ge v4, v5, :cond_b

    const/4 v4, 0x3

    aget v4, p0, v4

    shl-int/lit8 v4, v4, 0x8

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_b

    const/4 v4, 0x4

    aget v4, p0, v4

    shl-int/lit8 v4, v4, 0x8

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v3, :cond_b

    move v0, v1

    goto :goto_b
.end method

.method private a([III)Z
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 392
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    aget v1, p1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p1, v1

    add-int v3, v0, v1

    .line 394
    invoke-static {p1, p3}, Lcom/google/zxing/e/b/e;->a([II)F

    move-result v2

    .line 395
    float-to-int v1, v2

    const/4 v0, 0x2

    aget v4, p1, v0

    iget-object v5, p0, Lcom/google/zxing/e/b/e;->a:Lcom/google/zxing/common/b;

    iget v6, v5, Lcom/google/zxing/common/b;->b:I

    invoke-direct {p0}, Lcom/google/zxing/e/b/e;->a()[I

    move-result-object v7

    move v0, p2

    :goto_25
    if-ltz v0, :cond_37

    invoke-virtual {v5, v1, v0}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v8

    if-eqz v8, :cond_37

    const/4 v8, 0x2

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    :cond_37
    if-gez v0, :cond_62

    const/high16 v0, 0x7fc0

    move v1, v0

    .line 396
    :goto_3c
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_25c

    .line 398
    float-to-int v2, v2

    float-to-int v4, v1

    const/4 v0, 0x2

    aget v5, p1, v0

    iget-object v6, p0, Lcom/google/zxing/e/b/e;->a:Lcom/google/zxing/common/b;

    iget v7, v6, Lcom/google/zxing/common/b;->a:I

    invoke-direct {p0}, Lcom/google/zxing/e/b/e;->a()[I

    move-result-object v8

    move v0, v2

    :goto_50
    if-ltz v0, :cond_138

    invoke-virtual {v6, v0, v4}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v9

    if-eqz v9, :cond_138

    const/4 v9, 0x2

    aget v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    add-int/lit8 v0, v0, -0x1

    goto :goto_50

    .line 395
    :cond_62
    :goto_62
    if-ltz v0, :cond_79

    invoke-virtual {v5, v1, v0}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v8

    if-nez v8, :cond_79

    const/4 v8, 0x1

    aget v8, v7, v8

    if-gt v8, v4, :cond_79

    const/4 v8, 0x1

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    add-int/lit8 v0, v0, -0x1

    goto :goto_62

    :cond_79
    if-ltz v0, :cond_80

    const/4 v8, 0x1

    aget v8, v7, v8

    if-le v8, v4, :cond_84

    :cond_80
    const/high16 v0, 0x7fc0

    move v1, v0

    goto :goto_3c

    :cond_84
    :goto_84
    if-ltz v0, :cond_9b

    invoke-virtual {v5, v1, v0}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v8

    if-eqz v8, :cond_9b

    const/4 v8, 0x0

    aget v8, v7, v8

    if-gt v8, v4, :cond_9b

    const/4 v8, 0x0

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    add-int/lit8 v0, v0, -0x1

    goto :goto_84

    :cond_9b
    const/4 v0, 0x0

    aget v0, v7, v0

    if-le v0, v4, :cond_a4

    const/high16 v0, 0x7fc0

    move v1, v0

    goto :goto_3c

    :cond_a4
    add-int/lit8 v0, p2, 0x1

    :goto_a6
    if-ge v0, v6, :cond_b8

    invoke-virtual {v5, v1, v0}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v8

    if-eqz v8, :cond_b8

    const/4 v8, 0x2

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_a6

    :cond_b8
    if-ne v0, v6, :cond_bf

    const/high16 v0, 0x7fc0

    move v1, v0

    goto/16 :goto_3c

    :cond_bf
    :goto_bf
    if-ge v0, v6, :cond_d6

    invoke-virtual {v5, v1, v0}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v8

    if-nez v8, :cond_d6

    const/4 v8, 0x3

    aget v8, v7, v8

    if-ge v8, v4, :cond_d6

    const/4 v8, 0x3

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_bf

    :cond_d6
    if-eq v0, v6, :cond_dd

    const/4 v8, 0x3

    aget v8, v7, v8

    if-lt v8, v4, :cond_e2

    :cond_dd
    const/high16 v0, 0x7fc0

    move v1, v0

    goto/16 :goto_3c

    :cond_e2
    :goto_e2
    if-ge v0, v6, :cond_f9

    invoke-virtual {v5, v1, v0}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v8

    if-eqz v8, :cond_f9

    const/4 v8, 0x4

    aget v8, v7, v8

    if-ge v8, v4, :cond_f9

    const/4 v8, 0x4

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_e2

    :cond_f9
    const/4 v1, 0x4

    aget v1, v7, v1

    if-lt v1, v4, :cond_103

    const/high16 v0, 0x7fc0

    move v1, v0

    goto/16 :goto_3c

    :cond_103
    const/4 v1, 0x0

    aget v1, v7, v1

    const/4 v4, 0x1

    aget v4, v7, v4

    add-int/2addr v1, v4

    const/4 v4, 0x2

    aget v4, v7, v4

    add-int/2addr v1, v4

    const/4 v4, 0x3

    aget v4, v7, v4

    add-int/2addr v1, v4

    const/4 v4, 0x4

    aget v4, v7, v4

    add-int/2addr v1, v4

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    mul-int/lit8 v4, v3, 0x2

    if-lt v1, v4, :cond_126

    const/high16 v0, 0x7fc0

    move v1, v0

    goto/16 :goto_3c

    :cond_126
    invoke-static {v7}, Lcom/google/zxing/e/b/e;->a([I)Z

    move-result v1

    if-eqz v1, :cond_133

    invoke-static {v7, v0}, Lcom/google/zxing/e/b/e;->a([II)F

    move-result v0

    move v1, v0

    goto/16 :goto_3c

    :cond_133
    const/high16 v0, 0x7fc0

    move v1, v0

    goto/16 :goto_3c

    .line 398
    :cond_138
    if-gez v0, :cond_182

    const/high16 v0, 0x7fc0

    move v2, v0

    .line 399
    :goto_13d
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_25c

    .line 400
    int-to-float v0, v3

    const/high16 v3, 0x40e0

    div-float v5, v0, v3

    .line 401
    const/4 v3, 0x0

    .line 402
    iget-object v0, p0, Lcom/google/zxing/e/b/e;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v6

    .line 403
    const/4 v0, 0x0

    move v4, v0

    :goto_151
    if-ge v4, v6, :cond_25f

    .line 404
    iget-object v0, p0, Lcom/google/zxing/e/b/e;->b:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/e/b/d;

    .line 406
    invoke-virtual {v0, v5, v1, v2}, Lcom/google/zxing/e/b/d;->a(FFF)Z

    move-result v7

    if-eqz v7, :cond_257

    .line 407
    iget-object v3, p0, Lcom/google/zxing/e/b/e;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/zxing/e/b/d;->b(FFF)Lcom/google/zxing/e/b/d;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 408
    const/4 v0, 0x1

    .line 412
    :goto_16b
    if-nez v0, :cond_180

    .line 413
    new-instance v0, Lcom/google/zxing/e/b/d;

    invoke-direct {v0, v2, v1, v5}, Lcom/google/zxing/e/b/d;-><init>(FFF)V

    .line 414
    iget-object v1, p0, Lcom/google/zxing/e/b/e;->b:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 415
    iget-object v1, p0, Lcom/google/zxing/e/b/e;->e:Lcom/google/zxing/k;

    if-eqz v1, :cond_180

    .line 416
    iget-object v1, p0, Lcom/google/zxing/e/b/e;->e:Lcom/google/zxing/k;

    invoke-interface {v1, v0}, Lcom/google/zxing/k;->a(Lcom/google/zxing/j;)V

    .line 419
    :cond_180
    const/4 v0, 0x1

    .line 422
    :goto_181
    return v0

    .line 398
    :cond_182
    :goto_182
    if-ltz v0, :cond_199

    invoke-virtual {v6, v0, v4}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v9

    if-nez v9, :cond_199

    const/4 v9, 0x1

    aget v9, v8, v9

    if-gt v9, v5, :cond_199

    const/4 v9, 0x1

    aget v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    add-int/lit8 v0, v0, -0x1

    goto :goto_182

    :cond_199
    if-ltz v0, :cond_1a0

    const/4 v9, 0x1

    aget v9, v8, v9

    if-le v9, v5, :cond_1a4

    :cond_1a0
    const/high16 v0, 0x7fc0

    move v2, v0

    goto :goto_13d

    :cond_1a4
    :goto_1a4
    if-ltz v0, :cond_1bb

    invoke-virtual {v6, v0, v4}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v9

    if-eqz v9, :cond_1bb

    const/4 v9, 0x0

    aget v9, v8, v9

    if-gt v9, v5, :cond_1bb

    const/4 v9, 0x0

    aget v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    add-int/lit8 v0, v0, -0x1

    goto :goto_1a4

    :cond_1bb
    const/4 v0, 0x0

    aget v0, v8, v0

    if-le v0, v5, :cond_1c5

    const/high16 v0, 0x7fc0

    move v2, v0

    goto/16 :goto_13d

    :cond_1c5
    add-int/lit8 v0, v2, 0x1

    :goto_1c7
    if-ge v0, v7, :cond_1d9

    invoke-virtual {v6, v0, v4}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v2

    if-eqz v2, :cond_1d9

    const/4 v2, 0x2

    aget v9, v8, v2

    add-int/lit8 v9, v9, 0x1

    aput v9, v8, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c7

    :cond_1d9
    if-ne v0, v7, :cond_1e0

    const/high16 v0, 0x7fc0

    move v2, v0

    goto/16 :goto_13d

    :cond_1e0
    :goto_1e0
    if-ge v0, v7, :cond_1f7

    invoke-virtual {v6, v0, v4}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v2

    if-nez v2, :cond_1f7

    const/4 v2, 0x3

    aget v2, v8, v2

    if-ge v2, v5, :cond_1f7

    const/4 v2, 0x3

    aget v9, v8, v2

    add-int/lit8 v9, v9, 0x1

    aput v9, v8, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e0

    :cond_1f7
    if-eq v0, v7, :cond_1fe

    const/4 v2, 0x3

    aget v2, v8, v2

    if-lt v2, v5, :cond_203

    :cond_1fe
    const/high16 v0, 0x7fc0

    move v2, v0

    goto/16 :goto_13d

    :cond_203
    :goto_203
    if-ge v0, v7, :cond_21a

    invoke-virtual {v6, v0, v4}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v2

    if-eqz v2, :cond_21a

    const/4 v2, 0x4

    aget v2, v8, v2

    if-ge v2, v5, :cond_21a

    const/4 v2, 0x4

    aget v9, v8, v2

    add-int/lit8 v9, v9, 0x1

    aput v9, v8, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_203

    :cond_21a
    const/4 v2, 0x4

    aget v2, v8, v2

    if-lt v2, v5, :cond_224

    const/high16 v0, 0x7fc0

    move v2, v0

    goto/16 :goto_13d

    :cond_224
    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v4, 0x1

    aget v4, v8, v4

    add-int/2addr v2, v4

    const/4 v4, 0x2

    aget v4, v8, v4

    add-int/2addr v2, v4

    const/4 v4, 0x3

    aget v4, v8, v4

    add-int/2addr v2, v4

    const/4 v4, 0x4

    aget v4, v8, v4

    add-int/2addr v2, v4

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    if-lt v2, v3, :cond_245

    const/high16 v0, 0x7fc0

    move v2, v0

    goto/16 :goto_13d

    :cond_245
    invoke-static {v8}, Lcom/google/zxing/e/b/e;->a([I)Z

    move-result v2

    if-eqz v2, :cond_252

    invoke-static {v8, v0}, Lcom/google/zxing/e/b/e;->a([II)F

    move-result v0

    move v2, v0

    goto/16 :goto_13d

    :cond_252
    const/high16 v0, 0x7fc0

    move v2, v0

    goto/16 :goto_13d

    .line 403
    :cond_257
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_151

    .line 422
    :cond_25c
    const/4 v0, 0x0

    goto/16 :goto_181

    :cond_25f
    move v0, v3

    goto/16 :goto_16b
.end method

.method private a()[I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 220
    iget-object v0, p0, Lcom/google/zxing/e/b/e;->d:[I

    aput v2, v0, v2

    .line 221
    iget-object v0, p0, Lcom/google/zxing/e/b/e;->d:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 222
    iget-object v0, p0, Lcom/google/zxing/e/b/e;->d:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 223
    iget-object v0, p0, Lcom/google/zxing/e/b/e;->d:[I

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 224
    iget-object v0, p0, Lcom/google/zxing/e/b/e;->d:[I

    const/4 v1, 0x4

    aput v2, v0, v1

    .line 225
    iget-object v0, p0, Lcom/google/zxing/e/b/e;->d:[I

    return-object v0
.end method

.method private b()Z
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 465
    iget-object v0, p0, Lcom/google/zxing/e/b/e;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v6

    move v5, v3

    move v1, v4

    move v2, v3

    .line 466
    :goto_b
    if-ge v5, v6, :cond_2a

    .line 467
    iget-object v0, p0, Lcom/google/zxing/e/b/e;->b:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/e/b/d;

    .line 468
    invoke-virtual {v0}, Lcom/google/zxing/e/b/d;->d()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_59

    .line 469
    add-int/lit8 v2, v2, 0x1

    .line 470
    invoke-virtual {v0}, Lcom/google/zxing/e/b/d;->c()F

    move-result v0

    add-float/2addr v0, v1

    move v1, v2

    .line 466
    :goto_24
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v1

    move v1, v0

    goto :goto_b

    .line 473
    :cond_2a
    const/4 v0, 0x3

    if-ge v2, v0, :cond_2f

    move v0, v3

    .line 486
    :goto_2e
    return v0

    .line 480
    :cond_2f
    int-to-float v0, v6

    div-float v5, v1, v0

    move v2, v4

    move v4, v3

    .line 482
    :goto_34
    if-ge v4, v6, :cond_4d

    .line 483
    iget-object v0, p0, Lcom/google/zxing/e/b/e;->b:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/e/b/d;

    .line 484
    invoke-virtual {v0}, Lcom/google/zxing/e/b/d;->c()F

    move-result v0

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v0, v2

    .line 482
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    goto :goto_34

    .line 486
    :cond_4d
    const v0, 0x3d4ccccd

    mul-float/2addr v0, v1

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_57

    const/4 v0, 0x1

    goto :goto_2e

    :cond_57
    move v0, v3

    goto :goto_2e

    :cond_59
    move v0, v1

    move v1, v2

    goto :goto_24
.end method


# virtual methods
.method final a(Ljava/util/Hashtable;)Lcom/google/zxing/e/b/h;
    .registers 15
    .parameter

    .prologue
    .line 76
    if-eqz p1, :cond_58

    sget-object v0, Lcom/google/zxing/d;->d:Lcom/google/zxing/d;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    const/4 v0, 0x1

    .line 77
    :goto_b
    iget-object v1, p0, Lcom/google/zxing/e/b/e;->a:Lcom/google/zxing/common/b;

    iget v7, v1, Lcom/google/zxing/common/b;->b:I

    .line 78
    iget-object v1, p0, Lcom/google/zxing/e/b/e;->a:Lcom/google/zxing/common/b;

    iget v8, v1, Lcom/google/zxing/common/b;->a:I

    .line 86
    mul-int/lit8 v1, v7, 0x3

    div-int/lit16 v1, v1, 0xe4

    .line 87
    const/4 v2, 0x3

    if-lt v1, v2, :cond_1c

    if-eqz v0, :cond_248

    .line 88
    :cond_1c
    const/4 v0, 0x3

    .line 91
    :goto_1d
    const/4 v4, 0x0

    .line 92
    const/4 v1, 0x5

    new-array v9, v1, [I

    .line 93
    add-int/lit8 v3, v0, -0x1

    move v1, v0

    :goto_24
    if-ge v3, v7, :cond_151

    if-nez v4, :cond_151

    .line 95
    const/4 v0, 0x0

    const/4 v2, 0x0

    aput v2, v9, v0

    .line 96
    const/4 v0, 0x1

    const/4 v2, 0x0

    aput v2, v9, v0

    .line 97
    const/4 v0, 0x2

    const/4 v2, 0x0

    aput v2, v9, v0

    .line 98
    const/4 v0, 0x3

    const/4 v2, 0x0

    aput v2, v9, v0

    .line 99
    const/4 v0, 0x4

    const/4 v2, 0x0

    aput v2, v9, v0

    .line 100
    const/4 v0, 0x0

    .line 101
    const/4 v2, 0x0

    :goto_3e
    if-ge v2, v8, :cond_137

    .line 102
    iget-object v5, p0, Lcom/google/zxing/e/b/e;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v5, v2, v3}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 104
    and-int/lit8 v5, v0, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4f

    .line 105
    add-int/lit8 v0, v0, 0x1

    .line 107
    :cond_4f
    aget v5, v9, v0

    add-int/lit8 v5, v5, 0x1

    aput v5, v9, v0

    .line 101
    :goto_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 76
    :cond_58
    const/4 v0, 0x0

    goto :goto_b

    .line 109
    :cond_5a
    and-int/lit8 v5, v0, 0x1

    if-nez v5, :cond_12f

    .line 110
    const/4 v5, 0x4

    if-ne v0, v5, :cond_125

    .line 111
    invoke-static {v9}, Lcom/google/zxing/e/b/e;->a([I)Z

    move-result v0

    if-eqz v0, :cond_108

    .line 112
    invoke-direct {p0, v9, v3, v2}, Lcom/google/zxing/e/b/e;->a([III)Z

    move-result v0

    .line 113
    if-eqz v0, :cond_eb

    .line 116
    const/4 v5, 0x2

    .line 117
    iget-boolean v0, p0, Lcom/google/zxing/e/b/e;->c:Z

    if-eqz v0, :cond_8f

    .line 118
    invoke-direct {p0}, Lcom/google/zxing/e/b/e;->b()Z

    move-result v0

    .line 144
    :goto_76
    const/4 v1, 0x0

    .line 145
    const/4 v4, 0x0

    const/4 v6, 0x0

    aput v6, v9, v4

    .line 146
    const/4 v4, 0x1

    const/4 v6, 0x0

    aput v6, v9, v4

    .line 147
    const/4 v4, 0x2

    const/4 v6, 0x0

    aput v6, v9, v4

    .line 148
    const/4 v4, 0x3

    const/4 v6, 0x0

    aput v6, v9, v4

    .line 149
    const/4 v4, 0x4

    const/4 v6, 0x0

    aput v6, v9, v4

    move v4, v0

    move v0, v1

    move v1, v5

    .line 150
    goto :goto_55

    .line 120
    :cond_8f
    iget-object v0, p0, Lcom/google/zxing/e/b/e;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v10

    const/4 v0, 0x1

    if-le v10, v0, :cond_e9

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v6, v0

    :goto_9b
    if-ge v6, v10, :cond_e9

    iget-object v0, p0, Lcom/google/zxing/e/b/e;->b:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/e/b/d;

    invoke-virtual {v0}, Lcom/google/zxing/e/b/d;->d()I

    move-result v11

    const/4 v12, 0x2

    if-lt v11, v12, :cond_245

    if-nez v1, :cond_b3

    :goto_ae
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move-object v1, v0

    goto :goto_9b

    :cond_b3
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/google/zxing/e/b/e;->c:Z

    invoke-virtual {v1}, Lcom/google/zxing/e/b/d;->a()F

    move-result v6

    invoke-virtual {v0}, Lcom/google/zxing/e/b/d;->a()F

    move-result v10

    sub-float/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-virtual {v1}, Lcom/google/zxing/e/b/d;->b()F

    move-result v1

    invoke-virtual {v0}, Lcom/google/zxing/e/b/d;->b()F

    move-result v0

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v6, v0

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 121
    :goto_d6
    const/4 v1, 0x2

    aget v1, v9, v1

    if-le v0, v1, :cond_241

    .line 130
    const/4 v1, 0x2

    aget v1, v9, v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    add-int v1, v3, v0

    .line 131
    add-int/lit8 v0, v8, -0x1

    :goto_e5
    move v2, v0

    move v3, v1

    move v0, v4

    .line 133
    goto :goto_76

    .line 120
    :cond_e9
    const/4 v0, 0x0

    goto :goto_d6

    .line 135
    :cond_eb
    const/4 v0, 0x0

    const/4 v5, 0x2

    aget v5, v9, v5

    aput v5, v9, v0

    .line 136
    const/4 v0, 0x1

    const/4 v5, 0x3

    aget v5, v9, v5

    aput v5, v9, v0

    .line 137
    const/4 v0, 0x2

    const/4 v5, 0x4

    aget v5, v9, v5

    aput v5, v9, v0

    .line 138
    const/4 v0, 0x3

    const/4 v5, 0x1

    aput v5, v9, v0

    .line 139
    const/4 v0, 0x4

    const/4 v5, 0x0

    aput v5, v9, v0

    .line 140
    const/4 v0, 0x3

    .line 141
    goto/16 :goto_55

    .line 151
    :cond_108
    const/4 v0, 0x0

    const/4 v5, 0x2

    aget v5, v9, v5

    aput v5, v9, v0

    .line 152
    const/4 v0, 0x1

    const/4 v5, 0x3

    aget v5, v9, v5

    aput v5, v9, v0

    .line 153
    const/4 v0, 0x2

    const/4 v5, 0x4

    aget v5, v9, v5

    aput v5, v9, v0

    .line 154
    const/4 v0, 0x3

    const/4 v5, 0x1

    aput v5, v9, v0

    .line 155
    const/4 v0, 0x4

    const/4 v5, 0x0

    aput v5, v9, v0

    .line 156
    const/4 v0, 0x3

    goto/16 :goto_55

    .line 159
    :cond_125
    add-int/lit8 v0, v0, 0x1

    aget v5, v9, v0

    add-int/lit8 v5, v5, 0x1

    aput v5, v9, v0

    goto/16 :goto_55

    .line 162
    :cond_12f
    aget v5, v9, v0

    add-int/lit8 v5, v5, 0x1

    aput v5, v9, v0

    goto/16 :goto_55

    .line 166
    :cond_137
    invoke-static {v9}, Lcom/google/zxing/e/b/e;->a([I)Z

    move-result v0

    if-eqz v0, :cond_14e

    .line 167
    invoke-direct {p0, v9, v3, v8}, Lcom/google/zxing/e/b/e;->a([III)Z

    move-result v0

    .line 168
    if-eqz v0, :cond_14e

    .line 169
    const/4 v0, 0x0

    aget v1, v9, v0

    .line 170
    iget-boolean v0, p0, Lcom/google/zxing/e/b/e;->c:Z

    if-eqz v0, :cond_14e

    .line 172
    invoke-direct {p0}, Lcom/google/zxing/e/b/e;->b()Z

    move-result v4

    .line 93
    :cond_14e
    add-int/2addr v3, v1

    goto/16 :goto_24

    .line 178
    :cond_151
    iget-object v0, p0, Lcom/google/zxing/e/b/e;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v0, 0x3

    if-ge v4, v0, :cond_15f

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_15f
    const/4 v0, 0x3

    if-le v4, v0, :cond_1cf

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_168
    if-ge v1, v4, :cond_17d

    iget-object v0, p0, Lcom/google/zxing/e/b/e;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/e/b/d;

    invoke-virtual {v0}, Lcom/google/zxing/e/b/d;->c()F

    move-result v0

    add-float/2addr v3, v0

    mul-float/2addr v0, v0

    add-float/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_168

    :cond_17d
    int-to-float v0, v4

    div-float/2addr v3, v0

    int-to-float v0, v4

    div-float v0, v2, v0

    mul-float v1, v3, v3

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/google/zxing/e/b/e;->b:Ljava/util/Vector;

    new-instance v2, Lcom/google/zxing/e/b/g;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/e/b/g;-><init>(FB)V

    invoke-static {v1, v2}, Lcom/google/zxing/common/e;->a(Ljava/util/Vector;Lcom/google/zxing/common/f;)V

    const v1, 0x3e4ccccd

    mul-float/2addr v1, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/4 v1, 0x0

    :goto_19f
    iget-object v0, p0, Lcom/google/zxing/e/b/e;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1cf

    iget-object v0, p0, Lcom/google/zxing/e/b/e;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v4, 0x3

    if-le v0, v4, :cond_1cf

    iget-object v0, p0, Lcom/google/zxing/e/b/e;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/e/b/d;

    invoke-virtual {v0}, Lcom/google/zxing/e/b/d;->c()F

    move-result v0

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_23f

    iget-object v0, p0, Lcom/google/zxing/e/b/e;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    add-int/lit8 v0, v1, -0x1

    :goto_1cc
    add-int/lit8 v1, v0, 0x1

    goto :goto_19f

    :cond_1cf
    iget-object v0, p0, Lcom/google/zxing/e/b/e;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_20f

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_1dc
    iget-object v0, p0, Lcom/google/zxing/e/b/e;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f5

    iget-object v0, p0, Lcom/google/zxing/e/b/e;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/e/b/d;

    invoke-virtual {v0}, Lcom/google/zxing/e/b/d;->c()F

    move-result v0

    add-float/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1dc

    :cond_1f5
    iget-object v0, p0, Lcom/google/zxing/e/b/e;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    iget-object v1, p0, Lcom/google/zxing/e/b/e;->b:Ljava/util/Vector;

    new-instance v2, Lcom/google/zxing/e/b/f;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/zxing/e/b/f;-><init>(FB)V

    invoke-static {v1, v2}, Lcom/google/zxing/common/e;->a(Ljava/util/Vector;Lcom/google/zxing/common/f;)V

    iget-object v0, p0, Lcom/google/zxing/e/b/e;->b:Ljava/util/Vector;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    :cond_20f
    const/4 v0, 0x3

    new-array v1, v0, [Lcom/google/zxing/e/b/d;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/zxing/e/b/e;->b:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/e/b/d;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/zxing/e/b/e;->b:Ljava/util/Vector;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/e/b/d;

    aput-object v0, v1, v2

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/google/zxing/e/b/e;->b:Ljava/util/Vector;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/e/b/d;

    aput-object v0, v1, v2

    .line 179
    invoke-static {v1}, Lcom/google/zxing/j;->a([Lcom/google/zxing/j;)V

    .line 181
    new-instance v0, Lcom/google/zxing/e/b/h;

    invoke-direct {v0, v1}, Lcom/google/zxing/e/b/h;-><init>([Lcom/google/zxing/e/b/d;)V

    return-object v0

    :cond_23f
    move v0, v1

    goto :goto_1cc

    :cond_241
    move v0, v2

    move v1, v3

    goto/16 :goto_e5

    :cond_245
    move-object v0, v1

    goto/16 :goto_ae

    :cond_248
    move v0, v1

    goto/16 :goto_1d
.end method
