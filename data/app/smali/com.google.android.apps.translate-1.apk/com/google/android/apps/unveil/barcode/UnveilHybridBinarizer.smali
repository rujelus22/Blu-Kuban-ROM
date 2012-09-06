.class final Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;
.super Lcom/google/zxing/Binarizer;
.source "UnveilHybridBinarizer.java"


# static fields
.field private static final MINIMUM_DIMENSION:I = 0x28


# instance fields
.field private final data:[B

.field private final dataWidth:I

.field private final globalBitMatrixBits:[I

.field private final globalBlackPoints:[B

.field private final height:I

.field private final left:I

.field private matrix:Lcom/google/zxing/common/BitMatrix;

.field private final top:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 132
    const-string v0, "zxing"

    invoke-static {v0}, Lcom/google/android/apps/unveil/env/ResourceUtils;->loadNativeLibrary(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/LuminanceSource;[I[B)V
    .registers 6
    .parameter "source"
    .parameter "globalBitMatrixBits"
    .parameter "globalBlackPoints"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/zxing/Binarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    move-object v0, p1

    .line 67
    check-cast v0, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;

    .line 68
    .local v0, localSource:Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;
    invoke-virtual {v0}, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->getData()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->data:[B

    .line 69
    invoke-virtual {v0}, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->getDataWidth()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->dataWidth:I

    .line 70
    invoke-virtual {v0}, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->width:I

    .line 71
    invoke-virtual {v0}, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->height:I

    .line 72
    invoke-virtual {v0}, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->left:I

    .line 73
    invoke-virtual {v0}, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;->getTop()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->top:I

    .line 75
    iput-object p2, p0, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->globalBitMatrixBits:[I

    .line 76
    iput-object p3, p0, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->globalBlackPoints:[B

    .line 77
    return-void
.end method

.method private binarizeEntireImage()V
    .registers 7

    .prologue
    const/16 v5, 0x28

    .line 116
    iget-object v1, p0, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    if-nez v1, :cond_30

    .line 117
    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    iget v2, p0, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->width:I

    iget v3, p0, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->height:I

    iget-object v4, p0, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->globalBitMatrixBits:[I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/zxing/common/BitMatrix;-><init>(II[I)V

    iput-object v1, p0, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    .line 118
    iget v1, p0, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->width:I

    if-lt v1, v5, :cond_31

    iget v1, p0, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->height:I

    if-lt v1, v5, :cond_31

    .line 119
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->getMatrix()[B

    move-result-object v0

    .line 120
    .local v0, luminances:[B
    iget v1, p0, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->width:I

    iget v2, p0, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->height:I

    iget-object v3, p0, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->globalBlackPoints:[B

    iget-object v4, p0, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    iget-object v4, v4, Lcom/google/zxing/common/BitMatrix;->bits:[I

    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->nativeBinarizeEntireImage(II[B[B[I)V

    .line 126
    .end local v0           #luminances:[B
    :cond_30
    :goto_30
    return-void

    .line 123
    :cond_31
    iget-object v1, p0, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->clear()V

    goto :goto_30
.end method

.method static native nativeBinarizeEntireImage(II[B[B[I)V
.end method

.method static native nativeBinarizeRow(I[BII[Z)V
.end method


# virtual methods
.method public createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;
    .registers 4
    .parameter "source"

    .prologue
    .line 109
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
    .registers 2

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->binarizeEntireImage()V

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method public getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .registers 8
    .parameter "y"
    .parameter "row"

    .prologue
    .line 81
    if-eqz p2, :cond_8

    sget v1, Lcom/google/zxing/common/BitArray;->size:I

    iget v2, p0, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->width:I

    if-ge v1, v2, :cond_f

    .line 82
    :cond_8
    new-instance p2, Lcom/google/zxing/common/BitArray;

    .end local p2
    iget v1, p0, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->width:I

    invoke-direct {p2, v1}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 85
    .restart local p2
    :cond_f
    iget v1, p0, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->top:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->dataWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->left:I

    add-int v0, v1, v2

    .line 86
    .local v0, offset:I
    iget v1, p0, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->width:I

    iget-object v2, p0, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->data:[B

    const/4 v3, 0x1

    sget-object v4, Lcom/google/zxing/common/BitArray;->bits:[Z

    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->nativeBinarizeRow(I[BII[Z)V

    .line 87
    return-object p2
.end method

.method public getBlackRowLocal(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .registers 4
    .parameter "y"
    .parameter "row"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    if-nez v0, :cond_7

    .line 96
    invoke-direct {p0}, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->binarizeEntireImage()V

    .line 98
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    return-object v0
.end method
