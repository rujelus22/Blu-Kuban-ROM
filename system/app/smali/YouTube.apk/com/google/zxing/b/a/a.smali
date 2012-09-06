.class final Lcom/google/zxing/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/common/b;

.field private final b:Lcom/google/zxing/common/b;

.field private final c:Lcom/google/zxing/b/a/e;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/b;)V
    .registers 5
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget v0, p1, Lcom/google/zxing/common/b;->b:I

    .line 37
    const/16 v1, 0x8

    if-lt v0, v1, :cond_11

    const/16 v1, 0x90

    if-gt v0, v1, :cond_11

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_16

    .line 38
    :cond_11
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 41
    :cond_16
    iget v0, p1, Lcom/google/zxing/common/b;->b:I

    iget v1, p1, Lcom/google/zxing/common/b;->a:I

    invoke-static {v0, v1}, Lcom/google/zxing/b/a/e;->a(II)Lcom/google/zxing/b/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/b/a/a;->c:Lcom/google/zxing/b/a/e;

    .line 42
    invoke-direct {p0, p1}, Lcom/google/zxing/b/a/a;->a(Lcom/google/zxing/common/b;)Lcom/google/zxing/common/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/b/a/a;->a:Lcom/google/zxing/common/b;

    .line 43
    new-instance v0, Lcom/google/zxing/common/b;

    iget-object v1, p0, Lcom/google/zxing/b/a/a;->a:Lcom/google/zxing/common/b;

    iget v1, v1, Lcom/google/zxing/common/b;->a:I

    iget-object v2, p0, Lcom/google/zxing/b/a/a;->a:Lcom/google/zxing/common/b;

    iget v2, v2, Lcom/google/zxing/common/b;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/common/b;-><init>(II)V

    iput-object v0, p0, Lcom/google/zxing/b/a/a;->b:Lcom/google/zxing/common/b;

    .line 44
    return-void
.end method

.method private a(Lcom/google/zxing/common/b;)Lcom/google/zxing/common/b;
    .registers 16
    .parameter

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/zxing/b/a/a;->c:Lcom/google/zxing/b/a/e;

    invoke-virtual {v0}, Lcom/google/zxing/b/a/e;->b()I

    move-result v0

    .line 404
    iget-object v1, p0, Lcom/google/zxing/b/a/a;->c:Lcom/google/zxing/b/a/e;

    invoke-virtual {v1}, Lcom/google/zxing/b/a/e;->c()I

    move-result v1

    .line 406
    iget v2, p1, Lcom/google/zxing/common/b;->b:I

    if-eq v2, v0, :cond_18

    .line 407
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Dimension of bitMarix must match the version size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_18
    iget-object v2, p0, Lcom/google/zxing/b/a/a;->c:Lcom/google/zxing/b/a/e;

    invoke-virtual {v2}, Lcom/google/zxing/b/a/e;->d()I

    move-result v4

    .line 411
    iget-object v2, p0, Lcom/google/zxing/b/a/a;->c:Lcom/google/zxing/b/a/e;

    invoke-virtual {v2}, Lcom/google/zxing/b/a/e;->e()I

    move-result v5

    .line 413
    div-int v6, v0, v4

    .line 414
    div-int v7, v1, v5

    .line 416
    mul-int v0, v6, v4

    .line 417
    mul-int v1, v7, v5

    .line 419
    new-instance v8, Lcom/google/zxing/common/b;

    invoke-direct {v8, v1, v0}, Lcom/google/zxing/common/b;-><init>(II)V

    .line 420
    const/4 v0, 0x0

    move v3, v0

    :goto_33
    if-ge v3, v6, :cond_6d

    .line 421
    mul-int v9, v3, v4

    .line 422
    const/4 v0, 0x0

    move v2, v0

    :goto_39
    if-ge v2, v7, :cond_69

    .line 423
    mul-int v10, v2, v5

    .line 424
    const/4 v0, 0x0

    move v1, v0

    :goto_3f
    if-ge v1, v4, :cond_65

    .line 425
    add-int/lit8 v0, v4, 0x2

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    add-int v11, v0, v1

    .line 426
    add-int v12, v9, v1

    .line 427
    const/4 v0, 0x0

    :goto_4b
    if-ge v0, v5, :cond_61

    .line 428
    add-int/lit8 v13, v5, 0x2

    mul-int/2addr v13, v2

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v13, v0

    .line 429
    invoke-virtual {p1, v13, v11}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v13

    if-eqz v13, :cond_5e

    .line 430
    add-int v13, v10, v0

    .line 431
    invoke-virtual {v8, v13, v12}, Lcom/google/zxing/common/b;->b(II)V

    .line 427
    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 424
    :cond_61
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3f

    .line 422
    :cond_65
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_39

    .line 420
    :cond_69
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_33

    .line 437
    :cond_6d
    return-object v8
