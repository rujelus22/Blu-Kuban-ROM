.class public final Lcom/google/zxing/common/h;
.super Lcom/google/zxing/common/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/zxing/common/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/zxing/common/b;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/b;
    .registers 21
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
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-static/range {p4 .. p19}, Lcom/google/zxing/common/n;->a(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/n;

    move-result-object v0

    .line 42
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/zxing/common/h;->a(Lcom/google/zxing/common/b;IILcom/google/zxing/common/n;)Lcom/google/zxing/common/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/zxing/common/b;IILcom/google/zxing/common/n;)Lcom/google/zxing/common/b;
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    if-lez p2, :cond_4

    if-gtz p3, :cond_9

    .line 50
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 52
    :cond_9
    new-instance v4, Lcom/google/zxing/common/b;

    move/from16 v0, p3

    invoke-direct {v4, p2, v0}, Lcom/google/zxing/common/b;-><init>(II)V

    .line 53
    shl-int/lit8 v1, p2, 0x1

    new-array v5, v1, [F

    .line 54
    const/4 v1, 0x0

    move v3, v1

    :goto_16
    move/from16 v0, p3

    if-ge v3, v0, :cond_ee

    .line 55
    array-length v6, v5

    .line 56
    int-to-float v1, v3

    const/high16 v2, 0x3f00

    add-float/2addr v2, v1

    .line 57
    const/4 v1, 0x0

    :goto_20
    if-ge v1, v6, :cond_31

    .line 58
    shr-int/lit8 v7, v1, 0x1

    int-to-float v7, v7

    const/high16 v8, 0x3f00

    add-float/2addr v7, v8

    aput v7, v5, v1

    .line 59
    add-int/lit8 v7, v1, 0x1

    aput v2, v5, v7

    .line 57
    add-int/lit8 v1, v1, 0x2

    goto :goto_20

    .line 61
    :cond_31
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/google/zxing/common/n;->a([F)V

    .line 64
    iget v7, p1, Lcom/google/zxing/common/b;->a:I

    iget v8, p1, Lcom/google/zxing/common/b;->b:I

    const/4 v2, 0x1

    const/4 v1, 0x0

    :goto_3c
    array-length v9, v5

    if-ge v1, v9, :cond_80

    if-eqz v2, :cond_80

    aget v2, v5, v1

    float-to-int v9, v2

    add-int/lit8 v2, v1, 0x1

    aget v2, v5, v2

    float-to-int v10, v2

    const/4 v2, -0x1

    if-lt v9, v2, :cond_53

    if-gt v9, v7, :cond_53

    const/4 v2, -0x1

    if-lt v10, v2, :cond_53

    if-le v10, v8, :cond_58

    :cond_53
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :cond_58
    const/4 v2, 0x0

    const/4 v11, -0x1

    if-ne v9, v11, :cond_6c

    const/4 v2, 0x0

    aput v2, v5, v1

    const/4 v2, 0x1

    :cond_60
    :goto_60
    const/4 v9, -0x1

    if-ne v10, v9, :cond_75

    add-int/lit8 v2, v1, 0x1

    const/4 v9, 0x0

    aput v9, v5, v2

    const/4 v2, 0x1

    :cond_69
    :goto_69
    add-int/lit8 v1, v1, 0x2

    goto :goto_3c

    :cond_6c
    if-ne v9, v7, :cond_60

    add-int/lit8 v2, v7, -0x1

    int-to-float v2, v2

    aput v2, v5, v1

    const/4 v2, 0x1

    goto :goto_60

    :cond_75
    if-ne v10, v8, :cond_69

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v9, v8, -0x1

    int-to-float v9, v9

    aput v9, v5, v2

    const/4 v2, 0x1

    goto :goto_69

    :cond_80
    const/4 v2, 0x1

    array-length v1, v5

    add-int/lit8 v1, v1, -0x2

    move v12, v1

    move v1, v2

    move v2, v12

    :goto_87
    if-ltz v2, :cond_ca

    if-eqz v1, :cond_ca

    aget v1, v5, v2

    float-to-int v9, v1

    add-int/lit8 v1, v2, 0x1

    aget v1, v5, v1

    float-to-int v10, v1

    const/4 v1, -0x1

    if-lt v9, v1, :cond_9d

    if-gt v9, v7, :cond_9d

    const/4 v1, -0x1

    if-lt v10, v1, :cond_9d

    if-le v10, v8, :cond_a2

    :cond_9d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :cond_a2
    const/4 v1, 0x0

    const/4 v11, -0x1

    if-ne v9, v11, :cond_b6

    const/4 v1, 0x0

    aput v1, v5, v2

    const/4 v1, 0x1

    :cond_aa
    :goto_aa
    const/4 v9, -0x1

    if-ne v10, v9, :cond_bf

    add-int/lit8 v1, v2, 0x1

    const/4 v9, 0x0

    aput v9, v5, v1

    const/4 v1, 0x1

    :cond_b3
    :goto_b3
    add-int/lit8 v2, v2, -0x2

    goto :goto_87

    :cond_b6
    if-ne v9, v7, :cond_aa

    add-int/lit8 v1, v7, -0x1

    int-to-float v1, v1

    aput v1, v5, v2

    const/4 v1, 0x1

    goto :goto_aa

    :cond_bf
    if-ne v10, v8, :cond_b3

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v9, v8, -0x1

    int-to-float v9, v9

    aput v9, v5, v1

    const/4 v1, 0x1

    goto :goto_b3

    .line 66
    :cond_ca
    const/4 v1, 0x0

    :goto_cb
    if-ge v1, v6, :cond_e9

    .line 67
    :try_start_cd
    aget v2, v5, v1

    float-to-int v2, v2

    add-int/lit8 v7, v1, 0x1

    aget v7, v5, v7

    float-to-int v7, v7

    invoke-virtual {p1, v2, v7}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 69
    shr-int/lit8 v2, v1, 0x1

    invoke-virtual {v4, v2, v3}, Lcom/google/zxing/common/b;->b(II)V
    :try_end_e0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_cd .. :try_end_e0} :catch_e3

    .line 66
    :cond_e0
    add-int/lit8 v1, v1, 0x2

    goto :goto_cb

    .line 80
    :catch_e3
    move-exception v1

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 54
    :cond_e9
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_16

    .line 83
    :cond_ee
    return-object v4
.end method
