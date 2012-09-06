.class final Lcom/google/android/apps/unveil/barcode/RotatedUnveilHybridBinarizer;
.super Lcom/google/zxing/Binarizer;
.source "RotatedUnveilHybridBinarizer.java"


# instance fields
.field private final data:[B

.field private final dataWidth:I

.field private final height:I

.field private final left:I

.field private final matrix:Lcom/google/zxing/common/BitMatrix;

.field private final top:I

.field private final width:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/LuminanceSource;[I[B)V
    .registers 8
    .parameter "source"
    .parameter "globalBitMatrixBits"
    .parameter "globalBlackPoints"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/zxing/Binarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    move-object v0, p1

    .line 32
    check-cast v0, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;

    .line 33
    .local v0, localSource:Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;
    invoke-virtual {v0}, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->getData()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/unveil/barcode/RotatedUnveilHybridBinarizer;->data:[B

    .line 34
    invoke-virtual {v0}, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->getDataWidth()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/unveil/barcode/RotatedUnveilHybridBinarizer;->dataWidth:I

    .line 35
    invoke-virtual {v0}, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/unveil/barcode/RotatedUnveilHybridBinarizer;->width:I

    .line 36
    invoke-virtual {v0}, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/unveil/barcode/RotatedUnveilHybridBinarizer;->height:I

    .line 37
    invoke-virtual {v0}, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/unveil/barcode/RotatedUnveilHybridBinarizer;->left:I

    .line 38
    invoke-virtual {v0}, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;->getTop()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/unveil/barcode/RotatedUnveilHybridBinarizer;->top:I

    .line 40
    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    iget v2, p0, Lcom/google/android/apps/unveil/barcode/RotatedUnveilHybridBinarizer;->height:I

    iget v3, p0, Lcom/google/android/apps/unveil/barcode/RotatedUnveilHybridBinarizer;->width:I

    invoke-direct {v1, v2, v3, p2}, Lcom/google/zxing/common/BitMatrix;-><init>(II[I)V

    iput-object v1, p0, Lcom/google/android/apps/unveil/barcode/RotatedUnveilHybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    .line 41
    return-void
.end method


# virtual methods
.method public createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;
    .registers 4
    .parameter "source"

    .prologue
    .line 68
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
    .registers 3

    .prologue
    .line 61
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is only used for 2D barcode scanning, which we don\'t need, as this class is only used for 1D."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .registers 8
    .parameter "y"
    .parameter "row"

    .prologue
    .line 45
    if-eqz p2, :cond_8

    sget v1, Lcom/google/zxing/common/BitArray;->size:I

    iget v2, p0, Lcom/google/android/apps/unveil/barcode/RotatedUnveilHybridBinarizer;->width:I

    if-ge v1, v2, :cond_f

    .line 46
    :cond_8
    new-instance p2, Lcom/google/zxing/common/BitArray;

    .end local p2
    iget v1, p0, Lcom/google/android/apps/unveil/barcode/RotatedUnveilHybridBinarizer;->width:I

    invoke-direct {p2, v1}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 49
    .restart local p2
    :cond_f
    iget v1, p0, Lcom/google/android/apps/unveil/barcode/RotatedUnveilHybridBinarizer;->left:I

    iget v2, p0, Lcom/google/android/apps/unveil/barcode/RotatedUnveilHybridBinarizer;->dataWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/apps/unveil/barcode/RotatedUnveilHybridBinarizer;->dataWidth:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/google/android/apps/unveil/barcode/RotatedUnveilHybridBinarizer;->top:I

    add-int/2addr v3, p1

    sub-int/2addr v2, v3

    add-int v0, v1, v2

    .line 50
    .local v0, offset:I
    iget v1, p0, Lcom/google/android/apps/unveil/barcode/RotatedUnveilHybridBinarizer;->width:I

    iget-object v2, p0, Lcom/google/android/apps/unveil/barcode/RotatedUnveilHybridBinarizer;->data:[B

    iget v3, p0, Lcom/google/android/apps/unveil/barcode/RotatedUnveilHybridBinarizer;->dataWidth:I

    sget-object v4, Lcom/google/zxing/common/BitArray;->bits:[Z

    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->nativeBinarizeRow(I[BII[Z)V

    .line 51
    return-object p2
.end method

.method public getBlackRowLocal(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .registers 5
    .parameter "y"
    .parameter "row"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/RotatedUnveilHybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    iget v1, p0, Lcom/google/android/apps/unveil/barcode/RotatedUnveilHybridBinarizer;->height:I

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->getColumn(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    return-object v0
.end method