.end method

.method private a(IIII)Z
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    if-gez p1, :cond_21

    .line 157
    add-int v1, p1, p3

    .line 158
    add-int/lit8 v0, p3, 0x4

    and-int/lit8 v0, v0, 0x7

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p2

    .line 160
    :goto_b
    if-gez v0, :cond_15

    .line 161
    add-int/2addr v0, p4

    .line 162
    add-int/lit8 v2, p4, 0x4

    and-int/lit8 v2, v2, 0x7

    rsub-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 164
    :cond_15
    iget-object v2, p0, Lcom/google/zxing/b/a/a;->b:Lcom/google/zxing/common/b;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/b;->b(II)V

    .line 165
    iget-object v2, p0, Lcom/google/zxing/b/a/a;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v0

    return v0

    :cond_21
    move v0, p2

    move v1, p1

    goto :goto_b
.end method

.method private b(IIII)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    add-int/lit8 v1, p1, -0x2

    add-int/lit8 v2, p2, -0x2

    invoke-direct {p0, v1, v2, p3, p4}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 182
    const/4 v0, 0x1

    .line 184
    :cond_c
    shl-int/lit8 v0, v0, 0x1

    .line 185
    add-int/lit8 v1, p1, -0x2

    add-int/lit8 v2, p2, -0x1

    invoke-direct {p0, v1, v2, p3, p4}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 186
    or-int/lit8 v0, v0, 0x1

    .line 188
    :cond_1a
    shl-int/lit8 v0, v0, 0x1

    .line 189
    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x2

    invoke-direct {p0, v1, v2, p3, p4}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 190
    or-int/lit8 v0, v0, 0x1

    .line 192
    :cond_28
    shl-int/lit8 v0, v0, 0x1

    .line 193
    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    invoke-direct {p0, v1, v2, p3, p4}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 194
    or-int/lit8 v0, v0, 0x1

    .line 196
    :cond_36
    shl-int/lit8 v0, v0, 0x1

    .line 197
    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1, p2, p3, p4}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 198
    or-int/lit8 v0, v0, 0x1

    .line 200
    :cond_42
    shl-int/lit8 v0, v0, 0x1

    .line 201
    add-int/lit8 v1, p2, -0x2

    invoke-direct {p0, p1, v1, p3, p4}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 202
    or-int/lit8 v0, v0, 0x1

    .line 204
    :cond_4e
    shl-int/lit8 v0, v0, 0x1

    .line 205
    add-int/lit8 v1, p2, -0x1

    invoke-direct {p0, p1, v1, p3, p4}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 206
    or-int/lit8 v0, v0, 0x1

    .line 208
    :cond_5a
    shl-int/lit8 v0, v0, 0x1

    .line 209
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 210
    or-int/lit8 v0, v0, 0x1

    .line 212
    :cond_64
    return v0
.end method


# virtual methods
.method final a()Lcom/google/zxing/b/a/e;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/zxing/b/a/a;->c:Lcom/google/zxing/b/a/e;

    return-object v0
.end method

