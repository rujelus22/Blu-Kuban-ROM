.class final Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "PlanarYUVLuminanceSource.java"


# instance fields
.field private final croppedCopySpace:[B

.field private final left:I

.field private final top:I

.field private final yuvData:[B

.field private final yuvInputHeight:I

.field private final yuvInputWidth:I


# direct methods
.method constructor <init>([BIIIIII[B)V
    .registers 11
    .parameter "yuvData"
    .parameter "yuvInputWidth"
    .parameter "yuvInputHeight"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "croppedCopySpace"

    .prologue
    .line 57
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    .line 59
    add-int v0, p4, p6

    if-gt v0, p2, :cond_b

    add-int v0, p5, p7

    if-le v0, p3, :cond_13

    .line 60
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Crop rectangle does not fit within image data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_13
    iput-object p1, p0, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->yuvData:[B

    .line 64
    iput p2, p0, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->yuvInputWidth:I

    .line 65
    iput p3, p0, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->yuvInputHeight:I

    .line 66
    iput p4, p0, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->left:I

    .line 67
    iput p5, p0, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->top:I

    .line 69
    iput-object p8, p0, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->croppedCopySpace:[B

    .line 70
    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->yuvData:[B

    return-object v0
.end method

.method public getDataHeight()I
    .registers 2

    .prologue
    .line 130
    iget v0, p0, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->yuvInputHeight:I

    return v0
.end method

.method public getDataWidth()I
    .registers 2

    .prologue
    .line 126
    iget v0, p0, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->yuvInputWidth:I

    return v0
.end method

.method public getLeft()I
    .registers 2

    .prologue
    .line 134
    iget v0, p0, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->left:I

    return v0
.end method

.method public getMatrix()[B
    .registers 11

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->getWidth()I

    move-result v2

    .line 89
    .local v2, cropWidth:I
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->getHeight()I

    move-result v1

    .line 93
    .local v1, cropHeight:I
    iget v8, p0, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->yuvInputWidth:I

    if-ne v2, v8, :cond_13

    iget v8, p0, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->yuvInputHeight:I

    if-ne v1, v8, :cond_13

    .line 94
    iget-object v4, p0, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->yuvData:[B

    .line 113
    :cond_12
    :goto_12
    return-object v4

    .line 96
    :cond_13
    mul-int v0, v2, v1

    .line 97
    .local v0, cropArea:I
    iget-object v4, p0, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->croppedCopySpace:[B

    .line 98
    .local v4, matrix:[B
    iget v8, p0, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->top:I

    iget v9, p0, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->yuvInputWidth:I

    mul-int/2addr v8, v9

    iget v9, p0, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->left:I

    add-int v3, v8, v9

    .line 101
    .local v3, inputOffset:I
    iget v8, p0, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->yuvInputWidth:I

    if-ne v2, v8, :cond_2b

    .line 102
    iget-object v8, p0, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->yuvData:[B

    const/4 v9, 0x0

    invoke-static {v8, v3, v4, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_12

    .line 107
    :cond_2b
    iget-object v7, p0, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->yuvData:[B

    .line 108
    .local v7, yuv:[B
    const/4 v6, 0x0

    .local v6, y:I
    :goto_2e
    if-ge v6, v1, :cond_12

    .line 109
    mul-int v5, v6, v2

    .line 110
    .local v5, outputOffset:I
    invoke-static {v7, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    iget v8, p0, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->yuvInputWidth:I

    add-int/2addr v3, v8

    .line 108
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e
.end method

.method public getRow(I[B)[B
    .registers 8
    .parameter "y"
    .parameter "row"

    .prologue
    .line 74
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->getHeight()I

    move-result v2

    if-lt p1, v2, :cond_21

    .line 75
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested row is outside the image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->getWidth()I

    move-result v1

    .line 78
    .local v1, width:I
    if-eqz p2, :cond_2a

    array-length v2, p2

    if-ge v2, v1, :cond_2c

    .line 79
    :cond_2a
    new-array p2, v1, [B

    .line 81
    :cond_2c
    iget v2, p0, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->top:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->yuvInputWidth:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->left:I

    add-int v0, v2, v3

    .line 82
    .local v0, offset:I
    iget-object v2, p0, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->yuvData:[B

    const/4 v3, 0x0

    invoke-static {v2, v0, p2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    return-object p2
.end method

.method public getTop()I
    .registers 2

    .prologue
    .line 138
    iget v0, p0, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->top:I

    return v0
.end method

.method public isCropSupported()Z
    .registers 2

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method
