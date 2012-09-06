.class public final Lcom/google/zxing/common/BitMatrix;
.super Ljava/lang/Object;
.source "BitMatrix.java"


# instance fields
.field public final bits:[I

.field public final height:I

.field public final rowSize:I

.field public final width:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter "dimension"

    .prologue
    .line 44
    invoke-direct {p0, p1, p1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 45
    return-void
.end method

.method public constructor <init>(II)V
    .registers 5
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-lt p1, v0, :cond_8

    if-ge p2, v0, :cond_10

    .line 49
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both dimensions must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_10
    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 52
    iput p2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 53
    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 54
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 55
    return-void
.end method

.method public constructor <init>(II[I)V
    .registers 6
    .parameter "width"
    .parameter "height"
    .parameter "bits"

    .prologue
    const/4 v0, 0x1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-lt p1, v0, :cond_8

    if-ge p2, v0, :cond_10

    .line 59
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both dimensions must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_10
    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 62
    iput p2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 63
    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 64
    array-length v0, p3

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    if-ge v0, v1, :cond_28

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bits buffer too small"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_28
    iput-object p3, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 68
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 109
    return-void
.end method

.method public flip(II)V
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 100
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    shr-int/lit8 v2, p1, 0x5

    add-int v0, v1, v2

    .line 101
    .local v0, offset:I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    xor-int/2addr v2, v3

    aput v2, v1, v0

    .line 102
    return-void
.end method

.method public get(II)Z
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 78
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    shr-int/lit8 v2, p1, 0x5

    add-int v0, v1, v2

    .line 79
    .local v0, offset:I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v1, v1, v0

    and-int/lit8 v2, p1, 0x1f

    ushr-int/2addr v1, v2

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public getColumn(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .registers 9
    .parameter "x"
    .parameter "column"

    .prologue
    .line 166
    if-eqz p2, :cond_8

    sget v0, Lcom/google/zxing/common/BitArray;->size:I

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v0, v1, :cond_f

    .line 167
    :cond_8
    new-instance p2, Lcom/google/zxing/common/BitArray;

    .end local p2
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    invoke-direct {p2, v0}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 170
    .restart local p2
    :cond_f
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    sget-object v5, Lcom/google/zxing/common/BitArray;->bits:[Z

    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/common/BitMatrix;->nativeGetColumn([IIII[Z)V

    .line 171
    return-object p2
.end method

.method public getDimension()I
    .registers 3

    .prologue
    .line 197
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-eq v0, v1, :cond_e

    .line 198
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t call getDimension() on a non-square matrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_e
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 187
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    return v0
.end method

.method public getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .registers 9
    .parameter "y"
    .parameter "row"

    .prologue
    .line 148
    if-eqz p2, :cond_8

    sget v0, Lcom/google/zxing/common/BitArray;->size:I

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ge v0, v1, :cond_f

    .line 149
    :cond_8
    new-instance p2, Lcom/google/zxing/common/BitArray;

    .end local p2
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    invoke-direct {p2, v0}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 152
    .restart local p2
    :cond_f
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    sget-object v5, Lcom/google/zxing/common/BitArray;->bits:[Z

    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/common/BitMatrix;->nativeGetRow([IIII[Z)V

    .line 153
    return-object p2
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 180
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    return v0
.end method

.method native nativeGetColumn([IIII[Z)V
.end method

.method native nativeGetRow([IIII[Z)V
.end method

.method public set(II)V
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 89
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    shr-int/lit8 v2, p1, 0x5

    add-int v0, v1, v2

    .line 90
    .local v0, offset:I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 91
    return-void
.end method

.method public setRegion(IIII)V
    .registers 15
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v9, 0x1

    .line 120
    if-ltz p2, :cond_5

    if-gez p1, :cond_d

    .line 121
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Left and top must be nonnegative"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 123
    :cond_d
    if-lt p4, v9, :cond_11

    if-ge p3, v9, :cond_19

    .line 124
    :cond_11
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Height and width must be at least 1"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 126
    :cond_19
    add-int v2, p1, p3

    .line 127
    .local v2, right:I
    add-int v0, p2, p4

    .line 128
    .local v0, bottom:I
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-gt v0, v5, :cond_25

    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-le v2, v5, :cond_2d

    .line 129
    :cond_25
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The region must fit inside the matrix"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 131
    :cond_2d
    move v4, p2

    .local v4, y:I
    :goto_2e
    if-ge v4, v0, :cond_4b

    .line 132
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v1, v4, v5

    .line 133
    .local v1, offset:I
    move v3, p1

    .local v3, x:I
    :goto_35
    if-ge v3, v2, :cond_48

    .line 134
    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    shr-int/lit8 v6, v3, 0x5

    add-int/2addr v6, v1

    aget v7, v5, v6

    and-int/lit8 v8, v3, 0x1f

    shl-int v8, v9, v8

    or-int/2addr v7, v8

    aput v7, v5, v6

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 131
    :cond_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 137
    .end local v1           #offset:I
    .end local v3           #x:I
    :cond_4b
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuffer;

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v4, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 205
    .local v0, result:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, y:I
    :goto_d
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v2, v3, :cond_2f

    .line 206
    const/4 v1, 0x0

    .local v1, x:I
    :goto_12
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ge v1, v3, :cond_27

    .line 207
    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_24

    const-string v3, "X "

    :goto_1e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 207
    :cond_24
    const-string v3, "  "

    goto :goto_1e

    .line 209
    :cond_27
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 211
    .end local v1           #x:I
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
