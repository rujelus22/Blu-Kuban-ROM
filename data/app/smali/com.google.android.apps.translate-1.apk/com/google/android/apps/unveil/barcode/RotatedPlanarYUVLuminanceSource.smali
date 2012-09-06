.class final Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "RotatedPlanarYUVLuminanceSource.java"


# instance fields
.field private final croppedCopySpace:[B

.field private final dataWidth:I

.field private final left:I

.field private final top:I

.field private final yuvData:[B


# direct methods
.method public constructor <init>([BIIIIII[B)V
    .registers 11
    .parameter "yuvData"
    .parameter "dataWidth"
    .parameter "dataHeight"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "croppedCopySpace"

    .prologue
    .line 40
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    .line 43
    add-int v0, p4, p6

    if-gt v0, p3, :cond_b

    add-int v0, p5, p7

    if-le v0, p2, :cond_13

    .line 44
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Crop rectangle does not fit within image data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_13
    iput-object p1, p0, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->yuvData:[B

    .line 48
    iput p2, p0, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->dataWidth:I

    .line 49
    iput p4, p0, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->left:I

    .line 50
    iput p5, p0, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->top:I

    .line 52
    iput-object p8, p0, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->croppedCopySpace:[B

    .line 53
    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->yuvData:[B

    return-object v0
.end method

.method public getDataWidth()I
    .registers 2

    .prologue
    .line 90
    iget v0, p0, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->dataWidth:I

    return v0
.end method

.method public getLeft()I
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->left:I

    return v0
.end method

.method public getMatrix()[B
    .registers 8

    .prologue
    .line 72
    iget-object v2, p0, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->croppedCopySpace:[B

    .line 73
    .local v2, matrix:[B
    iget v0, p0, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->left:I

    iget v1, p0, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->dataWidth:I

    add-int/lit8 v1, v1, -0x1

    iget v4, p0, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->top:I

    sub-int/2addr v1, v4

    add-int v3, v0, v1

    .line 74
    .local v3, offset:I
    iget-object v1, p0, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->yuvData:[B

    iget v4, p0, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->dataWidth:I

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->getHeight()I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->nativeCopy([B[BIIII)V

    .line 75
    return-object v2
.end method

.method public getRow(I[B)[B
    .registers 10
    .parameter "y"
    .parameter "row"

    .prologue
    .line 58
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->getHeight()I

    move-result v0

    if-lt p1, v0, :cond_21

    .line 59
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested row is outside the image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->getWidth()I

    move-result v5

    .line 62
    .local v5, width:I
    if-eqz p2, :cond_2a

    array-length v0, p2

    if-ge v0, v5, :cond_2c

    .line 63
    :cond_2a
    new-array p2, v5, [B

    .line 65
    :cond_2c
    iget v0, p0, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->left:I

    iget v1, p0, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->dataWidth:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->top:I

    add-int/2addr v2, p1

    sub-int/2addr v1, v2

    add-int v3, v0, v1

    .line 66
    .local v3, offset:I
    iget-object v1, p0, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->yuvData:[B

    iget v4, p0, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->dataWidth:I

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->nativeCopy([B[BIIII)V

    .line 67
    return-object p2
.end method

.method public getTop()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->top:I

    return v0
.end method

.method public isCropSupported()Z
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method native nativeCopy([B[BIIII)V
.end method
