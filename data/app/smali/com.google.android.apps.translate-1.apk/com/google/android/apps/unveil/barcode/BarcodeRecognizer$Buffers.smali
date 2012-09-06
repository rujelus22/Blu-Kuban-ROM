.class Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;
.super Ljava/lang/Object;
.source "BarcodeRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Buffers"
.end annotation


# instance fields
.field final bitMatrixBits:[I

.field final blackPoints:[B

.field final croppedCopySpace:[B

.field final dataHeight:I

.field final dataWidth:I

.field final height:I

.field final left:I

.field final top:I

.field final width:I


# direct methods
.method constructor <init>(IIIIII)V
    .registers 9
    .parameter "dataWidth"
    .parameter "dataHeight"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v1, 0xf0

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    if-lez p1, :cond_11

    if-lez p2, :cond_11

    if-ltz p3, :cond_11

    if-ltz p4, :cond_11

    if-lez p5, :cond_11

    if-gtz p6, :cond_19

    .line 502
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Argument less than or equal to zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_19
    add-int v0, p3, p5

    if-gt v0, p1, :cond_21

    add-int v0, p4, p6

    if-le v0, p2, :cond_29

    .line 506
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cropped box goes past original box."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :cond_29
    if-lt p5, v1, :cond_2d

    if-ge p6, v1, :cond_35

    .line 510
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cropped box is too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_35
    iput p1, p0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;->dataWidth:I

    .line 514
    iput p2, p0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;->dataHeight:I

    .line 515
    iput p3, p0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;->left:I

    .line 516
    iput p4, p0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;->top:I

    .line 517
    iput p5, p0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;->width:I

    .line 518
    iput p6, p0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;->height:I

    .line 520
    add-int/lit8 v0, p5, 0x1f

    shr-int/lit8 v0, v0, 0x5

    mul-int/2addr v0, p6

    add-int/lit8 v1, p6, 0x1f

    shr-int/lit8 v1, v1, 0x5

    mul-int/2addr v1, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;->bitMatrixBits:[I

    .line 522
    shr-int/lit8 v0, p5, 0x3

    shr-int/lit8 v1, p6, 0x3

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;->blackPoints:[B

    .line 523
    mul-int v0, p5, p6

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;->croppedCopySpace:[B

    .line 524
    return-void
.end method
