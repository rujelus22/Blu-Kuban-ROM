.class public final Lcom/google/zxing/common/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:F

.field private final g:F

.field private final h:F

.field private final i:F


# direct methods
.method private constructor <init>(FFFFFFFFF)V
    .registers 10
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
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/google/zxing/common/n;->a:F

    .line 34
    iput p4, p0, Lcom/google/zxing/common/n;->b:F

    .line 35
    iput p7, p0, Lcom/google/zxing/common/n;->c:F

    .line 36
    iput p2, p0, Lcom/google/zxing/common/n;->d:F

    .line 37
    iput p5, p0, Lcom/google/zxing/common/n;->e:F

    .line 38
    iput p8, p0, Lcom/google/zxing/common/n;->f:F

    .line 39
    iput p3, p0, Lcom/google/zxing/common/n;->g:F

    .line 40
    iput p6, p0, Lcom/google/zxing/common/n;->h:F

    .line 41
    iput p9, p0, Lcom/google/zxing/common/n;->i:F

    .line 42
    return-void
.end method

.method private static a(FFFFFFFF)Lcom/google/zxing/common/n;
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
    .line 94
    sub-float v0, p7, p5

    .line 95
    sub-float v1, p1, p3

    add-float/2addr v1, p5

    sub-float v1, v1, p7

    .line 96
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_25

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_25

    .line 97
    new-instance v0, Lcom/google/zxing/common/n;

    sub-float v1, p2, p0

    sub-float v2, p4, p2

    sub-float v4, p3, p1

    sub-float v5, p5, p3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f80

    move v3, p0

    move v6, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/n;-><init>(FFFFFFFFF)V

    .line 108
    :goto_24
    return-object v0

    .line 101
    :cond_25
    sub-float v2, p2, p4

    .line 102
    sub-float v3, p6, p4

    .line 103
    sub-float v4, p0, p2

    add-float/2addr v4, p4

    sub-float v4, v4, p6

    .line 104
    sub-float v5, p3, p5

    .line 105
    mul-float v6, v2, v0

    mul-float v7, v3, v5

    sub-float/2addr v6, v7

    .line 106
    mul-float/2addr v0, v4

    mul-float/2addr v3, v1

    sub-float/2addr v0, v3

    div-float v7, v0, v6

    .line 107
    mul-float v0, v2, v1

    mul-float v1, v4, v5

    sub-float/2addr v0, v1

    div-float v8, v0, v6

    .line 108
    new-instance v0, Lcom/google/zxing/common/n;

    sub-float v1, p2, p0

    mul-float v2, v7, p2

    add-float/2addr v1, v2

    sub-float v2, p6, p0

    mul-float v3, v8, p6

    add-float/2addr v2, v3

    sub-float v3, p3, p1

    mul-float v4, v7, p3

    add-float/2addr v4, v3

    sub-float v3, p7, p1

    mul-float v5, v8, p7

    add-float/2addr v5, v3

    const/high16 v9, 0x3f80

    move v3, p0

    move v6, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/n;-><init>(FFFFFFFFF)V

    goto :goto_24
.end method

