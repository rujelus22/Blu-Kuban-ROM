.class final Lcom/google/zxing/e/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/common/b;

.field private final b:Ljava/util/Vector;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:F

.field private final h:[I

.field private final i:Lcom/google/zxing/k;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/b;IIIIFLcom/google/zxing/k;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/zxing/e/b/b;->a:Lcom/google/zxing/common/b;

    .line 70
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/e/b/b;->b:Ljava/util/Vector;

    .line 71
    iput p2, p0, Lcom/google/zxing/e/b/b;->c:I

    .line 72
    iput p3, p0, Lcom/google/zxing/e/b/b;->d:I

    .line 73
    iput p4, p0, Lcom/google/zxing/e/b/b;->e:I

    .line 74
    iput p5, p0, Lcom/google/zxing/e/b/b;->f:I

    .line 75
    iput p6, p0, Lcom/google/zxing/e/b/b;->g:F

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/e/b/b;->h:[I

    .line 77
    iput-object p7, p0, Lcom/google/zxing/e/b/b;->i:Lcom/google/zxing/k;

    .line 78
    return-void
.end method

.method private static a([II)F
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 161
    const/4 v0, 0x2

    aget v0, p0, v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private a([III)Lcom/google/zxing/e/b/a;
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 256
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p1, v1

    add-int/2addr v1, v0

    .line 257
    invoke-static {p1, p3}, Lcom/google/zxing/e/b/b;->a([II)F

    move-result v3

    .line 258
    float-to-int v2, v3

    const/4 v0, 0x1

    aget v0, p1, v0

    mul-int/lit8 v4, v0, 0x2

    iget-object v5, p0, Lcom/google/zxing/e/b/b;->a:Lcom/google/zxing/common/b;

    iget v6, v5, Lcom/google/zxing/common/b;->b:I

    iget-object v7, p0, Lcom/google/zxing/e/b/b;->h:[I

    const/4 v0, 0x0

    const/4 v8, 0x0

    aput v8, v7, v0

    const/4 v0, 0x1

    const/4 v8, 0x0

    aput v8, v7, v0

    const/4 v0, 0x2

    const/4 v8, 0x0

    aput v8, v7, v0

    move v0, p2

    :goto_28
    if-ltz v0, :cond_3f

    invoke-virtual {v5, v2, v0}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v8

    if-eqz v8, :cond_3f

    const/4 v8, 0x1

    aget v8, v7, v8

    if-gt v8, v4, :cond_3f

    const/4 v8, 0x1

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    add-int/lit8 v0, v0, -0x1

    goto :goto_28

    :cond_3f
    if-ltz v0, :cond_46

    const/4 v8, 0x1

    aget v8, v7, v8

    if-le v8, v4, :cond_7c

    :cond_46
    const/high16 v0, 0x7fc0

    move v1, v0

    .line 259
    :goto_49
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_126

    .line 260
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/2addr v0, v2

    const/4 v2, 0x2

    aget v2, p1, v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x4040

    div-float v4, v0, v2

    .line 261
    iget-object v0, p0, Lcom/google/zxing/e/b/b;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    .line 262
    const/4 v0, 0x0

    move v2, v0

    :goto_67
    if-ge v2, v5, :cond_113

    .line 263
    iget-object v0, p0, Lcom/google/zxing/e/b/b;->b:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/e/b/a;

    .line 265
    invoke-virtual {v0, v4, v1, v3}, Lcom/google/zxing/e/b/a;->a(FFF)Z

    move-result v6

    if-eqz v6, :cond_10e

    .line 266
    invoke-virtual {v0, v1, v3, v4}, Lcom/google/zxing/e/b/a;->b(FFF)Lcom/google/zxing/e/b/a;

    move-result-object v0

    .line 276
    :goto_7b
    return-object v0

    .line 258
    :cond_7c
    :goto_7c
    if-ltz v0, :cond_93

    invoke-virtual {v5, v2, v0}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v8

    if-nez v8, :cond_93

    const/4 v8, 0x0

    aget v8, v7, v8

    if-gt v8, v4, :cond_93

    const/4 v8, 0x0

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    add-int/lit8 v0, v0, -0x1

    goto :goto_7c

    :cond_93
    const/4 v0, 0x0

    aget v0, v7, v0

    if-le v0, v4, :cond_9c

    const/high16 v0, 0x7fc0

    move v1, v0

    goto :goto_49

    :cond_9c
    add-int/lit8 v0, p2, 0x1

    :goto_9e
    if-ge v0, v6, :cond_b5

    invoke-virtual {v5, v2, v0}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v8

    if-eqz v8, :cond_b5

    const/4 v8, 0x1

    aget v8, v7, v8

    if-gt v8, v4, :cond_b5

    const/4 v8, 0x1

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_9e

    :cond_b5
    if-eq v0, v6, :cond_bc

    const/4 v8, 0x1

    aget v8, v7, v8

    if-le v8, v4, :cond_c0

    :cond_bc
    const/high16 v0, 0x7fc0

    move v1, v0

    goto :goto_49

    :cond_c0
    :goto_c0
    if-ge v0, v6, :cond_d7

    invoke-virtual {v5, v2, v0}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v8

    if-nez v8, :cond_d7

    const/4 v8, 0x2

    aget v8, v7, v8

    if-gt v8, v4, :cond_d7

    const/4 v8, 0x2

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_c0

    :cond_d7
    const/4 v2, 0x2

    aget v2, v7, v2

    if-le v2, v4, :cond_e1

    const/high16 v0, 0x7fc0

    move v1, v0

    goto/16 :goto_49

    :cond_e1
    const/4 v2, 0x0

    aget v2, v7, v2

    const/4 v4, 0x1

    aget v4, v7, v4

    add-int/2addr v2, v4

    const/4 v4, 0x2

    aget v4, v7, v4

    add-int/2addr v2, v4

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    mul-int/lit8 v1, v1, 0x2

    if-lt v2, v1, :cond_fc

    const/high16 v0, 0x7fc0

    move v1, v0

    goto/16 :goto_49

    :cond_fc
    invoke-direct {p0, v7}, Lcom/google/zxing/e/b/b;->a([I)Z

    move-result v1

    if-eqz v1, :cond_109

    invoke-static {v7, v0}, Lcom/google/zxing/e/b/b;->a([II)F

    move-result v0

    move v1, v0

    goto/16 :goto_49

    :cond_109
    const/high16 v0, 0x7fc0

    move v1, v0

    goto/16 :goto_49

    .line 262
    :cond_10e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_67

    .line 270
    :cond_113
    new-instance v0, Lcom/google/zxing/e/b/a;

    invoke-direct {v0, v3, v1, v4}, Lcom/google/zxing/e/b/a;-><init>(FFF)V

    .line 271
    iget-object v1, p0, Lcom/google/zxing/e/b/b;->b:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 272
    iget-object v1, p0, Lcom/google/zxing/e/b/b;->i:Lcom/google/zxing/k;

    if-eqz v1, :cond_126

    .line 273
    iget-object v1, p0, Lcom/google/zxing/e/b/b;->i:Lcom/google/zxing/k;

    invoke-interface {v1, v0}, Lcom/google/zxing/k;->a(Lcom/google/zxing/j;)V

    .line 276
    :cond_126
    const/4 v0, 0x0

    goto/16 :goto_7b
.end method

.method private a([I)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 170
    iget v2, p0, Lcom/google/zxing/e/b/b;->g:F

    .line 171
    const/high16 v1, 0x4000

    div-float v3, v2, v1

    move v1, v0

    .line 172
    :goto_8
    const/4 v4, 0x3

    if-ge v1, v4, :cond_1c

    .line 173
    aget v4, p1, v1

    int-to-float v4, v4

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v3

    if-ltz v4, :cond_19

    .line 177
    :goto_18
    return v0

    .line 172
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 177
    :cond_1c
    const/4 v0, 0x1

    goto :goto_18
.end method


# virtual methods
.method final a()Lcom/google/zxing/e/b/a;
    .registers 14

    .prologue
    const/4 v12, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    iget v4, p0, Lcom/google/zxing/e/b/b;->c:I

    .line 89
    iget v6, p0, Lcom/google/zxing/e/b/b;->f:I

    .line 90
    iget v0, p0, Lcom/google/zxing/e/b/b;->e:I

    add-int v7, v4, v0

    .line 91
    iget v0, p0, Lcom/google/zxing/e/b/b;->d:I

    shr-int/lit8 v3, v6, 0x1

    add-int v8, v0, v3

    .line 94
    const/4 v0, 0x3

    new-array v9, v0, [I

    move v5, v2

    .line 95
    :goto_15
    if-ge v5, v6, :cond_88

    .line 97
    and-int/lit8 v0, v5, 0x1

    if-nez v0, :cond_35

    add-int/lit8 v0, v5, 0x1

    shr-int/lit8 v0, v0, 0x1

    :goto_1f
    add-int v10, v8, v0

    .line 98
    aput v2, v9, v2

    .line 99
    aput v2, v9, v1

    .line 100
    aput v2, v9, v12

    move v0, v4

    .line 105
    :goto_28
    if-ge v0, v7, :cond_3b

    iget-object v3, p0, Lcom/google/zxing/e/b/b;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v3, v0, v10}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 97
    :cond_35
    add-int/lit8 v0, v5, 0x1

    shr-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    goto :goto_1f

    :cond_3b
    move v3, v0

    move v0, v2

    .line 109
    :goto_3d
    if-ge v3, v7, :cond_78

    .line 110
    iget-object v11, p0, Lcom/google/zxing/e/b/b;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v11, v3, v10}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v11

    if-eqz v11, :cond_6d

    .line 112
    if-eq v0, v1, :cond_71

    .line 113
    if-ne v0, v12, :cond_64

    .line 116
    invoke-direct {p0, v9}, Lcom/google/zxing/e/b/b;->a([I)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 117
    invoke-direct {p0, v9, v10, v3}, Lcom/google/zxing/e/b/b;->a([III)Lcom/google/zxing/e/b/a;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_58

    .line 150
    :cond_57
    :goto_57
    return-object v0

    .line 122
    :cond_58
    aget v0, v9, v12

    aput v0, v9, v2

    .line 123
    aput v1, v9, v1

    .line 124
    aput v2, v9, v12

    move v0, v1

    .line 136
    :goto_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 127
    :cond_64
    add-int/lit8 v0, v0, 0x1

    aget v11, v9, v0

    add-int/lit8 v11, v11, 0x1

    aput v11, v9, v0

    goto :goto_61

    .line 131
    :cond_6d
    if-ne v0, v1, :cond_71

    .line 132
    add-int/lit8 v0, v0, 0x1

    .line 134
    :cond_71
    aget v11, v9, v0

    add-int/lit8 v11, v11, 0x1

    aput v11, v9, v0

    goto :goto_61

    .line 138
    :cond_78
    invoke-direct {p0, v9}, Lcom/google/zxing/e/b/b;->a([I)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 139
    invoke-direct {p0, v9, v10, v7}, Lcom/google/zxing/e/b/b;->a([III)Lcom/google/zxing/e/b/a;

    move-result-object v0

    .line 140
    if-nez v0, :cond_57

    .line 95
    :cond_84
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_15

    .line 149
    :cond_88
    iget-object v0, p0, Lcom/google/zxing/e/b/b;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_99

    .line 150
    iget-object v0, p0, Lcom/google/zxing/e/b/b;->b:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/e/b/a;

    goto :goto_57

    .line 153
    :cond_99
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method
