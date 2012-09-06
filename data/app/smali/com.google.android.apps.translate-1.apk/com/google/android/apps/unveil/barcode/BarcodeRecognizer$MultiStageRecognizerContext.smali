.class Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;
.super Ljava/lang/Object;
.source "BarcodeRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiStageRecognizerContext"
.end annotation


# instance fields
.field regularBitmap:Lcom/google/zxing/BinaryBitmap;

.field rotatedBitmap:Lcom/google/zxing/BinaryBitmap;

.field stage:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

.field startLoadTimestamp:J

.field final synthetic this$0:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 101
    iput-object p1, p0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;->this$0:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    sget-object v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;->LOAD:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    iput-object v0, p0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;->stage:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    .line 103
    iput-object v1, p0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;->regularBitmap:Lcom/google/zxing/BinaryBitmap;

    .line 104
    iput-object v1, p0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;->rotatedBitmap:Lcom/google/zxing/BinaryBitmap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;-><init>(Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;)V

    return-void
.end method