.method public static a(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/n;
    .registers 30
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
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
    .line 53
    invoke-static/range {p0 .. p7}, Lcom/google/zxing/common/n;->a(FFFFFFFF)Lcom/google/zxing/common/n;

    move-result-object v9

    new-instance v0, Lcom/google/zxing/common/n;

    iget v1, v9, Lcom/google/zxing/common/n;->e:F

    iget v2, v9, Lcom/google/zxing/common/n;->i:F

    mul-float/2addr v1, v2

    iget v2, v9, Lcom/google/zxing/common/n;->f:F

    iget v3, v9, Lcom/google/zxing/common/n;->h:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, v9, Lcom/google/zxing/common/n;->f:F

    iget v3, v9, Lcom/google/zxing/common/n;->g:F

    mul-float/2addr v2, v3

    iget v3, v9, Lcom/google/zxing/common/n;->d:F

    iget v4, v9, Lcom/google/zxing/common/n;->i:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, v9, Lcom/google/zxing/common/n;->d:F

    iget v4, v9, Lcom/google/zxing/common/n;->h:F

    mul-float/2addr v3, v4

    iget v4, v9, Lcom/google/zxing/common/n;->e:F

    iget v5, v9, Lcom/google/zxing/common/n;->g:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, v9, Lcom/google/zxing/common/n;->c:F

    iget v5, v9, Lcom/google/zxing/common/n;->h:F

    mul-float/2addr v4, v5

    iget v5, v9, Lcom/google/zxing/common/n;->b:F

    iget v6, v9, Lcom/google/zxing/common/n;->i:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, v9, Lcom/google/zxing/common/n;->a:F

    iget v6, v9, Lcom/google/zxing/common/n;->i:F

    mul-float/2addr v5, v6

    iget v6, v9, Lcom/google/zxing/common/n;->c:F

    iget v7, v9, Lcom/google/zxing/common/n;->g:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget v6, v9, Lcom/google/zxing/common/n;->b:F

    iget v7, v9, Lcom/google/zxing/common/n;->g:F

    mul-float/2addr v6, v7

    iget v7, v9, Lcom/google/zxing/common/n;->a:F

    iget v8, v9, Lcom/google/zxing/common/n;->h:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget v7, v9, Lcom/google/zxing/common/n;->b:F

    iget v8, v9, Lcom/google/zxing/common/n;->f:F

    mul-float/2addr v7, v8

    iget v8, v9, Lcom/google/zxing/common/n;->c:F

    iget v10, v9, Lcom/google/zxing/common/n;->e:F

    mul-float/2addr v8, v10

    sub-float/2addr v7, v8

    iget v8, v9, Lcom/google/zxing/common/n;->c:F

    iget v10, v9, Lcom/google/zxing/common/n;->d:F

    mul-float/2addr v8, v10

    iget v10, v9, Lcom/google/zxing/common/n;->a:F

    iget v11, v9, Lcom/google/zxing/common/n;->f:F

    mul-float/2addr v10, v11

    sub-float/2addr v8, v10

    iget v10, v9, Lcom/google/zxing/common/n;->a:F

    iget v11, v9, Lcom/google/zxing/common/n;->e:F

    mul-float/2addr v10, v11

    iget v11, v9, Lcom/google/zxing/common/n;->b:F

    iget v9, v9, Lcom/google/zxing/common/n;->d:F

    mul-float/2addr v9, v11

    sub-float v9, v10, v9

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/n;-><init>(FFFFFFFFF)V

    .line 54
    invoke-static/range {p8 .. p15}, Lcom/google/zxing/common/n;->a(FFFFFFFF)Lcom/google/zxing/common/n;

    move-result-object v9

    .line 55
    new-instance v10, Lcom/google/zxing/common/n;

    iget v1, v9, Lcom/google/zxing/common/n;->a:F

    iget v2, v0, Lcom/google/zxing/common/n;->a:F

    mul-float/2addr v1, v2

    iget v2, v9, Lcom/google/zxing/common/n;->d:F

    iget v3, v0, Lcom/google/zxing/common/n;->b:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, v9, Lcom/google/zxing/common/n;->g:F

    iget v3, v0, Lcom/google/zxing/common/n;->c:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, v9, Lcom/google/zxing/common/n;->a:F

    iget v3, v0, Lcom/google/zxing/common/n;->d:F

    mul-float/2addr v2, v3

    iget v3, v9, Lcom/google/zxing/common/n;->d:F

    iget v4, v0, Lcom/google/zxing/common/n;->e:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v9, Lcom/google/zxing/common/n;->g:F

    iget v4, v0, Lcom/google/zxing/common/n;->f:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v9, Lcom/google/zxing/common/n;->a:F

    iget v4, v0, Lcom/google/zxing/common/n;->g:F

    mul-float/2addr v3, v4

    iget v4, v9, Lcom/google/zxing/common/n;->d:F

    iget v5, v0, Lcom/google/zxing/common/n;->h:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, v9, Lcom/google/zxing/common/n;->g:F

    iget v5, v0, Lcom/google/zxing/common/n;->i:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, v9, Lcom/google/zxing/common/n;->b:F

    iget v5, v0, Lcom/google/zxing/common/n;->a:F

    mul-float/2addr v4, v5

    iget v5, v9, Lcom/google/zxing/common/n;->e:F

    iget v6, v0, Lcom/google/zxing/common/n;->b:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, v9, Lcom/google/zxing/common/n;->h:F

    iget v6, v0, Lcom/google/zxing/common/n;->c:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, v9, Lcom/google/zxing/common/n;->b:F

    iget v6, v0, Lcom/google/zxing/common/n;->d:F

    mul-float/2addr v5, v6

    iget v6, v9, Lcom/google/zxing/common/n;->e:F

    iget v7, v0, Lcom/google/zxing/common/n;->e:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, v9, Lcom/google/zxing/common/n;->h:F

    iget v7, v0, Lcom/google/zxing/common/n;->f:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, v9, Lcom/google/zxing/common/n;->b:F

    iget v7, v0, Lcom/google/zxing/common/n;->g:F

    mul-float/2addr v6, v7

    iget v7, v9, Lcom/google/zxing/common/n;->e:F

    iget v8, v0, Lcom/google/zxing/common/n;->h:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, v9, Lcom/google/zxing/common/n;->h:F

    iget v8, v0, Lcom/google/zxing/common/n;->i:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, v9, Lcom/google/zxing/common/n;->c:F

    iget v8, v0, Lcom/google/zxing/common/n;->a:F

    mul-float/2addr v7, v8

    iget v8, v9, Lcom/google/zxing/common/n;->f:F

    iget v11, v0, Lcom/google/zxing/common/n;->b:F

    mul-float/2addr v8, v11

    add-float/2addr v7, v8

    iget v8, v9, Lcom/google/zxing/common/n;->i:F

    iget v11, v0, Lcom/google/zxing/common/n;->c:F

    mul-float/2addr v8, v11

    add-float/2addr v7, v8

    iget v8, v9, Lcom/google/zxing/common/n;->c:F

    iget v11, v0, Lcom/google/zxing/common/n;->d:F

    mul-float/2addr v8, v11

    iget v11, v9, Lcom/google/zxing/common/n;->f:F

    iget v12, v0, Lcom/google/zxing/common/n;->e:F

    mul-float/2addr v11, v12

    add-float/2addr v8, v11

    iget v11, v9, Lcom/google/zxing/common/n;->i:F

    iget v12, v0, Lcom/google/zxing/common/n;->f:F

    mul-float/2addr v11, v12

    add-float/2addr v8, v11

    iget v11, v9, Lcom/google/zxing/common/n;->c:F

    iget v12, v0, Lcom/google/zxing/common/n;->g:F

    mul-float/2addr v11, v12

    iget v12, v9, Lcom/google/zxing/common/n;->f:F

    iget v13, v0, Lcom/google/zxing/common/n;->h:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    iget v9, v9, Lcom/google/zxing/common/n;->i:F

    iget v0, v0, Lcom/google/zxing/common/n;->i:F

    mul-float/2addr v0, v9

    add-float v9, v11, v0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/n;-><init>(FFFFFFFFF)V

    return-object v10
.end method


# virtual methods
.method public final a([F)V
    .registers 19
    .parameter

    .prologue
    .line 59
    move-object/from16 v0, p1

    array-length v2, v0

    .line 60
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/zxing/common/n;->a:F

    .line 61
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/zxing/common/n;->b:F

    .line 62
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/zxing/common/n;->c:F

    .line 63
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/zxing/common/n;->d:F

    .line 64
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/zxing/common/n;->e:F

    .line 65
    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/zxing/common/n;->f:F

    .line 66
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/zxing/common/n;->g:F

    .line 67
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/zxing/common/n;->h:F

    .line 68
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/zxing/common/n;->i:F

    .line 69
    const/4 v1, 0x0

    :goto_28
    if-ge v1, v2, :cond_4c

    .line 70
    aget v12, p1, v1

    .line 71
    add-int/lit8 v13, v1, 0x1

    aget v13, p1, v13

    .line 72
    mul-float v14, v5, v12

    mul-float v15, v8, v13

    add-float/2addr v14, v15

    add-float/2addr v14, v11

    .line 73
    mul-float v15, v3, v12

    mul-float v16, v6, v13

    add-float v15, v15, v16

    add-float/2addr v15, v9

    div-float/2addr v15, v14

    aput v15, p1, v1

    .line 74
    add-int/lit8 v15, v1, 0x1

    mul-float/2addr v12, v4

    mul-float/2addr v13, v7

    add-float/2addr v12, v13

    add-float/2addr v12, v10

    div-float/2addr v12, v14

    aput v12, p1, v15

    .line 69
    add-int/lit8 v1, v1, 0x2

    goto :goto_28

    .line 76
    :cond_4c
    return-void
.end method
