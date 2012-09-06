.class public abstract Lcom/google/zxing/c/a/a;
.super Lcom/google/zxing/c/k;
.source "SourceFile"


# instance fields
.field protected final a:[I

.field protected final b:[I

.field protected final c:[F

.field protected final d:[F

.field protected final e:[I

.field protected final f:[I


# direct methods
.method protected constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 37
    invoke-direct {p0}, Lcom/google/zxing/c/k;-><init>()V

    .line 38
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/zxing/c/a/a;->a:[I

    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/c/a/a;->b:[I

    .line 40
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/zxing/c/a/a;->c:[F

    .line 41
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/zxing/c/a/a;->d:[F

    .line 42
    iget-object v0, p0, Lcom/google/zxing/c/a/a;->b:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/c/a/a;->e:[I

    .line 43
    iget-object v0, p0, Lcom/google/zxing/c/a/a;->b:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/c/a/a;->f:[I

    .line 44
    return-void
.end method

.method protected static a([I)I
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    move v1, v0

    .line 59
    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_b

    .line 60
    aget v2, p0, v0

    add-int/2addr v1, v2

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 62
    :cond_b
    return v1
.end method

.method protected static a([I[[I)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 48
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_14

    .line 49
    aget-object v1, p1, v0

    const/16 v2, 0x66

    invoke-static {p0, v1, v2}, Lcom/google/zxing/c/a/a;->a([I[II)I

    move-result v1

    const/16 v2, 0x33

    if-ge v1, v2, :cond_11

    .line 51
    return v0

    .line 48
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 54
    :cond_14
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method protected static a([I[F)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 67
    aget v1, p1, v2

    .line 68
    const/4 v0, 0x1

    :goto_4
    array-length v3, p0

    if-ge v0, v3, :cond_13

    .line 69
    aget v3, p1, v0

    cmpl-float v3, v3, v1

    if-lez v3, :cond_10

    .line 70
    aget v1, p1, v0

    move v2, v0

    .line 68
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 74
    :cond_13
    aget v0, p0, v2

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, v2

    .line 75
    return-void
.end method

.method protected static b([I[F)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 79
    aget v1, p1, v2

    .line 80
    const/4 v0, 0x1

    :goto_4
    array-length v3, p0

    if-ge v0, v3, :cond_13

    .line 81
    aget v3, p1, v0

    cmpg-float v3, v3, v1

    if-gez v3, :cond_10

    .line 82
    aget v1, p1, v0

    move v2, v0

    .line 80
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 86
    :cond_13
    aget v0, p0, v2

    add-int/lit8 v0, v0, -0x1

    aput v0, p0, v2

    .line 87
    return-void
.end method

.method protected static b([I)Z
    .registers 7
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 90
    aget v0, p0, v1

    aget v2, p0, v5

    add-int/2addr v0, v2

    .line 91
    const/4 v2, 0x2

    aget v2, p0, v2

    add-int/2addr v2, v0

    const/4 v3, 0x3

    aget v3, p0, v3

    add-int/2addr v2, v3

    .line 92
    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 93
    const v2, 0x3f4aaaab

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_3b

    const v2, 0x3f649249

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_3b

    .line 95
    const v2, 0x7fffffff

    .line 96
    const/high16 v0, -0x8000

    move v3, v2

    move v2, v0

    move v0, v1

    .line 97
    :goto_28
    array-length v4, p0

    if-ge v0, v4, :cond_36

    .line 98
    aget v4, p0, v0

    .line 99
    if-le v4, v2, :cond_30

    move v2, v4

    .line 102
    :cond_30
    if-ge v4, v3, :cond_33

    move v3, v4

    .line 97
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 106
    :cond_36
    mul-int/lit8 v0, v3, 0xa

    if-ge v2, v0, :cond_3b

    move v1, v5

    .line 108
    :cond_3b
    return v1
.end method