.method final b()[B
    .registers 16

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/zxing/b/a/a;->c:Lcom/google/zxing/b/a/e;

    invoke-virtual {v0}, Lcom/google/zxing/b/a/e;->f()I

    move-result v0

    new-array v9, v0, [B

    .line 78
    const/4 v6, 0x0

    .line 80
    const/4 v5, 0x4

    .line 81
    const/4 v4, 0x0

    .line 83
    iget-object v0, p0, Lcom/google/zxing/b/a/a;->a:Lcom/google/zxing/common/b;

    iget v10, v0, Lcom/google/zxing/common/b;->b:I

    .line 84
    iget-object v0, p0, Lcom/google/zxing/b/a/a;->a:Lcom/google/zxing/common/b;

    iget v11, v0, Lcom/google/zxing/common/b;->a:I

    .line 86
    const/4 v3, 0x0

    .line 87
    const/4 v2, 0x0

    .line 88
    const/4 v1, 0x0

    .line 89
    const/4 v0, 0x0

    move v7, v4

    move v8, v6

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    .line 94
    :goto_1d
    if-ne v5, v10, :cond_a9

    if-nez v7, :cond_a9

    if-nez v4, :cond_a9

    .line 95
    add-int/lit8 v6, v8, 0x1

    const/4 v0, 0x0

    add-int/lit8 v4, v10, -0x1

    const/4 v12, 0x0

    invoke-direct {p0, v4, v12, v10, v11}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v4

    if-eqz v4, :cond_30

    const/4 v0, 0x1

    :cond_30
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v10, -0x1

    const/4 v12, 0x1

    invoke-direct {p0, v4, v12, v10, v11}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v4

    if-eqz v4, :cond_3d

    or-int/lit8 v0, v0, 0x1

    :cond_3d
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v10, -0x1

    const/4 v12, 0x2

    invoke-direct {p0, v4, v12, v10, v11}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v4

    if-eqz v4, :cond_4a

    or-int/lit8 v0, v0, 0x1

    :cond_4a
    shl-int/lit8 v0, v0, 0x1

    const/4 v4, 0x0

    add-int/lit8 v12, v11, -0x2

    invoke-direct {p0, v4, v12, v10, v11}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v4

    if-eqz v4, :cond_57

    or-int/lit8 v0, v0, 0x1

    :cond_57
    shl-int/lit8 v0, v0, 0x1

    const/4 v4, 0x0

    add-int/lit8 v12, v11, -0x1

    invoke-direct {p0, v4, v12, v10, v11}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v4

    if-eqz v4, :cond_64

    or-int/lit8 v0, v0, 0x1

    :cond_64
    shl-int/lit8 v0, v0, 0x1

    const/4 v4, 0x1

    add-int/lit8 v12, v11, -0x1

    invoke-direct {p0, v4, v12, v10, v11}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v4

    if-eqz v4, :cond_71

    or-int/lit8 v0, v0, 0x1

    :cond_71
    shl-int/lit8 v0, v0, 0x1

    const/4 v4, 0x2

    add-int/lit8 v12, v11, -0x1

    invoke-direct {p0, v4, v12, v10, v11}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v4

    if-eqz v4, :cond_7e

    or-int/lit8 v0, v0, 0x1

    :cond_7e
    shl-int/lit8 v0, v0, 0x1

    const/4 v4, 0x3

    add-int/lit8 v12, v11, -0x1

    invoke-direct {p0, v4, v12, v10, v11}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v4

    if-eqz v4, :cond_8b

    or-int/lit8 v0, v0, 0x1

    :cond_8b
    int-to-byte v0, v0

    aput-byte v0, v9, v8

    .line 96
    add-int/lit8 v5, v5, -0x2

    .line 97
    add-int/lit8 v4, v7, 0x2

    .line 98
    const/4 v0, 0x1

    move v13, v1

    move v1, v2

    move v2, v3

    move v3, v0

    move v0, v13

    .line 137
    :goto_98
    if-lt v5, v10, :cond_289

    if-lt v4, v11, :cond_289

    .line 139
    iget-object v0, p0, Lcom/google/zxing/b/a/a;->c:Lcom/google/zxing/b/a/e;

    invoke-virtual {v0}, Lcom/google/zxing/b/a/e;->f()I

    move-result v0

    if-eq v6, v0, :cond_288

    .line 140
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 99
    :cond_a9
    add-int/lit8 v0, v10, -0x2

    if-ne v5, v0, :cond_12e

    if-nez v7, :cond_12e

    and-int/lit8 v0, v11, 0x3

    if-eqz v0, :cond_12e

    if-nez v3, :cond_12e

    .line 100
    add-int/lit8 v6, v8, 0x1

    const/4 v0, 0x0

    add-int/lit8 v3, v10, -0x3

    const/4 v12, 0x0

    invoke-direct {p0, v3, v12, v10, v11}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_c2

    const/4 v0, 0x1

    :cond_c2
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v10, -0x2

    const/4 v12, 0x0

    invoke-direct {p0, v3, v12, v10, v11}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_cf

    or-int/lit8 v0, v0, 0x1

    :cond_cf
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v10, -0x1

    const/4 v12, 0x0

    invoke-direct {p0, v3, v12, v10, v11}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_dc

    or-int/lit8 v0, v0, 0x1

    :cond_dc
    shl-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    add-int/lit8 v12, v11, -0x4

    invoke-direct {p0, v3, v12, v10, v11}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_e9

    or-int/lit8 v0, v0, 0x1

    :cond_e9
    shl-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    add-int/lit8 v12, v11, -0x3

    invoke-direct {p0, v3, v12, v10, v11}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_f6

    or-int/lit8 v0, v0, 0x1

    :cond_f6
    shl-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    add-int/lit8 v12, v11, -0x2

    invoke-direct {p0, v3, v12, v10, v11}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_103

    or-int/lit8 v0, v0, 0x1

    :cond_103
    shl-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    add-int/lit8 v12, v11, -0x1

    invoke-direct {p0, v3, v12, v10, v11}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_110

    or-int/lit8 v0, v0, 0x1

    :cond_110
    shl-int/lit8 v0, v0, 0x1

    const/4 v3, 0x1

    add-int/lit8 v12, v11, -0x1

    invoke-direct {p0, v3, v12, v10, v11}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_11d

    or-int/lit8 v0, v0, 0x1

    :cond_11d
    int-to-byte v0, v0

    aput-byte v0, v9, v8

    .line 101
    add-int/lit8 v5, v5, -0x2

    .line 102
    add-int/lit8 v3, v7, 0x2

    .line 103
    const/4 v0, 0x1

    move v13, v1

    move v1, v2

    move v2, v0

    move v0, v13

    move v14, v4

    move v4, v3

    move v3, v14

    goto/16 :goto_98

    .line 104
    :cond_12e
    add-int/lit8 v0, v10, 0x4

    if-ne v5, v0, :cond_1b5

    const/4 v0, 0x2

    if-ne v7, v0, :cond_1b5

    and-int/lit8 v0, v11, 0x7

    if-nez v0, :cond_1b5

    if-nez v2, :cond_1b5

    .line 105
    add-int/lit8 v6, v8, 0x1

    const/4 v0, 0x0

    add-int/lit8 v2, v10, -0x1

    const/4 v12, 0x0

    invoke-direct {p0, v2, v12, v10, v11}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v2

    if-eqz v2, :cond_148

    const/4 v0, 0x1

    :cond_148
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v10, -0x1

    add-int/lit8 v12, v11, -0x1

    invoke-direct {p0, v2, v12, v10, v11}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v2

    if-eqz v2, :cond_156

    or-int/lit8 v0, v0, 0x1

    :cond_156
    shl-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    add-int/lit8 v12, v11, -0x3

    invoke-direct {p0, v2, v12, v10, v11}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v2

    if-eqz v2, :cond_163

    or-int/lit8 v0, v0, 0x1

    :cond_163
    shl-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    add-int/lit8 v12, v11, -0x2

    invoke-direct {p0, v2, v12, v10, v11}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v2

    if-eqz v2, :cond_170

    or-int/lit8 v0, v0, 0x1

    :cond_170
    shl-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    add-int/lit8 v12, v11, -0x1

    invoke-direct {p0, v2, v12, v10, v11}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v2

    if-eqz v2, :cond_17d

    or-int/lit8 v0, v0, 0x1

    :cond_17d
    shl-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    add-int/lit8 v12, v11, -0x3

    invoke-direct {p0, v2, v12, v10, v11}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v2

    if-eqz v2, :cond_18a

    or-int/lit8 v0, v0, 0x1

    :cond_18a
    shl-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    add-int/lit8 v12, v11, -0x2

    invoke-direct {p0, v2, v12, v10, v11}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v2

    if-eqz v2, :cond_197

    or-int/lit8 v0, v0, 0x1

    :cond_197
    shl-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    add-int/lit8 v12, v11, -0x1

    invoke-direct {p0, v2, v12, v10, v11}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v2

    if-eqz v2, :cond_1a4

    or-int/lit8 v0, v0, 0x1

    :cond_1a4
    int-to-byte v0, v0

    aput-byte v0, v9, v8

    .line 106
    add-int/lit8 v5, v5, -0x2

    .line 107
    add-int/lit8 v2, v7, 0x2

    .line 108
    const/4 v0, 0x1

    move v13, v1

    move v1, v0

    move v0, v13

    move v14, v3

    move v3, v4

    move v4, v2

    move v2, v14

    goto/16 :goto_98

    .line 109
    :cond_1b5
    add-int/lit8 v0, v10, -0x2

    if-ne v5, v0, :cond_298

    if-nez v7, :cond_298

    and-int/lit8 v0, v11, 0x7

    const/4 v6, 0x4

    if-ne v0, v6, :cond_298

    if-nez v1, :cond_298

    .line 110
    add-int/lit8 v6, v8, 0x1

    const/4 v0, 0x0

    add-int/lit8 v1, v10, -0x3

    const/4 v12, 0x0

    invoke-direct {p0, v1, v12, v10, v11}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_1cf

    const/4 v0, 0x1

    :cond_1cf
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v10, -0x2

    const/4 v12, 0x0

    invoke-direct {p0, v1, v12, v10, v11}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_1dc

    or-int/lit8 v0, v0, 0x1

    :cond_1dc
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v10, -0x1

    const/4 v12, 0x0

    invoke-direct {p0, v1, v12, v10, v11}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_1e9

    or-int/lit8 v0, v0, 0x1

    :cond_1e9
    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    add-int/lit8 v12, v11, -0x2

    invoke-direct {p0, v1, v12, v10, v11}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_1f6

    or-int/lit8 v0, v0, 0x1

    :cond_1f6
    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    add-int/lit8 v12, v11, -0x1

    invoke-direct {p0, v1, v12, v10, v11}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_203

    or-int/lit8 v0, v0, 0x1

    :cond_203
    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    add-int/lit8 v12, v11, -0x1

    invoke-direct {p0, v1, v12, v10, v11}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_210

    or-int/lit8 v0, v0, 0x1

    :cond_210
    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    add-int/lit8 v12, v11, -0x1

    invoke-direct {p0, v1, v12, v10, v11}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_21d

    or-int/lit8 v0, v0, 0x1

    :cond_21d
    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    add-int/lit8 v12, v11, -0x1

    invoke-direct {p0, v1, v12, v10, v11}, Lcom/google/zxing/b/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_22a

    or-int/lit8 v0, v0, 0x1

    :cond_22a
    int-to-byte v0, v0

    aput-byte v0, v9, v8

    .line 111
    add-int/lit8 v5, v5, -0x2

    .line 112
    add-int/lit8 v1, v7, 0x2

    .line 113
    const/4 v0, 0x1

    move v13, v2

    move v2, v3

    move v3, v4

    move v4, v1

    move v1, v13

    goto/16 :goto_98

    :cond_239
    move v5, v0

    move v0, v6

    .line 117
    :goto_23b
    if-ge v7, v10, :cond_296

    if-ltz v5, :cond_296

    iget-object v6, p0, Lcom/google/zxing/b/a/a;->b:Lcom/google/zxing/common/b;

    invoke-virtual {v6, v5, v7}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v6

    if-nez v6, :cond_296

    .line 118
    add-int/lit8 v6, v0, 0x1

    invoke-direct {p0, v7, v5, v10, v11}, Lcom/google/zxing/b/a/a;->b(IIII)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v9, v0

    .line 120
    :goto_250
    add-int/lit8 v7, v7, -0x2

    .line 121
    add-int/lit8 v0, v5, 0x2

    .line 122
    if-ltz v7, :cond_258

    if-lt v0, v11, :cond_239

    .line 123
    :cond_258
    add-int/lit8 v5, v7, 0x1

    .line 124
    add-int/lit8 v0, v0, 0x3

    move v7, v5

    move v5, v0

    move v0, v6

    .line 128
    :goto_25f
    if-ltz v7, :cond_294

    if-ge v5, v11, :cond_294

    iget-object v6, p0, Lcom/google/zxing/b/a/a;->b:Lcom/google/zxing/common/b;

    invoke-virtual {v6, v5, v7}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v6

    if-nez v6, :cond_294

    .line 129
    add-int/lit8 v6, v0, 0x1

    invoke-direct {p0, v7, v5, v10, v11}, Lcom/google/zxing/b/a/a;->b(IIII)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v9, v0

    .line 131
    :goto_274
    add-int/lit8 v7, v7, 0x2

    .line 132
    add-int/lit8 v0, v5, -0x2

    .line 133
    if-ge v7, v10, :cond_27c

    if-gez v0, :cond_291

    .line 134
    :cond_27c
    add-int/lit8 v5, v7, 0x3

    .line 135
    add-int/lit8 v0, v0, 0x1

    move v13, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v0

    move v0, v13

    goto/16 :goto_98

    .line 142
    :cond_288
    return-object v9

    :cond_289
    move v7, v4

    move v8, v6

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    goto/16 :goto_1d

    :cond_291
    move v5, v0

    move v0, v6

    goto :goto_25f

    :cond_294
    move v6, v0

    goto :goto_274

    :cond_296
    move v6, v0

    goto :goto_250

    :cond_298
    move v0, v8

    move v13, v5

    move v5, v7

    move v7, v13

    goto :goto_23b
.end method
